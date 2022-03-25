#ifndef BANKQUEUE_MANAGER_QUEUE_H
#define BANKQUEUE_MANAGER_QUEUE_H

#include <queue>
#include <functional>

#include "random.h"
#include "event_queue.h"
#include "service.h"
#include "test.h"

#define INIT_ARRIVIED_EVENT_NUM 5

struct EventComp {
  bool operator()(const Event& lhs, const Event& rhs) const {
    return lhs.occur_time_ > ths.occur_time_;
  }
};

class Manager {
 public:
  Manager(int total_serve_time, int service_num)
      : total_serve_time_(total_serve_time),
        service_num_(service_num_),
        customer_stay_time_(0),
        total_served_customer_num_(0) {}
  ~Manager() {}

  // start simulator
  void Simulate(int simulate_num);
  double get_average_stay_time() {
    return average_stay_time_;
  }

  double get_average_customer() {
    return average_customers_;
  }
  
 private:
  void Run();
  void Init();
  void End();
  int get_idle_service_index();
  void CustomerArrived();
  void CustomerDeparture();
  void GenerateArrivedEvent(int& current_time);
  void GenerateDepartureEvent(int& service_index, int current_time);

  int total_serve_time_;
  int service_time_;
  long long customer_stay_time_;
  long long total_served_customer_num_;
  Services* services_;
  std::queue<Customer> customer_queue_;
  std::priority_queue<Event, std::vector<Event>, std::greater<Event>>  
      event_queue_;
  const Event* current_event_;
  double average_customers_;
  double average_stay_time_;
  int generate_arrived_time_;
};

void Manager::Init() {
  // init services
  services_ = new Services[service_num_];
  for (int i = 0; i < service_num_; i++) {
    *(services_ + i) = Services();
  }

  // init queue
  generate_arrived_time_ = 0;
  while (generate_arrived_time_ < INIT_ARRIVIED_EVENT_NUM) {
    GenerateArrivedEvent(generate_arrivied_time_);
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
  Event event;
  int customer_per_minute = Randome::uniform(RANDOM_PER_MINUTE);
  while (customer_per_minute > 0) {
      event = Event(curent_time);
      event_queue_.push(event);
      --customer_per_minute;
  }
  ++current_time;
}

void Manager::GenerateDepartureEvent(int service_index, 
        int current_time) {
  services_[service_index].serve_customer(customer_queue_.front());
  services_[service_index].set_busy();
  services_[service_index].set_service_start_time(current_time);
  customer_queue_.pop();

  int duration = services_[service_index].get_customer_duration();
  Event event = Event(current_time + duration, EventType:: DEPARTURE,
                      service_index);
  event_queue_.push(event);
}

// process cutomer arrived event
void Manager::CustomerArrived() {
  int idle_service_num = get_idle_service_index();
  int current_time = current_event_->occur_time_;
  Customer customer = Customer(current_time);
  customer_queue_.push(customer);
  event_queue_.pop()
  
  if (idle_service_num != -1)
    GenerateDepartureEvent(idle_service_num, current_time);
}

// provcess customer departure event
void Manager::CustomerDeparture() {
  int current_time = current_event_->occur_time_;
  int service_index = current_event_->service_index_;

  customer_stay_time_ += current_time -
      services_[service_index].get_customer_arrive_time();
  ++total_servd_customer_num_;

  services_[service_index].set_idle();
  event_queue_.pop();

  if (customer_queue_.size() > 0) {
    service_index = get_idle_service_index(); 
    // always get one idle service
    GenerateDepartureEvent(service_index, current_time);
  }
}

void Manager::End() {
  for (int i = 0; i < service_num_; i++) {
    if (!service_[i].is_idle()) {
      int service_start_time  = services_[i].get_service_start_time();
      int arrive_time = services_[i].get_customer_arrive_time();
      int duration = services_[i].get_customer_duration();

      customer_stay_time_ += service_start_time + duration - arrive_time;
      +=total_served_customer_num_;
    }
  }

  while (!customer_queue.empty())
    customer_queue_.pop();
  while (!event_queue_.empty())
    event_queue_.pop();
  delete[] servicex_;
}

void Manager::run() {
  while (!event_queue_empty()) {
    current_event_ = &event_queue_.top();
    if (current_event_->occur_time_ >= total_serve_time_)
        break;
    if (customer_queue_.empty() && event_queue_.size() <= service_num_) {
      GenerateArrivedEvent(generate_arrived_time_);
      current_event_ = & event_queue_.top();
      // updata current event, deal it in order 
    }

    if (current_event_->event_type_ == EventType::ARRIVIED) 
      CuatomerArrived();
    else if (current_event_->event_type_ == EventType::DEPARTURE)
      CustomerDeparture();
  }
}

void Manager::Simulate(int simulate_num) {
  long long total_serve_time = total_serve_time_ * simulate_num;

  while (simulate_num-- > 0) {
    Init();
    Run();
    End();
  }

  average_stay_time_ = static_cast<double>(customer_stay_time_) /
                                           total_served_customer_num_;
  average_customers_ = static_cast<double>(total_served_customer_num_) /
                                          total_serve_time;
}


