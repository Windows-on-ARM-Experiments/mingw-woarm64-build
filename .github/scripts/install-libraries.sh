#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "::group::Install libraries"

    # Download and install packages
    cd $SOURCE_PATH/$GCC_VERSION
    ./contrib/download_prerequisites

    # Symbolic links for binutils dependencies
    cd $SOURCE_PATH/$BINUTILS_VERSION
    if [ -z "$MSYSTEM" ]; then
        ln -sf $SOURCE_PATH/$GCC_VERSION/gmp gmp
        ln -sf $SOURCE_PATH/$GCC_VERSION/mpfr mpfr
        ln -sf $SOURCE_PATH/$GCC_VERSION/isl isl
    else
        mkdir -p gmp mpfr isl
        cp -rf $SOURCE_PATH/$GCC_VERSION/gmp/* gmp
        cp -rf $SOURCE_PATH/$GCC_VERSION/mpfr/* mpfr
        cp -rf $SOURCE_PATH/$GCC_VERSION/isl/* isl
    fi

echo "::endgroup::"

echo 'Success!'
