# CMake Manually

This is a markdown to Manually CMake.

## 1.[MicroSoft Quick Start](https://medium.com/@dexterchan_44737/visual-studio-code-build-and-debug-a-c-with-cmake-on-mac-os-7633bc59bf34)

1.1 Platform

CMake Tools

1.2 RoadMap

Press `⇧+⌘+P` for Command Line

type “`start`”, select `CMake:Quick Start`

Select the Compiler “`Clang 10.0.0`”

Type the project name , e.g. “HelloWorld”

Finally, select `Executable`.

1.3 OutPut

    [variant] Loaded new set of variants

    [kit] Detected kits definition version change from undefined to 2. Silently scanning for kits.

    [proc] Executing command: /usr/bin/clang -v

    [proc] Executing command: /usr/bin/gcc -v

    [proc] Executing command: /usr/bin/llvm-gcc -v

    [proc] Executing command: /usr/bin/clang -v

    [proc] Executing command: /usr/bin/gcc -v

    [proc] Executing command: /usr/bin/llvm-gcc -v

    [kit] Found Kit: Clang 8.1.0 x86_64-apple-darwin16.7.0

    [kit] Successfully loaded 1 kits from /Users/marryme/.local/share/CMakeTools/cmake-tools-kits.json

    [kit] Found Kit: Clang 8.1.0 x86_64-apple-darwin16.7.0

    [kit] Successfully loaded 1 kits from /Users/marryme/.local/share/CMakeTools/cmake-tools-kits.json

    [proc] Executing command: /usr/bin/clang -v

    [main] Configuring folder: practiseCMake

    [proc] Executing command: /usr/local/bin/cmake --no-warn-unused-cli -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE -DCMAKE_BUILD_TYPE:STRING=Debug -DCMAKE_C_COMPILER:FILEPATH=/usr/bin/clang -DCMAKE_CXX_COMPILER:FILEPATH=/usr/bin/clang++ -H/Users/marryme/practiseCMake -B/Users/marryme/practiseCMake/build -G Ninja

    [cmake] Not searching for unused variables given on the command line.

    [cmake] -- The C compiler identification is AppleClang 8.1.0.8020042

    [cmake] -- The CXX compiler identification is AppleClang 8.1.0.8020042

    [cmake] -- Detecting C compiler ABI info

    [cmake] -- Detecting C compiler ABI info - done

    [cmake] -- Check for working C compiler: /usr/bin/clang - skipped

    [cmake] -- Detecting C compile features

    [cmake] -- Detecting C compile features - done

    [cmake] -- Detecting CXX compiler ABI info

    [cmake] -- Detecting CXX compiler ABI info - done

    [cmake] -- Check for working CXX compiler: /usr/bin/clang++ - skipped

    [cmake] -- Detecting CXX compile features

    [cmake] -- Detecting CXX compile features - done

    [cmake] -- Configuring done

    [cmake] -- Generating done

    [cmake] -- Build files have been written to: /Users/marryme/practiseCMake/build

    [main] Configuring folder: practiseCMake

    [proc] Executing command: /usr/local/bin/cmake --no-warn-unused-cli -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE-DCMAKE_BUILD_TYPE:STRING=Debug -DCMAKE_C_COMPILER:FILEPATH=/usr/bin/clang -DCMAKE_CXX_COMPILER:FILEPATH=/usr/bin/clang++-H/Users/marryme/practiseCMake -B/Users/marryme/practiseCMake/build -G Ninja

    [cmake] Not searching for unused variables given on the command line.

    [cmake] -- The C compiler identification is AppleClang 8.1.0.8020042

    [cmake] -- The CXX compiler identification is AppleClang 8.1.0.8020042

    [cmake] -- Detecting C compiler ABI info

    [cmake] -- Detecting C compiler ABI info - done

    [cmake] -- Check for working C compiler: /usr/bin/clang - skipped

    [cmake] -- Detecting C compile features

    [cmake] -- Detecting C compile features - done

    [cmake] -- Detecting CXX compiler ABI info

    [cmake] -- Detecting CXX compiler ABI info - done

    [cmake] -- Check for working CXX compiler: /usr/bin/clang++ - skipped

    [cmake] -- Detecting CXX compile features

    [cmake] -- Detecting CXX compile features - done

    [cmake] -- Configuring done

    [cmake] -- Generating done

    [cmake] -- Build files have been written to: /Users/marryme/practiseCMake/build