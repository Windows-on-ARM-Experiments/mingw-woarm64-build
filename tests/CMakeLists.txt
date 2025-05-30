set(CMAKE_VERBOSE_MAKEFILE ON)

if (NOT DEFINED ENV{TARGET}) 
  set(ENV{TARGET} "aarch64-w64-mingw32") 
endif()
if (NOT DEFINED ENV{TOOLCHAIN_NAME}) 
  set(ENV{TOOLCHAIN_NAME} "$ENV{TARGET}-msvcrt") 
endif()
if (NOT DEFINED ENV{TOOLCHAIN_PATH}) 
  set(ENV{TOOLCHAIN_PATH} "$ENV{HOME}/cross-$ENV{TOOLCHAIN_NAME}") 
endif()

set(CMAKE_C_COMPILER "$ENV{TOOLCHAIN_PATH}/bin/$ENV{TARGET}-gcc")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fopenmp -static")
set(CMAKE_RANLIB "$ENV{TOOLCHAIN_PATH}/bin/$ENV{TARGET}-ranlib")

set(CMAKE_INTERPROCEDURAL_OPTIMIZATION TRUE)

cmake_minimum_required(VERSION 3.14)
project(aarch64_mingw_tests)

enable_testing()

add_library(simple-dll SHARED dll.c)

add_executable(
  aarch64-mingw-tests.exe
  bigdata-test.c
  chkstk-test.c
  dll-test.c
  exception-constructor-test.cpp
  exception-chain-test.cpp
  large-alignment-test.c
  large-struct-test.c
  gtest_like_c.c
  main.c
  math-test.c
  nested-functions-test.c
  omp-test.c
  printf-double.c
  seh-fregp.cpp
  seh-large-func.cpp
  seh-stack-probing.cpp
  sjlj-test.c
  sscanf-double.c
  static-constructor.cpp
  static-function-test.c
  static-function.c
  struct-test.c
  varargs-test.c
  unwind-stack-test.c
  weak-references-test.c
  weak-references.c
)

target_link_libraries(
  aarch64-mingw-tests.exe
  simple-dll
)

set_source_files_properties(large-alignment-test.c PROPERTIES COMPILE_OPTIONS "-fno-lto")
set_target_properties(simple-dll PROPERTIES SUFFIX ".dll")
set_target_properties(simple-dll PROPERTIES LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
set_target_properties(aarch64-mingw-tests.exe PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
