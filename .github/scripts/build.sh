#!/bin/bash

set -e # exit on error
set -x # echo on

export RUN_CONFIG=${RUN_CONFIG:-1}
export RUN_INSTALL=${RUN_INSTALL:-1}
export BUILD=${BUILD:-x86_64-pc-linux-gnu}
export HOST=${HOST:-x86_64-pc-linux-gnu}
export TARGET=${TARGET:-aarch64-w64-mingw32}
export CRT=${CRT:-msvcrt}
export BUILD_MAKE_OPTIONS="V=1"
export INSTALL_PATH=${INSTALL_PATH:-~/cross}

.github/scripts/build-binutils.sh
.github/scripts/build-mingw-headers.sh
.github/scripts/build-gcc.sh
.github/scripts/build-mingw-crt.sh
.github/scripts/build-libgcc.sh
.github/scripts/build-mingw.sh
.github/scripts/build-gcc-libs.sh

export HOST=$TARGET

.github/scripts/build-binutils.sh

echo 'Success!'
