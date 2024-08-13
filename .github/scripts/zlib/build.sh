#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

ZLIB_BUILD_PATH=$BUILD_PATH/zlib

cd $SOURCE_PATH/zlib

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f $ZLIB_BUILD_PATH/CMakeCache.txt ]]; then
    echo "::group::Configure zblib"
        rm -f $ZLIB_BUILD_PATH/CMakeCache.txt
        cmake -G"Unix Makefiles" \
            -DCMAKE_INSTALL_PREFIX=$ZLIB_PATH \
            -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN_FILE \
            -B$ZLIB_BUILD_PATH
    echo "::endgroup::"
fi

echo "::group::Build zlib"
    cmake --build $ZLIB_BUILD_PATH ${BUILD_MAKE_OPTIONS//V=1/-v}
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install zlib"
        cmake --install $ZLIB_BUILD_PATH
        mv $ZLIB_PATH/lib/libzlibstatic.a $ZLIB_PATH/lib/libz-static.a
        mv $ZLIB_PATH/lib/libzlib.dll.a $ZLIB_PATH/lib/libz.dll.a
    echo "::endgroup::"
fi

echo 'Success!'
