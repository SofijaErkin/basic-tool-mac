#ifndef BANKQUEUE_EVENT_H
#define BANKQUEUE_EVENT_H

#include "random.h"

enum class EventType : int {
  ARRIVIED,
  DEPARTURE
};

class Event {
 public:
  Event() : occur_time_(Random::uniform(RANDOM_DURATION)),
            event_type_(EventType::ARRIVIED),
            service_index_(-1),
            next_(nullptr) {}
  Event(int occur_time) : occur_time_(occur_time),
                          event_type_(EventType::ARRIVIED),
                          service_index_(-1),
                          next_(nullptr) {}
  Event(int occur_time, EventType event_type, int service_index) 
      : occur_time_(occur_time),
        event_type_(event_type),
        service_index_(service_index),
        next_(nullptr) {}

  public:
   int occur_time_;
   EventType event_type_;
   int service_index_;
   Event *next_;
};

#endif // BANKQUEUE_EVENT_H

