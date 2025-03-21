#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

BINUTILS_BUILD_PATH=$BUILD_PATH/binutils

mkdir -p $BINUTILS_BUILD_PATH
cd $BINUTILS_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$BINUTILS_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure binutils"
        rm -rf $BINUTILS_BUILD_PATH/*

        if [[ "$DEBUG" = 1 ]]; then
            HOST_OPTIONS="$HOST_OPTIONS \
                --enable-debug"
        fi

        case "$PLATFORM" in
            *cygwin*)
                # Compared to the upstream recipe:
                #   ADDED: --with-sysroot to avoid using the host sysroot.
                #   CHANGED: --enable-shared to --disable-shared to allow easier transfer
                #            the produced host binaries across different build environments.
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-static \
                    --disable-shared \
                    --enable-host-shared \
                    --enable-install-libiberty \
                    --with-sysroot=$TOOLCHAIN_PATH \
                    --with-build-sysroot=$TOOLCHAIN_PATH \
                    --with-system-zlib \
                    --with-gcc-major-version-only \
                    lt_cv_deplibs_check_method=pass_all"
                ;;
            *mingw*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-lto \
                    --enable-64-bit-bfd \
                    --disable-werror \
                    --with-libiconv-prefix=$TOOLCHAIN_PATH \
                    --with-system-zlib"
                ;;
        esac

        case "$ARCH-$PLATFORM" in
            aarch64-*cygwin*)
                # ADDED: --enable-targets=aarch64-pep
                # ADDED: --disable-sim
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-targets=aarch64-pep \
                    --disable-sim"
                ;;
        esac

        $SOURCE_PATH/binutils/configure \
            --prefix=$TOOLCHAIN_PATH \
            --build=$BUILD \
            --host=$HOST \
            --target=$TARGET \
            $HOST_OPTIONS \
            $TARGET_OPTIONS
    echo "::endgroup::"
fi

echo "::group::Build binutils"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install binutils"
        make install
        if [[ "$DELETE_BUILD" = 1 ]]; then
            rm -rf $BINUTILS_BUILD_PATH
        fi
    echo "::endgroup::"
fi

echo 'Success!'
