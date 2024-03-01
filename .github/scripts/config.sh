#!/bin/bash

set -e # exit on error
set -x # echo on
set -o pipefail # fail of any command in pipeline is an error

ARCH=${ARCH:-aarch64}
PLATFORM=${PLATFORM:-w64-mingw32}
if [[ "$PLATFORM" =~ (mingw|cygwin) ]]; then
    CRT=${CRT:-msvcrt}
else
    CRT=${CRT:-libc}
fi

PROCESSOR=$(uname --processor)
BUILD=${BUILD:-$PROCESSOR-pc-linux-gnu}
HOST=${HOST:-$PROCESSOR-pc-linux-gnu}
TARGET=$ARCH-$PLATFORM
TOOLCHAIN_NAME=${TOOLCHAIN_NAME:-$ARCH-$PLATFORM-$CRT}

if [[ ("$PLATFORM" =~ (mingw|cygwin) && ! ("$CRT" =~ (msvcrt|ucrt))) ||
    ("$PLATFORM" =~ linux && "$CRT" != "libc") ]]; then
    echo "Unsupported target $PLATFORM with CRT $CRT!"
    exit 1
fi

SOURCE_PATH=${SOURCE_PATH:-$PWD/code}
DOWNLOADS_PATH=${DOWNLOADS_PATH:-$PWD/downloads}
PATCHES_PATH=${PATCHES_PATH:-$PWD/patches}
BUILD_PATH=${BUILD_PATH:-$PWD/build-$TOOLCHAIN_NAME}
CCACHE_DIR_PATH=${CCACHE_DIR_PATH:-$PWD/ccache}
ARTIFACT_PATH=${ARTIFACT_PATH:-$PWD/artifact}
BUILD_MAKE_OPTIONS=${BUILD_MAKE_OPTIONS:-V=1 -j$(nproc)}
TOOLCHAIN_PATH=${TOOLCHAIN_PATH:-~/cross-$TOOLCHAIN_NAME}
TOOLCHAIN_FILE=${TOOLCHAIN_FILE:-$PWD/.github/cmake/$TARGET.cmake}
TOOLCHAIN_PACKAGE_NAME=${TOOLCHAIN_PACKAGE_NAME:-$TOOLCHAIN_NAME-toolchain.tar.gz}
DEJAGNU_FILE=${DEJAGNU_FILE:-$PWD/.github/scripts/toolchain/site.exp}

ZLIB_PATH=${ZLIB_PATH:-~/zlib}
ZLIB_TESTS_PATH=${ZLIB_TESTS_PATH:-~/zlib-tests}

LIBXML2_PATH=${LIBXML2_PATH:-~/libxml2}

OPENSSL_PATH=${OPENSSL_PATH:-~/openssl}
OPENSSL_TESTS_PATH=${OPENSSL_TESTS_PATH:-~/openssl-tests}

LIBJPEG_TURBO_PATH=${LIBJPEG_TURBO_PATH:-~/libjpeg-turbo}
LIBJPEG_TURBO_TESTS_PATH=${LIBJPEG_TURBO_TESTS_PATH:-~/libjpeg-turbo-tests}

TESTS_PATH=${TESTS_PATH:-$PWD/tests/build/bin/}
TESTS_PACKAGE_NAME=${TESTS_PACKAGE_NAME:-$TOOLCHAIN_NAME-tests.tar.gz}

FFMPEG_PATH=${FFMPEG_PATH:-~/ffmpeg}
FFMPEG_TESTS_PATH=${FFMPEG_TESTS_PATH:-~/ffmpeg-tests}

if [[ -n "$MSYSTEM" ]]; then
    CCACHE_LIB_DIR=/usr/lib/ccache/bin
else
    CCACHE_LIB_DIR=/usr/lib/ccache
fi
TOOLCHAIN_CCACHE_LIB_DIR=$TOOLCHAIN_PATH/lib/ccache

DEBUG=${DEBUG:-0} # Enable debug build.
TEST=${TEST:-1} # Test the toolchain.
CCACHE=${CCACHE:-1} # Enable usage of ccache.
RUN_BOOTSTRAP=${RUN_BOOTSTRAP:-0} # Bootstrap dependencies during the build.
UPDATE_SOURCES=${UPDATE_SOURCES:-1} # Update source code repositories.
RESET_SOURCES=${RESET_SOURCES:-1} # Reset source code repositories before update.
APPLY_PATCHES=${APPLY_PATCHES:-1} # Patch source repositories for targets requiring it.
RUN_CONFIG=${RUN_CONFIG:-1} # Run configuration step.
RUN_INSTALL=${RUN_INSTALL:-1} # Run installation step.
DELETE_BUILD=${DELETE_BUILD:-0} # Delete build folders after successful builds.

if [[ -n "$MSYSTEM" ]]; then
    export MSYS=winsymlinks
    PATH="$TOOLCHAIN_PATH/bin:$TOOLCHAIN_PATH/lib/gcc/$TARGET/15.0.0:/opt/bin:$PATH"
else
    PATH="$PATH:$TOOLCHAIN_PATH/bin"
fi

if [[ "$CCACHE" = 1 ]]; then
    PATH=$CCACHE_LIB_DIR:$TOOLCHAIN_CCACHE_LIB_DIR:$PATH
    export CCACHE_DIR=$CCACHE_DIR_PATH
fi
