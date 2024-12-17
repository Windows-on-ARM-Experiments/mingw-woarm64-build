#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

FILTER=$1

PATH="$TOOLCHAIN_PATH/aarch64-w64-mingw32/bin:$TOOLCHAIN_PATH/lib/gcc/aarch64-w64-mingw32:$TOOLCHAIN_PATH/lib/gcc/$TARGET/$GCC_VERSION:$PATH"

echo "::group::Execute OpenBLAS tests"
    if [[ -v WSLENV ]]; then
        pushd $OPENBLAS_TESTS_PATH
            WSLENV=$WSLENV:PATH/p \
                ctest $TEST_CMAKE_OPTIONS \
                    ${FILTER:+-R $FILTER}
        popd
    else
        run() {
            echo $@
            $@
        }
        
        test_openblas()
        {
            run ./xccblat1.exe
            run ./xccblat1.exe
            run ./xdcblat1.exe
            run ./xscblat1.exe
            run ./xzcblat1.exe
            run ./xccblat2.exe < cin2
            run ./xdcblat2.exe < din2
            run ./xscblat2.exe < sin2
            run ./xzcblat2.exe < zin2
            run ./xccblat3.exe < cin3
            run ./xdcblat3.exe < din3
            run ./xscblat3.exe < sin3
            run ./xzcblat3.exe < zin3
        }
        
        pushd $OPENBLAS_TESTS_PATH/ctest
            trap 'cat openblas_test_results.txt' EXIT
            test_openblas > openblas_test_results.txt
            trap - EXIT
            
            cat openblas_test_results.txt
            cat openblas_test_results.txt | grep -q "\- SUSPECT \*" && exit 1
        popd
    fi
echo "::endgroup::"

echo 'Success!'
