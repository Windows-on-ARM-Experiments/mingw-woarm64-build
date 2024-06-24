#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

WORKFLOW_SHA=$($ROOT_PATH/.github/scripts/get-files-sha.sh $ROOT_PATH $ROOT_PATH/.github/workflows/advanced.yml)
BINUTILS_SHA=$($ROOT_PATH/.github/scripts/get-repository-sha.sh $BINUTILS_REPO $BINUTILS_BRANCH)
GCC_SHA=$($ROOT_PATH/.github/scripts/get-repository-sha.sh $GCC_REPO $GCC_BRANCH)
MINGW_SHA=$($ROOT_PATH/.github/scripts/get-repository-sha.sh $MINGW_REPO $MINGW_BRANCH)
BINUTILS_SCRIPTS_SHA=$($ROOT_PATH/.github/scripts/get-files-sha.sh $ROOT_PATH $ROOT_PATH/.github/scripts/binutils)
TOOLCHAIN_SCRIPTS_SHA=$($ROOT_PATH/.github/scripts/get-files-sha.sh $ROOT_PATH $ROOT_PATH/.github/scripts/toolchain)
TIMESTAMP=$(date -u --iso-8601=seconds)

echo "timestamp=$TIMESTAMP" >> "$GITHUB_OUTPUT"
echo "toolchain-cache-key=$TOOLCHAIN_NAME-toolchain-$WORKFLOW_SHA-$BINUTILS_SHA-$GCC_SHA-$MINGW_SHA-$BINUTILS_SCRIPTS_SHA-$TOOLCHAIN_SCRIPTS_SHA" >> "$GITHUB_OUTPUT"
echo "runtime-cache-key=$TOOLCHAIN_NAME-runtime-$WORKFLOW_SHA-$BINUTILS_SHA-$GCC_SHA-$MINGW_SHA-$BINUTILS_SCRIPTS_SHA-$TOOLCHAIN_SCRIPTS_SHA" >> "$GITHUB_OUTPUT"
echo "ccache-key=$TARGET-ccache-$TIMESTAMP" >> "$GITHUB_OUTPUT"
echo "ccache-restore-keys=$TARGET-ccache-" >> "$GITHUB_OUTPUT"
