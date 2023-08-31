#! /bin/bash
set -e
trap 'previous_command=$this_command; this_command=$BASH_COMMAND' DEBUG
trap 'echo FAILED COMMAND: $previous_command' EXIT

BUILD_DIR=build-$TARGET_ARCH
PARALLEL_MAKE=-j6

check_binutils()
{
        echo "==== check binutils"
        cd $BUILD_DIR/binutils
        make $PARALLEL_MAKE -k check
        cd ../..
}

check_binutils

trap - EXIT
echo 'Success!'
