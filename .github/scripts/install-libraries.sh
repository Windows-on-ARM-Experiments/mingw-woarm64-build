#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "::group::Install libraries"

    # Download and install packages
    cd $SOURCE_PATH/gcc
    ./contrib/download_prerequisites

    # Symbolic links for binutils dependencies
    if [[ "$TEST" = 0 ]]; then
        cd $SOURCE_PATH/binutils
        ln -sf $SOURCE_PATH/gcc/gmp gmp
        ln -sf $SOURCE_PATH/gcc/mpfr mpfr
    fi
echo "::endgroup::"

echo 'Success!'
