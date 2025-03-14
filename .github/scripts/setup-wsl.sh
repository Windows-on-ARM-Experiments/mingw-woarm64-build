#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "ARTIFACT_PATH=`wslpath -a \"$ARTIFACT_PATH\"`" >> $GITHUB_ENV
echo "SOURCE_PATH=`wslpath -a \"$SOURCE_PATH\"`" >> $GITHUB_ENV
