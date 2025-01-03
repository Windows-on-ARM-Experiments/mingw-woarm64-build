#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

cd $SOURCE_PATH/libjpeg-turbo

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f $LIBJPEG_TURBO_BUILD_PATH/CMakeCache.txt ]]; then
    echo "::group::Configure libjpeg-turbo"
        rm -rf $LIBJPEG_TURBO_BUILD_PATH/*

        if [[ "$DEBUG" = 1 ]]; then
            BUILD_TYPE=Debug
        else
            BUILD_TYPE=Release
        fi

        if [ -v WSLENV ]; then
            HOST_CONFIG="-DCMAKE_CROSSCOMPILING_EMULATOR=$ROOT_PATH/.github/cmake/run.sh"
        fi

        cmake -G"Unix Makefiles" \
            -DCMAKE_BUILD_TYPE=$BUILD_TYPE \
            -DCMAKE_INSTALL_PREFIX=$LIBJPEG_TURBO_PATH \
            -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN_FILE \
            $HOST_CONFIG \
            -B$LIBJPEG_TURBO_BUILD_PATH
    echo "::endgroup::"
fi

echo "::group::Build libjpeg-turbo"
    cmake --build $LIBJPEG_TURBO_BUILD_PATH $BUILD_CMAKE_OPTIONS

    if [ ! -v WSLENV ]; then
        cp -r testimages/ $LIBJPEG_TURBO_BUILD_PATH/
        (cd $LIBJPEG_TURBO_BUILD_PATH && ctest $TEST_CMAKE_OPTIONS -R "^.*-cp$")
    fi
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install libjpeg-turbo"
        cmake --install $LIBJPEG_TURBO_BUILD_PATH
    echo "::endgroup::"
fi

echo 'Success!'
