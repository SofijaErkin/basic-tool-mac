#include <iostream>
#include <string>
#include <vector>
#include "thefitbodyConfig.h"
#include "thefitbodyConfig.h.in"
// Optional Library step o-7-5-thefitbody.cpp.
/*
#ifdef USE_TEST
# include "test.h"
// Or # include "./test/test/h"
#endif
*/
// Optional Library step o-7-5-thefitbody.cpp.

// Optional Library step o-7-6-thefitbody.h.in.
/*
#ifdef USE_TEST
  const double variable = accept_variable(input_value)
#else
  const double variable = accept_other_variable(input_value)
#endif
*/
// Optional Library step o-7-6-thefitbody.h.in.

using namespace std;
int main(int argc, char **argv) {
  const double inputValue = std::stod(argv[1]);
  // 

  // Project version step p-v-5-4-thefitbodyConfig.h.in.
  /*
  if (argc < 2) {
    // report version
    std::cout << argv[0] << " Version " << THEFITBODY_VERSION_MAJOR << "."
              << THEFITBODY_VERSION_MINOR << std::endl;
    std::cout << "Usage: " << argv[0] << " number" << std::endl;
    return 1;
  }
  */
  // Project version step p-v-5-4-thefitbodyConfig.h.in.

  //

  //

  SofijaMarcas sofija_marcas_temporary_;
  sofija_marcas_temporary_.printHello();
  cout << endl;
  return 0;
  // aab4aa47eb3a0723f63427daed1a7bcfca5b6e5b
  // Test to local Repository.
}

