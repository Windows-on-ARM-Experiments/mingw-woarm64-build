#!/bin/bash

CCACHE=0
source .github/scripts/config.sh
PATH="/opt/$TARGET/bin:$PATH"

pushd build-$TARGET-$CRT/gcc/gcc/testsuite/gcc
    $TARGET-gcc strncmp-2.c strncmp-2-lib.c main.c -fdiagnostics-plain-output -w -O0 -fno-tree-dse -fno-tree-loop-distribute-patterns -fno-tracer -fno-ipa-ra -fno-inline-functions -Wl,--allow-multiple-definition -lm  -o a.out
popd
