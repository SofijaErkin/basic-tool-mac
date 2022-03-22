# The problem happens comSepeApp Manually Compile using CMake

## 1.Problem A

If top CMakeList.txt includes:

    include(GNUInstallDirs)

    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY
  
       ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})

    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY
  
       ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})

    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY

       ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_BINDIR})

Also, some changes in lanuch.json and settings.json. Target file is located at

from `~/build/debug` to `~/build/debug/bin`.

### 1.1Terminal Output During Compile

cmake:

    -- Configuring done

    -- Generating done
 
    -- Build files have been written to: /Users/yq/VSCode/CppProject/comSepeApp/build/debug

make:

    [ 66%] Building CXX object CMakeFiles/main.dir/common/source/Pet.cpp.o
    
    [ 66%] Building CXX object CMakeFiles/main.dir/apps/main.cpp.o

    [100%] Linking CXX executable bin/main

    [100%] Built target main

### 1.2Run Or Not

Run.

### 1.3Fix Or Not

No need to fix.

### 1.4May be

That controls the storing directory of the target file.

### 1.5Others Fix Or Not

No.

## 2.Problem A

If top CMakeList.txt Not includes:

    include(GNUInstallDirs)

    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY
  
       ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})

    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY
  
       ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})

    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY

       ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_BINDIR})

Also, some changes in lanuch.json and settings.json. Target file is located at

from `~/build/debug/bin` to `~/build/debug`.

### 2.1Terminal Output During Compile

cmake:

    -- Configuring done

    -- Generating done

    -- Build files have been written to: /Users/marryme/VSCode/CppProject/comSepeApp/build/debug

make:

    [ 66%] Building CXX object CMakeFiles/main.dir/apps/main.cpp.o

    [ 66%] Building CXX object CMakeFiles/main.dir/common/source/Pet.cpp.o

    [100%] Linking CXX executable main

    [100%] Built target main

### 2.2Run Or Not

Run.

### 2.3Fix Or Not

No need to fix.

### 2.4May be

That controls the storing directory of the target file.

### 2.5Others Fix Or Not

Using the generated target way of  the acceleator mapping "`cmake`" and

"`make`" debug more faster than "`Run Code ^\N`".
