#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

function update_repository() {
    DIRECTORY=$1
    REPOSITORY=$2
    BRANCH=$3
    if [[ ! -d $DIRECTORY ]]; then
        git clone $REPOSITORY -b $BRANCH --single-branch --depth 1 $DIRECTORY
        pushd $DIRECTORY
            git config pull.rebase true
            git submodule init
            git submodule update
        popd
    else
        pushd $DIRECTORY
            if [[ "$RESET_SOURCES" = 1 ]]; then
                git reset --hard HEAD
                git switch $BRANCH
                git clean -fdx
            fi
            git pull
            git submodule update
        popd
    fi
}

echo "::group::Update source code repositories"
    mkdir -p "$SOURCE_PATH"

    cd "$SOURCE_PATH"
    update_repository binutils https://github.com/Windows-on-ARM-Experiments/binutils-woarm64.git woarm64
    update_repository gcc https://github.com/Windows-on-ARM-Experiments/gcc-woarm64.git woarm64
    update_repository mingw https://github.com/Windows-on-ARM-Experiments/mingw-woarm64.git woarm64
    if [[ "$PLATFORM" =~ cygwin ]]; then 
        update_repository cygwin https://github.com/Windows-on-ARM-Experiments/newlib-cygwin.git main
        update_repository cygwin-packages https://github.com/Windows-on-ARM-Experiments/cygwin-packages.git main
        update_repository cocom https://git.code.sf.net/p/cocom/git master
    fi
echo "::endgroup::"

echo 'Success!'
