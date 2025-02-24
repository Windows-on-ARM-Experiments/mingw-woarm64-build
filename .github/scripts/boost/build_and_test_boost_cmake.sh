#!/bin/bash

BOOST_BUILD_DIR=$1
BOOST_TEMPLATE_DIR=$2

source `dirname ${BASH_SOURCE[0]}`/config.sh

if [[ $# -lt 1 ]]; then
    echo "Expected at least 1 arguments!" >&2
    exit 1
fi

if [[ -d $BOOST_BUILD_DIR ]]; then
    echo "Directory $BOOST_BUILD_DIR already exists!" >&2
    exit 1
fi

mkdir -p $BOOST_BUILD_DIR

if [[ ! -z $BOOST_TEMPLATE_DIR && -d $BOOST_TEMPLATE_DIR ]]; then
    echo "Found Boost template dir '$BOOST_TEMPLATE_DIR', using it instead of cloning.."
    time cp -r $BOOST_TEMPLATE_DIR/* $BOOST_BUILD_DIR
else
    echo "Cloning Boost GitHub repository.."
    time git clone --recursive --single-branch https://github.com/boostorg/boost.git $BOOST_BUILD_DIR

    # Known snapshot where all builds worked (Boost 1.87).
    cd $BOOST_BUILD_DIR
    git checkout c89e6267665516192015a9e40955e154466f4f68
    git submodule update --init --recursive
    cd -

    # Fix for undefined reference to ws2_32 library.
    # Error: undefined reference to `__imp_WSAStartup'
    cd $BOOST_BUILD_DIR/libs/process
    git checkout 8df45b8f6861ed6bbc87f9b351942c0b239c7982
    cd -

    # Get version of charconv and json modules which have fast_float _umul128 fix.
    cd $BOOST_BUILD_DIR/libs/charconv
    git checkout abb721d55633d75d9638798d57d0f0b77ca77a5e
    cd -

    cd $BOOST_BUILD_DIR/libs/json
    git checkout 7b16bf74e6de0246844f9c1f438631880b58772c
    cd -

    # Switch serialization to current (as of 3rd Feb 2025) develop to get fix for missing dependency
    # on filesystem library.
    # Error: undefined reference to `boost::filesystem::detail::path_traits::convert(...)
    cd $BOOST_BUILD_DIR/libs/serialization
    git fetch --all --prune
    git checkout 8a8c62864f05732131bf6785d54466d8ac6cd477
    cd -

    # Unmerged fix: https://github.com/boostorg/thread/pull/408
    # Error: ../boost/thread/future.hpp:4671:19: error: ‘struct boost::detail::run_it<FutureExecutorContinuationSharedState>’ has no member named ‘that’; did you mean ‘that_’?
    cd $BOOST_BUILD_DIR/libs/thread
    git apply $ROOT_PATH/.github/scripts/boost/thread.patch
    cd -

    # Add missing assembler files definition for GCC+Win+Aarch64 in Boost.Context
    cd $BOOST_BUILD_DIR/libs/context
    git fetch --all --prune
    git checkout e4c91576d27c359f4b38a009409e5b611132de04
    cd -
fi

cd $BOOST_BUILD_DIR

# # cmake-install-posix:
# mkdir __build__ && cd __build__
# cmake -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=~/.local ..
# echo "Building..."
# cmake --build . -j 3
# echo "Installing..."
# cmake --build . -j 3 --target install
# cd -

# # cmake-test-posix:
# mkdir __build__ && cd __build__
# cmake -DBUILD_TESTING=ON -DBOOST_EXCLUDE_LIBRARIES="process;geometry" ..
# echo "Building tests..."
# cmake --build . -j 3 --target tests
# echo "Running tests..."
# ctest --output-on-failure --no-tests=error -j 3
# cd -

# cmake-test-posix-quick:
mkdir __build__ && cd __build__

cat > toolchain.txt <<- EOM
SET(CMAKE_SYSTEM_NAME Windows)
SET(CMAKE_C_COMPILER x86_64-w64-mingw32-gcc)
SET(CMAKE_CXX_COMPILER x86_64-w64-mingw32-g++)
SET(CMAKE_FIND_ROOT_PATH /usr/x86_64-w64-mingw32)

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search
# programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(CMAKE_INSTALL_PREFIX "./my_build")
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_SYSTEM_PROCESSOR x86_64)
set(BOOST_CHARCONV_QUADMATH_FOUND_EXITCODE 0) # Needed for cross-compilation
set(BOOST_CONTEXT_ARCHITECTURE "x86_64")
set(BOOST_CONTEXT_BINARY_FORMAT "pe")
set(BOOST_CONTEXT_ABI "ms")

set(CMAKE_CXX_FLAGS "-D_WIN32_WINNT=0x0A00")

EOM

cmake -DCMAKE_TOOLCHAIN_FILE=toolchain.txt -DBUILD_TESTING=ON -DBOOST_EXCLUDE_LIBRARIES=geometry ..
echo "Building test quick..."

# WSL linux x64 to win x64: x86_64-pc-linux-gnu -> x86_64-w64-mingw32
mkdir -p stage/bin
cp /usr/x86_64-w64-mingw32/lib/libwinpthread-1.dll stage/bin
cp /usr/lib/gcc/x86_64-w64-mingw32/13-win32/libstdc++-6.dll stage/bin
cp /usr/lib/gcc/x86_64-w64-mingw32/13-win32/libgcc_s_seh-1.dll stage/bin

time cmake --build . -j 3 --target tests-quick -- -k > boost-test-build-quick.log
# time VERBOSE=1 make -k tests-quick &> boost-test-build-quick.log

exit 0

echo "Running test quick..."
time ctest --output-on-failure --no-tests=error -j 8 -R quick &> boost-test-quick.log

exit 0

# time cmake --build . -j 3 --target tests -- -k &> boost-test-build-full.log
time VERBOSE=1 make -k tests &> boost-test-build-full.log
time ctest --output-on-failure --no-tests=error -j 8 &> boost-test-full.log
cd -
