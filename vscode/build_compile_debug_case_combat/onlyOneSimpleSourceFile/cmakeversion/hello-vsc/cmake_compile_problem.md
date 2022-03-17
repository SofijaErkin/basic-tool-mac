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

## Problem A

### Operate RoadMap
echo: echo Hello

cmake:
`⇧+⌘+P` and type “`Tasks`” and pick “`Run Task`”
From the list pick “`cmake`” and pick "`contiue xxx`"

Run Code: `^\~N`

### Output

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

### Run Or Not

cmake: Not(Before);

make: Run.

Run Code: Run. Genrate hello_vsc target file in ~/./.

### Fix Or Not

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
## Problem B

### Operate RoadMap
After add lldb-mi dibbuger to your PATH on your .bash_profile the location of 

the lldb-mi debugger just re-launch VSC and you should be able to debug your 

code by just clicking the “`Start Debugging (F5)`” button.
### Output
Debug button fresh! Debug did not work.
### Run Or Not
Not