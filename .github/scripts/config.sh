#!/bin/bash

set -e # exit on error
set -x # echo on
set -o pipefail # fail of any command in pipeline is an error

GCC_VERSION=${GCC_VERSION:-gcc-master}
BINUTILS_VERSION=${BINUTILS_VERSION:-binutils-master}
MINGW_VERSION=${MINGW_VERSION:-mingw-w64-master}
CYGWIN_VERSION=${CYGWIN_VERSION:-cygwin-master}
COCOM_VERSION=${COCOM_VERSION:-cocom-master}
OPENBLAS_VERSION=${OPENBLAS_VERSION:-openblas-develop}
ZLIB_VERSION=${ZLIB_VERSION:-zlib-develop}
LIBXML2_VERSION=${LIBXML2_VERSION:-libxml2-master}
OPENSSL_VERSION=${OPENSSL_VERSION:-openssl-master}
LIBJPEG_TURBO_VERSION=${LIBJPEG_TURBO_VERSION:-libjpeg-turbo-main}
FFMPEG_VERSION=${FFMPEG_VERSION:-ffmpeg-master}

ARCH=${ARCH:-aarch64}
PLATFORM=${PLATFORM:-w64-mingw32}
if [[ "$PLATFORM" =~ (mingw|cygwin) ]]; then
    CRT=${CRT:-msvcrt}
else
    CRT=${CRT:-libc}
fi
BUILD=x86_64-pc-linux-gnu
HOST=x86_64-pc-linux-gnu
TARGET=$ARCH-$PLATFORM
TOOLCHAIN_NAME=${TOOLCHAIN_NAME:-$ARCH-$PLATFORM-$CRT}

if [[ ("$PLATFORM" =~ (mingw|cygwin) && !("$CRT" =~ (msvcrt|ucrt))) ||
    ("$PLATFORM" =~ linux && "$CRT" != "libc") ]]; then
    echo "Unsupported target $PLATFORM with CRT $CRT!"
    exit 1
fi

SOURCE_PATH=${SOURCE_PATH:-$PWD/code}
DOWNLOADS_PATH=${DOWNLOADS_PATH:-$PWD/downloads}
PATCHES_PATH=${PATCHES_PATH:-$PWD/patches}
BUILD_PATH=${BUILD_PATH:-$PWD/build-$TOOLCHAIN_NAME}
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

DEBUG=${DEBUG:-0}
CCACHE=${CCACHE:-0}
RUN_BOOTSTRAP=${RUN_BOOTSTRAP:-0}
RUN_CONFIG=${RUN_CONFIG:-1}
RUN_INSTALL=${RUN_INSTALL:-1}

PATH=$PATH:$TOOLCHAIN_PATH/bin

if [ "$CCACHE" = 1 ]; then
    PATH=/usr/lib/ccache:$TOOLCHAIN_PATH/lib/ccache:$PATH
fi
