#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

LIBJPEG_TURBO_BUILD_PATH=$BUILD_PATH/libjpeg-turbo

cd $SOURCE_PATH/$LIBJPEG_TURBO_VERSION

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f $LIBJPEG_TURBO_BUILD_PATH/CMakeCache.txt ]]; then
    echo "::group::Configure libjpeg-turbo"
        rm -f $LIBJPEG_TURBO_BUILD_PATH/CMakeCache.txt
        cmake -G"Unix Makefiles" \
            -DCMAKE_INSTALL_PREFIX=$LIBJPEG_TURBO_PATH \
            -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN_FILE \
            -B$LIBJPEG_TURBO_BUILD_PATH
    echo "::endgroup::"
fi

echo "::group::Build libjpeg-turbo"
    cmake --build $LIBJPEG_TURBO_BUILD_PATH ${BUILD_MAKE_OPTIONS//V=1/-v}
    cp -r testimages/ $LIBJPEG_TURBO_BUILD_PATH/
    (cd $LIBJPEG_TURBO_BUILD_PATH && ctest -R "^.*-cp$" )
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install libjpeg-turbo"
        cmake --install $LIBJPEG_TURBO_BUILD_PATH
    echo "::endgroup::"
fi

echo 'Success!'
