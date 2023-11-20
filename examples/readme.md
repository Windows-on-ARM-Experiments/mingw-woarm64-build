# What is building?
This toolchain is experimental, but I have been able to build C test applications and libraries. C++ is still a WIP.

## Helo world
Simple C app can be built like this:
```
~/cross/bin/aarch64-w64-mingw32-gcc hello.c
```

## OpenBLAS
OpenBLAS builds if Fortran is disabled. I use the following steps. Clone the code from [here]( https://github.com/xianyi/OpenBLAS).
In the OpenBLAS folder use make to build it:
```
make CC=~/cross/bin/aarch64-w64-mingw32-gcc HOSTCC=gcc TARGET=ARMV8 ONLY_CBLAS=1
```
To build the attached test app:
```
~/cross/bin/aarch64-w64-mingw32-gcc -I. test-openblas.c -L. -lopenblas
```