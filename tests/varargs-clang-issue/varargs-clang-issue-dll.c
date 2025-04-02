#include <stdarg.h>

#if defined(__linux__)
#define EXPORT
#define DECL
#else
#define EXPORT __declspec(dllexport)
#define DECL __cdecl
#endif

struct not_short_vector_12_bytes
{
  int a;
  int b;
  int c;
};

EXPORT int DECL
use_va_args (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct not_short_vector_12_bytes).a;
  int b = va_arg (argv, struct not_short_vector_12_bytes).b;
  int c = va_arg (argv, struct not_short_vector_12_bytes).c;
  int d = va_arg (argv, struct not_short_vector_12_bytes).a;
  int e = va_arg (argv, struct not_short_vector_12_bytes).b;
  int f = va_arg (argv, struct not_short_vector_12_bytes).c;
  int g = va_arg (argv, struct not_short_vector_12_bytes).a;
  int h = va_arg (argv, struct not_short_vector_12_bytes).b;
  int i = va_arg (argv, struct not_short_vector_12_bytes).c;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list (const char *format, va_list argv)
{
  int a = va_arg (argv, struct not_short_vector_12_bytes).a;
  int b = va_arg (argv, struct not_short_vector_12_bytes).b;
  int c = va_arg (argv, struct not_short_vector_12_bytes).c;
  int d = va_arg (argv, struct not_short_vector_12_bytes).a;
  int e = va_arg (argv, struct not_short_vector_12_bytes).b;
  int f = va_arg (argv, struct not_short_vector_12_bytes).c;
  int g = va_arg (argv, struct not_short_vector_12_bytes).a;
  int h = va_arg (argv, struct not_short_vector_12_bytes).b;
  int i = va_arg (argv, struct not_short_vector_12_bytes).c;
  return a + b + c + d + e + f + g + h + i;
}
