#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

cd $ROOT_PATH/tests

if [ "$RUN_CONFIG" = 1 ] || [ ! -f build/CMakeCache.txt ] ; then
    echo "::group::Configure tests"
        rm -rf build/*
        TARGET=$TARGET \
        TOOLCHAIN_NAME=$TOOLCHAIN_NAME \
        TOOLCHAIN_PATH=$TOOLCHAIN_PATH \
        cmake -S . -B build
    echo "::endgroup::"
fi

echo "::group::Build tests"
    cmake --build build

    case "$PLATFORM" in
      w64-mingw32)
          cp $TOOLCHAIN_PATH/$TARGET/bin/libwinpthread-1.dll build/bin
      ;;
      pc-cygwin)
          cp $TOOLCHAIN_PATH/bin/cygwin1.dll build/bin
          cp $TOOLCHAIN_PATH/lib/gcc/$TARGET/cyggcc_s-seh-1.dll build/bin
          cp $TOOLCHAIN_PATH/lib/gcc/$TARGET/14/cyggomp-1.dll build/bin
      ;;
    esac
echo "::endgroup::"
