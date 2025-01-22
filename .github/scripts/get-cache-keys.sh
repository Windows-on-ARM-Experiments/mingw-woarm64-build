#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

WORKFLOW_SHA=$($ROOT_PATH/.github/scripts/get-files-sha.sh $ROOT_PATH $ROOT_PATH/.github/workflows/advanced.yml)
BINUTILS_SHA=$($ROOT_PATH/.github/scripts/get-repository-sha.sh $BINUTILS_REPO $BINUTILS_BRANCH)
GCC_SHA=$($ROOT_PATH/.github/scripts/get-repository-sha.sh $GCC_REPO $GCC_BRANCH)
MINGW_SHA=$($ROOT_PATH/.github/scripts/get-repository-sha.sh $MINGW_REPO $MINGW_BRANCH)
BINUTILS_SCRIPTS_SHA=$($ROOT_PATH/.github/scripts/get-files-sha.sh $ROOT_PATH $ROOT_PATH/.github/scripts/binutils)
TOOLCHAIN_SCRIPTS_SHA=$($ROOT_PATH/.github/scripts/get-files-sha.sh $ROOT_PATH $ROOT_PATH/.github/scripts/toolchain)
TOOLCHAIN_CACHE_KEY=$TOOLCHAIN_NAME-toolchain-$WORKFLOW_SHA-$BINUTILS_SHA-$GCC_SHA-$MINGW_SHA-$BINUTILS_SCRIPTS_SHA-$TOOLCHAIN_SCRIPTS_SHA
RUNTIME_CACHE_KEY=$TOOLCHAIN_NAME-runtime-$WORKFLOW_SHA-$BINUTILS_SHA-$GCC_SHA-$MINGW_SHA-$BINUTILS_SCRIPTS_SHA-$TOOLCHAIN_SCRIPTS_SHA

if [[ "$PLATFORM" =~ cygwin ]]; then
    CYGWIN_SHA=$($ROOT_PATH/.github/scripts/get-repository-sha.sh $CYGWIN_REPO $CYGWIN_BRANCH)
    CYGWIN_SCRIPTS_SHA=$($ROOT_PATH/.github/scripts/get-files-sha.sh $ROOT_PATH $ROOT_PATH/.github/scripts/cygwin)
    TOOLCHAIN_CACHE_KEY=$TOOLCHAIN_CACHE_KEY-$CYGWIN_SHA-$CYGWIN_SCRIPTS_SHA
    RUNTIME_CACHE_KEY=$RUNTIME_CACHE_KEY-$CYGWIN_SHA-$CYGWIN_SCRIPTS_SHA
fi

echo "toolchain-cache-key=$TOOLCHAIN_CACHE_KEY" >> "$GITHUB_OUTPUT"
echo "runtime-cache-key=$RUNTIME_CACHE_KEY" >> "$GITHUB_OUTPUT"
echo "ccache-key=$TARGET-ccache-$(date -u --iso-8601=seconds)" >> "$GITHUB_OUTPUT"
echo "ccache-restore-keys=$TARGET-ccache-" >> "$GITHUB_OUTPUT"
