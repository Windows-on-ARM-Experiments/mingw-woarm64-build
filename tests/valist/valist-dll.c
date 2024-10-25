#include <stdarg.h>

#if linux
#define EXPORT
#define DECL
#else
#define EXPORT __declspec (dllexport)
#define DECL __cdecl
#endif

EXPORT int DECL
use_va_list (const char *format, va_list argv)
{
  int a = va_arg (argv, int);
  int b = va_arg (argv, long);
  return a + b;
}

EXPORT int DECL
use_va_arg (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, int);
  int b = va_arg (argv, long);
  va_end (argv);
  return a + b;
}
