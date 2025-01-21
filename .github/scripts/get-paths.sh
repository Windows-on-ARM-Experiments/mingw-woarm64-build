#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "root-path-env=$ROOT_PATH" >> $GITHUB_OUTPUT
echo "build-path-env=$BUILD_PATH" >> $GITHUB_OUTPUT
echo "ccache-dir-path-env=$CCACHE_DIR_PATH" >> $GITHUB_OUTPUT
echo "artifact-path-env=$ARTIFACT_PATH" >> $GITHUB_OUTPUT

if [ -x "$(command -v wslpath)" ]; then
    echo "root-path-host=`wslpath -w $ROOT_PATH`" >> $GITHUB_OUTPUT
    echo "build-path-host=`wslpath -w $BUILD_PATH`" >> $GITHUB_OUTPUT
    echo "ccache-dir-path-host=`wslpath -w $CCACHE_DIR_PATH`" >> $GITHUB_OUTPUT
    echo "artifact-path-host=`wslpath -w $ARTIFACT_PATH`" >> $GITHUB_OUTPUT
else
    echo "root-path-host=$ROOT_PATH" >> $GITHUB_OUTPUT
    echo "build-path-host=$BUILD_PATH" >> $GITHUB_OUTPUT
    echo "ccache-dir-path-host=$CCACHE_DIR_PATH" >> $GITHUB_OUTPUT
    echo "artifact-path-host=$ARTIFACT_PATH" >> $GITHUB_OUTPUT
fi
