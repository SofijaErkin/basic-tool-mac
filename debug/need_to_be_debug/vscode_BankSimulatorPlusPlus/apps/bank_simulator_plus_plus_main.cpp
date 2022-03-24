#define _ENABLE_ATOMIC_ALINMENT_FIX
#include <iostream>
#include "../include/thread_pool_test.h"
using namespace std;

int main(int argc, char* argv[]) {
  thread_pool_test_run();
  return 0;
}

