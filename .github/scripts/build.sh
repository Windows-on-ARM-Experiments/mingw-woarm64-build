#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

if [ "$RUN_BOOTSTRAP" = 1 ]; then
    .github/scripts/install-dependencies.sh
    .github/scripts/install-libraries.sh
fi

.github/scripts/binutils/build.sh

if [[ "$PLATFORM" =~ linux ]]; then
    .github/scripts/toolchain/install-cross-headers-libs.sh
fi

if [[ "$PLATFORM" =~ mingw ]]; then
    .github/scripts/toolchain/build-mingw-headers.sh
fi

if [ "$BUILD" != "$TARGET" ]; then
    .github/scripts/toolchain/build-gcc-stage1.sh
fi

if [[ "$PLATFORM" =~ mingw ]]; then
    .github/scripts/toolchain/build-mingw-crt.sh
    .github/scripts/toolchain/build-mingw-winpthreads.sh
fi

.github/scripts/toolchain/build-gcc.sh

if [[ "$PLATFORM" =~ mingw ]]; then
    .github/scripts/toolchain/build-mingw.sh
fi

echo 'Success!'
