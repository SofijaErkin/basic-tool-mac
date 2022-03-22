# using main.cpp to product main.cpp.o, then using main.cpp.o to generate 
# target main
add_executable(apps_main main.cpp)

# add sub class/library directory 
add_subdirectory(apps_active)

# target file to link sub and apposed class/library directory
target_link_libraries(apps_main
  PRIVATE
    com_ext_lib_mata
    apps_active
)