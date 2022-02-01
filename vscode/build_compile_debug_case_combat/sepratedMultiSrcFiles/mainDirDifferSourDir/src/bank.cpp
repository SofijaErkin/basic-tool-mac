#include "../bin/bank.h"
#include <chrono>
#include <cstdlib>
#include <iostream>
#include <algorithm>

// #include <algorithm>
// std::sort(work_quque_, work_queue_ + queue_number_,
//        [](const std::quque<QueueNode> &q1,
//           const std::queue<QueueNode> $q2) -> bool
//          {return q1.size() < q2.size();});

Bank::Bank(int window_numbers, int close_time)
    : queue_number_(window_numbers), close_time_(close_time),
    total_time_(0), customer_number_(0) {
  work_queue_ = new std::queue<QueueNode>[window_numbers];
  srand(std::chrono::system_clock
    ::to_time_t(std::chrono::system_clock::now()));
}

Bank::~Bank() {
  delete[] work_queue_;
}

void Bank::OpenForDay() {
  Event event_push_back_list;
  event_push_back_list.occur_time = 0;
  event_push_back_list.type = 0;
  event_list_.push_back(event_push_back_list);
  // event_list_.push_back({0,0}); 
  // //the first customer arrived
}

// the event of arrivalling customer
// Do the below things:
// one: rand the time for customer's duration
// two: rand the time for the next customer arrivalling
// three: push back the arrivalling customer into the shortest working queue
void Bank::CustomerArrived(Event *event) {
  ++customer_number_;

  int duration_time, inter_time;

  // the durating time of the arrivalling customer
  duration_time = rand() % 1800 + 1; //the biggest duration is 30minutes
  // the next customer arrivalling after event->occur_time+inter_time 
  inter_time = rand() % 600 + 1; // inter_time <= 10 minutes

  // the arrivalling time of next customer
  int next_customer_arrival_time = event->occur_time + inter_time;

  // if the bank openning
  if(next_customer_arrival_time < close_time_) {
    Event customer_arrival_event;
    customer_arrival_event.occur_time = next_customer_arrival_time;
    customer_arrival_event.type = 0;
    event_list_.push_back(customer_arrival_event);
    // event_list_.push_back({next_customer_arrival_time, 0});
    // sort the list of eveent via the time of arrival, first in first out
    SortEventList();
  }

  // chose the shortest queue to push back
  int number_shortest_queue;
  number_shortest_queue = FindShortestQueue();
  QueueNode customer_push_queue;
  customer_push_queue.arrival_time = event->occur_time;
  customer_push_queue.duration_time = duration_time;
  work_queue_[number_shortest_queue].push(customer_push_queue);
  //work_queue_[number_shortest_queue].push({event->occur_time, duration_time});

  if(work_queue_[number_shortest_queue].size() == 1) {
    // the number of shortest queue :first customer's departure event 
    // occurring
    Event first_customer_departure_event;
    first_customer_departure_event.occur_time = event->occur_time + duration_time;
    first_customer_departure_event.type = number_shortest_queue +1;
    event_list_.push_back(first_customer_departure_event);
    // event_list_.push_back(
    //    {event->occur_time + duration_time, number_shortest_queue + 1});
    SortEventList();
  }
}

void Bank::CustomerDeparture(Event *event) {
  int rest_event_type = event->type - 1;

  QueueNode leaving_customer;
    
  //finish the event of departuration, customer leaving
  leaving_customer = work_queue_[rest_event_type].front();
  work_queue_[rest_event_type].pop();

  total_time_ += event->occur_time - leaving_customer.arrival_time;

  // the departuring event of the rest_event_type times queue
  if(!work_queue_[rest_event_type].empty()) {
    leaving_customer = work_queue_[rest_event_type].front();
    Event leaving_event;
    leaving_event.occur_time = leaving_customer.duration_time + event->occur_time;
    leaving_event.type = rest_event_type + 1;
    event_list_.push_back(leaving_event);
    // event_list_.push_back(
    //  {leaving_customer.duration_time + event->occur_time, 
    //  rest_event_type + 1});
    SortEventList();
  }
}

int Bank::FindShortestQueue() {
  int num_shortest_queue = 0;
  for (int i = 0; i < queue_number_; ++i) {
    if(work_queue_[num_shortest_queue].size() > work_queue_[i].size())
      num_shortest_queue = i;
  }
  return num_shortest_queue;
}

void Bank::SortEventList() {
  //  std::sort(event_list_.begin(), event_list_.end(),
  //  [](const Event &event1, const Event &event2){
  //    return event1.occur_time < event2.occur_time;
  //  }
  //);

  
  //struct event_lessThan{
  //  bool operator()(Event const &event1, Event const &event2) const{
  //    return event1.occur_time < event2.occur_time;
  //  }
  //};
  //sort(event_list_.begin(), event_list_.end(), event_lessThan());
  
  // bool operator<(const Event &e2,const Event &e2); 
  
  //bool opeartor<(const Event &event1, const Event &const2) {
  //  return event1.occur_time < event2.occur_time;
  //}
  
  //event_list_.sort(event_list_.begin(), event_list_.end() );
  event_list_.sort();
  // Lambda expression:
  // event_list_.sort(
  //   [](const Event &event1, const Event &event2) -> bool
  //   {return event1.occur_time < event2.occur_time;});

  // write a function to compare two struct event
  // turn Lambda expression into a function
  // as the paramter of sort();

  // Also, struct Event::operator<:
  //
  //bool return_lambda = operator<(const Event &event1);
  //event_list_.sort(event_list_.begin(), event_list_.end(), return_lambda);
}

void Bank::Simulation() {
  OpenForDay();
  Event front_event_list;
  while(!event_list_.empty()) {
    front_event_list = event_list_.front();
    event_list_.pop_front();
    if(front_event_list.type == 0) // arrival event
      CustomerArrived(&front_event_list);
    else
      CustomerDeparture(&front_event_list);
  }

  // calculate and output the average time of staying in Bank
  //std::cout << L"the number of customer:" << customer_number_ << std::endl
  //  << L"the total time of staying(hour):" << (double)total_time_ / 3600.0
  //  << std::endl 
  //  << L"the average time of staying(minutes):" 
  //  << (double)total_time_ / (double)(customer_number_ * 60)
  //  << std::endl;
  std::cout << "the number of customer:" << customer_number_ << std::endl
    << "the total time of staying(hour):" << (double)total_time_ / 3600.0
    << std::endl
    << "the average time of staying(miniutes):" 
    << (double)total_time_ / (double)(customer_number_ * 60)
    << std::endl;
}



