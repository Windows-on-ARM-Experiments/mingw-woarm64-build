#!/bin/bash
# This script downloads and configures packages, 
# builds and installs the Windows on ARM64 GNU Toolchain.

set -e # exit on error
set -x # echo on

export BINUTILS_REPO=${BINUTILS_REPO:-https://github.com/Windows-on-ARM-Experiments/binutils-woarm64.git}
export BINUTILS_BRANCH=${BINUTILS_BRANCH:-woarm64}

export GCC_REPO=${GCC_REPO:-https://github.com/Windows-on-ARM-Experiments/gcc-woarm64.git}
export GCC_BRANCH=${GCC_BRANCH:-woarm64}

export MINGW_REPO=${MINGW_REPO:-https://github.com/Windows-on-ARM-Experiments/mingw-woarm64.git}
export MINGW_BRANCH=${MINGW_BRANCH:-woarm64}

export RUN_BOOTSTRAP=${RUN_BOOTSTRAP:-1}
export UPDATE_SOURCES=${UPDATE_SOURCES:-1}

.github/scripts/build.sh

echo 'Success!'
