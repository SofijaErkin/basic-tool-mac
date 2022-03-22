# CMakeLists TXTs Manual

## Workspace environment

Clang: `9.0.0`;

Llvm-gcc: `4.2.1`;

Visual Studio Code `v1.63.2`;

Code Runner `v0.11.6` (Author: Jun Han);

CodeLLDB `v1.4.5` or `v1.5.0` (Author: Vadim Chugunov).

## Architeture

I can remember that the Project architeture just like:

    cxx_project

    |

    |_.vscode

    |     |__c_cpp_properties.json

    |     |__launch.json

    |     |__settings.json

    |     |__tasks.json
    
    |__CMakeLists.txt

    |__README.md

    |_apps

    |    |__CMakeLists.txt

    |    |__README.md

    |    |_apps_active

    |    |    |__CMakeLists.txt

    |    |    |__README.md

    |    |    |_include

    |    |    |    |__call_apps_active.h

    |    |    |_source

    |    |         |__call_apps_active.cpp

    |    |__apps_main.cpp

    |_build
    
    |     |_debug
    
    |     |_release

    |_common_external_library

    |    |__CMakeLists.txt

    |    |__README.md

    |    |_include

    |    |    |_call_external_lib.h

    |    |_source

    |         |_call_external_lib.cpp

    |_interface_test_bug

         |__CMakeLists.txt

         |__README.md

         |_include

         |    |__pro_test_catch_bug.h

         |_source

              |__pro_release_test_realize.cpp
