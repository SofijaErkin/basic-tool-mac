# Seperated Libclass C/C++ Manually CMake VSCode on Mac(Tween CMake Version)

workspace environment:

Clang: `9.0.0`;

Llvm-gcc: `4.2.1`;

Visual Studio Code `v1.63.2`;

Code Runner `v0.11.6` (Author: Jun Han);

CodeLLDB `v1.4.5` or `v1.5.0` (Author: Vadim Chugunov).

The Architecture of workspace are:

    mainSub

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
    
    |__main.cpp
    
    |__mainSub_cmake_compile_problem.md
    
    |_petActive
    
          |__CMakeLists.txt
          
          |_include
          
          |     |__Pet.h
          
          |_source
    
                |__Pet.cpp
       
I will add the 10 file via adding file.

Others, 

~/mainSub/petActive/CMakeLists.txt just like:

    add_library(petActive "")

    target_sources(petActive
  
      PRIVATE
   
        ${CMAKE_CURRENT_LIST_DIR}/source/Pet.cpp
  
      PUBLIC
    
        ${CMAKE_CURRENT_LIST_DIR}/include/Pet.h
    )

    target_include_directories(petActive
  
      PUBLIC
    
        ${CMAKE_CURRENT_LIST_DIR}
     )

END.

