#!/bin/bash
# This script downloads and configures packages, 
# builds and installs the Windows on ARM64 GNU Toolchain.

set -e # exit on error
set -x # echo on

BINUTILS_REPO=${BINUTILS_REPO:-https://github.com/Windows-on-ARM-Experiments/binutils-woarm64.git}
BINUTILS_BRANCH=${BINUTILS_BRANCH:-woarm64}

GCC_REPO=${GCC_REPO:-https://github.com/Windows-on-ARM-Experiments/gcc-woarm64.git}
GCC_BRANCH=${GCC_BRANCH:-woarm64}

MINGW_REPO=${MINGW_REPO:-https://github.com/Windows-on-ARM-Experiments/mingw-woarm64.git}
MINGW_BRANCH=${MINGW_BRANCH:-woarm64}

RUN_BOOTSTRAP=1 UPDATE_SOURCE=1 .github/scripts/build.sh

echo 'Success!'
