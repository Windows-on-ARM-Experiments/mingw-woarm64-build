#include <stdarg.h>

struct short_vector_16_bytes
{
  int a;
  int b;
  int c;
  int d;
};

int
use_va_args (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct short_vector_16_bytes).a;
  int b = va_arg (argv, struct short_vector_16_bytes).a;
  int c = va_arg (argv, struct short_vector_16_bytes).a;
  int d = va_arg (argv, struct short_vector_16_bytes).a;
  int e = va_arg (argv, struct short_vector_16_bytes).a;
  int f = va_arg (argv, struct short_vector_16_bytes).a;
  int g = va_arg (argv, struct short_vector_16_bytes).a;
  int h = va_arg (argv, struct short_vector_16_bytes).a;
  int i = va_arg (argv, struct short_vector_16_bytes).a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}
