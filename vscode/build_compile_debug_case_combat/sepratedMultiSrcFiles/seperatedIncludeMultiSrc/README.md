# Seperated include Multi-C/C++ Manually CMake VSCode on Mac

This is a markdown for multiple C++ file to build, compile, debug using CMake in VSCode on mac.

This is my workspace environment!

Clang: `9.0.0`;

Llvm-gcc: `4.2.1`;

Visual Studio Code `v1.63.2`;

Code Runner `v0.11.6` (Author: Jun Han);

CodeLLDB `v1.4.5` or `v1.5.0` (Author: Vadim Chugunov).

Now:

This workspace named `practiseCMake`, including 5 directories and 9 files.

The Architecture of workspace `practiseCMake` are:

    practiseCMake

    |

    |_.vscode

    |     |__c_cpp_properties.json

    |     |__launch.json

    |     |__settings.json

    |     |__tasks.json

    |__CMakeLists.txt
    
    |__Pet.cpp
    
    |_build
    
    |     |_debug
    
    |     |_release
    
    |_include
    
    |     |__Pet.h
    
    |__main.cpp
    
    |__vscode_cmake_setup_problem.md
    
`vscode_cmake_setup_problem.md`: This project witness problem while using CMake.
    
`main.cpp`: This workspace main function.

`include`: project include folder.

`Pet.h`: class Pet include function.

`build`: VSCode Build folder.

`debug`: VSCode Debug Version folder.

`release`: VSCode Release Version folder.

`Pet.cpp`: class Pet source function.

`CMakeLists.txt`: The project CMake file.

`.vscode`: VSCode configuration folder.

`tasks.json`: This task will invoke the Clang C++ compiler to create an 

executable file from the source code.

`settings.json`: Workspace Settings.

`launch.json`: configure VS Code to launch the LLDB debugger when you press

`F5` to debug the program.

`c_cpp_properties.json`: allows you to change settings such as the path to 

the compiler, include paths.

I will add the 9 file via adding file.

