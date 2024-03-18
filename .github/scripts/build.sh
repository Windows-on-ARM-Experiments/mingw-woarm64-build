#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

if [[ "$RUN_BOOTSTRAP" = 1 ]]; then
    $ROOT_PATH/.github/scripts/install-dependencies.sh
fi

if [[ "$CCACHE" = 1 ]]; then
    source $ROOT_PATH/.github/scripts/enable-ccache.sh
fi

if [[ "$UPDATE_SOURCES" = 1 ]]; then
    $ROOT_PATH/.github/scripts/update-sources.sh
fi

if [[ "$APPLY_PATCHES" = 1 ]]; then
    case "$PLATFORM" in
        *cygwin*)
            $ROOT_PATH/.github/scripts/binutils/patch-cygwin-binutils.sh 1
            $ROOT_PATH/.github/scripts/toolchain/patch-cygwin-gcc.sh 1
            $ROOT_PATH/.github/scripts/toolchain/patch-cygwin-mingw.sh 1
            $ROOT_PATH/.github/scripts/toolchain/patch-cygwin.sh 1
            ;;
    esac
fi

if [[ "$RUN_BOOTSTRAP" = 1 || "$RESET_SOURCES" = 1 ]]; then
    $ROOT_PATH/.github/scripts/install-libraries.sh
fi

if [[ "$CCACHE" = 1 ]]; then
    ccache $CCACHE_STATISTICS
fi

$ROOT_PATH/.github/scripts/binutils/build.sh

if [[ "$PLATFORM" =~ linux ]]; then
    $ROOT_PATH/.github/scripts/toolchain/install-cross-headers-libs.sh
fi
if [[ "$PLATFORM" =~ (mingw|cygwin) ]]; then
    $ROOT_PATH/.github/scripts/toolchain/build-mingw-headers.sh
fi
if [[ "$PLATFORM" =~ cygwin ]]; then
    $ROOT_PATH/.github/scripts/toolchain/install-cygwin-headers.sh
fi

if [[ "$BUILD" != "$TARGET" ]]; then
    $ROOT_PATH/.github/scripts/toolchain/build-gcc-stage1.sh
fi

if [[ "$PLATFORM" =~ (mingw|cygwin) ]]; then
    $ROOT_PATH/.github/scripts/toolchain/build-mingw-crt.sh
fi
if [[ "$PLATFORM" =~ mingw ]]; then
    $ROOT_PATH/.github/scripts/toolchain/build-mingw-winpthreads.sh
fi
if [[ "$PLATFORM" =~ cygwin ]]; then
    $ROOT_PATH/.github/scripts/toolchain/build-cocom.sh
    $ROOT_PATH/.github/scripts/toolchain/build-cygwin.sh 1
fi

if [[ "$APPLY_PATCHES" = 1 ]]; then
    case "$PLATFORM" in
        *cygwin*)
            $ROOT_PATH/.github/scripts/toolchain/patch-cygwin-gcc.sh 2
            $ROOT_PATH/.github/scripts/toolchain/patch-cygwin-mingw.sh 2
            ;;
    esac
fi

if [[ "$RUN_BOOTSTRAP" = 1 || "$RESET_SOURCES" = 1 ]]; then
    $ROOT_PATH/.github/scripts/install-libraries.sh
fi

$ROOT_PATH/.github/scripts/toolchain/build-gcc.sh

if [[ "$PLATFORM" =~ (mingw|cygwin) ]]; then
    $ROOT_PATH/.github/scripts/toolchain/build-mingw.sh
fi

if [[ "$APPLY_PATCHES" = 1 ]]; then
    case "$PLATFORM" in
        *cygwin*)
            $ROOT_PATH/.github/scripts/toolchain/patch-cygwin.sh 2
            ;;
    esac
fi

if [[ "$PLATFORM" =~ cygwin ]]; then
    $ROOT_PATH/.github/scripts/toolchain/build-cygwin.sh 2
fi

if [[ "$CCACHE" = 1 ]]; then
    ccache $CCACHE_STATISTICS
fi

echo 'Success!'
