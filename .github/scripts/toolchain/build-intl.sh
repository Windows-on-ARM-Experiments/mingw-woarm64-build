#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

GETTEXT_SOURCE_PATH=$SOURCE_PATH/gettext
INTL_BUILD_PATH=$BUILD_PATH/intl

mkdir -p $INTL_BUILD_PATH
cd $INTL_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$INTL_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure gettext"
        rm -rf $INTL_BUILD_PATH/*

        (cd $GETTEXT_SOURCE_PATH && ./autopull.sh && ./autogen.sh)

        if [[ "$DEBUG" = 1 ]]; then
            HOST_OPTIONS="$HOST_OPTIONS \
                --enable-debug"
        fi

        $GETTEXT_SOURCE_PATH/configure \
            --prefix=$TOOLCHAIN_PATH \
            --build=$BUILD \
            --host=$TARGET \
            --with-included-gettext \
            $HOST_OPTIONS \
            $TARGET_OPTIONS
    echo "::endgroup::"
fi

echo "::group::Build intl"
    (cd $INTL_BUILD_PATH/gettext-runtime/intl && make $BUILD_MAKE_OPTIONS)
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install intl"
        (cd $INTL_BUILD_PATH/gettext-runtime/intl && make install)
        if [[ "$DELETE_BUILD" = 1 ]]; then
            rm -rf $INTL_BUILD_PATH
        fi
    echo "::endgroup::"
fi

echo 'Success!'
