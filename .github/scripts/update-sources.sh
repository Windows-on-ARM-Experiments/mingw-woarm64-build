#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

function is_remote_branch() {
    return $(git show-ref --verify --quiet refs/remotes/origin/$1)
}

function is_current_branch() {
    [[ $(git rev-parse --abbrev-ref HEAD) == "$1" ]]
}

function update_repository() {
    DIRECTORY=$1
    REPOSITORY=$2
    BRANCH=$3
    if [[ ! -d $DIRECTORY ]]; then
        if [[ "$FLAT_CLONE" = 1 ]]; then
            git clone $REPOSITORY -b $BRANCH --single-branch --depth 1 $DIRECTORY
        else
            git clone $REPOSITORY -b $BRANCH $DIRECTORY
        fi
        pushd $DIRECTORY
            git config pull.rebase true
            git submodule init
            git submodule update
        popd
    else
        pushd $DIRECTORY
            if [[ "$FLAT_CLONE" = 1 ]]; then
                git fetch origin --prune
            else
                git fetch --all --prune
            fi

            if [[ "$RESET_SOURCES" = 1 ]]; then
                git reset --hard HEAD
            fi

            if [[ "$FLAT_CLONE" = 1 ]] && ! is_remote_branch $BRANCH; then
               git remote set-branches --add origin $BRANCH
               git fetch origin --prune
            fi

            if ! is_current_branch $BRANCH; then
                git switch $BRANCH
            fi

            if [[ "$RESET_SOURCES" = 1 ]]; then
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
    update_repository binutils https://github.com/Windows-on-ARM-Experiments/binutils-woarm64.git $BINUTILS_BRANCH
    update_repository gcc https://github.com/Windows-on-ARM-Experiments/gcc-woarm64.git $GCC_BRANCH
    update_repository mingw https://github.com/Windows-on-ARM-Experiments/mingw-woarm64.git $MINGW_BRANCH
    if [[ "$PLATFORM" =~ cygwin ]]; then 
        update_repository cygwin https://github.com/Windows-on-ARM-Experiments/newlib-cygwin.git $CYGWIN_BRANCH
        update_repository cygwin-packages https://github.com/Windows-on-ARM-Experiments/cygwin-packages.git $CYGWIN_PACKAGES_BRANCH
        update_repository cocom https://git.code.sf.net/p/cocom/git $COCOM_BRANCH
    fi
echo "::endgroup::"

echo 'Success!'
