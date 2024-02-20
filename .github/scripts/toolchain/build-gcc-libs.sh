#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

cd $BUILD_PATH/gcc

echo "::group::Build libstdc++"
make $BUILD_MAKE_OPTIONS all-target-libstdc++-v3
echo "::endgroup::"

if [ "$RUN_INSTALL" = 1 ] ; then
    echo "::group::Install libstdc++"
    make install-target-libstdc++-v3
    echo "::endgroup::"
fi

echo "::group::Build libgfortran"
make $BUILD_MAKE_OPTIONS all-target-libgfortran
echo "::endgroup::"

# if [ $RUN_INSTALL = 1 ] ; then
#     echo "::group::Install libgfortran"
#     make install-target-libgfortran
#     echo "::endgroup::"
# fi

echo "::group::Build remaining GCC libraries"
make $BUILD_MAKE_OPTIONS all
echo "::endgroup::"

if [ "$RUN_INSTALL" = 1 ] ; then
    echo "::group::Install remaining GCC libraries"
    make install
    echo "::endgroup::"
fi

echo 'Success!'
