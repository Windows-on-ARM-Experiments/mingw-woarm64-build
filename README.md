# Windows on Arm64 GNU Toolchain Cross-Compiler

[![Build main toolchain](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/actions/workflows/main.yml/badge.svg)](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/actions/workflows/main.yml) [![Build toolchain variants](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/actions/workflows/advanced.yml/badge.svg)](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/actions/workflows/advanced.yml) [![Daily rebase](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/actions/workflows/rebase.yml/badge.svg)](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/actions/workflows/rebase.yml)

This repository contains scripts for building an `aarch64-w64-mingw32` target Windows on Arm64
GNU toolchain cross-compiler for `x86_64-pc-linux-gnu` or `aarch64-pc-linux-gnu` hosts.
It is a **work in progress**, with ongoing efforts to upstream the necessary changes to
the corresponding repositories. The resulting toolchain produces binaries that can be executed
on Windows on Arm64 and are built on Linux. The scripts are actively tested on the default
Ubuntu 22.04 GitHub Actions runners and Ubuntu 22.04 in WSL.

# Known Issues

This toolchain is not yet ready for real-world use. Problems and missing parts are listed in
the [issues](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/issues). Please,
report all issues, even if the issue is, e.g., GCC-specific, here.

# Installing Build Dependencies

The [main build script](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/blob/main/build.sh)
installs its dependencies automatically when the `RUN_BOOTSTRAP=1` environment variable is defined,
which is the default. To see what will be installed refer to
[`.github/scripts/install-dependencies.sh`](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/blob/main/.github/scripts/install-dependencies.sh).

# Building the Cross-Compiler

To build the cross-compiler and install it into a `~/cross-aarch64-w64-mingw32-msvcrt` folder,
follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build.git
   ```

2. Navigate to the root repository folder:
   ```bash
   cd mingw-woarm64-build
   ```

3. Run the build script:
   ```bash
   ./build.sh
   ```

To install the toolchain into a different folder you can use the `TOOLCHAIN_PATH` environment
variable:
```bash
TOOLCHAIN_PATH=/opt/aarch64-w64-mingw32 ./build.sh
```

To skip the dependencies bootstrapping process and fetching source code repositories for consecutive
builds you can use other environment variables:
```bash
RUN_BOOTSTRAP=0 UPDATE_SOURCES=0 ./build.sh
```

The build script does multiple things:

- Installs the dependency Ubuntu packages.
- Clones several dependency source code repositories:
  - modified binutils from [Windows-on-ARM-Experiments/binutils-woarm64](https://github.com/Windows-on-ARM-Experiments/binutils-woarm64),
  - modified GCC from [Windows-on-ARM-Experiments/gcc-woarm64](https://github.com/Windows-on-ARM-Experiments/gcc-woarm64),
  - modified MinGW from [Windows-on-ARM-Experiments/mingw-woarm64](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64).
- Bootstraps the binutils and GCC sources with `gmp`, `mpfr`, `isl`, etc. dependencies.
- Builds and installs binutils, stage 1 GCC, MinGW runtimes, GCC with libgcc, and then
  the entire MinGW.

# Using the Cross-Compiler

After building the toolchain, to build a simple C source code file run:
```bash
export PATH="~/cross-aarch64-w64-mingw32-msvcrt/bin:$PATH"
aarch64-w64-mingw32-gcc hello.c -o hello.exe
```

You can also build a set of basic AArch64-specific tests using:
```bash
.github/scripts/tests/build.sh
```

This step requires a working CMake executable in your environment and will place the resulting binaries
into the `tests/build/bin` folder.

# Testing the Toolchain

We are [testing](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/actions/workflows/build-and-test-toolchain.yml)
the toolchain binaries with the GCC test suite and against [four example projects builds](https://github.com/Windows-on-ARM-Experiments/mingw-woarm64-build/actions/workflows/advanced.yml)
([OpenSSL](https://openssl-library.org/), [FFmpeg](https://ffmpeg.org/),
[OpenBLAS](https://github.com/OpenMathLib/OpenBLAS), [libjpeg-turbo](https://github.com/libjpeg-turbo/libjpeg-turbo))
and their testing suites.

As of 2024/08/09 we are reaching the following level of quality with the GCC testing targeting
armv8-a without optional extensions such as SVE:

| Metric               | Count  |
| -------------------- | ------ |
| Expected passes      | 573324 |
| Unexpected failures  | 12118  |
| Unexpected successes | 172    |
| Expected failures    | 4528   |
| Unresolved testcases | 7363   |
| Unsupported tests    | 10774  |
| DejaGnu errors       | 0      |
| Total                | 608279 |
| Reliability rate     | 96%    |
