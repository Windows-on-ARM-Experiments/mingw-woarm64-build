#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

SOURCE_PATH=$(realpath `dirname ${BASH_SOURCE[0]}`/../../../code)

echo "::group::Test FFmpeg"
    pushd $FFMPEG_TESTS_PATH

    mkdir -p tests/data/fate
    ln -s /usr/bin/base64 tests/base64

    IFS=$'\n'
    for i in $(sed '/^@/d;/fate-source/d' fate.log); do
    if [[ $i =~ ^TEST ]]; then
        echo $i
        continue
    fi

    if [[ ! $i =~ ^echo ]]; then
        continue
    fi

    command=$SOURCE_PATH/$FFMPEG_VERSION/${i#echo @*$FFMPEG_VERSION/}
    command=${command//\/home*ffmpeg/.}
    echo $command
    eval $command || echo Error
    done

    popd
echo "::endgroup::"

echo "Success!"
