#pragma once

#include <atomic>
#include <memory>
#include <utility>

#include "helper.h"

template<typename T>
class lock_free_stealing_deque {
 public:
  lock_free_stealing_deque() : head(new node), tail(head.load()) {

  }

  lock_free_stealing_deque(const lock_free_stealing_deque& other) = delete;
  lock_free_stealing_deque& operator=(const lock_free_stealing_deque& other)
      = delete;

  ~lock_free_stealing_deque() {
    while (1) {
      node* const old_head = head.load().ptr;
      if (old_head) {
        head.store(old_head->next);
        delete old_head;
      } else
        break;
    }
  }

  bool try_steal(T*& res) {
    counted_node_ptr old_head = head.load();
    for (;;) {
      increase_external_count(head, old_head);

      node* const ptr = old_head.ptr;
      counted_node_ptr old_next = ptr->next.load();
      counted_node_ptr old_head_backup = old_head;

      if (ptr->data.load() == nullptr || 
              tail.compare_exchange_strong(old_next,old_next)) {
        decrease_ref_count(old_head_backup);
        return false;
      }

      counted_node_ptr next = { 0 };
      if (ptr->next.compare_exchange_strong(next, next)) {
        next = old_head;
      }

      increase_external_counter(next);
      if (head.compare_exchange_strong(old_head, next)) {
        res = ptr->data.exchange(nullptr);
        counted_node_ptr new_priv = { 0 };
        next.ptr->priv.store(new_priv);
        free_external_counter_and_decrease_ref_count(old_head);
        if (res)
          return true;
        else
          return false;
      } else 
        decrease_external_counter(next);
      decrease_ref_count(old_head_backup);
    }
  }

  bool try_pop(T*&  res) {
    counted_node_ptr old_tail = tail.load();
    for (;;) {
      increase_external_count(tail, old_tail);
      node* const ptr = old_tail.ptr;
      // counted_node_ptr old_priv = ptr->priv.load();
      counted_node_ptr old_tail_backup = old_tail;

      if (ptr->data.load() == nullptr) {
        decrease_ref_count(old_tail_backup);
        return false;
      }

      counted_node_ptr priv = { 0 };
      if (ptr->priv.compare_exchange_strong(priv, priv)) {
        priv = old_tail;
      } else {
        decrease_external_counter(old_tail);
      }

      increase_external_counter(priv);
      if (tail.compare_exchange_strong(old_tail, priv)) {
        res = ptr->data.exchange(nullptr);
        counted_node_ptr new_next = { 0 };
        priv.ptr->next.store(new_next);
        free_external_counter_and_decrease_ref_count(old_tail);
        if (res)
          return true;
        else 
          return false;
      } else 
        decrease_external_counter(priv);
      decrease_ref_count(old_tail_backup);
    }
  }

  void push(T&& new_value) {
    std::unique_ptr<T> new_data(new T(std::move(new_value)));
    counted_node_ptr new_next;
    new_next.ptr = new node;
    new_next.external_count = 0;
    for (;;) {
        counted_node_ptr old_tail = tail.load();
        increase_external_count(tail, old_tail);
        T* old_data = nullptr;
        if (old_tail.ptr->data.compare_exchange_strong(
            old_data, new_data.get())) {
          delete new_next.ptr;
          new_data.release();
          decrease_ref_count(old_tail);
          break;
        } else {
          counted_node_ptr old_next = { 0 };
          counted_node_ptr new_priv = { 0 };

          if (old_tail.ptr->next.compare_exchange_strong(
              old_next, new_next) && 
              new_next.ptr->priv.compare_exchange_strong(
              new_priv, old_tail)) {
            old_next = new_next;
            new_next.ptr = new node;
          }
          set_new_tail(old_tail, old_next);
        }
    }
  }

 private:
  struct node;

  struct counted_node_ptr {
    node* ptr;
    int external_count;
    // node* ptr;
    
    counted_node_ptr() = default;

    counted_node_ptr(node* n) : ptr(n), external_count(0) {
      
    }
  };

