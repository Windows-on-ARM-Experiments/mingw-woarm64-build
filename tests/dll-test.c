/*
   Tests using the function imported from a DLL
   IMPORT_API must be defined externally
*/

#include "gtest_like_c.h"

#include <stdlib.h>
#include <stdio.h>
#include <complex.h>

// Declare imported function.
// These functions were exported from the dll using __declspec( dllexport )
__declspec(dllimport) int __cdecl add_c_export(int a, int b);
__declspec(dllimport) int __stdcall add_std_export(int a, int b);
__declspec(dllimport) _Complex double __cdecl complex_add_c_export(_Complex double a, _Complex double b);
__declspec(dllimport) _Complex double __stdcall complex_add_std_export(_Complex double a, _Complex double b);

// These functions were exported via a def file.
int __cdecl add_c_def(int a, int b);
int __stdcall add_std_def(int a, int b);

// call a pointer to a function
int test_func_pointer(int __cdecl (*f)(int, int))
{
  return f(6, 23);
}

// Test calling a DLL with methods exported in different ways
// Return a number representing each check to make
// diagnosis easier
int check_dll()
{
  if (add_c_export(7, 3) != 10)
    return 1;
  if (add_std_export(7, 3) != 10)
    return 2;
  if (add_c_def(7, 3) != 10)
    return 3;
  if (add_std_def(7, 3) != 10)
    return 4;
  if (test_func_pointer(add_c_export) != 29)
    return 5;
  if (test_func_pointer(add_c_def) != 29)
    return 6;

  _Complex double a = 1.0 + 2.0 * I;
  _Complex double b = 3.0 + 4.0 * I;
  _Complex double c = complex_add_c_export(a, b);
  if (c != 4.000000 + 6.000000 * I) {
    return 7;
  }

  _Complex double d = complex_add_std_export(a, b);
  if (c != 4.000000 + 6.000000 * I) {
    return 8;
  }

  return 0;
}

TEST(Aarch64MinGW, DllTest)
{
    ASSERT_EQ(check_dll(), 0);
}
