#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "ARTIFACT_PATH=`wslpath -w \"$ARTIFACT_PATH\"`" >> $GITHUB_ENV
echo "SOURCE_PATH=`wslpath -w \"$SOURCE_PATH\"`" >> $GITHUB_ENV
echo "BUILD_PATH=`wslpath -w \"$BUILD_PATH\"`" >> $GITHUB_ENV
