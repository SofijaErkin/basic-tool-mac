#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
#include <ctime>
#include <thread>
#include "../include/test.h"
using namespace std;

int main(int argc, char* argv[]) {
  Test::Run(240, 4, 100000);
  return 0;
}

