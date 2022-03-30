#include "../inc/bank.h"
#include <iostream>
#include <clocale>

int main(int argc, char *argv[], char*env[]) {
  std::setlocale(LC_ALL, "");
  // std::setlocale(LC_ALL, L"");
  Bank bank;
  bank.Simulation();

  return 0;
}