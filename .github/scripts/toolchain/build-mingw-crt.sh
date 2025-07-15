#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

MINGW_BUILD_PATH=$BUILD_PATH/mingw-crt

mkdir -p $MINGW_BUILD_PATH
cd $MINGW_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$MINGW_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure MinGW CRT"
        rm -rf $MINGW_BUILD_PATH/*

        if [[ "$DEBUG" = 1 ]]; then
            CFLAGS="$CFLAGS -O0 -ggdb"
            CXXFLAGS="$CXXFLAGS -O0 -ggdb"
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

        $SOURCE_PATH/mingw/mingw-w64-crt/configure \
            --prefix=$TOOLCHAIN_PATH/$TARGET \
            --build=$BUILD \
            --host=$TARGET \
            $HOST_OPTIONS \
            $TARGET_OPTIONS \
            CFLAGS="$CFLAGS"
    echo "::endgroup::"
fi

echo "::group::Build MinGW CRT"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install MinGW CRT"
        make install

        case "$PLATFORM" in
            *cygwin*)
                pushd $TOOLCHAIN_PATH/$TARGET/lib
                    ln -fs w32api/libadvapi32.a .
                    ln -fs w32api/libcomdlg32.a .
                    ln -fs w32api/libdbghelp.a .
                    ln -fs w32api/libgdi32.a .
                    ln -fs w32api/libkernel32.a .
                    ln -fs w32api/libnetapi32.a .
                    ln -fs w32api/libnetapi32.a .
                    ln -fs w32api/libntdll.a .
                    ln -fs w32api/libole32.a .
                    ln -fs w32api/liboleaut32.a .
                    ln -fs w32api/libonecore.a .
                    ln -fs w32api/libpdh.a .
                    ln -fs w32api/libpsapi.a .
                    ln -fs w32api/libshell32.a .
                    ln -fs w32api/libuser32.a .
                    ln -fs w32api/libuserenv.a .
                    ln -fs w32api/libuuid.a .
                    ln -fs w32api/libwinmm.a .
                    ln -fs w32api/libwinspool.a .
                popd
                ;;
        esac

        if [[ "$DELETE_BUILD" = 1 ]]; then
            rm -rf $MINGW_BUILD_PATH
        fi
    echo "::endgroup::"
fi

echo 'Success!'
