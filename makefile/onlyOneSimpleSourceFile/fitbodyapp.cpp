#include <iostream>
#include <string>
#include <vector>

using namespace std;
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

int main(int argc, char **argv) {
  SofijaMarcas sofija_marcas_temporary_;
  sofija_marcas_temporary_.printHello();
  cout << endl;
  return 0;
  // aab4aa47eb3a0723f63427daed1a7bcfca5b6e5b
  // Test to local Repository.
}
