#ifndef _BANK_H_
#define _BANK_H_

#include <queue>
#include <list>

struct Event {
  int occur_time; // the time of occurring event
  int type; // the type of event, arrive via 0, back via from 1 to 4
  
  bool operator<(const Event &rhs) const {
    return this->occur_time < rhs.occur_time;
  }
  
  /*
  bool operator()(const Event &ths, const Event &rhs) const {
      return ths.occur_time < rhs.occur_time;
  }
  */
};

struct QueueNode {
  int arrival_time; // the time of arrivalling customer
  int duration_time; //the time of customer's suration
};

class Bank {
 public:
  explicit Bank(int window_numbers = 4, int close_time = 8 * 3600);
  ~Bank();
  void Simulation();
    
 private:
  int queue_number_; // the number of queue
  int close_time_; // the time of close
  int total_time_; // the total time of customer
  int customer_number_; // the number of customer

  std::list<Event> event_list_; // the list of event
  std::queue<QueueNode> *work_queue_; // the queue of work

  void OpenForDay();
  void CustomerArrived(Event *event);
  void CustomerDeparture(Event *event);
  int FindShortestQueue();
  void SortEventList();
};

#endif

