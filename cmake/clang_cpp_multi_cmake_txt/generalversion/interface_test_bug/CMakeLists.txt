# Notice: have changed!
include_directories(${CMAKE_CURRENT_LIST_DIR}/include/*.h) 
add_executable(interface_test_mata source/pro_release_test_realize.cpp)

target_link_libraries(pro_test_bugs apps_active)

add_test(
  NAME
    pro_release_test_apps_active
  COMMAND
    $<TARGET_FILE:pro_test_bugs>
)