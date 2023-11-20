set(CMAKE_VERBOSE_MAKEFILE ON)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 14)
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
  aarch64-mingw-tests
  bigdata-test.cpp
  chkstk-test.c
  chkstk-test.cpp
  iostream-test.cpp
  math-test.c
  math-test.cpp
  omp-test.c
  omp-test.cpp
  pdata-test.c
  pdata-test.cpp
  sjlj-test.c
  sjlj-test.cpp
  struct-test.c
  struct-test.cpp
  throw-test.cpp
  varargs-test.c
  varargs-test.cpp
)

target_link_libraries(
  aarch64-mingw-tests
  GTest::gtest_main
  dbghelp
)

set_target_properties(aarch64-mingw-tests PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
