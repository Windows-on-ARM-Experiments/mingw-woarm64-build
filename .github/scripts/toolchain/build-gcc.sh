#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

GCC_BUILD_PATH=$BUILD_PATH/gcc

mkdir -p $GCC_BUILD_PATH
cd $GCC_BUILD_PATH

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$GCC_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure GCC"
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
                    --enable-shared \
                    --enable-threads=posix"
                ;;
            *cygwin*)
                # REMOVED: --libexecdir=/usr/lib
                # REMOVED: --enable-shared for aarch64-pc-cygwin
                # CHANGED: --enable-__cxa_atexit to --disable-__cxa_atexit
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-shared-libgcc \
                    --enable-version-specific-runtime-libs \
                    --disable-__cxa_atexit \
                    --enable-threads=posix \
                    --enable-graphite \
                    --enable-libatomic \
                    --enable-libgomp \
                    --enable-libquadmath \
                    --enable-libquadmath-support \
                    --enable-linker-build-id \
                    --enable-libstdcxx-filesystem-ts \
                    --disable-libssp \
                    --disable-symvers \
                    --with-gcc-major-version-only \
                    --with-dwarf2 \
                    --with-system-zlib \
                    --with-default-libstdcxx-abi=gcc4-compatible \
                    --without-libiconv-prefix \
                    --without-libintl-prefix"
                ;;
            *mingw*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --libexecdir=$TOOLCHAIN_PATH/lib \
                    --enable-shared \
                    --enable-threads=win32 \
                    --enable-graphite \
                    --enable-fully-dynamic-string \
                    --enable-libstdcxx-filesystem-ts \
                    --enable-libstdcxx-time \
                    --enable-cloog-backend=isl \
                    --enable-version-specific-runtime-libs \
                    --enable-lto \
                    --enable-libgomp \
                    --enable-checking=release \
                    --disable-libstdcxx-pch \
                    --disable-libstdcxx-debug \
                    --disable-isl-version-check \
                    --disable-libssp \
                    --disable-rpath \
                    --disable-win32-registry \
                    --disable-werror \
                    --disable-symvers \
                    --with-libiconv \
                    --with-system-zlib"
                ;;
        esac

        case "$ARCH-$PLATFORM" in
            aarch64-*linux*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --disable-libsanitizer"
                ;;
            aarch64-pc-cygwin)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --disable-shared"
                ;;
            x86_64-pc-cygwin)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-shared"
                ;;
        esac

        # REMOVED: --enable-languages=ada,go,jit
        $SOURCE_PATH/gcc/configure \
            --prefix=$TOOLCHAIN_PATH \
            --build=$BUILD \
            --host=$HOST \
            --target=$TARGET \
            --enable-static \
            --enable-languages=c,c++,fortran,lto,m2,objc,obj-c++ \
            --disable-bootstrap \
            --disable-multilib \
            --with-gnu-as \
            --with-gnu-ld \
            $HOST_OPTIONS \
            $TARGET_OPTIONS
    echo "::endgroup::"
fi

echo "::group::Build GCC"
    make $BUILD_MAKE_OPTIONS
echo "::endgroup::"

if [[ "$RUN_INSTALL" = 1 ]]; then
    echo "::group::Install GCC"
        make install
        if [[ "$DELETE_BUILD" = 1 ]]; then
            rm -rf $GCC_BUILD_PATH
        fi
    echo "::endgroup::"
fi

echo 'Success!'
