#!/bin/bash

set -e # exit on error
set -x # echo on
set -o pipefail # fail of any command in pipeline is an error

GCC_VERSION=${GCC_VERSION:-gcc-master}
BINUTILS_VERSION=${BINUTILS_VERSION:-binutils-master}
OPENBLAS_VERSION=${OPENBLAS_VERSION:-openblas-develop}
ZLIB_VERSION=${ZLIB_VERSION:-zlib-develop}
LIBXML2_VERSION=${LIBXML2_VERSION:-libxml2-master}
OPENSSL_VERSION=${OPENSSL_VERSION:-openssl-master}
LIBJPEG_TURBO_VERSION=${LIBJPEG_TURBO_VERSION:-libjpeg-turbo-main}
FFMPEG_VERSION=${FFMPEG_VERSION:-ffmpeg-master}

ARCH=${ARCH:-aarch64}
PLATFORM=${PLATFORM:-w64-mingw32}
if [[ "$PLATFORM" =~ mingw ]]; then
    CRT=${CRT:-msvcrt}
else
    CRT=${CRT:-libc}
fi
BUILD=x86_64-pc-linux-gnu
HOST=x86_64-pc-linux-gnu
TARGET=$ARCH-$PLATFORM
TOOLCHAIN_NAME=${TOOLCHAIN_NAME:-$ARCH-$PLATFORM-$CRT}

if [[ ("$PLATFORM" =~ mingw && !("$CRT" =~ (msvcrt|ucrt))) ||
    ("$PLATFORM" =~ linux && "$CRT" != "libc") ]]; then
    echo "Unsupported target $PLATFORM with CRT $CRT!"
    exit 1
fi

SOURCE_PATH=${SOURCE_PATH:-$PWD/code}
PATCHES_PATH=${PATCHE_PATH:-$PWD/patches}
BUILD_PATH=${BUILD_PATH:-$PWD/build-$TOOLCHAIN_NAME}
ARTIFACT_PATH=${ARTIFACT_PATH:-$PWD/artifact}
BUILD_MAKE_OPTIONS=${BUILD_MAKE_OPTIONS:-V=1 -j$(nproc)}
TOOLCHAIN_PATH=${TOOLCHAIN_PATH:-~/cross-$TOOLCHAIN_NAME}
TOOLCHAIN_FILE=${TOOLCHAIN_FILE:-$PWD/.github/cmake/$TARGET.cmake}
TOOLCHAIN_PACKAGE_NAME=${TOOLCHAIN_PACKAGE_NAME:-$TOOLCHAIN_NAME-toolchain.tar.gz}

ZLIB_PATH=${ZLIB_PATH:-~/zlib}
ZLIB_TESTS_PATH=${ZLIB_PATH:-~/zlib-tests}

LIBXML2_PATH=${LIBXML2_PATH:-~/libxml2}

OPENSSL_PATH=${OPENSSL_PATH:-~/openssl}
OPENSSL_TESTS_PATH=${OPENSSL_PATH:-~/openssl-tests}

LIBJPEG_TURBO_PATH=${LIBJPEG_TURBO_PATH:-~/libjpeg-turbo}
LIBJPEG_TURBO_TESTS_PATH=${LIBJPEG_TURBO_TESTS_PATH:-~/libjpeg-turbo-tests}

TESTS_PATH=${TOOLCHAIN_PATH:-$PWD/tests/build/bin/}
TESTS_PACKAGE_NAME=${TESTS_PACKAGE_NAME:-$TOOLCHAIN_NAME-tests.tar.gz}

FFMPEG_PATH=${FFMPEG_PATH:-~/ffmpeg}
FFMPEG_TESTS_PATH=${FFMPEG_TESTS_PATH:-~/ffmpeg-tests}

DEBUG=${DEBUG:-0}
RUN_CONFIG=${RUN_CONFIG:-1}
RUN_INSTALL=${RUN_INSTALL:-1}

PATH=$PATH:$TOOLCHAIN_PATH/bin
