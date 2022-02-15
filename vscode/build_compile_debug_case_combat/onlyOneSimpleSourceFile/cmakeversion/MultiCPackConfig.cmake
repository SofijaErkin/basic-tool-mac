# Packaging Debug and Release p-d-a-r-n-4-OVER.
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Packaging%20Debug%20and%20Release.html#multicpackconfig-cmake
include("release/CPackConfig.cmake")

set(CPACK_INSTALL_CMAKE_PROJECTS
    "debug;theFitBody;ALL;/"
    "release;theFitBody;ALL;/"
    )
#
# Run cpack specifying our custom configuration file with the config option.
# cpack --config MultiCPackConfig.cmake
# Packaging Debug and Release p-d-a-r-n-4-OVER.