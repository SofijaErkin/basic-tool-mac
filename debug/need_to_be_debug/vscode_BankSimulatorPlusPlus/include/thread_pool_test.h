#pragma once

#include <vector>
#include <iterator>
#include <future>
#include <numeric>
#include <functional>
#include <iostream>

#include "thread_pool.h"

template<typename Iterator, typename T>
struct accumulate_block {
  T operator()(Iterator first, Iterator last) {
    return std::accumulate(first, last, T());
  }
};

template<typename Iterator, typename T>
T parallel_accumulate(Iterator first, Iterator last, T init) {
  unsigned long const length = std::distance(first, last);
  if (!length)
    return init;

  unsigned long const block_size = 25;
  unsigned long const num_blocks = (length + block_size -1) / block_size;
  std::vector<std::future<T>> futures[num_blocks - 1];
  // New fuctures has just been changed!
  // std::vector<std::shared_future<T>> shared_futures[num_blocks -1];

  thread_pool pool;
  Iterator block_start = first;
  for (unsigned long i = 0; i < num_blocks -1; ++i) {
    Iterator block_end = block_start;
    std::advance(block_end, block_size);
    // futures[i] = std::async(pool.submit(std::bind(accumulate_block<Iterator, T>(), 
    //    block_start, block_end)));
    futures[i].push_back(pool.submit(std::bind(
        accumulate_block<Iterator, T>(),block_start, block_end)));
    // futures[i] = pool.submit(std::bind(accumulate_block<Iterator, T>(),
    //                                   block_start, block_end));
    block_start = block_end;
  }

  T last_result = accumulate_block<Iterator, T>()(block_start, last);

  T result = init;
  pool.start();
  // std::vector<std::share_future<T>> shared_future[]
  // std::vector<int>::iterator it;
  for (unsigned long i = 0; i < num_blocks -1; ++i) {
    // shared_futures[i] = futures[i].share();
    result += (*futures[i].begin()).get();
    // result += *it;
  }
  result += last_result;

  return result;
}

void thread_pool_test_run() {
  std::vector<int> v;

  for (int i = 1; i <= 1000; i++) {
     v.push_back(i);
  }

  int result = parallel_accumulate(v.begin(), v.end(), 0);

  std::cout << "result = " << result <<std::endl;
}

