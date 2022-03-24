#ifndef BANKQUEUE_RANDOM_H
#define BANKQUEUE_RANDOM_H

#include <random>

#define RANDOM_DURATION 30
#define RANDOM_PER_MINUTE 5

class Random {
 public:
  static int uniform(int max) {
    if (--max < 0) 
      max = 0;
    return 1 + static_cast<int>(static_cast<double>(std::rand()) / 
                                 RAND_MAX * max );
  }
};

#endif //BANKQUEUE_RANDOM_H

