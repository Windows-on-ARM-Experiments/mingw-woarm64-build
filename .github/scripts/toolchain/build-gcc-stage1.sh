#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

GCC_BUILD_PATH=$BUILD_PATH/gcc-stage1

mkdir -p $GCC_BUILD_PATH
cd $GCC_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$GCC_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure GCC stage1"
        rm -rf $GCC_BUILD_PATH/*

        if [[ "$DEBUG" = 1 ]]; then
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
                    --enable-languages=c,lto \
                    --enable-threads=posix"
                ;;
            *cygwin*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-languages=c,c++,lto \
                    --disable-__cxa_atexit \
                    --enable-threads=posix \
                    --with-dwarf2 \
                    --with-system-zlib"
                ;;
            *mingw*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-languages=c \
                    --enable-lto \
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
        $HOST_OPTIONS \
        $TARGET_OPTIONS
    echo "::endgroup::"
fi

echo "::group::Build GCC stage1"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install GCC stage1"
        make install
        if [[ "$DELETE_BUILD" = 1 ]]; then
            rm -rf $GCC_BUILD_PATH
        fi
    echo "::endgroup::"

   lto_plugin_path=$(find $TOOLCHAIN_PATH/libexec/gcc/$TARGET -type f -name liblto_plugin.so | head -n 1)
    if [ -n $lto_plugin_path ]; then
        echo "::group::Install LTO plug-in"
            ln -sf $lto_plugin_path $TOOLCHAIN_PATH/lib/bfd-plugins/liblto_plugin.so
        echo "::endgroup::"
    fi
fi

echo 'Success!'
