#include <stdarg.h>

int
use_va_args (int a, int b, int c, int d, ...)
{
  va_list argv;
  va_start (argv, d);
  int e = va_arg (argv, int);
  int f = va_arg (argv, int);
  int g = va_arg (argv, int);
  int h = va_arg (argv, int);
  int i = va_arg (argv, int);
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}
