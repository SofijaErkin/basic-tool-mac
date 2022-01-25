# Multiple CXX Same Folder Manually VSCode(mac)

This is a setup for multiple C/C++ files under same folder to build, 

compile and debug with VSCode on mac.

Amazing Notice:

Please double check the filename of the VSCode configuration file.

e.g:

`tasks.json`

`launch.json`

`c_cpp_properties.json`

`settings.json`

A week ago, I made a mistake: I wrote "tasks.json" as "task.json". As a result,

VSCode always reports the error "cannot find tasks.json file". I always thought:

I wrote "task.json", why there is no "tasks.json". It took a week to change the

configuration file, only to find out today that there is a problem with the file

naming. Oh! I am silly.

Notice: 

This is my workspace environment!

Clang: 9.0.0;

Llvm-gcc: 4.2.1;

Visual Studio Code v1.63.2;

Code Runner v0.11.6 (Author: Jun Han);

CodeLLDB v1.4.5 or v1.5.0 (Author: Vadim Chugunov).

Now:

This workspace named `fitBodyBootCamp`, including 1 directories, 7 files.

The Architecture of workspace `fitBodyBootCamp` are:

fitBodyBootCamp

|

|_.vscode

|     |__c_cpp_properties.json

|     |__launch.json

|     |__settings.json

|     |__tasks.json

|__test.cpp

|__test.h

|__testImp.cpp

`test.cpp`: This project main function.

`testImp.cpp`: This project connected source function.

`test.cpp`: This project connected include function.

`.vscode`: VSCode configuration folder.

`tasks.json`: This task will invoke the Clang C++ compiler to create an 

executable file from the source code.

`settings.json`: Workspace Settings.

`launch.json`: configure VS Code to launch the LLDB debugger when you press

`F5` to debug the program.

`c_cpp_properties.json`: allows you to change settings such as the path to 

the compiler, include paths.
