# CMakeLists TXTs Manual

## 1.Architeture

I can remember that the Project architeture just like:

    cxx_project

    |
    
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
