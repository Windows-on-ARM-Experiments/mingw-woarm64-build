// This is a small test app for openblas. 
// git clone  https://github.com/xianyi/OpenBLAS.git
// cd OpenBLAS
// make BINARY=64 CC=~/cross/bin/aarch64-w64-mingw32-gcc HOSTCC=gcc TARGET=ARMV8
//  ~/cross/bin/aarch64-w64-mingw32-gcc -I. -L. test-openblas.c -lopenblas -o test-openblas.exe

#include <cblas.h>
#include <stdio.h>

void main()
{
  int i=0;
  double A[6] = {1.0,2.0,1.0,-3.0,4.0,-1.0};
  double B[6] = {1.0,2.0,1.0,-3.0,4.0,-1.0};
  double C[9] = {.5,.5,.5,.5,.5,.5,.5,.5,.5};
  cblas_dgemm(CblasColMajor, CblasNoTrans, CblasTrans,3,3,2,1,A, 3, B, 3,2,C,3);

  for(i=0; i<9; i++)
    printf("%lf ", C[i]);
  printf("\n");
  printf("ok\n");
}