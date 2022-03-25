#ifndef BANKQUEUE_TEST_H
#define BANKQUEUE_TEST_H

#include <ctime>

#include <iostream>

#define USE_SELF_DEFINE_QUEUE 1 // use self define queue or STL
#if USE_SELF_DEFINE_QUEUE
#include "manager.h"
#else
#include "manager_queue.h"
#endif

class Test {
 public:
  static void Run(int total_serve_time, int service_num, int simulate_num);
  static void PrintCurrentTime();
};

void Test::PrintCurrentTime() {
  time_t temporary_time = time(0);
  char temporary_array[64];
  strftime(temporary_array, sizeof(temporary_array), 
      "%Y/%m/%d %X", localtime(&temporary_time));
  std::cout << "current time:" << temporary_array <<std::endl;
}

void Test::Run(int total_serve_time, int service_num, int simulate_num) {
  std::srand(static_cast<unsigned int>(std::time(0)));
  time_t start_time, end_time;

  time(&start_time);

  Manager manager(total_serve_time, service_num);
  manager.Simulate(simulate_num);

  time(&end_time);

  std::cout << "The average time of customer staying:"
    << manager.get_average_stay_time() << std::endl;
  std::cout << "The number of customer be served per minute:"
    << manager.get_average_customers() << std::endl;

  std::cout<< "Simulate cost time:"
    << difftime(end_time, start_time) << "s" << std::endl;
}

#endif //BANKQUEUE_TEST_H

