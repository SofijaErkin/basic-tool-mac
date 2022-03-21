# The problem during Project mainSub manually compiling using CMake

Let's reinstate the environment of compiling problem!

## 1.Problem A

### 1.1Terminal output during compiling

    CMake Error at petActive/CMakeLists.txt:3 (target_sources):
  
      Cannot specify sources for target "PRIVATE" which is not built by this
  
      project.


    -- Configuring incomplete, errors occurred!
    
    See also "/Users/marryme/VSCode/CppProject/mainSub/build/debug/CMakeFiles/CMakeOutput.log".

### 1.2Run Or Not

Not.

### 1.3Fix Or Not

Fix.

Add target"petActive" to "PRIVATE" under ~/petActive/CMakeLists.txt.

    target_sources(petActive
      PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/source/Pet.cpp
      PUBLIC
        ${CMAKE_CURRENT_LIST_DIR}/include/Pet.h
    )

### 1.4May be

Notice:

    target_sources(<target>
      <INTERFACE|PUBLIC|PRIVATE> [items1...]
      [<INTERFACE|PUBLIC|PRIVATE> [items2...] ...])

### 1.5Other Fix Or Not

New Fixed.

## 2.Problem B

### 2.1Terminal output during compiling

    zsh: no such file or directory: /Users/yq/VSCode/CppProject/mainSub/build/debug/main

### 2.2Run Or Not

Not.

### 2.3Fix Or Not

Fix.

Generated target file main was under ~/build/debug/bin/main.

Firstly, change target address directory from "`$dirbuild/debug/$fileNameWithoutExt`"

to "`$dirbuild/debug/bin/$fileNameWithoutExt`":

As that shows in settings,json under ~/.vscode/settings.json,

    "code-runner.executorMap": {

      "c": "cd $dir && cd build/debug && cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Debug ../.. && make -j 8 && $dirbuild/debug/bin/$fileNameWithoutExt",

      "cpp": "cd $dir && cd build/debug && cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Debug ../.. && make -j 8 && $dirbuild/debug/bin/$fileNameWithoutExt"
    },

Secondly, change "program" under ~/.vscode/lanuch.json from

    "${workspaceFolder}/build/debug/${fileBasenameNoExtension}",

to

    "program": "${workspaceFolder}/build/debug/bin/${fileBasenameNoExtension}",

OK.

### 2.4May be

That connect with top CMakeListst.txt,

    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY
      ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})

    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY
      ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})

    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY
      ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_BINDIR})

### 2.5Other Fix Or Not

Notice:

    Executing task: make -j 8 <

    [ 25%] Building CXX object petActive/CMakeFiles/petActive.dir/source/Pet.cpp.o
    
    [ 50%] Linking CXX static library ../lib/libpetActive.a
    
    [ 50%] Built target petActive
    
    [ 75%] Building CXX object CMakeFiles/main.dir/main.cpp.o
    
    [100%] Linking CXX executable bin/main
    
    [100%] Built target main

Finished.

END
