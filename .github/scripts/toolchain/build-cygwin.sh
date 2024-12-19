#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

STAGE=$1
CYGWIN_SOURCE_PATH=$SOURCE_PATH/cygwin
CYGWIN_BUILD_PATH=$BUILD_PATH/cygwin

mkdir -p $CYGWIN_BUILD_PATH
cd $CYGWIN_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$CYGWIN_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure Cygwin"
        rm -rf $CYGWIN_BUILD_PATH/*

        if [ "$DEBUG" = 1 ] ; then
            HOST_OPTIONS="$HOST_OPTIONS \
                --enable-debug \
                --disable-lto"
            CFLAGS="$CFLAGS -O0 -ggdb"
            CXXFLAGS="$CXXFLAGS -O0 -ggdb"
        fi

        case "$STAGE" in
            1)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --disable-shared \
                    --disable-doc"
                ;;
            2)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-shared"
                ;;
        esac

        # ADDED: --disable-dumper
        CFLAGS=$CFLAGS \
        CXXFLAGS=$CXXFLAGS \
        CFLAGS_FOR_TARGET=$CFLAGS
        CXXFLAGS_FOR_TARGET="$CXXFLAGS -Wno-error -Wno-narrowing" \
        $CYGWIN_SOURCE_PATH/configure \
            --prefix=$TOOLCHAIN_PATH \
            --build=$HOST \
            --host=$HOST \
            --target=$TARGET \
            --enable-static \
            --disable-dumper \
            --with-sysroot=$TOOLCHAIN_PATH \
            --with-build-sysroot=$TOOLCHAIN_PATH \
            --with-cross-bootstrap \
            $HOST_OPTIONS \
            $TARGET_OPTIONS
    echo "::endgroup::"
fi

echo "::group::Build Cygwin"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install Cygwin"
        make install
        if [[ "$DELETE_BUILD" = 1 ]]; then
            rm -rf $CYGWIN_BUILD_PATH
        fi
    echo "::endgroup::"
fi

echo 'Success!'
