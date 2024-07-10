#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

GCC_BUILD_PATH=$BUILD_PATH/gcc-stage1

mkdir -p $GCC_BUILD_PATH
cd $GCC_BUILD_PATH

if [ "$RUN_CONFIG" = 1 ] || [ ! -f "$GCC_BUILD_PATH/Makefile" ] ; then
    echo "::group::Configure GCC stage1"
        rm -rf $GCC_BUILD_PATH/*

        if [ "$DEBUG" = 1 ] ; then
            HOST_OPTIONS="$HOST_OPTIONS \
                --enable-debug"
        fi

        case "$ARCH" in
            x86_64)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --with-arch=nocona \
                    --with-tune=generic"
                ;;
            aarch64)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --with-arch=armv8-a \
                    --with-tune=cortex-a53"
                ;;
        esac

        case "$PLATFORM" in
            *linux*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-languages=c \
                    --enable-threads=posix"
                ;;
            *cygwin*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-languages=c,c++ \
                    --disable-__cxa_atexit \
                    --enable-threads=posix \
                    --with-dwarf2 \
                    --with-system-zlib"
                ;;
            *mingw*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-languages=c \
                    --disable-isl-version-check \
                    --disable-rpath \
                    --disable-win32-registry \
                    --disable-werror \
                    --disable-symvers \
                    --with-system-zlib"
                ;;
        esac

    $SOURCE_PATH/$GCC_VERSION/configure \
        --prefix=$TOOLCHAIN_PATH \
        --build=$BUILD \
        --host=$HOST \
        --target=$TARGET \
        --enable-static \
        --disable-shared \
        --disable-bootstrap \
        --disable-multilib \
        --disable-plugins \
        --disable-gcov \
        --disable-libatomic \
        --disable-libgomp \
        --disable-libvtv \
        --disable-libquadmath \
        --disable-libssp \
        --disable-nls \
        --with-gnu-as \
        --with-gnu-ld \
        --without-headers \
        --enable-lto \
        $HOST_OPTIONS \
        $TARGET_OPTIONS
    echo "::endgroup::"
fi

echo "::group::Build GCC stage1"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [ "$RUN_INSTALL" = 1 ] ; then
    echo "::group::Install GCC stage1"
        make install
    echo "::endgroup::"
fi

echo 'Success!'
