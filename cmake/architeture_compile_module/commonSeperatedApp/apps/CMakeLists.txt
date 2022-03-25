# using main.cpp to product main.cpp.o, then using main.cpp.o to generate 
# target main
add_executable(main main.cpp)

# add sub directory class
# add_subdirectory(sub_directoy)

# target file to link sub_directory
# target_link_libraries(main
#  PRIVATE
#    sub_directory_A
#    sub_directory_B
#    ...
#    apposed_directory_A
#    apposed_directory_B
#    ...
#    )
target_link_libraries(main
  PRIVATE
    petactive
    )

