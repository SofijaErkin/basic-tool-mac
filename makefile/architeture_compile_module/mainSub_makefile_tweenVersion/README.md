# Seperated Libclass C/C++ Manually CMake VSCode on Mac(Tween Makefile Version)

You know, it's most useful to pay attention to read a journal Peter Miller's

[Recursive Make Considered Harmful](https://accu.org/journals/overload/14/71/miller_2004/)

[James K. Lowden](https://stackoverflow.com/q/37825208/10846570), thanks you so much!

workspace environment:

Clang: `9.0.0`;

Llvm-gcc: `4.2.1`;

Visual Studio Code `v1.63.2`;

Code Runner `v0.11.6` (Author: Jun Han);

CodeLLDB `v1.4.5` or `v1.5.0` (Author: Vadim Chugunov).

The Architecture of workspace are:

    mainSub

    |

    |_.vscode

    |     |__c_cpp_properties.json

    |     |__launch.json

    |     |__settings.json

    |     |__tasks.json

    |__CMakeLists.txt
    
    |_build
    
    |     |_debug
    
    |     |_release
    
    |__main.cpp
    
    |__mainSub_cmake_compile_problem.md
    
    |_petActive
    
          |__CMakeLists.txt
          
          |_include
          
          |     |__Pet.h
          
          |_source
    
                |__Pet.cpp

I will add the 10 file via adding file.

END.
