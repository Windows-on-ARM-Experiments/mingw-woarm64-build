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
GCC_BRANCH=${GCC_BRANCH:-woarm64}
# GCC_VERSION=gcc-12.2.0
GCC_VERSION=gcc-master

MINGW_REPO=https://github.com/ZacWalk/mingw-woarm64.git
MINGW_BRANCH=${MINGW_BRANCH:-woarm64}
MINGW_VERSION=mingw-w64-master

#TARGET_ARCH=x86_64
TARGET_ARCH=aarch64
INSTALL_PATH=~/cross
RUN_DOWNLOAD=1
RUN_CONFIG=1
MSYS2_CONFIG=1
BUILD_DIR=build-$TARGET_ARCH
TARGET=$TARGET_ARCH-w64-mingw32
PARALLEL_MAKE=-j6
MPFR_VERSION=mpfr-4.1.0
GMP_VERSION=gmp-6.2.1
MPC_VERSION=mpc-1.2.1
ISL_VERSION=isl-0.24
NEWLIB_VERSION=newlib-4.1.0
WGET_OPTIONS="-nc -P downloads"

export PATH=$INSTALL_PATH/bin:$PATH

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
        mkdir -p code
        cd code
        for f in ../downloads/*.tar*; do tar xf $f --skip-old-files; done

        git clone "$BINUTILS_REPO" -b "$BINUTILS_BRANCH" "$BINUTILS_VERSION"  || git -C "$BINUTILS_VERSION" pull
        git clone "$GCC_REPO" -b "$GCC_BRANCH" "$GCC_VERSION" || git -C "$GCC_VERSION" pull
        git clone "$MINGW_REPO" -b "$MINGW_BRANCH" "$MINGW_VERSION" || git -C "$MINGW_VERSION" pull

        # Symbolic links for deps
        cd $GCC_VERSION
        ln -sf `ls -1d ../mpfr-*/` mpfr
        ln -sf `ls -1d ../gmp-*/` gmp
        ln -sf `ls -1d ../mpc-*/` mpc
        ln -sf `ls -1d ../isl-*/` isl
        cd ../..
}

build_binutils()
{
        # Build Binutils
        echo "==== build binutils"
        mkdir -p $BUILD_DIR/binutils
        cd $BUILD_DIR/binutils
        if [ $RUN_CONFIG = 1 ] ; then ../../code/$BINUTILS_VERSION/configure \
                --prefix=$INSTALL_PATH --target=$TARGET 
        fi
        make $PARALLEL_MAKE
        make install
        cd ../..
}

build_gcc_compiler()
{
        # Build C/C++ Compilers
        echo "==== build gcc compiler"
        mkdir -p $BUILD_DIR/gcc
        cd $BUILD_DIR/gcc
        if [ $RUN_CONFIG = 1 ] ; then
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
        fi
        make $PARALLEL_MAKE all-gcc
        make install-gcc
        cd ../..
}

build_mingw_headers()
{
        # mingw headers
        echo "==== build mingw headers"
        mkdir -p $BUILD_DIR/mingw-headers
        cd $BUILD_DIR/mingw-headers
        if [ $RUN_CONFIG = 1 ] ; then ../../code/$MINGW_VERSION/mingw-w64-headers/configure \
                --prefix=$INSTALL_PATH/$TARGET \
                --host=$TARGET \
                --with-default-msvcrt=msvcrt
        fi
        make
        make install

        cd ../..
        # Symlink for gcc
        ln -sf $INSTALL_PATH/$TARGET $INSTALL_PATH/mingw
}

build_mingw_crt()
{
        # Build mingw
        echo "==== build mingw crt"
        mkdir -p $BUILD_DIR/mingw
        cd $BUILD_DIR/mingw
        if [ $RUN_CONFIG = 1 ] ; then ../../code/$MINGW_VERSION/mingw-w64-crt/configure \
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
        fi
        make $PARALLEL_MAKE
        make install
        cd ../..
}

build_mingw_libs()
{
        # mingw libraries
        echo "==== build mingw"
        mkdir -p $BUILD_DIR/mingw
        cd $BUILD_DIR/mingw
        if [ $RUN_CONFIG = 1 ] ; then ../../code/$MINGW_VERSION/configure \
                --prefix=$INSTALL_PATH/$TARGET \
                --host=$TARGET \
                --enable-libarm64 \
                --disable-lib32 \
                --disable-lib64 \
                --disable-libarm32 \
                --disable-shared \
                --with-libraries=libmangle,pseh,winpthreads \
                --with-default-msvcrt=msvcrt
        fi
        make
        make install
        cd ../..
}

build_libgcc()
{
        echo "==== build libgcc"
        # Build Libgcc
        cd $BUILD_DIR/gcc
        make $PARALLEL_MAKE all-target-libgcc
        make install-target-libgcc
        cd ../..
}

build_libstdcpp()
{
        echo "==== build libstdcpp"
        # Build libstdc++
        cd $BUILD_DIR/gcc
        make $PARALLEL_MAKE all-target-libstdc++-v3
        make install-target-libstdc++-v3
        cd ../..
}

build_libgfortran()
{
        echo "==== build libgfortran"
        # Build libgfortran++
        cd $BUILD_DIR/gcc
        make $PARALLEL_MAKE all-target-libgfortran
        make install-target-libgfortran
        cd ../..
}

build_gcc_remaining()
{
        echo "==== build GCC remaining"
        # Build the rest of GCC
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

if [ $RUN_DOWNLOAD = 1 ] ; then   
   download_sources
fi

mkdir -p $BUILD_DIR

build_binutils
build_gcc_compiler
build_mingw_headers
build_mingw_crt
build_libgcc
build_mingw_libs
build_libstdcpp
build_libgfortran
build_gcc_remaining

trap - EXIT
echo 'Success!'
