# Windows on Arm64 GNU Toolchain Cross-Compiler

[![Build main toolchain](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/actions/workflows/main.yml/badge.svg)](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/actions/workflows/main.yml) [![Build toolchain variants](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/actions/workflows/advanced.yml/badge.svg)](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/actions/workflows/advanced.yml) [![Daily rebase](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/actions/workflows/rebase.yml/badge.svg)](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/actions/workflows/rebase.yml)

This repository contains scripts for building a `x86_64-pc-linux-gnu` host, `aarch64-w64-mingw32` target GNU toolchain cross-compiler for Windows on Arm64. It is a **work in progress** in the stage of upstreaming the necessary changes to the corresponding repositories. This toolchain contains binaries that can be executed on Windows on Arm64 to be built on Linux. The scripts are being actively tested on the default Ubuntu 22.04 GitHub Actions runners and Ubuntu 22.04 in WSL.

# Known Issues

This toolchain is not yet ready for real-world use. Problems and missing parts are listed in the [issues](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/issues). Please, report all issues, even if the issue is, e.g., GCC-specific, here.

# Installing Build Dependencies

The [main build script](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/blob/main/build.sh) installs its dependencies automatically when `RUN_BOOTSTRAP=1` environment variable is defined which is the default. To see what will be installed refer to [`.github/scripts/install-dependencies.sh`](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/blob/main/.github/scripts/install-dependencies.sh).

# Building the Cross-Compiler

Running [`./build.sh`](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/blob/main/build.sh) on Ubuntu 22.04 in the root repository folder will build the cross-compiler and install it into `~/cross-aarch64-w64-mingw32-msvcrt` folder by default.

```bash
./build.sh
```

To skip dependencies bootstrapping process and fetching source code repositories for consecutive builds you can use environment variables:

```bash
RUN_BOOTSTRAP=0 UPDATE_SOURCES=0 ./build.sh
```

The build script is doing multiple things:

- Installs the dependency Ubuntu packages.
- Clones several dependency source code repositories:
  - modified binutils from [Windows-on-ARM-Experiments/binutils-woarm64](https://github.com/Windows-on-ARM-Experiments/binutils-woarm64),
  - modified GCC from [Windows-on-ARM-Experiments/gcc-woarm64](https://github.com/Windows-on-ARM-Experiments/gcc-woarm64),
  - modified MinGW from [Windows-on-ARM-Experiments/mingw-woarm64](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64).
- Bootstraps the binutils and GCC sources with `gmp`, `mpfr`, `isl`, etc. dependencies.
- Builds and installs binutils, stage 1 GCC, MinGW runtimes, GCC with libgcc, and then the entire MinGW.

# Using the Cross-Compiler

After building the toochain, to build a simple C source code file run:

```bash
~/cross-aarch64-w64-mingw32-msvcrt/bin/aarch64-w64-mingw32-gcc hello.c -o hello.exe
```

# Testing the Toolchain

We are [testing](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/actions/workflows/build-and-test-toolchain.yml) the toolchain binaries with GCC test suite and against [four example projects builds](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/actions/workflows/advanced.yml) ([OpenSSL](https://openssl-library.org/), [FFmpeg](https://ffmpeg.org/), [OpenBLAS](https://github.com/OpenMathLib/OpenBLAS), [libjpeg-turbo](https://github.com/libjpeg-turbo/libjpeg-turbo)) and their testing suites.

As of 2024/08/09 we are reaching the following level of quality with the GCC testing:

| Metric                | Count  |
|-----------------------|--------|
| Expected passes       | 573324 |
| Unexpected failures   | 224452 |
| Unexpected successes  | 172    |
| Expected failures     | 4528   |
| Unresolved testcases  | 7363   |
| Unsupported tests     | 10774  |
| DejaGnu errors        | 0      |
| Total                 | 820613 |
| Reliability rate      | 71%    |