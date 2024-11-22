#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

echo echo "::group::Patch MinGW"
    cd $SOURCE_PATH/mingw

    if [[ "$RESET_SOURCES" = 1 ]]; then
        git reset --hard HEAD
        git clean -fdx
    fi

    if [ ! -f .patched ]; then
        case "$ARCH" in
            aarch64)
                patch -p1 -i $PATCHES_PATH/mingw/0001-aarch64-cygwin.patch
            ;;
        esac
    fi

    touch .patched
echo "::endgroup::"

echo 'Success!'
