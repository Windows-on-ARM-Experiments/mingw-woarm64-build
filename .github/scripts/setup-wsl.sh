#!/bin/bash
source ~/work/.github/scripts/config.sh

mkdir -p $BUILD_PATH
mkdir -p $CCACHE_DIR_PATH
mkdir -p $ARTIFACT_PATH

echo "build-path-win=`wslpath -w $BUILD_PATH`" >> $GITHUB_OUTPUT
echo "ccache-dir-path-win=`wslpath -w $CCACHE_DIR_PATH`" >> $GITHUB_OUTPUT
echo "artifact-path-win=`wslpath -w $ARTIFACT_PATH`" >> $GITHUB_OUTPUT
echo "artifact-path-wsl=$ARTIFACT_PATH" >> $GITHUB_OUTPUT
