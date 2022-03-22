add_library(com_ext_lib_mata "")

target_sources(com_ext_lib_mata
  PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/source/call_external_lib.cpp
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/include/call_external_lib.h
)

target_include_directories(com_ext_lib_mata
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
)