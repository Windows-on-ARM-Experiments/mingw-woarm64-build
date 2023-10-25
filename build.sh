#! /bin/bash
set -e
trap 'previous_command=$this_command; this_command=$BASH_COMMAND' DEBUG
trap 'echo FAILED COMMAND: $previous_command' EXIT

#-------------------------------------------------------------------------------------------
# This WIP script will download packages for, configure, 
# build and install a Windows on ARM64 GCC cross-compiler.
# See: http://preshing.com/20141119/how-to-build-a-gcc-cross-compiler
#-------------------------------------------------------------------------------------------

BINUTILS_REPO=https://github.com/ZacWalk/binutils-woarm64.git
BINUTILS_BRANCH=${BINUTILS_BRANCH:-woarm64}
# BINUTILS_VERSION=binutils-2.40
BINUTILS_VERSION=binutils-master

GCC_REPO=https://github.com/ZacWalk/gcc-woarm64.git
GCC_BRANCH=${GCC_BRANCH:-long-double-64}
# GCC_VERSION=gcc-12.2.0
GCC_VERSION=gcc-master

MINGW_REPO=https://github.com/ZacWalk/mingw-woarm64.git
MINGW_BRANCH=${MINGW_BRANCH:-woarm64}
MINGW_VERSION=mingw-w64-master

# TARGET_ARCH=x86_64
TARGET_ARCH=aarch64
INSTALL_PATH=~/cross
RUN_DOWNLOAD=1
RUN_CONFIG=1
MSYS2_CONFIG=1
TARGET=$TARGET_ARCH-w64-mingw32
# TARGET=$TARGET_ARCH-pc-cygwin
BUILD_DIR=build-$TARGET
PARALLEL_MAKE=-j$(nproc)
MPFR_VERSION=mpfr-4.1.0
GMP_VERSION=gmp-6.2.1
MPC_VERSION=mpc-1.2.1
ISL_VERSION=isl-0.24
NEWLIB_VERSION=newlib-4.1.0
WGET_OPTIONS="-nc -P downloads"

export PATH=$INSTALL_PATH/bin:$PATH

make_folders()
{
    mkdir -p code
    mkdir -p $BUILD_DIR
    mkdir -p $BUILD_DIR/binutils
    mkdir -p $BUILD_DIR/gcc
    mkdir -p $BUILD_DIR/mingw-headers
    mkdir -p $BUILD_DIR/mingw
}

