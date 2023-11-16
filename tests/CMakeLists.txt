set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_C_COMPILER "$ENV{HOME}/cross/bin/aarch64-w64-mingw32-gcc")
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_COMPILER "$ENV{HOME}/cross/bin/aarch64-w64-mingw32-c++")
set(CMAKE_RANLIB "$ENV{HOME}/cross/bin/aarch64-w64-mingw32-ranlib")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fopenmp")

include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/b10fad38c4026a29ea6561ab15fc4818170d1c10.zip
)

FetchContent_MakeAvailable(googletest)

cmake_minimum_required(VERSION 3.14)
project(aarch64_mingw_tests)

enable_testing()

add_executable(
  aarch64_mingw_tests
  bigdata_test.cpp
  iostream_test.cpp
  math_test.c
  math_test.cpp
  omp_test.c
  omp_test.cpp
  pdata_test.c
  pdata_test.cpp
  sjlj_test.c
  sjlj_test.cpp
  struct_test.c
  struct_test.cpp
  throw_test.cpp
  varargs_test.c
  varargs_test.cpp
)

set_source_files_properties(test-dll.c PROPERTIES COMPILE_FLAGS "-DIMPORT_API=")

target_link_libraries(
  aarch64_mingw_tests
  GTest::gtest_main
  dbghelp
)
