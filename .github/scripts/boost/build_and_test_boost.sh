#!/bin/bash

BOOST_BUILD_DIR=$1
BOOST_TEMPLATE_DIR=$2

source `dirname ${BASH_SOURCE[0]}`/config.sh

export TOOLCHAIN_PATH=/home/vejby/cross-aarch64-w64-mingw32-msvcrt

GCC_VERSION=15
ARCHITECTURE=arm
ABI=aapcs

if [[ $# -lt 1 ]]; then
    echo "Expected at least 1 arguments!" >&2
    exit 1
fi

if [[ -d $BOOST_BUILD_DIR ]]; then
    echo "Directory $BOOST_BUILD_DIR already exists!" >&2
    exit 1
fi

# Build toolchain
# cd mingw-woarm64-build
# export RESET_SOURCES=1
# export BINUTILS_BRANCH=woarm64
# export GCC_BRANCH=woarm64
# export MINGW_BRANCH=woarm64
# ./build.sh > "toolchain-building.log"
# cd -

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

# WSL linux x64 to win x64: x86_64-pc-linux-gnu -> x86_64-w64-mingw32
# GCC_VERSION=10, ARCHITECTURE=x86, ABI=ms
# echo "using gcc : $GCC_VERSION : x86_64-w64-mingw32-g++ : : <target-os>windows <address-model>64 <architecture>$ARCHITECTURE ;" > "user-config.jam"

# WSL linux arm64 -> win arm64: aarch64-pc-linux-gnu -> aarch64-w64-mingw32 or
# WSL linux x64 -> win arm64: x86_64-pc-linux-gnu -> aarch64-w64-mingw32
# GCC_VERSION=15, ARCHITECTURE=arm, ABI=aapcs
echo "using gcc : $GCC_VERSION : $TOOLCHAIN_PATH/bin/aarch64-w64-mingw32-g++ : : <target-os>windows <address-model>64 <architecture>$ARCHITECTURE ;" > "user-config.jam"

# MSYS x64 -> win x64: x86_64-pc-msys -> x86_64-pc-msys
# GCC_VERSION=13, ARCHITECTURE=x86, ABI=ms
# echo "using gcc : $GCC_VERSION : /usr/bin/x86_64-pc-msys-g++ : : <target-os>windows <address-model>64 <architecture>$ARCHITECTURE ;" > "user-config.jam"

# MSYS x64 -> win arm64: x86_64-pc-msys -> aarch64-w64-mingw32
# GCC_VERSION=15, ARCHITECTURE=arm, ABI=aapcs
# echo "using gcc : $GCC_VERSION : /opt/bin/aarch64-w64-mingw32-g++ : : <target-os>windows <address-model>64 <architecture>$ARCHITECTURE ;" > "user-config.jam"

# MSYS arm64 -> win arm64: aarch64-w64-mingw32 -> aarch64-w64-mingw32
# GCC_VERSION=15, ARCHITECTURE=arm, ABI=aapcs
# echo "using gcc : $GCC_VERSION : /mingwarm64/bin/aarch64-w64-mingw32-g++ : : <target-os>windows <address-model>64 <architecture>$ARCHITECTURE ;" > "user-config.jam"

# Some gcc is needed for running this as well. I'm using MinGW from package manager (e.g. pacman -S gcc)
echo "Running Boost bootstrap.."
time ./bootstrap.sh > boost-bootstrap.log

echo "Running Boost b2 build..."
# --without-context --without-coroutine --without-fiber
#    context contains assembler and it doesn't have specified target for MinGW Win ARM64
#    coroutine and fiber depends on context and they invoke its build, so we have to skip them
#    (also Cobalt depends on it but build seems to work just fine with it)
#    TODO: Investigate if I just didn't specify args uncorrectly as I had problems with that even
#       for x64 MinGW compilator
# --without-charconv --without-json
#    answer.low = _umul128(a, b, &high); // _umul128 not available on ARM64
# --without-predef
#    a library that defines a set of compiler architecture, operating system, library, and other
#    version numbers it can gather from predefined macros
#    -> needs to have specified target for MinGW Win ARM 64 as well

# MinGW defaults to an older version of Windows header files, Process library of Boost needs newer
# one, we default to the newest: define=_WIN32_WINNT=0x0A00
time ./b2 --user-config=./user-config.jam -d2 --prefix=./build --debug-configuration target-os=windows address-model=64 variant=debug architecture=$ARCHITECTURE binary-format=pe abi=$ABI toolset=gcc-$GCC_VERSION define=_WIN32_WINNT=0x0A00 cxxflags=-Wno-attributes linkflags=-static-libstdc++ linkflags=-static-libgcc link=static install > boost-build.log

echo "Running Boost quick test.."
cd status

# Built test executables can depend on various DLLs. These can be categorized into two groups:
#    1) Compiler DLLs (e.g. C++ std library), namely I noticed libstdc++-6.dll, libgcc_s_seh-1.dll,
#       libwinpthread-1.dll
#    2) Boost module DLLs, examples are libboost_unit_test_framework.dll or libboost_regex.dll
#
# Testing framework expects to be running tests on linux, so it uses LD_LIBRARY_PATH for specifying
# paths to those DLLs before running test executable (DLLs from group 1 might be also passed
# by a different method, not sure about that yet)
#
# This doesn't work as test .exe files are actually run on Windows which doesn't understand
# LD_LIBRARY_PATH.
#
# We solve missing libraries from group 1 by copying them and missing libraries from group 2 by
# building tests with static linking.

### Not needed to copy these if we link runtime statically
# WSL linux x64 to win x64: x86_64-pc-linux-gnu -> x86_64-w64-mingw32
# cp /usr/x86_64-w64-mingw32/lib/libwinpthread-1.dll .
# cp /usr/lib/gcc/x86_64-w64-mingw32/13-win32/libstdc++-6.dll .
# cp /usr/lib/gcc/x86_64-w64-mingw32/13-win32/libgcc_s_seh-1.dll .

# WSL linux arm64 -> win arm64: aarch64-pc-linux-gnu -> aarch64-w64-mingw32 or
# WSL linux x64 -> win arm64: x86_64-pc-linux-gnu -> aarch64-w64-mingw32
# cp $TOOLCHAIN_PATH/lib/gcc/aarch64-w64-mingw32/libgcc_s_seh-1.dll .
# cp $TOOLCHAIN_PATH/lib/gcc/aarch64-w64-mingw32/15.0.0/libstdc++-6.dll .
# cp $TOOLCHAIN_PATH/aarch64-w64-mingw32/bin/libwinpthread-1.dll .

# MSYS x64 -> win x64: x86_64-w64-mingw32 -> x86_64-w64-mingw32
# cp /mingw64/bin/libgcc_s_seh-1.dll .
# cp /mingw64/bin/libstdc++-6.dll .

# MSYS x64 -> arm64: x86_64-pc-msys -> aarch64-w64-mingw32
# cp /opt/lib/gcc/aarch64-w64-mingw32/15.0.0/libgcc_s_seh-1.dll .
# cp /opt/lib/gcc/aarch64-w64-mingw32/15.0.0/libstdc++-6.dll .

# MSYS x64 -> arm64: x86_64-pc-msys -> aarch64-w64-mingw32
# cp /mingwarm64/bin/libgcc_s_seh-1.dll .
# cp /mingwarm64/bin/libstdc++-6.dll .

# Can run quick/minimal or full test suite. When running full test suite, we can specify modules to
# be excluded from testing like --exclude-tests=context,cobalt,coroutine,fiber,charconv,json,predef

# link=static runtime-link=static (link=static is not enough for linking runtime libraries statically, because it appends -static only to compilation, not to linking commands)
# linkflags=-static-libstdc++ linkflags=-static-libgcc (or just pass -static to linker?)
# TODO: More granural usage of -mbig-obj (per modules)
time ../b2 quick -a --user-config=../user-config.jam -d2 --debug-configuration --hash target-os=windows address-model=64 variant=debug architecture=$ARCHITECTURE binary-format=pe abi=$ABI toolset=gcc-$GCC_VERSION define=_WIN32_WINNT=0x0A00 cxxflags=-Wno-error=attributes cxxflags=-Wno-attributes cxxflags=-Wa,-mbig-obj link=static linkflags=-static-libstdc++ linkflags=-static-libgcc > ../boost-test-quick-static.log

echo "Running Boost minimal test.."
time ../b2 minimal -a --user-config=../user-config.jam -d2 --debug-configuration --hash target-os=windows address-model=64 variant=debug architecture=$ARCHITECTURE binary-format=pe abi=$ABI toolset=gcc-$GCC_VERSION define=_WIN32_WINNT=0x0A00 cxxflags=-Wno-error=attributes cxxflags=-Wno-attributes cxxflags=-Wa,-mbig-obj link=static linkflags=-static-libstdc++ linkflags=-static-libgcc > ../boost-test-minimal-static.log

echo "Running Boost full test.."

# Workaround failure:
# /bin/sh: 5: /home/vejby/boost-build-34-test-full-pthread-lib/status/boost_check_library.py: Permission denied
# EXIT STATUS: 126
chmod +x boost_check_library.py

time ../b2 -a --user-config=../user-config.jam -d2 --debug-configuration --hash target-os=windows address-model=64 variant=debug architecture=$ARCHITECTURE binary-format=pe abi=$ABI toolset=gcc-$GCC_VERSION define=_WIN32_WINNT=0x0A00 cxxflags=-Wno-error=attributes cxxflags=-Wno-attributes cxxflags=-Wa,-mbig-obj link=static linkflags=-static-libstdc++ linkflags=-static-libgcc > ../boost-test-full-static.log
