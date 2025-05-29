#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

NAMES=$@

CYGWIN_SOURCE_PATH=$SOURCE_PATH/cygwin
CYGWIN_BUILD_PATH=$BUILD_PATH/cygwin
CYGWIN_WINSUP_TEST_PATH=$BUILD_PATH/cygwin/$ARCH-$PLATFORM/winsup/testsuite

mkdir -p $ARTIFACT_PATH

echo "::group::Execute Cygwin tests"
    pushd "$CYGWIN_WINSUP_TEST_PATH" || exit 1
        pushd mingw
          make
        popd

        if [[ -z "$NAMES" ]]; then
            MAKE_CHECK_COMMAND=( make $CHECK_MAKE_OPTIONS check )
        else
            PREFIXED_NAMES=""
            for NAME in $NAMES; do
                PREFIXED_NAMES="$PREFIXED_NAMES winsup.api/$NAME"
            done
            NAMES=${PREFIXED_NAMES[*]}
            MAKE_CHECK_COMMAND=( make $CHECK_MAKE_OPTIONS check "TESTS=$NAMES" )
        fi

        if [[ -z "$GITHUB_STEP_SUMMARY" ]]; then
            WSLENV="$WSLENV:PATH/p" \
                "${MAKE_CHECK_COMMAND[@]}"
        else
            RESULTS_FILE="$ARTIFACT_PATH/cygwin-test-results.txt"
            WSLENV="$WSLENV:PATH/p" \
                "${MAKE_CHECK_COMMAND[@]}" 2>&1 | tee "$RESULTS_FILE" || true
            awk '
                BEGIN { start=0; }
                /^={76}$/ && start==0 { start=1; next }
                /^See testsuite\/test-suite.log$/ { exit }
                /^Testsuite summary for Cygwin 0$/ { gsub(/=/, "-"); print "|", $0, "|\n| -- |"; next }
                /^={76}$/ && start==1 { next }
                !/^={76}$/ && start==1 { gsub(/#/, "|"); print $0, "|"; next }
            ' "$RESULTS_FILE" > "$GITHUB_STEP_SUMMARY"
        fi
    popd
echo "::endgroup::"

echo 'Success!'
