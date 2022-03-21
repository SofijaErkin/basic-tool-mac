# CMake Compile Problem
This is a markdown for the problem of this hello-vsc project to compile via CMake.

First, roadmap of using CMake in VSCode on mac:

cmake:

    type `⇧+⌘+P` and type “`Tasks`” and pick “`Run Task`”

    From the list pick “`cmake`” and pick "`contiue xxx`"

make:

    type `⇧+⌘+P` and type “`Tasks`” and but this time pick “`Run Build Task`”

    From the list pick “`make`” and pick "`contiue xxx`"

debug:
    
    On VSC click on the little bug icon on the Sidebar

    Click the Configure Icon on the Debug View (the little gear with a red badge on it)

    From the list select LLDB

    (if you also install the extension CodeLLDB, select the second one)

    (if you do not install the extension CodeLLDB, select the first one)

if use Native Debug extension, then you can add lldb-mi to your path using ln -s 

/Applications/Xcode.app/Contents/Developer/usr/bin/lldb-mi /usr/local/bin/lldb-mi

if you have Xcode. But This does not work! Please do not worry to cancel the 

soft-link.


This equals `~/.vscode/settings.json` `"code-runner.executorMap"`: [`"cpp": "xxx"`] 

during using `coder-runner` extensions. I guess!!!

## 1.Problem A

### 1.1Operate RoadMap
echo: echo Hello

cmake:
`⇧+⌘+P` and type “`Tasks`” and pick “`Run Task`”
From the list pick “`cmake`” and pick "`contiue xxx`"

Run Code: `^\~N`

### 1.2Output

echo:

    Executing task: echo Hello <

    Hello

    Terminal will be reused by tasks, press any key to close it.

cmake:

    > Executing task: cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Debug .. <

    -- The C compiler identification is AppleClang 8.1.0.8020042
    -- The CXX compiler identification is AppleClang 8.1.0.8020042
    -- Detecting C compiler ABI info
    -- Detecting C compiler ABI info - done
    -- Check for working C compiler: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc - skipped
    -- Detecting C compile features
    -- Detecting C compile features - done
    -- Detecting CXX compiler ABI info
    -- Detecting CXX compiler ABI info - done
    -- Check for working CXX compiler: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ - skipped
    -- Detecting CXX compile features
    -- Detecting CXX compile features - done
    -- Configuring done
    CMake Error at CMakeLists.txt:8 (add_executable):
      Cannot find source file:

        hello-vsc.cpp

      Tried extensions .c .C .c++ .cc .cpp .cxx .cu .mpp .m .M .mm .ixx .cppm .h
      .hh .h++ .hm .hpp .hxx .in .txx .f .F .for .f77 .f90 .f95 .f03 .hip .ispc


    CMake Error at CMakeLists.txt:8 (add_executable):
    No SOURCES given to target: hello-vsc


    CMake Generate step failed.  Build files cannot be regenerated correctly.
    The terminal process "/bin/zsh '-c', 'cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Debug ..'" terminated with exit code: 1.

    Terminal will be reused by tasks, press any key to close it.

make:
    
    > Executing task: make -j 8 <

    [ 50%] Building CXX object CMakeFiles/hello-vsc.dir/hello_vsc.cpp.o

    [100%] Linking CXX executable hello-vsc
    
    [100%] Built target hello-vsc

    Terminal will be reused by tasks, press any key to close it.

Run Code:

    [Running] cd "/Users/marryme/VSCode/CppProject/hello-vsc/" && g++ hello_vsc.cpp -o hello_vsc && "/Users/yq/VSCode/CppProject/hello-vsc/"hello_vsc
    
    hello Visual Studio Code! :)

    [Done] exited with code=0 in 0.449 seconds

### 1.3Run Or Not

cmake: Not(Before);

make: Run.

Run Code: Run. Genrate hello_vsc target file in ~/./.

### 1.4Fix Or Not

cmake:
Fixed. 
Adjust `set(SOURCE hello-vsc.cpp)` to `set(SOURCE hello_vsc.cpp)`.
Also, 
Output:

    Executing task: cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Debug .. <

    -- Configuring done
    -- Generating done
    -- Build files have been written to: /Users/yq/VSCode/CppProject/hello-vsc/build

    Terminal will be reused by tasks, press any key to close it.
## 2.Problem B

### 2.1Operate RoadMap
After add lldb-mi dibbuger to your PATH on your .bash_profile the location of 

the lldb-mi debugger just re-launch VSC and you should be able to debug your 

code by just clicking the “`Start Debugging (F5)`” button.
### 2.2Output
Debug button fresh! Debug did not work.
### 2.3Run Or Not
Not
### 2.4May be
lanuch.json under ~/.vscode/ needed to be changed.
### 2.5Fix Or Not
Fix But Not successfully fixed.
Add "`"program": "${workspaceFolder}/${fileBasenameNoExtension}", // Have changed`",
but `DEBUG CONSOLE` Output:

    Launching: /Users/yq/VSCode/CppProject/hello-vsc/hello_vsc

    Process exited with code 0.
Debug do not work.

Debug as Output target file.

    hello Visual Studio Code! :)
 
    marryme@rose-2  ~/VSCode/CppProject/hello-vsc  
May be need to fix later.
Even add "`//`" before "`"target": "./bin/hello-vsc",`" in lanuch.json, not fix,
Debug as Output target file.
### 2.6Other Fix Or Not
Yes.
add "`,"preLaunchTask": "Build"`" to ~/.vscode/lanuch.json, 
add The below thins to ~/.vscode/tasks.json:

    ,
    {
        "type": "shell",
        "label": "Build",
        "dependsOrder": "sequence",
        "dependsOn":[
            "cmake",
            "make"
        ]
    }
But 
"`DEBUG CONSOLE`" output:

    Launching: /Users/yq/VSCode/CppProject/hello-vsc/hello_vsc

    Process exited with code 0.
"`TERMINAL`" output:

    hello Visual Studio Code! :)
    marryme@rose-2  ~/VSCode/CppProject/hello-vsc  
Did Not Fixed! Debug as output the target file.

Added Fix Output:

    Internal debugger error: unable to find executable for '/Users/yq/VSCode/CppProject/hello-vsc/build/hello_vsc'
Did Not Fix.

BREAK FIXED!

    WHAT HAPPENS?

    Your know, I set the project name "hello-vsc" in CMakeLists.txt before 
    
    BREAK FIXED, and set the debug name "hello_vsc" in ~/.vscode/lanuch.json.

    when i cmake and make in the dirctory build, that will generate target file

    hello-vsc. But when i click the debug button, that lanuch will to find 

    target file hello_vsc. CAN YOU SEE? To be find target file "hello_vsc" 

    differ from the generated target file "hello-vsc". That's it.

Notice:
    
    CMake Warning:
  
      No source or binary directory provided.  Both will be assumed to be the
  
      same as the current working directory, but note that this warning will
  
      become a fatal error in future CMake releases.

## 3.END

The C++ Project build, compile, debug using CMake at VSCode on mac, that has finished.

## 4.Reference: 

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