#!/bin/bash

source `dirname $0`/config.sh

cd $SOURCE_PATH/$LIBJPEG_TURBO_VERSION

if [ $RUN_CONFIG = 1 ] ; then
    echo "::group::Configure libjpeg-turbo"

    rm -f $BUILD_PATH/libjpeg-turbo/CMakeCache.txt

    cmake -G"Unix Makefiles" \
        -DCMAKE_INSTALL_PREFIX=$LIBJPEG_TURBO_PATH \
        -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN_FILE \
        -B$BUILD_PATH/libjpeg-turbo
    echo "::endgroup::"
fi

echo "::group::Build libjpeg-turbo"
cmake --build $BUILD_PATH/libjpeg-turbo ${BUILD_MAKE_OPTIONS//V=1/}
echo "::endgroup::"

if [ $RUN_INSTALL = 1 ] ; then
    echo "::group::Install libjpeg-turbo"
    cmake --install $BUILD_PATH/libjpeg-turbo
    echo "::endgroup::"
fi

echo 'Success!'
