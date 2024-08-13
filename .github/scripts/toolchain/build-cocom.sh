#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

COCOM_SOURCE_PATH=$SOURCE_PATH/cocom
COCOM_BUILD_PATH=$BUILD_PATH/cocom

mkdir -p $COCOM_BUILD_PATH
cd $COCOM_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$COCOM_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure COCOM"
        rm -rf $COCOM_BUILD_PATH/*

        $COCOM_SOURCE_PATH/configure \
            --prefix=$TOOLCHAIN_PATH \
            --build=$HOST \
            --host=$HOST
    echo "::endgroup::"
fi

echo "::group::Build COCOM"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install COCOM"
        make install
        if [[ "$DELETE_BUILD" = 1 ]]; then
            rm -rf $COCOM_BUILD_PATH 
        fi
    echo "::endgroup::"
fi

echo 'Success!'
