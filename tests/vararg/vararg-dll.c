#include <stdarg.h>

#if linux
#define EXPORT
#define DECL
#else
#define EXPORT __declspec (dllexport)
#define DECL __cdecl
#endif

struct no_arguments
{
  const char *format;
};

EXPORT void DECL
no_arguments (const char *format, ...)
{
}

EXPORT const char *DECL
one_int_argument (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  const char *a = va_arg (argv, const char *);
  va_end (argv);
  return a;
}

EXPORT const char *DECL
one_string_argument (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  const char *a = va_arg (argv, const char *);
  va_end (argv);
  return a;
}

EXPORT int DECL
sixteen_int_arguments (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, int);
  int b = va_arg (argv, int);
  int c = va_arg (argv, int);
  int d = va_arg (argv, int);
  int e = va_arg (argv, int);
  int f = va_arg (argv, int);
  int g = va_arg (argv, int);
  int h = va_arg (argv, int);
  int i = va_arg (argv, int);
  int j = va_arg (argv, int);
  int k = va_arg (argv, int);
  int l = va_arg (argv, int);
  int m = va_arg (argv, int);
  int n = va_arg (argv, int);
  int o = va_arg (argv, int);
  int p = va_arg (argv, int);
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p;
}

EXPORT const char *DECL
sixteen_string_arguments (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  const char *a = va_arg (argv, const char *);
  const char *b = va_arg (argv, const char *);
  const char *c = va_arg (argv, const char *);
  const char *d = va_arg (argv, const char *);
  const char *e = va_arg (argv, const char *);
  const char *f = va_arg (argv, const char *);
  const char *g = va_arg (argv, const char *);
  const char *h = va_arg (argv, const char *);
  const char *i = va_arg (argv, const char *);
  const char *j = va_arg (argv, const char *);
  const char *k = va_arg (argv, const char *);
  const char *l = va_arg (argv, const char *);
  const char *m = va_arg (argv, const char *);
  const char *n = va_arg (argv, const char *);
  const char *o = va_arg (argv, const char *);
  const char *p = va_arg (argv, const char *);
  va_end (argv);
  return p;
}
