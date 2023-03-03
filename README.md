# 'Windows on ARM64' GNU toolchain cross compiler.

This repository contains a script to build a GNU toolchain cross compiler for 'Windows on ARM64'. It is a **work in progress**. This allows binaries that can execute on Windows-on-Arm64 to be built on Linux. I have only tested this script on Ubuntu/WSL. 

# Install build dependencies:

sudo apt-get install build-essential binutils-for-build texinfo bison flex zlib1g-dev libgmp-dev dejagnu 

# Build the cross-compiler

Running build.sh will build the cross compiler. It installs it into ~/cross. The build script does multiple things.
 - Downloads dependencies
 - Clones several dependencies 
    - modified binutils from https://github.com/ZacWalk/binutils-woarm64.git
    - modified gcc from https://github.com/ZacWalk/gcc-woarm64
    - modified mingw from https://github.com/ZacWalk/mingw-woarm64
 - Builds and installs: binutils, mingw, gcc and libgcc.

# Using the cross compiler

Simply call the created gcc binary. For example:

~/cross/bin/aarch64-w64-mingw32-gcc hello.c
