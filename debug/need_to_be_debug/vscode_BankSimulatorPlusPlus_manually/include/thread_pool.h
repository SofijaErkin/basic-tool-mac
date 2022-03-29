#pragma once

#include <thread>
#include <atomic>
#include <future>
#include <vector>
#include <memory>

#include "helper.h"
// #include "lock_free_queue.h"
#include "lock_free_stealing_deque.h"

class thread_pool {
  typedef function_wrapper task_type;
  std::atomic_bool done;
  join_threads joiner;
  std::atomic<bool> go;

  lock_free_stealing_deque<task_type> pool_work_queue;
  std::vector<std::unique_ptr<lock_free_stealing_deque<task_type>>> queues;
  std::vector<std::thread> threads;
  
  // join_threads joiner;
  static thread_local 
      lock_free_stealing_deque<task_type> * local_work_queue;
  static thread_local unsigned my_index;

  void worker_thread(unsigned my_index_) {
    my_index = my_index_;
    local_work_queue = queues[my_index].get();
    while (!go)
      std::this_thread::yield();
    while (!done)
      run_pending_task();
  }


  bool pop_task_from_local_queue(task_type*& task) {
    return local_work_queue && local_work_queue->try_pop(task);
  }

  bool pop_task_from_pool_queue(task_type*& task) {
    return pool_work_queue.try_pop(task);
  }

  bool pop_task_from_other_thread_queue(task_type*& task) {
    for (unsigned i = 0; i < queues.size(); ++i) {
      unsigned const index = (my_index +i + 1) % queues.size();
      if (index != my_index && queues[index].get()->try_steal(task)) {
        return true;
      }
    }
    return false;
  }

 public:
  thread_pool() :
      done(false), joiner(threads), go(false) {
    unsigned const thread_count = std::thread::hardware_concurrency();
    try {
      for (unsigned i = 0; i < thread_count; ++i) {
        queues.push_back(std::unique_ptr<lock_free_stealing_deque<task_type>>
                        (new lock_free_stealing_deque<task_type>));
        threads.push_back(
            std::thread(&thread_pool::worker_thread, this, i));
        }
      // go.store(true);
    } catch (...) {
      done = true;
      throw;
    }
  }

  ~thread_pool() {
    done = true;
  } 

  template<typename FunctionType>
  std::future<typename std::result_of<FunctionType()>::type>
      submit(FunctionType f) {
    typedef typename std::result_of<FunctionType()>::type result_type;
    std::packaged_task<result_type()> task(f);
    std::future<result_type> res(task.get_future());
    static int index = 0;
    if (!queues.empty()) {
      if (index >= queues.size()) 
        index = 0;
      local_work_queue = queues[index].get();
      local_work_queue->push(std::move(task));
      ++index;
    } else {
      pool_work_queue.push(std::move(task));
    }
    return res;
  }

  void run_pending_task() {
    task_type* task;
    if (pop_task_from_local_queue(task) ||
        pop_task_from_pool_queue(task) ||
        pop_task_from_other_thread_queue(task)) {
      std::unique_ptr<task_type> u_task(std::move(task));
      u_task->operator()();
    } else {
      std::this_thread::yield();
    }
  }

  void start() {
    go.store(true);
  }

};

thread_local unsigned thread_pool::my_index = 0;
thread_local lock_free_stealing_deque<function_wrapper>* 
    thread_pool::local_work_queue = nullptr;

