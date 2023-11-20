/* 
   Tests creating a DLL with exported functions
   EXPORT_API must be defined externally
*/

#include <stdio.h>

EXPORT_API double __stdcall varc = 33.33;
EXPORT_API double __stdcall varstd = 44.44;

EXPORT_API int __cdecl funcc(int a, int b)
{
  printf("funcc(%d %d)\n", a, b);
  printf("funcc address %lx\n", funcc);
  return (a + b);
}

EXPORT_API int __stdcall funcstd(int a, int b)
{
  printf("funcstd(%d %d)\n", a, b);
  printf("funcstd address %lx\n", funcstd);
  return (a + b);
}


