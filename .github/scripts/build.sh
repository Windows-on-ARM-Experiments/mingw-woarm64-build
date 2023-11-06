#!/bin/bash

set -e # exit on error
set -x # echo on

export TARGET=${TARGET:-aarch64-w64-mingw32}
export INSTALL_PATH=${INSTALL_PATH:-~/cross}

.github/scripts/build-binutils.sh
.github/scripts/build-mingw-headers.sh
.github/scripts/build-gcc.sh
.github/scripts/build-mingw-crt.sh
.github/scripts/build-libgcc.sh
.github/scripts/build-mingw.sh
.github/scripts/build-gcc-libs.sh

echo 'Success!'
