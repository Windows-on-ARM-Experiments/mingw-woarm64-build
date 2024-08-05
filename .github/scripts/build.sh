#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

if [[ "$RUN_BOOTSTRAP" = 1 ]]; then
    .github/scripts/install-dependencies.sh
fi

if [[ "$CCACHE" = 1 ]]; then
    .github/scripts/enable-ccache.sh
fi

if [[ "$UPDATE_SOURCES" = 1 ]]; then
    .github/scripts/update-sources.sh
fi

if [[ "$APPLY_PATCHES" = 1 ]]; then
    case "$PLATFORM" in
        *cygwin*)
            .github/scripts/binutils/patch-cygwin.sh 1
            .github/scripts/toolchain/patch-cygwin.sh 1
            ;;
    esac
fi

if [[ "$RUN_BOOTSTRAP" = 1 || "$RESET_SOURCES" = 1 ]]; then
    .github/scripts/install-libraries.sh
fi

if [[ "$CCACHE" = 1 ]]; then
    ccache -sv
fi

.github/scripts/binutils/build.sh

if [[ "$PLATFORM" =~ linux ]]; then
    .github/scripts/toolchain/install-cross-headers-libs.sh
fi
if [[ "$PLATFORM" =~ (mingw|cygwin) ]]; then
    .github/scripts/toolchain/build-mingw-headers.sh
fi
if [[ "$PLATFORM" =~ cygwin ]]; then
    .github/scripts/toolchain/install-cygwin-headers.sh
fi

if [[ "$BUILD" != "$TARGET" ]]; then
    .github/scripts/toolchain/build-gcc-stage1.sh
fi

if [[ "$PLATFORM" =~ (mingw|cygwin) ]]; then
    .github/scripts/toolchain/build-mingw-crt.sh
fi
if [[ "$PLATFORM" =~ mingw ]]; then
    .github/scripts/toolchain/build-mingw-winpthreads.sh
fi
if [[ "$PLATFORM" =~ cygwin ]]; then
    .github/scripts/toolchain/build-cocom.sh
    .github/scripts/toolchain/build-cygwin.sh 1
fi

if [[ "$APPLY_PATCHES" = 1 ]]; then
    case "$PLATFORM" in
        *cygwin*)
            .github/scripts/binutils/patch-cygwin.sh 2
            .github/scripts/toolchain/patch-cygwin.sh 2
            ;;
    esac
fi

if [[ "$RUN_BOOTSTRAP" = 1 || "$RESET_SOURCES" = 1 ]]; then
    .github/scripts/install-libraries.sh
fi

.github/scripts/toolchain/build-gcc.sh

if [[ "$PLATFORM" =~ (mingw|cygwin) ]]; then
    .github/scripts/toolchain/build-mingw.sh
fi
if [[ "$PLATFORM" =~ cygwin ]]; then
    .github/scripts/toolchain/build-cygwin.sh 2
fi

if [[ "$CCACHE" = 1 ]]; then
    ccache -sv
fi

echo 'Success!'
