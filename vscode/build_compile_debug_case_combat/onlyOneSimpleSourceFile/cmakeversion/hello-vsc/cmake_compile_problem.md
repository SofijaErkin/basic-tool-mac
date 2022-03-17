# CMake Compile Problem
This is a markdown for the problem of this hello-vsc project to compile via CMake.
## Problem A

### Operate RoadMap
`⇧+⌘+P` and type “`Tasks`” and pick “`Run Task`”
From the list pick “`cmake`” and pick "`contiue xxx`"
### Output

    Executing task: echo Hello <

    Hello

    Terminal will be reused by tasks, press any key to close it.

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

### Run Or Not
Not
## Problem B

### Operate RoadMap

### Output

### Run Or Not



