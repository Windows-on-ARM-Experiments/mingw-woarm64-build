#!/bin/bash

BINUTILS_VERSION=${BINUTILS_VERSION:-binutils-master}
GCC_VERSION=${GCC_VERSION:-gcc-master}

MPFR_VERSION=mpfr-4.1.0
GMP_VERSION=gmp-6.2.1
MPC_VERSION=mpc-1.2.1
ISL_VERSION=isl-0.24
WGET_OPTIONS="-nc -P downloads"

set -e # exit on error
set -x # echo on

echo "::group::Install libraries"

# Download packages
wget $WGET_OPTIONS https://gcc.gnu.org/pub/gcc/infrastructure/$MPFR_VERSION.tar.bz2
wget $WGET_OPTIONS https://gcc.gnu.org/pub/gcc/infrastructure/$GMP_VERSION.tar.bz2
wget $WGET_OPTIONS https://gcc.gnu.org/pub/gcc/infrastructure/$MPC_VERSION.tar.gz
wget $WGET_OPTIONS https://gcc.gnu.org/pub/gcc/infrastructure/$ISL_VERSION.tar.bz2

# Extract everything
mkdir -p code
cd code
for f in ../downloads/*.tar*; do tar xf $f --skip-old-files; done

# Symbolic links for binutils dependencies
cd $BINUTILS_VERSION
ln -sf `ls -1d ../mpfr-*/` mpfr
ln -sf `ls -1d ../gmp-*/` gmp
ln -sf `ls -1d ../mpc-*/` mpc
ln -sf `ls -1d ../isl-*/` isl

# Symbolic links for GCC dependencies
cd $GCC_VERSION
ln -sf `ls -1d ../mpfr-*/` mpfr
ln -sf `ls -1d ../gmp-*/` gmp
ln -sf `ls -1d ../mpc-*/` mpc
ln -sf `ls -1d ../isl-*/` isl

echo "::endgroup::"

echo 'Success!'
