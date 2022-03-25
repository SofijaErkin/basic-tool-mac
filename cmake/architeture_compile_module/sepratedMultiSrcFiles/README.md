# Multiple Seperated C/C++ Manually CMake VSCode on Mac

workspace environment:

Clang: `9.0.0`;

Llvm-gcc: `4.2.1`;

Visual Studio Code `v1.63.2`;

Code Runner `v0.11.6` (Author: Jun Han);

CodeLLDB `v1.4.5` or `v1.5.0` (Author: Vadim Chugunov).

The Architecture of workspace are:

    proWork

    |

    |_.vscode

    |     |__c_cpp_properties.json

    |     |__launch.json

    |     |__settings.json

    |     |__tasks.json

    |__CMakeLists.txt
    
    |_apps

    |     |__proWorkSpace.cpp
    
    |     |__Pet.cpp
    
    |_build
    
    |     |_debug
    
    |     |_release
    
    |_include
    
          |__Pet.h

I will add the 8 file via adding file.
