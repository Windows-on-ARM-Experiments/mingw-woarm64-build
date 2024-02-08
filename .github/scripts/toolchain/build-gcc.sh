#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

GCC_BUILD_PATH=$BUILD_PATH/gcc

mkdir -p $GCC_BUILD_PATH
cd $GCC_BUILD_PATH

if [ "$RUN_CONFIG" = 1 ] || [ ! -f "$GCC_BUILD_PATH/Makefile" ] ; then
    echo "::group::Configure GCC"
        rm -rf $GCC_BUILD_PATH/*

        if [ "$DEBUG" = 1 ] ; then
            HOST_OPTIONS="$HOST_OPTIONS \
                --enable-debug"
        fi

        case $ARCH in
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

        case $PLATFORM in
            *linux*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-threads=posix"
                ;;
            *mingw*)
                TARGET_OPTIONS="$TARGET_OPTIONS \
                    --enable-threads=win32 \
                    --disable-win32-registry"
                ;;
        esac

        # ADDED --includedir=$TOOLCHAIN_PATH/$TARGET/include
        # REMOVED --libexecdir=/opt/lib
        $SOURCE_PATH/$GCC_VERSION/configure \
            --prefix=$TOOLCHAIN_PATH \
            --build=$BUILD \
            --host=$HOST \
            --target=$TARGET \
            --includedir=$TOOLCHAIN_PATH/$TARGET/include \
            --libexecdir=$TOOLCHAIN_PATH/lib \
            --disable-bootstrap \
            --enable-languages=c,lto,c++,fortran \
            --enable-shared \
            --enable-static \
            --enable-graphite \
            --enable-fully-dynamic-string \
            --enable-libstdcxx-filesystem-ts \
            --enable-libstdcxx-time \
            --disable-libstdcxx-pch \
            --disable-libstdcxx-debug \
            --enable-cloog-backend=isl \
            --enable-version-specific-runtime-libs \
            --disable-isl-version-check \
            --enable-lto \
            --enable-libgomp \
            --disable-libssp \
            --disable-multilib \
            --enable-checking=release \
            --disable-rpath \
            --disable-werror \
            --disable-symvers \
            --with-libiconv \
            --with-system-zlib \
            --with-{gmp,mpfr,mpc,isl}=/usr \
            --with-gnu-as \
            --with-gnu-ld \
            $HOST_OPTIONS \
            $TARGET_OPTIONS
    echo "::endgroup::"
fi

echo "::group::Build GCC"
    make $BUILD_MAKE_OPTIONS all-gcc
echo "::endgroup::"

if [ "$RUN_INSTALL" = 1 ] ; then
    echo "::group::Install GCC"
        make install-gcc
    echo "::endgroup::"
fi

echo 'Success!'
