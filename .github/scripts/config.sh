#!/bin/bash

set -e # exit on error
set -x # echo on
set -o pipefail # fail of any command in pipeline is an error

BINUTILS_BRANCH=${BINUTILS_BRANCH:-woarm64}
GCC_BRANCH=${GCC_BRANCH:-woarm64}
MINGW_BRANCH=${MINGW_BRANCH:-woarm64}
CYGWIN_BRANCH=${CYGWIN_BRANCH:-main}
CYGWIN_PACKAGES_BRANCH=${CYGWIN_PACKAGES_BRANCH:-main}
COCOM_BRANCH=${COCOM_BRANCH:-master}

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

ROOT_PATH=${ROOT_PATH:-$(realpath $(dirname ${BASH_SOURCE[0]})/../..)}
SOURCE_PATH=${SOURCE_PATH:-$ROOT_PATH/code}
DOWNLOADS_PATH=${DOWNLOADS_PATH:-$ROOT_PATH/downloads}
PATCHES_PATH=${PATCHES_PATH:-$ROOT_PATH/patches}
BUILD_PATH=${BUILD_PATH:-$ROOT_PATH/build-$TOOLCHAIN_NAME}
CCACHE_DIR_PATH=${CCACHE_DIR_PATH:-$ROOT_PATH/ccache}
ARTIFACT_PATH=${ARTIFACT_PATH:-$ROOT_PATH/artifact}
BUILD_MAKE_OPTIONS=${BUILD_MAKE_OPTIONS:-V=1 -j$(nproc)}
TOOLCHAIN_PATH=${TOOLCHAIN_PATH:-~/cross-$TOOLCHAIN_NAME}
TOOLCHAIN_FILE=${TOOLCHAIN_FILE:-$ROOT_PATH/.github/cmake/$TARGET.cmake}
TOOLCHAIN_PACKAGE_NAME=${TOOLCHAIN_PACKAGE_NAME:-$TOOLCHAIN_NAME-toolchain.tar.gz}
DEJAGNU_FILE=${DEJAGNU_FILE:-$ROOT_PATH/.github/scripts/toolchain/site.exp}

ZLIB_PATH=${ZLIB_PATH:-~/zlib}
ZLIB_TESTS_PATH=${ZLIB_TESTS_PATH:-~/zlib-tests}

LIBXML2_PATH=${LIBXML2_PATH:-~/libxml2}

OPENSSL_PATH=${OPENSSL_PATH:-~/openssl}
OPENSSL_TESTS_PATH=${OPENSSL_TESTS_PATH:-~/openssl-tests}

LIBJPEG_TURBO_PATH=${LIBJPEG_TURBO_PATH:-~/libjpeg-turbo}
LIBJPEG_TURBO_TESTS_PATH=${LIBJPEG_TURBO_TESTS_PATH:-~/libjpeg-turbo-tests}

TESTS_PATH=${TESTS_PATH:-$ROOT_PATH/tests/build/bin/}
TESTS_PACKAGE_NAME=${TESTS_PACKAGE_NAME:-$TOOLCHAIN_NAME-tests.tar.gz}

FFMPEG_PATH=${FFMPEG_PATH:-~/ffmpeg}
FFMPEG_TESTS_PATH=${FFMPEG_TESTS_PATH:-~/ffmpeg-tests}

CCACHE_LIB_DIR=/usr/lib/ccache
TOOLCHAIN_CCACHE_LIB_DIR=$TOOLCHAIN_PATH/lib/ccache

DEBUG=${DEBUG:-0} # Enable debug build.
CCACHE=${CCACHE:-0} # Enable usage of ccache.
RUN_BOOTSTRAP=${RUN_BOOTSTRAP:-0} # Bootstrap dependencies during the build.
UPDATE_SOURCES=${UPDATE_SOURCES:-0} # Update source code repositories.
RESET_SOURCES=${RESET_SOURCES:-0} # Reset source code repositories before update.
APPLY_PATCHES=${APPLY_PATCHES:-1} # Patch source repositories for targets requiring it.
RUN_CONFIG=${RUN_CONFIG:-1} # Run configuration step.
RUN_INSTALL=${RUN_INSTALL:-1} # Run installation step.
DELETE_BUILD=${DELETE_BUILD:-0} # Delete build folders after successful builds.

PATH="$PATH:$TOOLCHAIN_PATH/bin"
if [[ "$CCACHE" = 1 ]]; then
    PATH=$CCACHE_LIB_DIR:$TOOLCHAIN_CCACHE_LIB_DIR:$PATH
    export CCACHE_DIR=$CCACHE_DIR_PATH
fi
