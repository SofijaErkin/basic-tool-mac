# Testing dashboard theFitBody t-d-t-f-b-n-2-CMakeLists.txt -------------------
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Support%20for%20a%20Testing%20Dashboard.html#ctestconfig-cmake
set(CTEST_PROJECT_NAME "CMaketheFitBody")
# The project name
set(CTEST_NIGHTLY_START_TIME "00:00:00 UTC")
# The project "Nightly" start time
set(CTEST_DROP_METHOD "http")
set(CTEST_DROP_SITE "my.cdash.org")
set(CTEST_DROP_LOCATION "/submit.php?project=CMaketheFitBody")
# The URL of the CDash instance where the submission's generated documents will
# be sent.
set(CTEST_DROP_SITE_CDASH TRUE)
# Testing dashboard theFitBody t-d-t-f-b-n-2-CMakeLists.txt -------------------