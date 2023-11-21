#!/bin/bash

source `dirname $0`/config.sh

GCC_BUILD_PATH=$BUILD_PATH/gcc

mkdir -p $GCC_BUILD_PATH
cd $GCC_BUILD_PATH

if [ $RUN_CONFIG = 1 ] || [ ! -f "$GCC_BUILD_PATH/Makefile" ] ; then
    echo "::group::Configure GCC"

    rm -rf $GCC_BUILD_PATH/*

    case $TARGET in
        *linux*)
            # REMOVED --with-isl=/usr"
            HOST_OPTION=" \
                --enable-shared \
                --enable-threads=posix \
                --with-gmp=/usr \
                --with-mpfr=/usr \
                --with-mpc=/usr"
            ;;
        *) # *mingw*)
            # REMOVED --enable-shared
            # ADDED --disable-shared
            # REMOVED --libexecdir=/opt/lib
            # REMOVED --with-{gmp,mpfr,mpc,isl}=/usr
            HOST_OPTION=" \
                --disable-shared \
                --enable-threads=win32 \
                --disable-rpath \
                --disable-win32-registry \
                --disable-werror \
                --disable-symvers \
                --disable-libstdcxx-pch \
                --disable-libstdcxx-debug \
                --disable-isl-version-check"
            ;;
    esac

    CFLAGS=$CFLAGS $SOURCE_PATH/$GCC_VERSION/configure \
        --prefix=$TOOLCHAIN_PATH \
        --target=$TARGET \
        --enable-languages=c,lto,c++,fortran \
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
        --disable-bootstrap \
        --disable-multilib \
        --with-libiconv \
        --with-system-zlib \
        --with-gnu-as \
        --with-gnu-ld \
        $HOST_OPTION
    echo "::endgroup::"
fi

echo "::group::Build GCC"
    make $BUILD_MAKE_OPTIONS all-gcc
echo "::endgroup::"

if [ $RUN_INSTALL = 1 ] ; then
    echo "::group::Install GCC"
        make install-gcc
    echo "::endgroup::"
fi

echo 'Success!'
