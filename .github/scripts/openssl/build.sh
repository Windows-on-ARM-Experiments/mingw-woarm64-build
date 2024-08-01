#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

OPENSSL_BUILD_PATH=$BUILD_PATH/openssl

mkdir -p $OPENSSL_BUILD_PATH
cd $OPENSSL_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$OPENSSL_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure OpenSSL"
        rm -rf $OPENSSL_BUILD_PATH/*
        $SOURCE_PATH/$OPENSSL_VERSION/Configure \
            --prefix=$OPENSSL_PATH \
            --cross-compile-prefix=$TOOLCHAIN_PATH/bin/$TARGET- \
            --with-zlib-include=$ZLIB_PATH/include \
            --with-zlib-lib=$ZLIB_PATH/lib \
            enable-acvp-tests enable-comp enable-fips enable-unit-test enable-zlib mingw-arm64
    echo "::endgroup::"
fi

echo "::group::Build OpenSSL"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install OpenSSL"
        make install
    echo "::endgroup::"
fi

echo 'Success!'
