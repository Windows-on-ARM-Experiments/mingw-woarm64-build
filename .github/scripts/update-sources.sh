#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

function update_repository() {
    DIRECTORY=$1
    REPOSITORY=$2
    BRANCH=$3
    if [[ ! -d $DIRECTORY ]]; then
        git clone $REPOSITORY -b $BRANCH $DIRECTORY
        pushd $DIRECTORY
            git config pull.rebase true
            git submodule init
            git submodule update
        popd
    else
        pushd $DIRECTORY
            git fetch origin --prune

            if [[ "$RESET_SOURCES" = 1 ]]; then
                git reset --hard HEAD
                if ! git show-ref --verify --quiet refs/remotes/origin/$BRANCH; then
                    git remote set-branches --add origin $BRANCH
                    git fetch origin --prune
                fi
            fi

            if [[ $(git rev-parse --abbrev-ref HEAD) != "$BRANCH" ]]; then
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

    if [[ "$PLATFORM" =~ cygwin ]]; then
        if [[ "$BINUTILS_BRANCH" != *-cygwin ]]; then
            BINUTILS_BRANCH="$BINUTILS_BRANCH-cygwin"
        fi
        if [[ "$GCC_BRANCH" != *-cygwin ]]; then
            GCC_BRANCH="$GCC_BRANCH-cygwin"
        fi
        if [[ "$MINGW_BRANCH" != *-cygwin ]]; then
            MINGW_BRANCH="$MINGW_BRANCH-cygwin"
        fi
    fi

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
