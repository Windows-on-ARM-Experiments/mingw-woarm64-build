#!/bin/bash

source `dirname $0`/config-mingw.sh

.github/scripts/build-binutils.sh
.github/scripts/build-mingw-headers.sh
.github/scripts/build-gcc.sh
.github/scripts/build-mingw-crt.sh
.github/scripts/build-libgcc.sh
.github/scripts/build-mingw.sh
.github/scripts/build-gcc-libs.sh

echo 'Success!'
