# Problem Occur Setting-Up CMake in VSCode on mac

## 0.Problem 0

### 0.1Platform

The architecture is the same as "1.Problem A".

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

### 0.2Output

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
    -- Generating done
    -- Build files have been written to: /Users/yq/VSCode/CppProject/practiseCMake/build

    Terminal will be reused by tasks, press any key to close it.

make:
    
    > Executing task: make -j 8 <

    [ 66%] Building CXX object CMakeFiles/HelloWorld.dir/main.cpp.o

    [ 66%] Building CXX object CMakeFiles/HelloWorld.dir/Pet.cpp.o
    
    [100%] Linking CXX executable HelloWorld
    
    [100%] Built target HelloWorld

    Terminal will be reused by tasks, press any key to close it.

debug:

    Internal debugger error: unable to find executable for '/Users/yq/VSCode/CppProject/practiseCMake/main'

### 0.3Run Or Not

cmake: Run.

make: Run.

debug: Not.

### 0.4Fix Or Not

debug: Not.

## 1.Problem A

### 1.1Platform

[See project architecture](https://github.com/SofijaErkin/basic-tool-mac/tree/main/vscode/build_compile_debug_case_combat/onlyOneSimpleSourceFile/cmakeversion/vsCodeCMake/practiseCMake).

Just like:

    HelloWorld

    |

    |_.vscode

    |     |__c_cpp_properties.json

    |     |__launch.json

    |     |__settings.json

    |     |__tasks.json
    
    |_build
    
    |_include
    
    |     |__Pet.h
    
    |_CMakeLists.txt 
    
    |_main.cpp

    |_Pet.cpp

### 1.2VSCode Terminal Output 

    [Running] cd "/Users/yq/VSCode/CppProject/practiseCMake/" && g++ main.cpp -o main && "/Users/yq/VSCode/CppProject/practiseCMake/"main
    
    Undefined symbols for architecture x86_64:
    
        "Pet::eat()", referenced from:
           
            _main in main-44f8ef.o
  
        "Pet::Pet(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >&)", referenced from:
      
            _main in main-44f8ef.o
    
    ld: symbol(s) not found for architecture x86_64
    
    clang: error: linker command failed with exit code 1 (use -v to see invocation)

    [Done] exited with code=1 in 0.543 seconds


### 1.3Run OR Not

Not

### 1.4 Fix Or Not

Fixed.

Reconfig the settings.json:

    {

        "files.defaultLanguage": "c++",
    
        "editor.suggest.snippetsPreventQuickSuggestions": false,
    
        "editor.acceptSuggestionOnEnter": "off",
    
        "code-runner.runInTerminal": true,
    
        "code-runner.executorMap": {
    
            "c": "cd $dir && cd build/debug && cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Debug ../.. && make -j 8 && $dirbuild/debug/$fileNameWithoutExt",
    
            "cpp": "cd $dir && cd build/debug && cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Debug ../.. && make -j 8 && $dirbuild/debug/$fileNameWithoutExt"
   
        },
   
         "code-runner.saveFileBeforeRun": true,
    
        "code-runner.preserveFocus": false,
    
        "code-runner.clearPreviousOutput": false,
    
        "code-runner.ignoreSelection": true,
    
        // "C_Cpp.clang_format_sortIncludes": true,
    
        "editor.formatOnType": true,
        
        "clang.cxxflags": [
    
            "-std=c++11"
    
        ],
    
        "clang.cflags": [
        
            "-std=c11"
        
        ],
    
        "clang.completion.enable": true
    }

## 2.Problem B

### 2.1Platform

Same as Problem A.

### 2.2VSCode Terminal Output

    zsh: no such file or directory: /Users/marryme/VSCode/CppProject/practiseCMake/build/debug/main

### 2.3Run OR Not

Not.

### 2.4 Fix Or Not

Fixed.

Change item target name at CMakeLists.txt from:

    add_executable(HelloWorld ${SOURCES})

into

    add_executable(main ${SOURCES})

## 3.Problem C

### 3.1Platform

Same as Problem A.

### 3.2VSCode Debug Pop-Up Output

    Errors exist after running preLaunchTask 'Build Debug Version'.

### 3.3Run OR Not

Not.

### 3.4 Fix Or Not

Fixed.

Change item `"program"` at lanuch.json from:

    "program": "${workspaceFolder}/${fileBasenameNoExtension}",

into

    "program": "${workspaceFolder}/build/debug/${fileBasenameNoExtension}",

## 4.Problem D

### 4.1Platform

Same as Problem A.

### 4.2VSCode Output

Debug Pop-Up:

    The preLaunchTask 'Build Debug Version' terminated with exit code 2.

Terminal Output:

    > Executing task: make -j 8 <

    make: *** No targets specified and no makefile found.  Stop.

    The terminal process "/bin/zsh '-c', 'make -j 8'" failed to launch (exit code: 2).

    Terminal will be reused by tasks, press any key to close it.

### 3.3Run OR Not

Not.

### 3.4 Fix Or Not

Fixed.

Change item `cmake command` at tasks.json from

    "command": "cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Debug .."

into

    "command": "cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Debug ../.."

## 5.END

The C++ Project build, compile, debug using CMake at VSCode on mac, that has

finished.