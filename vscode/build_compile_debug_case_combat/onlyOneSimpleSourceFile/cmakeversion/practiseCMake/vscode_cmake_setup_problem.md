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

### 0.3Run Or Not

cmake: Run.

make: Run.

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

### 1.2VSCode Output 

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