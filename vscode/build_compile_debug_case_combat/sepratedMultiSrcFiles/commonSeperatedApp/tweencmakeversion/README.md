# Common Seperated Apps C/C++ Manually CMake VSCode on Mac(Tween CMake Version)

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

    |_apps

    |     |__CMakeLists.txt
    
    |     |__main.cpp
    
    |_build
    
    |     |_debug
    
    |     |_release
    
    |_common
          
    |      |_include
          
    |      |     |__Pet.h
          
    |      |_source
    
    |      |     |__Pet.cpp

    |      |__CMakeLists.txt

    |__CMakeLists.txt
   
    |__comsepeapp_cmake_compile_problem.md
I will add the 11 file via adding file.
