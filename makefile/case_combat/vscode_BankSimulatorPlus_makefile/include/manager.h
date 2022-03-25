#ifndef BANKQUEUE_MANAGER_H
#define BANKQUEUE_MANAGER_H

#include "random.h"
#include "event.h"
#include "queue.h"
#include "service.h"

#define INIT_ARRIVED_EVENT_NUM 5

class Manager {
 public:
  Manager(int total_serve_time, int service_num)
      : total_serve_time_(total_serve_time),
        service_num_(service_num),
        customer_stay_time_(0),
        total_served_customer_num_(0) {}
  ~Manager() {}

  void Simulate(int simulate_num);
  double get_average_stay_time() {
    return average_stay_time_;
  } 

  double get_average_customers() {
    return average_customer_;
  } 

 private:
  void Run();
  void Init();
  void End();
  int get_idle_service_index();
  void CustomerArrived();
  void CustomerDeparture();
  void GenerateArrivedEvent(int& current_time);
  void GenerateDepartureEvent(int service_index, int current_time);

  int total_serve_time_;
  int service_num_;
  long long customer_stay_time_;
  long long total_served_customer_num_;
  Services* services_;
  Queue<Customer> customer_queue_;
  Queue<Event> event_queue_;
  Event* current_event_;

  double average_customer_;
  double average_stay_time_;
  int generate_arrived_time_;
};

void Manager::Init() {
  // init services
  services_ = new Services[service_num_];
  for (int i = 0; i < service_num_; i++) {
    *(services_ +i) = Services();
  }
  // init event queue
  generate_arrived_time_ = 0; // shared
  while (generate_arrived_time_ < INIT_ARRIVED_EVENT_NUM) {
    GenerateArrivedEvent(generate_arrived_time_);
  }
}

int Manager::get_idle_service_index() {
  for (int i = 0; i < service_num_; i++) {
    if (services_[i].is_idle())
      return i;
  }
  return -1;
}

void Manager::GenerateArrivedEvent(int& current_time) {
  Event* event;
  int customer_per_minute = Random::uniform(RANDOM_PER_MINUTE);
  
  while (customer_per_minute > 0) {
    event = new Event(current_time);
    event_queue_.enqueue(event);
    --customer_per_minute;
  }
  ++current_time;
}

void Manager::GenerateDepartureEvent(int service_index, int current_time) {
  services_[service_index].serve_customer(*customer_queue_.front());
  services_[service_index].set_busy();
  services_[service_index].set_service_start_time(current_time);
  customer_queue_.dequeue();

  int duration = services_[service_index].get_customer_duration();
  Event* event = new Event(current_time + duration, EventType::DEPARTURE,
                            service_index);
  event_queue_.enqueue(event);
}

void Manager::CustomerArrived() {
  int idle_service_num = get_idle_service_index();
  int current_time = current_event_->occur_time_;
  
  Customer* customer = new Customer(current_time);
  customer_queue_.enqueue(customer);
  event_queue_.dequeue();

  if (idle_service_num != -1)
    GenerateDepartureEvent(idle_service_num, current_time);
}

void Manager::CustomerDeparture() {
  int current_time = current_event_->occur_time_;
  int service_index  = current_event_->service_index_;

  customer_stay_time_ += current_time -
      services_[service_index].get_customer_arrive_time();
  ++total_served_customer_num_;
  services_[service_index].set_idle();
  event_queue_.dequeue();

  if (customer_queue_.size() > 0) {
    service_index = get_idle_service_index(); // always get one idle 
      // service
    GenerateDepartureEvent(service_index, current_time);
  }
}

void Manager::End() {
  for (int i = 0; i < service_num_; i++) {
    if (!services_[i].is_idle()) {
      int service_start_time = services_[i].get_service_start_time();
      int arrive_time = services_[i].get_customer_arrive_time();
      int duration = services_[i].get_customer_duration();

      customer_stay_time_ += service_start_time + duration - arrive_time;
      ++total_served_customer_num_;
    }
  }

  customer_queue_.clear();
  event_queue_.clear();
  delete[] services_;
}

void Manager::Run() {
  while (event_queue_.size() != 0) {
    current_event_ = event_queue_.front();

    if (current_event_->occur_time_ >= total_serve_time_)
      break;
    if (customer_queue_.size() == 0 
        && event_queue_.size() <= service_num_) {
      GenerateArrivedEvent(generate_arrived_time_);
      current_event_ = event_queue_.front();
      // update current event, deal it with order
    }

    if (current_event_->event_type_ == EventType::ARRIVIED)
      CustomerArrived();
    else if (current_event_->event_type_ == EventType::DEPARTURE)
      CustomerDeparture();
  }
}

void Manager::Simulate(int simulate_num) {
  long long total_serve_time = total_serve_time_ + simulate_num;

  while (simulate_num-- > 0) {
    Init();
    Run();
    End();
  }

  average_stay_time_ = static_cast<double>(customer_stay_time_) / 
      total_served_customer_num_;
  average_customer_ = static_cast<double>(total_served_customer_num_) /
      total_serve_time;
}

#endif //BANKQUEUE_MANAGER_H