download_sources()
{
    echo " ==== download sources"
    # Download packages
    # wget $WGET_OPTIONS https://ftp.gnu.org/gnu/binutils/$BINUTILS_VERSION.tar.gz
    # wget $WGET_OPTIONS https://ftp.gnu.org/gnu/gcc/$GCC_VERSION/$GCC_VERSION.tar.gz

    wget $WGET_OPTIONS https://gcc.gnu.org/pub/gcc/infrastructure/$MPFR_VERSION.tar.bz2
    wget $WGET_OPTIONS https://gcc.gnu.org/pub/gcc/infrastructure/$GMP_VERSION.tar.bz2
    wget $WGET_OPTIONS https://gcc.gnu.org/pub/gcc/infrastructure/$MPC_VERSION.tar.gz
    wget $WGET_OPTIONS https://gcc.gnu.org/pub/gcc/infrastructure/$ISL_VERSION.tar.bz2

    # Extract everything
    cd code
    for f in ../downloads/*.tar*; do tar xf $f --skip-old-files; done

    # update or clone repos
    git -C "$BINUTILS_VERSION" pull || git clone "$BINUTILS_REPO" -b "$BINUTILS_BRANCH" "$BINUTILS_VERSION"
    git -C "$GCC_VERSION" pull || git clone "$GCC_REPO" -b "$GCC_BRANCH" "$GCC_VERSION"
    git -C "$MINGW_VERSION" pull || git clone "$MINGW_REPO" -b "$MINGW_BRANCH" "$MINGW_VERSION"

    # Symbolic links for deps
    cd $GCC_VERSION
    ln -sf `ls -1d ../mpfr-*/` mpfr
    ln -sf `ls -1d ../gmp-*/` gmp
    ln -sf `ls -1d ../mpc-*/` mpc
    ln -sf `ls -1d ../isl-*/` isl
    cd ../..
}

config_binutils()
{
    echo "==== config binutils"
    cd $BUILD_DIR/binutils
    ../../code/$BINUTILS_VERSION/configure \
        --prefix=$INSTALL_PATH --target=$TARGET 
    cd ../..
}

build_binutils()
{
    echo "==== build binutils"
    cd $BUILD_DIR/binutils
    make $PARALLEL_MAKE
    make install
    cd ../..
}

config_gcc_compiler()
{
    echo "==== config gcc compiler"    
    cd $BUILD_DIR/gcc
    if [ $MSYS2_CONFIG = 1 ] ; then
        # REMOVED --libexecdir=/opt/lib
        # REMOVED --with-{gmp,mpfr,mpc,isl}=/usr
        ../../code/$GCC_VERSION/configure \
            --prefix=$INSTALL_PATH \
            --target=$TARGET \
            --enable-languages=c,lto,c++,fortran \
            --enable-shared \
            --enable-static \
            --enable-threads=win32 \
            --enable-graphite \
            --enable-fully-dynamic-string \
            --enable-libstdcxx-filesystem-ts=yes \
            --enable-libstdcxx-time=yes \
            --enable-cloog-backend=isl \
            --enable-version-specific-runtime-libs \
            --enable-lto \
            --enable-libgomp \
            --enable-checking=release \
            --disable-multilib \
            --disable-shared \
            --disable-rpath \
            --disable-win32-registry \
            --disable-werror \
            --disable-symvers \
            --disable-libstdcxx-pch \
            --disable-libstdcxx-debug \
            --disable-isl-version-check \
            --disable-bootstrap \
            --with-libiconv \
            --with-system-zlib \
            --with-gnu-as \
            --with-gnu-ld
    else 
        ../../code/$GCC_VERSION/configure \
            --prefix=$INSTALL_PATH --target=$TARGET \
            --enable-languages=c,c++,fortran \
            --disable-libunwind-exceptions \
            --enable-seh-exceptions \
            --disable-sjlj-exceptions
    fi
    cd ../..
}

build_gcc_compiler()
{
    echo "==== build gcc compiler"
    cd $BUILD_DIR/gcc
    make $PARALLEL_MAKE all-gcc
    make install-gcc
    cd ../..
}

config_mingw_headers()
{
    echo "==== config mingw headers"
    cd $BUILD_DIR/mingw-headers
    ../../code/$MINGW_VERSION/mingw-w64-headers/configure \
        --prefix=$INSTALL_PATH/$TARGET \
        --host=$TARGET \
        --with-default-msvcrt=msvcrt
    cd ../..
}

build_mingw_headers()
{
    echo "==== build mingw headers"
    cd $BUILD_DIR/mingw-headers
    make $PARALLEL_MAKE
    make install
    cd ../..
    # Symlink for gcc
    ln -sf $INSTALL_PATH/$TARGET $INSTALL_PATH/mingw
}

config_mingw_crt()
{
    echo "==== config mingw crt"
    cd $BUILD_DIR/mingw
    ../../code/$MINGW_VERSION/mingw-w64-crt/configure \
        --build=x86_64-linux-gnu \
        --with-sysroot=$INSTALL_PATH \
        --prefix=$INSTALL_PATH/$TARGET \
        --host=$TARGET \
        --enable-libarm64 \
        --disable-lib32 \
        --disable-lib64 \
        --disable-libarm32 \
        --disable-shared \
        --with-default-msvcrt=msvcrt
    cd ../..
}

build_mingw_crt()
{
    echo "==== build mingw crt"
    cd $BUILD_DIR/mingw
    make $PARALLEL_MAKE
    make install
    cd ../..
}

config_mingw_libs()
{
    echo "==== config mingw libs"
    cd $BUILD_DIR/mingw
    ../../code/$MINGW_VERSION/configure \
        --prefix=$INSTALL_PATH/$TARGET \
        --host=$TARGET \
        --enable-libarm64 \
        --disable-lib32 \
        --disable-lib64 \
        --disable-libarm32 \
        --disable-shared \
        --with-libraries=libmangle,pseh,winpthreads \
        --with-default-msvcrt=msvcrt
    cd ../..
}

build_mingw_libs()
{
    echo "==== build mingw libs"
    cd $BUILD_DIR/mingw
    make $PARALLEL_MAKE
    make install
    cd ../..
}

build_libgcc()
{
    echo "==== build libgcc"
    cd $BUILD_DIR/gcc
    make $PARALLEL_MAKE all-target-libgcc
    make install-target-libgcc
    cd ../..
}

build_libstdcpp()
{
    echo "==== build libstdcpp"
    cd $BUILD_DIR/gcc
    make $PARALLEL_MAKE all-target-libstdc++-v3
    make install-target-libstdc++-v3
    cd ../..
}

build_libgfortran()
{
    echo "==== build libgfortran"
    cd $BUILD_DIR/gcc
    make $PARALLEL_MAKE all-target-libgfortran
    make install-target-libgfortran
    cd ../..
}

build_gcc_remaining()
{
    echo "==== build GCC remaining"
    cd $BUILD_DIR/gcc
    make $PARALLEL_MAKE all
    make install
    cd ../..
}

for var in "$@"
do
    if [ "$var" = "q" ] || [ "$var" = "quick" ] ; then 
      RUN_CONFIG=0
      RUN_DOWNLOAD=0
      echo " ==== quick build"
    fi
done

make_folders

if [ $RUN_DOWNLOAD = 1 ] ; then
   download_sources
fi

if [ $RUN_CONFIG = 1 ] ; then
    config_binutils
    config_gcc_compiler
    config_mingw_headers
fi

build_binutils
build_gcc_compiler
build_mingw_headers

if [ $RUN_CONFIG = 1 ] ; then
    config_mingw_crt
fi

build_mingw_crt
build_libgcc

if [ $RUN_CONFIG = 1 ] ; then
    config_mingw_libs
fi

build_mingw_libs
build_libstdcpp
build_libgfortran
build_gcc_remaining

trap - EXIT
echo 'Success!'
