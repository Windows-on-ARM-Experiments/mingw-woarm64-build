#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

BINUTILS_BUILD_PATH=$BUILD_PATH/binutils

mkdir -p $BINUTILS_BUILD_PATH
cd $BINUTILS_BUILD_PATH

if [ "$RUN_CONFIG" = 1 ] || [ ! -f "$BINUTILS_BUILD_PATH/Makefile" ] ; then
    echo "::group::Configure binutils"
        rm -rf $BINUTILS_BUILD_PATH/*

        if [ "$DEBUG" = 1 ] ; then
            HOST_OPTIONS="$HOST_OPTIONS \
                --enable-debug"
        fi

        case "$PLATFORM" in
            *cygwin*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --disable-bootstrap \
                    --enable-static \
                    --enable-shared \
                    --enable-host-shared \
                    --enable-64-bit-bfd \
                    --enable-install-libiberty \
                    --enable-targets=x86_64-pep \
                    --with-sysroot=$TOOLCHAIN_PATH \
                    --with-build-sysroot=$TOOLCHAIN_PATH \
                    --with-system-zlib \
                    --with-gcc-major-version-only \
                    lt_cv_deplibs_check_method=pass_all"
                ;;
            *mingw*)
                # CHANGED: --enable-lto to --disable-lto
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-64-bit-bfd \
                    --disable-lto \
                    --disable-werror \
                    --with-libiconv-prefix=$TOOLCHAIN_PATH \
                    --with-system-zlib"
                ;;
        esac

        $SOURCE_PATH/$BINUTILS_VERSION/configure \
            --prefix=$TOOLCHAIN_PATH \
            --build=$BUILD \
            --host=$HOST \
            --target=$TARGET \
            $HOST_OPTIONS \
            $TARGET_OPTIONS \
            LDFLAGS="$LDFLAGS"
    echo "::endgroup::"
fi

echo "::group::Build binutils"
    $BUILD_MAKE $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [ "$RUN_INSTALL" = 1 ] ; then
    echo "::group::Install binutils"
        $INSTALL_MAKE $INSTALL_MAKE_OPTIONS install
    echo "::endgroup::"
fi

echo 'Success!'
