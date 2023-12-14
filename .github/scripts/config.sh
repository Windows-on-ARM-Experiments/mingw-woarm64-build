#!/bin/bash

set -e # exit on error
set -x # echo on

GCC_VERSION=${GCC_VERSION:-gcc-master}
BINUTILS_VERSION=${BINUTILS_VERSION:-binutils-master}
OPENBLAS_VERSION=${OPENBLAS_VERSION:-openblas-develop}
OPENSSL_VERSION=${OPENSSL_VERSION:-openssl-master}
LIBJPEG_TURBO_VERSION=${LIBJPEG_TURBO_VERSION:-libjpeg-turbo-main}

TARGET=${TARGET:-aarch64-w64-mingw32}
CRT=${CRT:-msvcrt}
TOOLCHAIN_NAME=${TOOLCHAIN_NAME:-$TARGET-$CRT}

SOURCE_PATH=${SOURCE_PATH:-$PWD/code}
PATCHES_PATH=${PATCHE_PATH:-$PWD/patches}
BUILD_PATH=${BUILD_PATH:-$PWD/build-$TOOLCHAIN_NAME}
ARTIFACT_PATH=${ARTIFACT_PATH:-$PWD/artifact}
BUILD_MAKE_OPTIONS=${BUILD_MAKE_OPTIONS:-V=1 -j$(nproc)}
TOOLCHAIN_PATH=${TOOLCHAIN_PATH:-~/cross-$TOOLCHAIN_NAME}
TOOLCHAIN_FILE=${TOOLCHAIN_FILE:-$PWD/.github/cmake/$TARGET.cmake}
TOOLCHAIN_PACKAGE_NAME=${TOOLCHAIN_PACKAGE_NAME:-$TOOLCHAIN_NAME-toolchain.tar.gz}

OPENSSL_PATH=${OPENSSL_PATH:-~/openssl}
OPENSSL_TESTS_PATH=${OPENSSL_PATH:-~/openssl-tests}

LIBJPEG_TURBO_PATH=${LIBJPEG_TURBO_PATH:-~/libjpeg-turbo}
LIBJPEG_TURBO_TESTS_PATH=${LIBJPEG_TURBO_TESTS_PATH:-~/libjpeg-turbo-tests}

RUN_CONFIG=${RUN_CONFIG:-1}
RUN_INSTALL=${RUN_INSTALL:-1}

PATH=$TOOLCHAIN_PATH/bin:$PATH
