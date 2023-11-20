#!/bin/bash

source `dirname $0`/config.sh

mkdir -p $BUILD_PATH/gcc

cd $BUILD_PATH/gcc

echo "::group::Configure GCC"
# REMOVED --libexecdir=/opt/lib
# REMOVED --with-{gmp,mpfr,mpc,isl}=/usr
$SOURCE_PATH/$GCC_VERSION/configure \
    --prefix=$TOOLCHAIN_PATH \
    --target=$TARGET \
    --enable-languages=c,lto,c++,fortran \
    --enable-shared \
    --enable-static \
    --enable-threads=win32 \
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
    --disable-win32-registry \
    --disable-werror \
    --disable-symvers \
    --disable-libstdcxx-pch \
    --disable-libstdcxx-debug \
    --disable-isl-version-check \
    --disable-bootstrap \
    --with-libiconv \
    --with-system-zlib \
    --with-gnu-as \
    --with-gnu-ld
echo "::endgroup::"

cd $BUILD_PATH/gcc

echo "::group::Build GCC"
make $BUILD_MAKE_OPTIONS all-gcc
echo "::endgroup::"

echo "::group::Install GCC"
make install-gcc
echo "::endgroup::"

echo 'Success!'
