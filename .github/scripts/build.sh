#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config-mingw.sh

.github/scripts/binutils/build.sh
if [[ "$PLATFORM" =~ linux ]]; then
    .github/scripts/binutils/install-cross-headers-libs.sh
fi
if [[ "$PLATFORM" =~ mingw ]]; then
    .github/scripts/toolchain/build-mingw-headers.sh
fi
.github/scripts/toolchain/build-gcc.sh
if [[ "$PLATFORM" =~ mingw ]]; then
    .github/scripts/toolchain/build-mingw-crt.sh
fi
.github/scripts/toolchain/build-libgcc.sh
if [[ "$PLATFORM" =~ mingw ]]; then
    .github/scripts/toolchain/build-mingw.sh
fi
.github/scripts/toolchain/build-gcc-libs.sh

echo 'Success!'
