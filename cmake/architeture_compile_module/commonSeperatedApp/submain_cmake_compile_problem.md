# The problem happens comSepeApp Manually Compile using CMake

## 1.Problem A

### 1.1Terminal Output During Compile

    -- Configuring done

    CMake Error at apps/CMakeLists.txt:3 (add_executable):
    
      Cannot find source file:

        /Users/marryme/VSCode/CppProject/subMainClass/common/include/Pet.cpp

    CMake Error at common/CMakeLists.txt:1 (add_library):
   
      Cannot find source file:

        /Users/marryme/VSCode/CppProject/subMainClass/common/include/Pet.cpp

    -- Generating done

### 1.2Run Or Not

Not.

### 1.3Fix Or Not

Fix.

Trouble has happened on CMakeLists.txt under "`~/common/CMakeLists.txt`".

Change from

    target_sources(petactive
  
      PRIVATE
        
        ${CMAKE_CURRENT_LIST_DIR}/source/Pet.cpp
  
      PUBLIC
    
        ${CMAKE_CURRENT_LIST_DIR}/include/Pet.cpp
    )
to

    target_sources(petactive
  
      PRIVATE
        
        ${CMAKE_CURRENT_LIST_DIR}/source/Pet.cpp
  
      PUBLIC
    
        ${CMAKE_CURRENT_LIST_DIR}/include/Pet.h
    )

### 1.4May be

Include file has troubled at it's exten-name.

### 1.5Others Fix Or Not

No.
