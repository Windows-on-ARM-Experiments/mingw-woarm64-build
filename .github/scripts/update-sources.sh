#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh
source `dirname ${BASH_SOURCE[0]}`/git-utils.sh

function update_repository() {
    DIRECTORY=$1
    REPOSITORY=$2
    BRANCH=$3
    BASE_BRANCH=$4

    if [[ ! $REPOSITORY =~ ^(http://|https://|git://) ]]; then
        REPOSITORY="https://github.com/$REPOSITORY.git"
    fi

    if [[ ! -d $DIRECTORY ]]; then
        if [[ "$FLAT_CLONE" = 1 ]]; then
            git clone $REPOSITORY -b $BRANCH --single-branch --depth 1 $DIRECTORY
        else
            git clone $REPOSITORY -b $BRANCH $DIRECTORY
        fi
        pushd $DIRECTORY
            git config pull.rebase true
            git config rebase.autoStash true
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

            if [[ "$FLAT_CLONE" = 1 ]] && ! is_remote_branch $BRANCH && ! is_tag $BRANCH; then
               git remote set-branches --add origin $BRANCH
               git fetch origin --prune
            fi

            if ! is_current_branch $BRANCH; then
                if is_tag $BRANCH; then
                  git switch --detach $BRANCH
                else
                  git switch $BRANCH
                fi
            fi

            if [[ "$RESET_SOURCES" = 1 ]]; then
                git clean -fdx
            fi

            if ! is_tag $BRANCH; then
                 git pull
            fi

            git submodule update
        popd
    fi

    if [[ "$FLAT_CLONE" = 0 && "$REBASE_SOURCES" = 1 && -n "$BASE_BRANCH" ]]; then
        pushd $DIRECTORY
            git rebase origin/$BASE_BRANCH
            git push --force-with-lease
        popd
    fi
}

echo "::group::Update source code repositories"
    mkdir -p "$SOURCE_PATH"

    cd "$SOURCE_PATH"
    update_repository binutils $BINUTILS_REPO $BINUTILS_BRANCH $BINUTILS_BASE_BRANCH
    update_repository gcc $GCC_REPO $GCC_BRANCH $GCC_BASE_BRANCH
    update_repository mingw $MINGW_REPO $MINGW_BRANCH $MINGW_BASE_BRANCH
    if [[ "$PLATFORM" =~ cygwin ]]; then 
        update_repository cygwin $CYGWIN_REPO $CYGWIN_BRANCH $CYGWIN_BASE_BRANCH
        update_repository cygwin-packages $CYGWIN_PACKAGES_REPO $CYGWIN_PACKAGES_BRANCH $CYGWIN_PACKAGES_BASE_BRANCH
        update_repository cocom $COCOM_REPO $COCOM_BRANCH $COCOM_BASE_BRANCH
    fi

    if [[ "$UPDATE_LIBRARIES" = 1 ]]; then
        update_repository openblas $OPENBLAS_REPO $OPENBLAS_BRANCH
        update_repository zlib $ZLIB_REPO $ZLIB_BRANCH
        update_repository libxml2 $LIBXML2_REPO $LIBXML2_BRANCH
        update_repository openssl $OPENSSL_REPO $OPENSSL_BRANCH
        update_repository libjpeg-turbo $LIBJPEG_TURBO_REPO $LIBJPEG_TURBO_BRANCH
        update_repository ffmpeg $FFMPEG_REPO $FFMPEG_BRANCH
        update_repository bash $BASH_REPO $BASH_BRANCH
    fi
echo "::endgroup::"

echo 'Success!'
