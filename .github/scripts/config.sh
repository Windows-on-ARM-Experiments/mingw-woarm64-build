#!/bin/bash

set -e # exit on error
set -x # echo on
set -o pipefail # fail of any command in pipeline is an error

# Branches that will be used for build when UPDATE_SOURCES=1.
BINUTILS_REPO=${BINUTILS_REPO:-Windows-on-ARM-Experiments/binutils-woarm64}
BINUTILS_BRANCH=${BINUTILS_BRANCH:-woarm64}

GCC_REPO=${GCC_REPO:-Windows-on-ARM-Experiments/gcc-woarm64}
GCC_BRANCH=${GCC_BRANCH:-woarm64}

MINGW_REPO=${MINGW_REPO:-Windows-on-ARM-Experiments/mingw-woarm64}
MINGW_BRANCH=${MINGW_BRANCH:-woarm64}

CYGWIN_REPO=${CYGWIN_REPO:-Windows-on-ARM-Experiments/newlib-cygwin}
CYGWIN_BRANCH=${CYGWIN_BRANCH:-main}

CYGWIN_PACKAGES_REPO=${CYGWIN_PACKAGES_REPO:-Windows-on-ARM-Experiments/cygwin-packages}
CYGWIN_PACKAGES_BRANCH=${CYGWIN_PACKAGES_BRANCH:-main}

COCOM_REPO=${COCOM_REPO:-git://git.code.sf.net/p/cocom/git}
COCOM_BRANCH=${COCOM_BRANCH:-master}

# Baseline branches used for rebase when REBASE_SOURCES=1.
BINUTILS_BASE_BRANCH=woarm64
GCC_BASE_BRANCH=woarm64
MINGW_BASE_BRANCH=woarm64
CYGWIN_BASE_BRANCH=main
CYGWIN_PACKAGES_BASE_BRANCH=main
COCOM_BASE_BRANCH=master

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
RUNTIME_PACKAGE_NAME=${RUNTIME_PACKAGE_NAME:-$TOOLCHAIN_NAME-runtime.tar.gz}
DEJAGNU_FILE=${DEJAGNU_FILE:-$ROOT_PATH/.github/scripts/toolchain/site.exp}

OPENBLAS_REPO=${OPENBLAS_REPO:-OpenMathLib/OpenBLAS}
OPENBLAS_BRANCH=${OPENBLAS_BRANCH:-develop}

ZLIB_REPO=${ZLIB_REPO:-madler/zlib}
ZLIB_BRANCH=${ZLIB_BRANCH:-develop}
ZLIB_PATH=${ZLIB_PATH:-~/zlib}
ZLIB_TESTS_PATH=${ZLIB_TESTS_PATH:-~/zlib-tests}

LIBXML2_REPO=${LIBXML2_REPO:-GNOME/libxml2}
LIBXML2_BRANCH=${LIBXML2_BRANCH:-master}
LIBXML2_PATH=${LIBXML2_PATH:-~/libxml2}

OPENSSL_REPO=${OPENSSL_REPO:-Windows-on-ARM-Experiments/openssl}
OPENSSL_BRANCH=${OPENSSL_BRANCH:-fix-tests}
OPENSSL_PATH=${OPENSSL_PATH:-~/openssl}
OPENSSL_TESTS_PATH=${OPENSSL_TESTS_PATH:-~/openssl-tests}

LIBJPEG_TURBO_REPO=${LIBJPEG_TURBO_REPO:-libjpeg-turbo/libjpeg-turbo}
LIBJPEG_TURBO_BRANCH=${LIBJPEG_TURBO_BRANCH:-3.0.2}
LIBJPEG_TURBO_PATH=${LIBJPEG_TURBO_PATH:-~/libjpeg-turbo}
LIBJPEG_TURBO_TESTS_PATH=${LIBJPEG_TURBO_TESTS_PATH:-~/libjpeg-turbo-tests}

FFMPEG_REPO=${FFMPEG_REPO:-FFmpeg/FFmpeg}
FFMPEG_BRANCH=${FFMPEG_BRANCH:-release/6.1}
FFMPEG_PATH=${FFMPEG_PATH:-~/ffmpeg}
FFMPEG_TESTS_PATH=${FFMPEG_TESTS_PATH:-~/ffmpeg-tests}

TESTS_PATH=${TESTS_PATH:-$ROOT_PATH/tests/build/bin/}
TESTS_PACKAGE_NAME=${TESTS_PACKAGE_NAME:-$TOOLCHAIN_NAME-tests.tar.gz}

CCACHE_LIB_DIR=/usr/lib/ccache
TOOLCHAIN_CCACHE_LIB_DIR=$TOOLCHAIN_PATH/lib/ccache

if [[ -f $SOURCE_PATH/gcc/gcc/BASE-VER ]]; then
    GCC_VERSION=$(cat $SOURCE_PATH/gcc/gcc/BASE-VER)
else
    GCC_VERSION="15.0.0"
fi

DEBUG=${DEBUG:-1} # Enable debug build.
CCACHE=${CCACHE:-0} # Enable usage of ccache.
RUN_BOOTSTRAP=${RUN_BOOTSTRAP:-0} # Bootstrap dependencies during the build.
UPDATE_SOURCES=${UPDATE_SOURCES:-0} # Update source code repositories.
UPDATE_LIBRARIES=${UPDATE_LIBRARIES:-0} # Update also source code of tested libraries repositories.
FLAT_CLONE=${FLAT_CLONE:-1} # Whether the clone of source codes should be full or flat.
RESET_SOURCES=${RESET_SOURCES:-0} # Reset source code repositories before update.
REBASE_SOURCES=${REBASE_SOURCES:-0} # Together with the update, rebase repositories
                                    # to the baseline branches and push the result.
                                    # Unsupported when FLAT_CLONE=1.
APPLY_PATCHES=${APPLY_PATCHES:-1} # Patch source repositories for targets requiring it.
RUN_CONFIG=${RUN_CONFIG:-1} # Run configuration step.
RUN_INSTALL=${RUN_INSTALL:-1} # Run installation step.
DELETE_BUILD=${DELETE_BUILD:-0} # Delete build folders after successful builds.

PATH="$PATH:$TOOLCHAIN_PATH/bin:$ARTIFACT_PATH/bin"
if [[ "$CCACHE" = 1 ]]; then
    PATH=$CCACHE_LIB_DIR:$TOOLCHAIN_CCACHE_LIB_DIR:$PATH
    export CCACHE_DIR=$CCACHE_DIR_PATH
fi
