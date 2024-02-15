set(CMAKE_VERBOSE_MAKEFILE ON)

if (NOT DEFINED ENV{TARGET}) 
  set(ENV{TARGET} "aarch64-w64-mingw32") 
endif()
if (NOT DEFINED ENV{TOOLCHAIN_PATH}) 
  set(ENV{TOOLCHAIN_PATH} "$ENV{HOME}/cross") 
endif()

set(CMAKE_C_COMPILER "$ENV{TOOLCHAIN_PATH}/bin/$ENV{TARGET}-gcc")
# set(CMAKE_CXX_STANDARD_REQUIRED ON)
# set(CMAKE_CXX_STANDARD 14)
# set(CMAKE_CXX_COMPILER "$ENV{TOOLCHAIN_PATH}/bin/$ENV{TARGET}-c++")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fopenmp")
set(CMAKE_RANLIB "$ENV{TOOLCHAIN_PATH}/bin/$ENV{TARGET}-ranlib")

# include(FetchContent)
# FetchContent_Declare(
#   googletest
#   URL https://github.com/google/googletest/archive/b10fad38c4026a29ea6561ab15fc4818170d1c10.zip
# )
#
# FetchContent_MakeAvailable(googletest)

cmake_minimum_required(VERSION 3.14)
project(aarch64_mingw_tests)

enable_testing()

add_library(simple-dll SHARED dll.c)

add_executable(
  aarch64-mingw-tests.exe
  bigdata-test.c
  chkstk-test.c
#  chkstk-test.cpp
  dll-test.c
#  dll-test.cpp
  gtest_like_c.c
#  iostream-test.cpp
  main.c
  math-test.c
# math-test.cpp
  nested-functions-test.c
#  nested-functions-test.cpp
  omp-test.c
#  omp-test.cpp
  pdata-test.c
#  pdata-test.cpp
  sjlj-test.c
#  sjlj-test.cpp
  sscanf-double.c
#  sscanf-double.cpp
  struct-test.c
#  struct-test.cpp
#  throw-test.cpp
  varargs-test.c
#  varargs-test.cpp
)

target_link_libraries(
  aarch64-mingw-tests.exe
#  GTest::gtest_main
  simple-dll
)

set_target_properties(simple-dll PROPERTIES SUFFIX ".dll")
set_target_properties(simple-dll PROPERTIES LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
set_target_properties(aarch64-mingw-tests.exe PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
