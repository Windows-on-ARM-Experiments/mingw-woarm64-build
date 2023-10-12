/* 
   Tests using the function imported from a DLL
   IMPORT_API must be defined externally
*/

#include <stdlib.h>
#include <stdio.h>

/* Declare imported function so that we can actually use it. */
IMPORT_API int __cdecl funcc(int a, int b);
IMPORT_API int __stdcall funcstd(int a, int b);

int test_func_pointer( int __cdecl (*f)(int , int), int marker)
{
  printf("test_func_pointer start %lx\n", test_func_pointer);
  printf("f address %lx\n", f);
  f(6, 23);
}

int main(int argc, char** argv)
{
  printf("%d\n", funcc(6, 23));
  printf("%d\n", funcstd(6, 23));

  test_func_pointer(funcc, 0x1919);
  printf("ok\n");

  return EXIT_SUCCESS;
}