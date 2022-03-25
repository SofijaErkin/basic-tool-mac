add_library(petactive "")

target_sources(petactive
  PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/source/Pet.cpp
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/include/Pet.h
)

target_include_directories(petactive
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
)