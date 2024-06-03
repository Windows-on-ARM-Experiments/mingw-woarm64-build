#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "::group::Install libraries"

    # Download and install packages
    cd $SOURCE_PATH/$GCC_VERSION
    ./contrib/download_prerequisites

    # Symbolic links for binutils dependencies
    cd $SOURCE_PATH/$BINUTILS_VERSION
    ln -sf $SOURCE_PATH/$GCC_VERSION/gmp gmp
    ln -sf $SOURCE_PATH/$GCC_VERSION/mpfr mpfr

echo "::endgroup::"

echo 'Success!'
