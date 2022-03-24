#ifndef BANKQUEUE_CUSTOMER_H
#define BANKQUEUE_CUSTOMER_H

#include "random.h"

class Customer {
 public:
  Customer() : arrive_time_(0),
               duration_(Random::uniform(RANDOM_DURATION)),
               next_(nullptr) {}
  Customer(int arrive_time) : arrive_time_(arrive_time), 
                              duration_(Random::uniform(RANDOM_DURATION)),
                              next_(nullptr) {}

 public:
  int arrive_time_;
  int duration_; // time of customer need to be served
  Customer* next_;
};

#endif //BANKQUEUE_CUSTOMER_H

