#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

ZLIB_PATH=$TOOLCHAIN_PATH \
$ROOT_PATH/.github/scripts/zlib/build.sh
