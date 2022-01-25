# A best setup C++11 debugger with VSCode (mac)

(ONLY FOR ONE SINGLE C/C++ FILE)

This is a set of files about setting up C++11 debugger with Visual Studio Code

on mac.

Notice: 

This is my workspace environment!

Clang: 9.0.0;

Llvm-gcc: 4.2.1;

Visual Studio Code v1.63.2;

Code Runner v0.11.6 (Author: Jun Han);

CodeLLDB v1.4.5 or v1.5.0 (Author: Vadim Chugunov).

Now:

This workspace named `HelloWorld`, including a directories `.vscode` and 5 files.

The Architecture of workspace `HelloWorld` are:

    HelloWorld

    |

    |_.vscode

    |     |__c_cpp_properties.json

    |     |__launch.json

    |     |__settings.json

    |     |__tasks.json

    |__helloworld.cpp

`helloworld.cpp`: This workspace main function.

`.vscode`: VSCode configuration folder.

`tasks.json`: This task will invoke the Clang C++ compiler to create an 

executable file from the source code.

`settings.json`: Workspace Settings.

`launch.json`: configure VS Code to launch the LLDB debugger when you press

`F5` to debug the program.

`c_cpp_properties.json`: allows you to change settings such as the path to 

the compiler, include paths.

Notices:

You only need to modify the `Include path` setting if your program includes 

header files that are not in your workspace or the standard library path.

Especially: `"includePath": [ "/Library/Developer/CommandLineTools/usr/lib/clang/9.0.0/include"]`.

If your seprated Command-line tools's Clang version is `9.0.0`, copy this program

directly.

If not, just use this command to checkout the Clang version of your seprated 

Command-line tools:

`cd /Library/Developer/CommandLineTools/usr/lib/clang/ && ls`

That may show like this: `9.0.0` or `9.1.0` or `10.0.0` or X.X.X. As this may show,

The Clang version of your seprated Command-line tools is `9.0.0`, or `9.0.1` or 

`10.0.0` or `X.X.X`. And just replace my `9.0.0`.

If you do not have a seprated Command-line tools, just install [a seprated command](https://developer.apple.com/download/all/?q=command%20line%20tools)

line tools for your Mac depencing your macOS System.

I will add the 5 file via adding file.

END.