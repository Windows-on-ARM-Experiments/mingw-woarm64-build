#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

function update_repository() {
    DIRECTORY=$1
    REPOSITORY=$2
    BRANCH=$3
    if [[ ! -d $DIRECTORY ]]; then
        git clone $REPOSITORY -b $BRANCH --single-branch --depth 1 $DIRECTORY
        git submodule init
        git submodule update
    else
        pushd $DIRECTORY
            if [[ "$RESET_SOURCES" = 1 ]]; then
                git reset --hard
                git clean -fdx
                git switch $BRANCH
            fi
            git pull
            git submodule update
        popd
    fi
}

echo "::group::Update source code repositories"
    mkdir -p "$SOURCE_PATH"

    cd "$SOURCE_PATH"
    update_repository "$BINUTILS_VERSION" https://github.com/Windows-on-ARM-Experiments/binutils-woarm64.git woarm64
    update_repository "$GCC_VERSION" https://github.com/Windows-on-ARM-Experiments/gcc-woarm64.git woarm64
    update_repository "$MINGW_VERSION" https://github.com/Windows-on-ARM-Experiments/mingw-woarm64.git woarm64
    if [[ "$PLATFORM" =~ cygwin ]]; then 
        update_repository "$CYGWIN_VERSION" https://github.com/Windows-on-ARM-Experiments/newlib-cygwin.git main
        update_repository cygwin-packages https://github.com/Windows-on-ARM-Experiments/cygwin-packages.git main
        update_repository "$COCOM_VERSION" https://git.code.sf.net/p/cocom/git master
    fi
echo "::endgroup::"

echo 'Success!'
