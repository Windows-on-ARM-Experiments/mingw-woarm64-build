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
                    --enable-threads=posix"
                ;;
            *cygwin*)
                # REMOVED: --libexecdir=/usr/lib
                # CHANGED: --enable-__cxa_atexit to --disable-__cxa_atexit
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-version-specific-runtime-libs \
                    --disable-__cxa_atexit \
                    --enable-threads=posix \
                    --enable-linker-build-id \
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
                # ADDED: --enable-plugin
                # REMOVED: --with-gmp=$TOOLCHAIN_PATH
                # REMOVED: --with-mpfr=$TOOLCHAIN_PATH
                # REMOVED: --with-mpc=$TOOLCHAIN_PATH
                # REMOVED: --with-isl=$TOOLCHAIN_PATH
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --libexecdir=$TOOLCHAIN_PATH/lib \
                    --enable-threads=win32 \
                    --enable-graphite \
                    --enable-fully-dynamic-string \
                    --enable-libstdcxx-filesystem-ts \
                    --enable-libstdcxx-time \
                    --enable-cloog-backend=isl \
                    --enable-version-specific-runtime-libs \
                    --enable-lto \
                    --enable-plugin \
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
            aarch64-*mingw*)
                # CHANGED: --enable-shared to --disable-shared
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --disable-shared"
                ;;
        esac

        $SOURCE_PATH/$GCC_VERSION/configure \
            --prefix=$TOOLCHAIN_PATH \
            --build=$BUILD \
            --host=$HOST \
            --target=$TARGET \
            --enable-static \
            --enable-shared \
            --enable-languages=c,c++,lto,fortran \
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
    echo "::endgroup::"
fi

echo 'Success!'
