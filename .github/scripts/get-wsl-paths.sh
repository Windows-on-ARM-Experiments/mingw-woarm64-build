#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

mkdir -p $WSL_OUTPUT_DIR
mkdir -p $BUILD_PATH
mkdir -p $CCACHE_DIR_PATH
mkdir -p $ARTIFACT_PATH

echo "root-path-wsl=$ROOT_PATH" >> $GITHUB_OUTPUT
echo "artifact-path-wsl=$ARTIFACT_PATH" >> $GITHUB_OUTPUT

echo "build-path-win=`wslpath -w $BUILD_PATH`" >> $GITHUB_OUTPUT
echo "ccache-dir-path-win=`wslpath -w $CCACHE_DIR_PATH`" >> $GITHUB_OUTPUT
echo "artifact-path-win=`wslpath -w $ARTIFACT_PATH`" >> $GITHUB_OUTPUT

echo "output-path-win=`wslpath -w $WSL_OUTPUT_DIR`" >> $GITHUB_OUTPUT
