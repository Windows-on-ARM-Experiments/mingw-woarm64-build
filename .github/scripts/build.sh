#!/bin/bash

source `dirname $0`/config-mingw.sh

.github/scripts/build-binutils.sh
if [ $BUILD_MINGW ]; then
    .github/scripts/build-mingw-headers.sh
fi
.github/scripts/build-gcc.sh
if [ $BUILD_MINGW ]; then
    .github/scripts/build-mingw-crt.sh
fi
.github/scripts/build-libgcc.sh
if [ $BUILD_MINGW ]; then
    .github/scripts/build-mingw.sh
fi
.github/scripts/build-gcc-libs.sh

echo 'Success!'
