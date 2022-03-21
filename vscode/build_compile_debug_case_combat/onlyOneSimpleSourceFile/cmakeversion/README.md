# CMake Manually VSCode on mac(Simple C/C++ Source file Version)
This is a markdown for one C++ file to build, compile, debug using CMake in VSCode on mac.

This is my workspace environment!

Clang: `9.0.0`;

Llvm-gcc: `4.2.1`;

Visual Studio Code `v1.63.2`;

Code Runner `v0.11.6` (Author: Jun Han);

CodeLLDB `v1.4.5` or `v1.5.0` (Author: Vadim Chugunov).

Now:

This workspace named `hello-vsc`, including 4 directories and 7 files.

The Architecture of workspace `hello-vsc` are:

    hello-vsc

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
    
    |__cmake_compile_problem.md
    
    |__hello_vsc.cpp
    
`hello_vsc.cpp`: This workspace main function.

`cmake_compile_problem.md`: This project witness problem while using CMake.

`build`: VSCode Build folder.

`debug`: VSCode Debug Version folder.

`release`: VSCode Release Version folder.

`CMakeLists.txt`: The project CMake file.

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

I will add the 7 file via adding file.

END.

Reference: 

1.[Build and Debug C++ on Visual Studio Code for Mac](https://medium.com/gdplabs/build-and-debug-c-on-visual-studio-code-for-mac-77e05537105e).

2.[Visual Studio Code Build and Debug a C++ with CMake on Mac OS](https://medium.com/@dexterchan_44737/visual-studio-code-build-and-debug-a-c-with-cmake-on-mac-os-7633bc59bf34).

3.[C++ Development using Visual Studio Code, CMake and LLDB](https://medium.com/@ivan.mejia/c-development-using-visual-studio-code-cmake-and-lldb-d0f13d38c563).

4.[[C++] 令和最新版 C++をVisual Studio Codeで書きたい](https://jumble-note.blogspot.com/2021/02/c-cvisual-studio-code.html).

5.[[C++/Mac] C++をVisual Studio Codeで書きたい](https://jumble-note.blogspot.com/2019/05/cmac-cvisual-studio-code.html).

6.[Visual Studio Code を使った C++ のビルド＆デバッグ方法（with CMAKE）](https://daily-tech.hatenablog.com/entry/2018/11/17/022047).

7.[VSCode でC++の開発環境構築（Windows / MacOS）](https://qiita.com/terukazu/items/003e033367052acfefe7).

8.[Visual Studio の CMake プロジェクト](https://docs.microsoft.com/ja-jp/cpp/build/cmake-projects-in-visual-studio?view=msvc-170).

9.[Build C++ Project using CMake at VSCode on mac](https://blog.csdn.net/Gou_Hailong/article/details/119939307)(Chinese Blog)

(That has solved My Deubg trouble. Thanks!)
