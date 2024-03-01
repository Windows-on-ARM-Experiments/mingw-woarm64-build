#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

GCC_BUILD_PATH=$BUILD_PATH/gcc

mkdir -p $GCC_BUILD_PATH
cd $GCC_BUILD_PATH

if [ "$RUN_CONFIG" = 1 ] || [ ! -f "$GCC_BUILD_PATH/Makefile" ] ; then
    echo "::group::Configure GCC"

    rm -rf $GCC_BUILD_PATH/*

    case $PLATFORM in
        *mingw*)
            HOST_OPTIONS=" \
                --enable-threads=win32 \
                --disable-win32-registry"
            ;;
    esac

    if [ "$DEBUG" = 1 ] ; then
        ADDITIONAL_OPTIONS=" \
            --enable-debug"
    fi

    # REMOVED --libexecdir=/opt/lib
    # REMOVED --with-{gmp,mpfr,mpc,isl}=/usr
    $SOURCE_PATH/$GCC_VERSION/configure \
        --prefix=$TOOLCHAIN_PATH \
        --build=$BUILD \
        --host=$HOST \
        --target=$TARGET \
        --includedir=$TOOLCHAIN_PATH/$TARGET/include \
        --enable-languages=c,lto,c++,fortran \
        --enable-shared \
        --enable-static \
        --enable-graphite \
        --enable-fully-dynamic-string \
        --enable-libstdcxx-filesystem-ts=yes \
        --enable-libstdcxx-time=yes \
        --enable-cloog-backend=isl \
        --enable-version-specific-runtime-libs \
        --enable-lto \
        --enable-libgomp \
        --enable-checking=release \
        --disable-multilib \
        --disable-shared \
        --disable-rpath \
        --disable-werror \
        --disable-symvers \
        --disable-libstdcxx-pch \
        --disable-libstdcxx-debug \
        --disable-isl-version-check \
        --disable-bootstrap \
        --with-libiconv \
        --with-system-zlib \
        --with-gnu-as \
        --with-gnu-ld \
        $HOST_OPTIONS \
        $ADDITIONAL_OPTIONS
    echo "::endgroup::"
fi

echo "::group::Build GCC"
    make $BUILD_MAKE_OPTIONS all-gcc
echo "::endgroup::"

if [ "$RUN_INSTALL" = 1 ] ; then
    echo "::group::Install GCC"
        make install-gcc
    echo "::endgroup::"
fi

echo 'Success!'
