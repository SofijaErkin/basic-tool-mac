# Seperated Libclass C/C++ Manually CMake VSCode on Mac

workspace environment:

Clang: `9.0.0`;

Llvm-gcc: `4.2.1`;

Visual Studio Code `v1.63.2`;

Code Runner `v0.11.6` (Author: Jun Han);

CodeLLDB `v1.4.5` or `v1.5.0` (Author: Vadim Chugunov).

The Architecture of workspace are:

    petCom

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
    
    |_pet
    
    |     |__Pet.cpp
    
    |     |__Pet.h
    
    |__petCom.cpp
    
I will add the 8 file via adding file.
