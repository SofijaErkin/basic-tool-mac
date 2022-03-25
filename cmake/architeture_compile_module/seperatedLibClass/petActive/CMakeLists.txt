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
