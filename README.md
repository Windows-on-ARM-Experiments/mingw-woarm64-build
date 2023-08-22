# Windows-on-arm64 GNU toolchain cross compiler.

[![Build toolchain](https://github.com/ZacWalk/mingw-woarm64-build/actions/workflows/main.yml/badge.svg)](https://github.com/ZacWalk/mingw-woarm64-build/actions/workflows/main.yml)

This repository contains a script to build a GNU toolchain cross compiler for Windows-on-arm64. It is a **work in progress**. This allows binaries that can execute on Windows-on-arm64 to be built on Linux. I have only tested this script on Ubuntu/WSL.

# Known issues:
This toolchain is not yet ready for real-world use. Problems and missing parts are listed in the [issues](https://github.com/ZacWalk/mingw-woarm64-build/issues).

# Install build dependencies:

sudo apt-get install build-essential binutils-for-build texinfo bison flex zlib1g-dev libgmp-dev dejagnu libmpc-dev

# Build the cross-compiler

Running build.sh will build the cross compiler. It installs it into ~/cross. The build script does multiple things.
 - Downloads dependencies
 - Clones several dependencies 
    - modified binutils from https://github.com/ZacWalk/binutils-woarm64.git
    - modified gcc from https://github.com/ZacWalk/gcc-woarm64
    - modified mingw from https://github.com/ZacWalk/mingw-woarm64
 - Builds and installs: binutils, mingw, gcc and libgcc.

# Using the cross compiler

To build a simple C file, something like this works:
```
~/cross/bin/aarch64-w64-mingw32-gcc hello.c
```
I was able to cross compile zlib and install as follows:
```
make -f win32/Makefile.gcc DESTDIR=~/cross CC=~/cross/bin/aarch64-w64-mingw32-gcc AR=~/cross/bin/aarch64-w64-mingw32-ar RANLIB=~/cross/bin/aarch64-w64-mingw32-ranlib RC=~/cross/bin/aarch64-w64-mingw32-windres STRIP=~/cross/bin/aarch64-w64-mingw32-strip BINARY_PATH=$PREFIXDIR/bin INCLUDE_PATH=$PREFIXDIR/include LIBRARY_PATH=$PREFIXDIR/lib SHARED_MODE=1 PREFIX=aarch64-w64-mingw32- clean install
```