  std::atomic<counted_node_ptr> head;
  std::atomic<counted_node_ptr> tail;

  struct node_counter {
    int ref_count;
    int external_counters;
  };

  struct node {
    std::atomic<T*> data;
    std::atomic<node_counter> count;
    std::atomic<counted_node_ptr> next;
    std::atomic<counted_node_ptr> priv;

    node() {
      node_counter new_count;
      new_count.ref_count = 0;
      new_count.external_counters = 2;
      count.store(new_count);

      data.store(nullptr);

      counted_node_ptr new_next;
      new_next.external_count = 0;
      new_next.ptr = nullptr;
      next.store(new_next);

      counted_node_ptr new_priv;
      new_priv.external_count = 0;
      new_priv.ptr = nullptr;
      priv.store(new_priv);
    }
  };

  static void increase_external_count(std::atomic<counted_node_ptr>& 
      counter, counted_node_ptr& old_counter) {
    counted_node_ptr new_counter;
    do {
      new_counter = old_counter;
      ++new_counter.external_count;
    } while (!counter.compare_exchange_strong(old_counter, new_counter,
        std::memory_order_acquire, std::memory_order_relaxed));
    old_counter.external_count = new_counter.external_count;
  }
  
  static void increase_external_counter(counted_node_ptr& old_node_ptr) {
    node* const ptr = old_node_ptr.ptr;
    node_counter old_counter = ptr->count.load(std::memory_order_relaxed);
    node_counter new_counter;
    do {
      new_counter = old_counter;
      ++new_counter.external_counters;
    } while (!ptr->count.compare_exchange_strong(old_counter, new_counter, 
        std::memory_order_acquire, std::memory_order_relaxed));
  }

  static void decrease_ref_count(counted_node_ptr& old_node_ptr) {
    node* const ptr = old_node_ptr.ptr;
    if (!ptr)
      return;

    node_counter old_counter = ptr->count.load();
    node_counter new_counter;
    do {
      new_counter =old_counter;
      --new_counter.ref_count;
    } while (!ptr->count.compare_exchange_strong(old_counter, new_counter,
        std::memory_order_acquire, std::memory_order_relaxed));

    if (!(new_counter.ref_count + old_node_ptr.external_count) &&
            !new_counter.external_counters && ptr) {
      delete ptr;
      old_node_ptr.ptr = nullptr;
    }
  }

  static void free_external_counter_and_decrease_ref_count(counted_node_ptr& 
          old_node_ptr) {
    node* const ptr = old_node_ptr.ptr;
    if (!ptr)
      return;

    node_counter old_counter = ptr->count.load(std::memory_order_relaxed);
    node_counter new_counter;
    do {
      new_counter = old_counter;
      --new_counter.ref_count;
      --new_counter.external_counters;
    } while (!ptr->count.compare_exchange_strong(old_counter, new_counter, 
                std::memory_order_acquire, std::memory_order_relaxed));

    if (!(new_counter.ref_count + old_node_ptr.external_count) && 
            !new_counter.external_counters && ptr) {
      delete ptr;
      old_node_ptr.ptr = nullptr;
    }
  }

  static void decrease_external_counter(counted_node_ptr& old_node_ptr) {
    node* const ptr = old_node_ptr.ptr;
    node_counter old_counter = ptr->count.load(std::memory_order_relaxed);
    node_counter new_counter;
    do {
      new_counter = old_counter;
      --new_counter.external_counters;
    } while (!ptr->count.compare_exchange_strong(old_counter, new_counter, 
        std::memory_order_acquire, std::memory_order_relaxed));
  }

  void set_new_tail(counted_node_ptr& old_tail, counted_node_ptr& new_tail) {
    node* const current_tail_ptr = old_tail.ptr;
    counted_node_ptr old_tail_backup = old_tail;
    while (!tail.compare_exchange_weak(old_tail, new_tail) && 
           old_tail.ptr == current_tail_ptr);

    if (old_tail.ptr == current_tail_ptr)
      free_external_counter_and_decrease_ref_count(old_tail);
    else
      decrease_ref_count(old_tail_backup);
  }

};

