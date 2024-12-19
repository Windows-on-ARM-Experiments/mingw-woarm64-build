#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

cd $SOURCE_PATH/openblas

if [[ "$RUN_CONFIG" = 1 ]] || [[ -v WSLENV && ! -f $OPENBLAS_BUILD_PATH/CMakeCache.txt ]]; then
    echo "::group::Configure OpenBLAS"
        if [[ -v WSLENV ]]; then
            rm -rf $OPENBLAS_BUILD_PATH/*

            if [[ "$DEBUG" = 1 ]]; then
                BUILD_TYPE=Debug
            else
                BUILD_TYPE=Release
            fi

            CFLAGS="-std=gnu17" \
            cmake -G"Unix Makefiles" \
                -DCMAKE_BUILD_TYPE=$BUILD_TYPE \
                -DBINARY=64 \
                -DTARGET=ARMV8 \
                -DNOFORTRAN=1 \
                -DCMAKE_INSTALL_PREFIX=$OPENBLAS_PATH \
                -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN_FILE \
                -DCMAKE_CROSSCOMPILING_EMULATOR=$ROOT_PATH/.github/cmake/run.sh \
                -B$OPENBLAS_BUILD_PATH
        else
            make clean
        fi
    echo "::endgroup::"
fi

echo "::group::Build OpenBLAS"
    if [[ -v WSLENV ]]; then
        cmake --build $OPENBLAS_BUILD_PATH $BUILD_CMAKE_OPTIONS
    else
        make BINARY=64 CC=aarch64-w64-mingw32-gcc CFLAGS="-std=gnu17" HOSTCC=gcc NOFORTRAN=1 TARGET=ARMV8 $BUILD_MAKE_OPTIONS
        for i in ctest/x*; do 
            mv $i $i.exe
        done
    fi
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install OpenBLAS"
        if [[ -v WSLENV ]]; then
            cmake --install $OPENBLAS_BUILD_PATH
        else
            echo "Not implemented"
        fi
    echo "::endgroup::"
fi

echo 'Success!'
