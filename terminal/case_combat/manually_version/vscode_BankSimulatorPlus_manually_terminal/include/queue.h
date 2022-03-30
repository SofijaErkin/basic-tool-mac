#ifndef BANKQUEUE_QUEUE_H
#define BANKQUEUE_QUEUE_H

#include "customer.h"
#include "event.h"

template<typename T>
class Queue {
 public:
  Queue() : front_(nullptr), rear_(nullptr), length_(0){}
  ~Queue();

  void enqueue(T* node);
  void dequeue();

  T* front() {
    return front_;
  }

  void clear();
  int size();

 private:
  T* front_;
  T* rear_;
  int length_;
};

template<typename T>
Queue<T>::~Queue() {
  clear();
}

template<typename T>
void Queue<T>::enqueue(T* customer) {
  customer->next_ = nullptr;
  if (rear_ != nullptr) {
    rear_->next_ = customer;
    rear_ = customer;
  } else {
      front_ = customer;
      rear_ = customer;
  }
  ++length_;
}

template<typename T>
void Queue<T>::dequeue() {
  if (front_ != nullptr) {
    T* temporary = front_;
    front_ = front_->next_;
    --length_;
    free(temporary);
  }

  if (front_ == nullptr) 
    rear_ = nullptr;
}

template<>
void Queue<Event>::enqueue(Event* event) {
  Event * current = front_, *preview = nullptr;

  while (current != nullptr) {
    if (current->occur_time_ < event->occur_time_) {
      preview = current;
      current = current->next_;
    } else 
        break;
  }

  if (preview == nullptr) {
    event->next_ = front_;
    front_ = event;
    if (rear_ == nullptr) 
      rear_ = event; // rear_ is useless to Event queue
  } else {
    event->next_ = preview->next_;
    preview->next_ = event;
    if (preview == rear_)
      rear_ = event;
  }
  ++length_;
}

template<typename T>
void Queue<T>::clear() {
  while (front_ != nullptr) {
    dequeue();
  }
}

template<typename T>
int Queue<T>::size() {
  return length_;
}

#endif //BANKQUEUE_QUEUE_H

