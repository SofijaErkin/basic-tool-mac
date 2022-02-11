#ifndef thefitbodyConfig_h
#define thefitbodyConfig_h
#include <iostream>
#include <string>
#include <vector>

class SofijaMarcas {
public:
  void printHello();
};

void SofijaMarcas::printHello() {
  vector<string> msg{"Hello", "C++",     "World",
                     "from",  "VS Code", "and the C++ extension!"};

  for (const string &word : msg) {
    cout << word << " ";
  }
  cout << endl;

  std::cout << "25歳の元妻、資金が尽き「パパ活」をしていた" << std::endl;

  int i = 0;
  while ((i++) < 3)
    cout << "若い身体を使って世渡りするのは構わないが殺人はまずいよ\n";
  cout << endl;
}

#endif /* thefitbodyConfig_h */
