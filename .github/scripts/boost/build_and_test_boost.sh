#!/bin/bash

BOOST_BUILD_DIR=$1

if [[ $# -lt 1 ]]; then
    echo "Expected at least 1 arguments!" >&2
    exit 1
fi

if [[ -d $BOOST_BUILD_DIR ]]; then
    echo "Directory $BOOST_BUILD_DIR already exists!" >&2
    exit 1
fi

source `dirname ${BASH_SOURCE[0]}`/../config.sh

GCC_VERSION=15
ARCHITECTURE=arm
ABI=aapcs

### Build toolchain
# export TOOLCHAIN_PATH=/home/vejby/cross-aarch64-w64-mingw32-msvcrt
# cd mingw-woarm64-build
# export RESET_SOURCES=1
# export BINUTILS_BRANCH=woarm64
# export GCC_BRANCH=woarm64
# export MINGW_BRANCH=woarm64
# ./build.sh > "toolchain-building.log"
# cd -

echo "Cloning Boost GitHub repository.."
mkdir -p $BOOST_BUILD_DIR
# Known snapshot where all builds worked (Boost 1.87)
git clone --recurse-submodules --single-branch https://github.com/boostorg/boost.git -b boost-1.87.0 $BOOST_BUILD_DIR
cd $BOOST_BUILD_DIR

# Add missing assembler files definition for GCC+Win+Aarch64 in Boost.Context
pushd libs/context
git checkout e4c91576d27c359f4b38a009409e5b611132de04
popd

# Switch serialization to current (as of 3rd Feb 2025) develop to get fix for missing dependency
# on filesystem library.
# Fixes error: undefined reference to `boost::filesystem::detail::path_traits::convert(...)
pushd libs/serialization
git checkout 8a8c62864f05732131bf6785d54466d8ac6cd477
popd

# Unmerged fix: https://github.com/boostorg/thread/pull/408
# Fixes error: ../boost/thread/future.hpp:4671:19: error: ‘struct boost::detail::run_it<FutureExecutorContinuationSharedState>’ has no member named ‘that’; did you mean ‘that_’?
pushd libs/thread
git apply $ROOT_PATH/.github/scripts/boost/thread.patch
popd


### Generate user-config.jam file which specifies desired toolchain, uncomment the line
### according to the system you're using
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

# Gcc is needed for running this as well but since this builds b2 system which will run on host,
# I'm using system gcc from package manager. On Linux it should be installed, on MSYS2 it might
# need to be installed manually (e.g. pacman -S gcc).
echo "Running Boost bootstrap.."
./bootstrap.sh > boost-bootstrap.log

echo "Running Boost b2 build..."
# MinGW defaults to an older version of Windows header files, Process library of Boost needs newer
# one, we default to the newest: define=_WIN32_WINNT=0x0A00
time ./b2 --user-config=./user-config.jam -d2 --prefix=./build --debug-configuration target-os=windows address-model=64 variant=debug architecture=$ARCHITECTURE binary-format=pe abi=$ABI toolset=gcc-$GCC_VERSION define=_WIN32_WINNT=0x0A00 cxxflags=-Wno-attributes link=static linkflags=-static-libstdc++ linkflags=-static-libgcc install > boost-build.log || true


echo "Running Boost tests..."
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
# We solve missing libraries:
#    from group 1 by using `linkflags=-static-libstdc++ linkflags=-static-libgcc` alt. `runtime-link=static`
#    from group 2 by using `link=static` to compile static version of libraries (Note: link=static
#       is not enough for linking runtime libraries statically, because it appends -static only
#       to compilation, not to linking commands)

### When our toolchain will be capable of linking dynamic runtime, we can copy these dlls instead
### of using `linkflags=-static-libstdc++ linkflags=-static-libgcc` to save disc space.
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

# There are multiple test suites in Boost:
#    quick - contains ~28 tests mostly each from different module (can be run with `b2 quick [other options]`)
#    minimal - contains hundreds of tests but not from all modules (can be run with `b2 minimal [other options]`)
#    full - contains all tests from all modules (can be run with `b2 [other options]`)
# When running e.g. minimal and then full test suite, use `-a` to rerun all tests from minimal
# in full as well to get complete log output.
# When running full test suite, we can specify modules to exclude from testing with
# `--exclude-tests=context,cobalt,coroutine,fiber,charconv,json,predef``

# Workaround failure:
# /bin/sh: 5: /home/vejby/boost-build-34-test-full-pthread-lib/status/boost_check_library.py: Permission denied
# EXIT STATUS: 126
chmod +x boost_check_library.py

# TODO: More granural usage of -mbig-obj (per modules)
time ../b2 -a --user-config=../user-config.jam -d2 --debug-configuration --hash target-os=windows address-model=64 variant=debug architecture=$ARCHITECTURE binary-format=pe abi=$ABI toolset=gcc-$GCC_VERSION define=_WIN32_WINNT=0x0A00 cxxflags=-Wno-error=attributes cxxflags=-Wno-attributes cxxflags=-Wa,-mbig-obj link=static linkflags=-static-libstdc++ linkflags=-static-libgcc > ../boost-test-full-static.log
