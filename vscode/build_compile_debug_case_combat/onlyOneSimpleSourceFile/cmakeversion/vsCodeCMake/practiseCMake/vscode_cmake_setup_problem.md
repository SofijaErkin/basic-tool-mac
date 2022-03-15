# Problem Occur Setting-Up CMake in VSCode on mac

## 1.Problem A

### 1.1Platform

[See project architecture](https://github.com/SofijaErkin/basic-tool-mac/tree/main/vscode/build_compile_debug_case_combat/onlyOneSimpleSourceFile/cmakeversion/vsCodeCMake/practiseCMake).

Just like:

    HelloWorld

    |

    |_.vscode

    |     |__c_cpp_properties.json

    |     |__launch.json

    |     |__settings.json

    |     |__tasks.json
    
    |_build
    
    |_include
    
    |     |__Pet.h
    
    |_CMakeLists.txt 
    
    |_main.cpp

    |__Pet.cpp

### 1.2VSCode Output 

    [Running] cd "/Users/yq/VSCode/CppProject/practiseCMake/" && g++ main.cpp -o main && "/Users/yq/VSCode/CppProject/practiseCMake/"main
    
    Undefined symbols for architecture x86_64:
    
        "Pet::eat()", referenced from:
           
            _main in main-44f8ef.o
  
        "Pet::Pet(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >&)", referenced from:
      
            _main in main-44f8ef.o
    
    ld: symbol(s) not found for architecture x86_64
    
    clang: error: linker command failed with exit code 1 (use -v to see invocation)

    [Done] exited with code=1 in 0.543 seconds


### 1.3Run OR Not

Not