#include <stdarg.h>

int
use_va_args (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, int);
  double b = va_arg (argv, double);
  va_end (argv);
  return a + b;
}
