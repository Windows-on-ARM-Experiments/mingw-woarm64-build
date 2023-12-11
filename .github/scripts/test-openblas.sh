#!/bin/bash

set -e # exit on error
set -x # echo on

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

cd $OPENBLAS_TESTS_PATH/ctest

trap 'cat openblas_test_results.txt' EXIT
test_openblas > openblas_test_results.txt
trap - EXIT

cat openblas_test_results.txt
cat openblas_test_results.txt | grep -q "\- SUSPECT \*" && exit 1
exit 0