#ifndef BANKQUEUE_SERVICE_H
#define BANKQUEUE_SERVICE_H

#include "customer.h"

enum class ServiceStatus {
  BUSY,
  IDLE
};

class Services {
 public:
  Services() : service_status_(ServiceStatus::IDLE) {

  }

  bool is_idle() const {
    if (service_status_ == ServiceStatus::IDLE) {
      return true;
    } else {
      return false;
    }
  }

  void serve_customer(Customer customer) {
    this->customer_ = customer; // copy, not use redernce
  }

  void set_busy() {
    service_status_ = ServiceStatus::BUSY;
  }

  void set_idle() {
    service_status_ = ServiceStatus::IDLE;
  }

  int get_customer_arrive_time() const {
    return customer_.arrive_time_;
  }

  int get_customer_duration() const {
    return customer_.duration_;
  }

  void set_service_start_time(int set_service_start) {
    service_start_time_ = set_service_start;
  }

  int get_service_start_time() const {
    return service_start_time_;
  }

 private:
  Customer customer_;
  ServiceStatus service_status_;
  int service_start_time_;
};

#endif //BANKQUEUE_SERVICE_H

