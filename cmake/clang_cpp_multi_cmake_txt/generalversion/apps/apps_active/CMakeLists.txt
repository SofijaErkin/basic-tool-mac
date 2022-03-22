add_library(apps_active "")

target_sources(apps_active
  PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/source/call_apps_active.cpp
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/include/call_apps_active.h
)

target_include_directories(apps_active
  PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
)