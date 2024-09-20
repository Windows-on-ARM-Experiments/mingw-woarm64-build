#!/bin/bash

BOOST_BUILD_DIR=$1
BOOST_TEMPLATE_DIR=$2

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
    time git clone --recursive https://github.com/boostorg/boost.git $BOOST_BUILD_DIR
    # process module contained bug which prevented building it with MinGW, there's already fix
    # but it's not updated in Boost project yet.
    cd $BOOST_BUILD_DIR/libs/process
    git checkout develop
    cd -
fi

cd $BOOST_BUILD_DIR

echo "using gcc :  : /home/vejby/cross-aarch64-w64-mingw32-msvcrt/bin/aarch64-w64-mingw32-g++ ;" > "user-config.jam"

echo "Running Boost bootstrap.."
time ./bootstrap.sh > boost-bootstrap.log

echo "Running Boost b2 build..."
# --without-context --without-cobalt --without-coroutine --without-fiber
#    context contains assembler and it doesn't have specified target for MinGW Win ARM64
#    cobalt, coroutine and fiber depends on context
#    TODO: Investigate if I just didn't specify args uncorrectly as I had problems with that even
#       for x64 MinGW compilator
# --without-charconv --without-json
#    answer.low = _umul128(a, b, &high); // _umul128 not available on ARM64
# --without-predef
#    a library that defines a set of compiler architecture, operating system, library, and other
#    version numbers it can gather from predefined macros
#    -> needs to have specified target for MinGW Win ARM 64 as well
time ./b2 --user-config=./user-config.jam --prefix=./build --debug-configuration target-os=windows address-model=64 variant=debug debug-symbols=on install --without-context --without-cobalt --without-coroutine --without-fiber --without-charconv --without-json --without-predef --without-program_options > boost-build.log

echo "Running Boost test.."
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
# TODO: Solve missing libraries by copying them, appending LD_LIBRARY_PATH to Windows PATH or ...

# Can run quick/minimal or full test suite. When running full test suite, we can specify modules to
# be excluded from testing like --exclude-tests=context,cobalt,coroutine,fiber,charconv,json,predef
time ../b2 quick --user-config=../user-config.jam -a --debug-configuration -d+2 target-os=windows address-model=64 variant=debug debug-symbols=on --exclude-tests=program_options > ../boost-test.log
