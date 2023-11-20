set(CMAKE_VERBOSE_MAKEFILE ON)

if (NOT DEFINED ENV{TARGET}) 
  set(ENV{TARGET} "aarch64-w64-mingw32") 
endif()
if (NOT DEFINED ENV{INSTALL_PATH}) 
  set(ENV{INSTALL_PATH} "$ENV{HOME}/cross") 
endif()

set(CMAKE_C_COMPILER "$ENV{INSTALL_PATH}/bin/$ENV{TARGET}-gcc")
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_COMPILER "$ENV{INSTALL_PATH}/bin/$ENV{TARGET}-c++")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fopenmp")
set(CMAKE_RANLIB "$ENV{INSTALL_PATH}/bin/$ENV{TARGET}-ranlib")

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
  aarch64-mingw-tests.exe
  bigdata-test.cpp
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
  aarch64-mingw-tests.exe
  GTest::gtest_main
  dbghelp
)

set_target_properties(aarch64-mingw-tests.exe PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")