#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

if [[ "$LTO" = 1 ]]; then
    MINGW_BUILD_PATH=$BUILD_PATH/mingw-lto
    INSTALL_PATH=$TOOLCHAIN_PATH/$TARGET-lto
else
    MINGW_BUILD_PATH=$BUILD_PATH/mingw
    INSTALL_PATH=$TOOLCHAIN_PATH/$TARGET
fi

mkdir -p $MINGW_BUILD_PATH
cd $MINGW_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$MINGW_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure MinGW libraries"
        rm -rf $MINGW_BUILD_PATH/*

        if [[ "$DEBUG" = 1 ]]; then
            HOST_OPTIONS="$HOST_OPTIONS \
                --enable-debug"
        fi

        if [[ "$LTO" = 1 ]]; then
            CFLAGS="$CFLAGS \
                -flto \
                -fno-builtin"
        fi

        case "$ARCH" in
            x86_64)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --disable-lib32 \
                    --enable-lib64 \
                    --disable-libarm32 \
                    --disable-libarm64"
            ;;
            aarch64)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --disable-lib32 \
                    --disable-lib64 \
                    --disable-libarm32 \
                    --enable-libarm64"
                CFLAGS="$CFLAGS \
                    -mno-outline-atomics"
            ;;
        esac

        case "$PLATFORM" in
            *cygwin*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-w32api"
            ;;
            *mingw*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-wildcard \
                    --disable-dependency-tracking"
            ;;
        esac

        case "$CRT" in
            ucrt)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --with-default-msvcrt=ucrt"
            ;;
            msvcrt)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --with-default-msvcrt=msvcrt"
            ;;
        esac

        $SOURCE_PATH/$MINGW_VERSION/configure \
            --prefix=$TOOLCHAIN_PATH/$TARGET \
            --build=$BUILD \
            --host=$TARGET \
            $HOST_OPTIONS \
            $TARGET_OPTIONS \
            CFLAGS="$CFLAGS"
    echo "::endgroup::"
fi

echo "::group::Build MinGW"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install MinGW"
        make install
        if [[ "$DELETE_BUILD" = 1 ]]; then
            rm -rf $MINGW_BUILD_PATH
        fi
    echo "::endgroup::"
fi

echo 'Success!'
