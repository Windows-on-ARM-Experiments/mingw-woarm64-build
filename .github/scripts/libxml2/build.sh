#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

LIBXML2_BUILD_PATH=$BUILD_PATH/libxml2

cd $SOURCE_PATH/$LIBXML2_VERSION

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f $LIBXML2_BUILD_PATH/CMakeCache.txt ]]; then
    echo "::group::Configure libxml2"
        rm -f $LIBXML2_BUILD_PATH/CMakeCache.txt
        cmake -G"Unix Makefiles" \
            -DCMAKE_INSTALL_PREFIX=$LIBXML2_PATH \
            -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN_FILE \
            -DBUILD_SHARED_LIBS=ON \
            -DLIBXML2_WITH_PYTHON=OFF \
            -DLIBXML2_WITH_ICONV=OFF \
            -DLIBXML2_WITH_LZMA=OFF \
            -DLIBXML2_WITH_ZLIB=ON \
            -DZLIB_ROOT=$ZLIB_PATH \
            -B$LIBXML2_BUILD_PATH
    echo "::endgroup::"
fi

echo "::group::Build libxml2"
    cmake --build $LIBXML2_BUILD_PATH ${BUILD_MAKE_OPTIONS//V=1/-v}
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install libxml2"
        cmake --install $LIBXML2_BUILD_PATH
    echo "::endgroup::"
fi

echo 'Success!'
