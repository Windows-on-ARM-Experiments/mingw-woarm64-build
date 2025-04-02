#include <stdarg.h>
#include <stdlib.h>

#include "types.h"

#if defined(__linux__)
#define EXPORT
#define DECL
#else
#define EXPORT __declspec(dllexport)
#define DECL __cdecl
#endif

EXPORT int DECL
use_va_args_no_arguments (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  va_end (argv);
  return 165;
}

EXPORT int DECL
use_va_list_no_arguments (const char *format, va_list argv)
{
  return 165;
}

EXPORT int DECL
use_va_args_few_longs (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  long a = va_arg (argv, long);
  long b = va_arg (argv, long);
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_longs (const char *format, va_list argv)
{
  long a = va_arg (argv, long);
  long b = va_arg (argv, long);
  return a + b;
}

EXPORT int DECL
use_va_args_several_longs (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  long a = va_arg (argv, long);
  long b = va_arg (argv, long);
  long c = va_arg (argv, long);
  long d = va_arg (argv, long);
  long e = va_arg (argv, long);
  long f = va_arg (argv, long);
  long g = va_arg (argv, long);
  long h = va_arg (argv, long);
  long i = va_arg (argv, long);
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list_several_longs (const char *format, va_list argv)
{
  long a = va_arg (argv, long);
  long b = va_arg (argv, long);
  long c = va_arg (argv, long);
  long d = va_arg (argv, long);
  long e = va_arg (argv, long);
  long f = va_arg (argv, long);
  long g = va_arg (argv, long);
  long h = va_arg (argv, long);
  long i = va_arg (argv, long);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_args_many_longs (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  long a = va_arg (argv, long);
  long b = va_arg (argv, long);
  long c = va_arg (argv, long);
  long d = va_arg (argv, long);
  long e = va_arg (argv, long);
  long f = va_arg (argv, long);
  long g = va_arg (argv, long);
  long h = va_arg (argv, long);
  long i = va_arg (argv, long);
  long j = va_arg (argv, long);
  long k = va_arg (argv, long);
  long l = va_arg (argv, long);
  long m = va_arg (argv, long);
  long n = va_arg (argv, long);
  long o = va_arg (argv, long);
  long p = va_arg (argv, long);
  long q = va_arg (argv, long);
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_longs (const char *format, va_list argv)
{
  long a = va_arg (argv, long);
  long b = va_arg (argv, long);
  long c = va_arg (argv, long);
  long d = va_arg (argv, long);
  long e = va_arg (argv, long);
  long f = va_arg (argv, long);
  long g = va_arg (argv, long);
  long h = va_arg (argv, long);
  long i = va_arg (argv, long);
  long j = va_arg (argv, long);
  long k = va_arg (argv, long);
  long l = va_arg (argv, long);
  long m = va_arg (argv, long);
  long n = va_arg (argv, long);
  long o = va_arg (argv, long);
  long p = va_arg (argv, long);
  long q = va_arg (argv, long);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_few_ints (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, int);
  int b = va_arg (argv, int);
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_ints (const char *format, va_list argv)
{
  int a = va_arg (argv, int);
  int b = va_arg (argv, int);
  return a + b;
}

EXPORT int DECL
use_va_args_several_ints (const char *format, ...)
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
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list_several_ints (const char *format, va_list argv)
{
  int a = va_arg (argv, int);
  int b = va_arg (argv, int);
  int c = va_arg (argv, int);
  int d = va_arg (argv, int);
  int e = va_arg (argv, int);
  int f = va_arg (argv, int);
  int g = va_arg (argv, int);
  int h = va_arg (argv, int);
  int i = va_arg (argv, int);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_args_many_ints (const char *format, ...)
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
  int q = va_arg (argv, int);
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_ints (const char *format, va_list argv)
{
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
  int q = va_arg (argv, int);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_few_doubles (const char *name, ...)
{
  va_list argv;
  va_start (argv, name);
  double a = va_arg (argv, double);
  double b = va_arg (argv, double);
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_doubles (const char *name, va_list argv)
{
  double a = va_arg (argv, double);
  double b = va_arg (argv, double);
  return a + b;
}

EXPORT int DECL
use_va_args_several_doubles (const char *name, ...)
{
  va_list argv;
  va_start (argv, name);
  double a = va_arg (argv, double);
  double b = va_arg (argv, double);
  double c = va_arg (argv, double);
  double d = va_arg (argv, double);
  double e = va_arg (argv, double);
  double f = va_arg (argv, double);
  double g = va_arg (argv, double);
  double h = va_arg (argv, double);
  double i = va_arg (argv, double);
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list_several_doubles (const char *name, va_list argv)
{
  double a = va_arg (argv, double);
  double b = va_arg (argv, double);
  double c = va_arg (argv, double);
  double d = va_arg (argv, double);
  double e = va_arg (argv, double);
  double f = va_arg (argv, double);
  double g = va_arg (argv, double);
  double h = va_arg (argv, double);
  double i = va_arg (argv, double);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_args_many_doubles (const char *name, ...)
{
  va_list argv;
  va_start (argv, name);
  double a = va_arg (argv, double);
  double b = va_arg (argv, double);
  double c = va_arg (argv, double);
  double d = va_arg (argv, double);
  double e = va_arg (argv, double);
  double f = va_arg (argv, double);
  double g = va_arg (argv, double);
  double h = va_arg (argv, double);
  double i = va_arg (argv, double);
  double j = va_arg (argv, double);
  double k = va_arg (argv, double);
  double l = va_arg (argv, double);
  double m = va_arg (argv, double);
  double n = va_arg (argv, double);
  double o = va_arg (argv, double);
  double p = va_arg (argv, double);
  double q = va_arg (argv, double);
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_doubles (const char *name, va_list argv)
{
  double a = va_arg (argv, double);
  double b = va_arg (argv, double);
  double c = va_arg (argv, double);
  double d = va_arg (argv, double);
  double e = va_arg (argv, double);
  double f = va_arg (argv, double);
  double g = va_arg (argv, double);
  double h = va_arg (argv, double);
  double i = va_arg (argv, double);
  double j = va_arg (argv, double);
  double k = va_arg (argv, double);
  double l = va_arg (argv, double);
  double m = va_arg (argv, double);
  double n = va_arg (argv, double);
  double o = va_arg (argv, double);
  double p = va_arg (argv, double);
  double q = va_arg (argv, double);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_few_floats (const char *name, ...)
{
  // the float is promoted to double
  va_list argv;
  va_start (argv, name);
  double a = va_arg (argv, double);
  double b = va_arg (argv, double);
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_floats (const char *name, va_list argv)
{
  // the float is promoted to double
  double a = va_arg (argv, double);
  double b = va_arg (argv, double);
  return a + b;
}

EXPORT int DECL
use_va_args_several_floats (const char *name, ...)
{
  // the float is promoted to double
  va_list argv;
  va_start (argv, name);
  double a = va_arg (argv, double);
  double b = va_arg (argv, double);
  double c = va_arg (argv, double);
  double d = va_arg (argv, double);
  double e = va_arg (argv, double);
  double f = va_arg (argv, double);
  double g = va_arg (argv, double);
  double h = va_arg (argv, double);
  double i = va_arg (argv, double);
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list_several_floats (const char *name, va_list argv)
{
  // the float is promoted to double
  double a = va_arg (argv, double);
  double b = va_arg (argv, double);
  double c = va_arg (argv, double);
  double d = va_arg (argv, double);
  double e = va_arg (argv, double);
  double f = va_arg (argv, double);
  double g = va_arg (argv, double);
  double h = va_arg (argv, double);
  double i = va_arg (argv, double);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_args_many_floats (const char *name, ...)
{
  // the float is promoted to double
  va_list argv;
  va_start (argv, name);
  double a = va_arg (argv, double);
  double b = va_arg (argv, double);
  double c = va_arg (argv, double);
  double d = va_arg (argv, double);
  double e = va_arg (argv, double);
  double f = va_arg (argv, double);
  double g = va_arg (argv, double);
  double h = va_arg (argv, double);
  double i = va_arg (argv, double);
  double j = va_arg (argv, double);
  double k = va_arg (argv, double);
  double l = va_arg (argv, double);
  double m = va_arg (argv, double);
  double n = va_arg (argv, double);
  double o = va_arg (argv, double);
  double p = va_arg (argv, double);
  double q = va_arg (argv, double);
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_floats (const char *name, va_list argv)
{
  // the float is promoted to double
  double a = va_arg (argv, double);
  double b = va_arg (argv, double);
  double c = va_arg (argv, double);
  double d = va_arg (argv, double);
  double e = va_arg (argv, double);
  double f = va_arg (argv, double);
  double g = va_arg (argv, double);
  double h = va_arg (argv, double);
  double i = va_arg (argv, double);
  double j = va_arg (argv, double);
  double k = va_arg (argv, double);
  double l = va_arg (argv, double);
  double m = va_arg (argv, double);
  double n = va_arg (argv, double);
  double o = va_arg (argv, double);
  double p = va_arg (argv, double);
  double q = va_arg (argv, double);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_few_strings (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = atoi (va_arg (argv, const char *));
  int b = atoi (va_arg (argv, const char *));
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_strings (const char *format, va_list argv)
{
  int a = atoi (va_arg (argv, const char *));
  int b = atoi (va_arg (argv, const char *));
  return a + b;
}

EXPORT int DECL
use_va_args_several_strings (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = atoi (va_arg (argv, const char *));
  int b = atoi (va_arg (argv, const char *));
  int c = atoi (va_arg (argv, const char *));
  int d = atoi (va_arg (argv, const char *));
  int e = atoi (va_arg (argv, const char *));
  int f = atoi (va_arg (argv, const char *));
  int g = atoi (va_arg (argv, const char *));
  int h = atoi (va_arg (argv, const char *));
  int i = atoi (va_arg (argv, const char *));
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list_several_strings (const char *format, va_list argv)
{
  int a = atoi (va_arg (argv, const char *));
  int b = atoi (va_arg (argv, const char *));
  int c = atoi (va_arg (argv, const char *));
  int d = atoi (va_arg (argv, const char *));
  int e = atoi (va_arg (argv, const char *));
  int f = atoi (va_arg (argv, const char *));
  int g = atoi (va_arg (argv, const char *));
  int h = atoi (va_arg (argv, const char *));
  int i = atoi (va_arg (argv, const char *));
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_args_many_strings (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = atoi (va_arg (argv, const char *));
  int b = atoi (va_arg (argv, const char *));
  int c = atoi (va_arg (argv, const char *));
  int d = atoi (va_arg (argv, const char *));
  int e = atoi (va_arg (argv, const char *));
  int f = atoi (va_arg (argv, const char *));
  int g = atoi (va_arg (argv, const char *));
  int h = atoi (va_arg (argv, const char *));
  int i = atoi (va_arg (argv, const char *));
  int j = atoi (va_arg (argv, const char *));
  int k = atoi (va_arg (argv, const char *));
  int l = atoi (va_arg (argv, const char *));
  int m = atoi (va_arg (argv, const char *));
  int n = atoi (va_arg (argv, const char *));
  int o = atoi (va_arg (argv, const char *));
  int p = atoi (va_arg (argv, const char *));
  int q = atoi (va_arg (argv, const char *));
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_strings (const char *format, va_list argv)
{
  int a = atoi (va_arg (argv, const char *));
  int b = atoi (va_arg (argv, const char *));
  int c = atoi (va_arg (argv, const char *));
  int d = atoi (va_arg (argv, const char *));
  int e = atoi (va_arg (argv, const char *));
  int f = atoi (va_arg (argv, const char *));
  int g = atoi (va_arg (argv, const char *));
  int h = atoi (va_arg (argv, const char *));
  int i = atoi (va_arg (argv, const char *));
  int j = atoi (va_arg (argv, const char *));
  int k = atoi (va_arg (argv, const char *));
  int l = atoi (va_arg (argv, const char *));
  int m = atoi (va_arg (argv, const char *));
  int n = atoi (va_arg (argv, const char *));
  int o = atoi (va_arg (argv, const char *));
  int p = atoi (va_arg (argv, const char *));
  int q = atoi (va_arg (argv, const char *));
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_few_composites (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  char a = va_arg (argv, struct composite).a;
  int b = va_arg (argv, struct composite).b;
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_composites (const char *format, va_list argv)
{
  char a = va_arg (argv, struct composite).a;
  int b = va_arg (argv, struct composite).b;
  return a + b;
}

EXPORT int DECL
use_va_args_several_composites (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  char a = va_arg (argv, struct composite).a;
  int b = va_arg (argv, struct composite).b;
  int c = atoi (va_arg (argv, struct composite).c);
  char d = va_arg (argv, struct composite).a;
  int e = va_arg (argv, struct composite).b;
  int f = atoi (va_arg (argv, struct composite).c);
  char g = va_arg (argv, struct composite).a;
  int h = va_arg (argv, struct composite).b;
  int i = atoi (va_arg (argv, struct composite).c);
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list_several_composites (const char *format, va_list argv)
{
  char a = va_arg (argv, struct composite).a;
  int b = va_arg (argv, struct composite).b;
  int c = atoi (va_arg (argv, struct composite).c);
  char d = va_arg (argv, struct composite).a;
  int e = va_arg (argv, struct composite).b;
  int f = atoi (va_arg (argv, struct composite).c);
  char g = va_arg (argv, struct composite).a;
  int h = va_arg (argv, struct composite).b;
  int i = atoi (va_arg (argv, struct composite).c);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_args_many_composites (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  char a = va_arg (argv, struct composite).a;
  int b = va_arg (argv, struct composite).b;
  int c = atoi (va_arg (argv, struct composite).c);
  char d = va_arg (argv, struct composite).a;
  int e = va_arg (argv, struct composite).b;
  int f = atoi (va_arg (argv, struct composite).c);
  char g = va_arg (argv, struct composite).a;
  int h = va_arg (argv, struct composite).b;
  int i = atoi (va_arg (argv, struct composite).c);
  char j = va_arg (argv, struct composite).a;
  int k = va_arg (argv, struct composite).b;
  int l = atoi (va_arg (argv, struct composite).c);
  int m = va_arg (argv, struct composite).b;
  int n = va_arg (argv, struct composite).b;
  int o = atoi (va_arg (argv, struct composite).c);
  int p = va_arg (argv, struct composite).b;
  int q = va_arg (argv, struct composite).b;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_composites (const char *format, va_list argv)
{
  char a = va_arg (argv, struct composite).a;
  int b = va_arg (argv, struct composite).b;
  int c = atoi (va_arg (argv, struct composite).c);
  char d = va_arg (argv, struct composite).a;
  int e = va_arg (argv, struct composite).b;
  int f = atoi (va_arg (argv, struct composite).c);
  char g = va_arg (argv, struct composite).a;
  int h = va_arg (argv, struct composite).b;
  int i = atoi (va_arg (argv, struct composite).c);
  char j = va_arg (argv, struct composite).a;
  int k = va_arg (argv, struct composite).b;
  int l = atoi (va_arg (argv, struct composite).c);
  int m = va_arg (argv, struct composite).b;
  int n = va_arg (argv, struct composite).b;
  int o = atoi (va_arg (argv, struct composite).c);
  int p = va_arg (argv, struct composite).b;
  int q = va_arg (argv, struct composite).b;
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_few_short_vector_8_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct short_vector_8_bytes).a;
  int b = va_arg (argv, struct short_vector_8_bytes).b;
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_short_vector_8_bytes (const char *format, va_list argv)
{
  int a = va_arg (argv, struct short_vector_8_bytes).a;
  int b = va_arg (argv, struct short_vector_8_bytes).b;
  return a + b;
}

EXPORT int DECL
use_va_args_several_short_vector_8_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct short_vector_8_bytes).a;
  int b = va_arg (argv, struct short_vector_8_bytes).b;
  int c = va_arg (argv, struct short_vector_8_bytes).a;
  int d = va_arg (argv, struct short_vector_8_bytes).b;
  int e = va_arg (argv, struct short_vector_8_bytes).a;
  int f = va_arg (argv, struct short_vector_8_bytes).b;
  int g = va_arg (argv, struct short_vector_8_bytes).a;
  int h = va_arg (argv, struct short_vector_8_bytes).b;
  int i = va_arg (argv, struct short_vector_8_bytes).a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list_several_short_vector_8_bytes (const char *format, va_list argv)
{
  int a = va_arg (argv, struct short_vector_8_bytes).a;
  int b = va_arg (argv, struct short_vector_8_bytes).b;
  int c = va_arg (argv, struct short_vector_8_bytes).a;
  int d = va_arg (argv, struct short_vector_8_bytes).b;
  int e = va_arg (argv, struct short_vector_8_bytes).a;
  int f = va_arg (argv, struct short_vector_8_bytes).b;
  int g = va_arg (argv, struct short_vector_8_bytes).a;
  int h = va_arg (argv, struct short_vector_8_bytes).b;
  int i = va_arg (argv, struct short_vector_8_bytes).a;
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_args_many_short_vector_8_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct short_vector_8_bytes).a;
  int b = va_arg (argv, struct short_vector_8_bytes).b;
  int c = va_arg (argv, struct short_vector_8_bytes).a;
  int d = va_arg (argv, struct short_vector_8_bytes).b;
  int e = va_arg (argv, struct short_vector_8_bytes).a;
  int f = va_arg (argv, struct short_vector_8_bytes).b;
  int g = va_arg (argv, struct short_vector_8_bytes).a;
  int h = va_arg (argv, struct short_vector_8_bytes).b;
  int i = va_arg (argv, struct short_vector_8_bytes).a;
  int j = va_arg (argv, struct short_vector_8_bytes).b;
  int k = va_arg (argv, struct short_vector_8_bytes).a;
  int l = va_arg (argv, struct short_vector_8_bytes).b;
  int m = va_arg (argv, struct short_vector_8_bytes).a;
  int n = va_arg (argv, struct short_vector_8_bytes).b;
  int o = va_arg (argv, struct short_vector_8_bytes).a;
  int p = va_arg (argv, struct short_vector_8_bytes).b;
  int q = va_arg (argv, struct short_vector_8_bytes).a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_short_vector_8_bytes (const char *format, va_list argv)
{
  int a = va_arg (argv, struct short_vector_8_bytes).a;
  int b = va_arg (argv, struct short_vector_8_bytes).b;
  int c = va_arg (argv, struct short_vector_8_bytes).a;
  int d = va_arg (argv, struct short_vector_8_bytes).b;
  int e = va_arg (argv, struct short_vector_8_bytes).a;
  int f = va_arg (argv, struct short_vector_8_bytes).b;
  int g = va_arg (argv, struct short_vector_8_bytes).a;
  int h = va_arg (argv, struct short_vector_8_bytes).b;
  int i = va_arg (argv, struct short_vector_8_bytes).a;
  int j = va_arg (argv, struct short_vector_8_bytes).b;
  int k = va_arg (argv, struct short_vector_8_bytes).a;
  int l = va_arg (argv, struct short_vector_8_bytes).b;
  int m = va_arg (argv, struct short_vector_8_bytes).a;
  int n = va_arg (argv, struct short_vector_8_bytes).b;
  int o = va_arg (argv, struct short_vector_8_bytes).a;
  int p = va_arg (argv, struct short_vector_8_bytes).b;
  int q = va_arg (argv, struct short_vector_8_bytes).a;
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_few_not_short_vector_12_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct not_short_vector_12_bytes).a;
  int b = va_arg (argv, struct not_short_vector_12_bytes).b;
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_not_short_vector_12_bytes (const char *format, va_list argv)
{
  int a = va_arg (argv, struct not_short_vector_12_bytes).a;
  int b = va_arg (argv, struct not_short_vector_12_bytes).b;
  return a + b;
}

EXPORT int DECL
use_va_args_several_not_short_vector_12_bytes (const char *format, ...)
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
use_va_list_several_not_short_vector_12_bytes (const char *format,
                                               va_list argv)
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

EXPORT int DECL
use_va_args_many_not_short_vector_12_bytes (const char *format, ...)
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
  int j = va_arg (argv, struct not_short_vector_12_bytes).a;
  int k = va_arg (argv, struct not_short_vector_12_bytes).b;
  int l = va_arg (argv, struct not_short_vector_12_bytes).c;
  int m = va_arg (argv, struct not_short_vector_12_bytes).a;
  int n = va_arg (argv, struct not_short_vector_12_bytes).b;
  int o = va_arg (argv, struct not_short_vector_12_bytes).c;
  int p = va_arg (argv, struct not_short_vector_12_bytes).a;
  int q = va_arg (argv, struct not_short_vector_12_bytes).b;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_not_short_vector_12_bytes (const char *format, va_list argv)
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
  int j = va_arg (argv, struct not_short_vector_12_bytes).a;
  int k = va_arg (argv, struct not_short_vector_12_bytes).b;
  int l = va_arg (argv, struct not_short_vector_12_bytes).c;
  int m = va_arg (argv, struct not_short_vector_12_bytes).a;
  int n = va_arg (argv, struct not_short_vector_12_bytes).b;
  int o = va_arg (argv, struct not_short_vector_12_bytes).c;
  int p = va_arg (argv, struct not_short_vector_12_bytes).a;
  int q = va_arg (argv, struct not_short_vector_12_bytes).b;
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_few_short_vector_16_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct short_vector_16_bytes).a;
  int b = va_arg (argv, struct short_vector_16_bytes).b;
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_short_vector_16_bytes (const char *format, va_list argv)
{
  int a = va_arg (argv, struct short_vector_16_bytes).a;
  int b = va_arg (argv, struct short_vector_16_bytes).b;
  return a + b;
}

EXPORT int DECL
use_va_args_several_short_vector_16_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct short_vector_16_bytes).a;
  int b = va_arg (argv, struct short_vector_16_bytes).b;
  int c = va_arg (argv, struct short_vector_16_bytes).c;
  int d = va_arg (argv, struct short_vector_16_bytes).d;
  int e = va_arg (argv, struct short_vector_16_bytes).a;
  int f = va_arg (argv, struct short_vector_16_bytes).b;
  int g = va_arg (argv, struct short_vector_16_bytes).c;
  int h = va_arg (argv, struct short_vector_16_bytes).d;
  int i = va_arg (argv, struct short_vector_16_bytes).a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list_several_short_vector_16_bytes (const char *format, va_list argv)
{
  int a = va_arg (argv, struct short_vector_16_bytes).a;
  int b = va_arg (argv, struct short_vector_16_bytes).b;
  int c = va_arg (argv, struct short_vector_16_bytes).c;
  int d = va_arg (argv, struct short_vector_16_bytes).d;
  int e = va_arg (argv, struct short_vector_16_bytes).a;
  int f = va_arg (argv, struct short_vector_16_bytes).b;
  int g = va_arg (argv, struct short_vector_16_bytes).c;
  int h = va_arg (argv, struct short_vector_16_bytes).d;
  int i = va_arg (argv, struct short_vector_16_bytes).a;
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_args_many_short_vector_16_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct short_vector_16_bytes).a;
  int b = va_arg (argv, struct short_vector_16_bytes).b;
  int c = va_arg (argv, struct short_vector_16_bytes).c;
  int d = va_arg (argv, struct short_vector_16_bytes).d;
  int e = va_arg (argv, struct short_vector_16_bytes).a;
  int f = va_arg (argv, struct short_vector_16_bytes).b;
  int g = va_arg (argv, struct short_vector_16_bytes).c;
  int h = va_arg (argv, struct short_vector_16_bytes).d;
  int i = va_arg (argv, struct short_vector_16_bytes).a;
  int j = va_arg (argv, struct short_vector_16_bytes).b;
  int k = va_arg (argv, struct short_vector_16_bytes).c;
  int l = va_arg (argv, struct short_vector_16_bytes).d;
  int m = va_arg (argv, struct short_vector_16_bytes).a;
  int n = va_arg (argv, struct short_vector_16_bytes).b;
  int o = va_arg (argv, struct short_vector_16_bytes).c;
  int p = va_arg (argv, struct short_vector_16_bytes).d;
  int q = va_arg (argv, struct short_vector_16_bytes).a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_short_vector_16_bytes (const char *format, va_list argv)
{
  int a = va_arg (argv, struct short_vector_16_bytes).a;
  int b = va_arg (argv, struct short_vector_16_bytes).b;
  int c = va_arg (argv, struct short_vector_16_bytes).c;
  int d = va_arg (argv, struct short_vector_16_bytes).d;
  int e = va_arg (argv, struct short_vector_16_bytes).a;
  int f = va_arg (argv, struct short_vector_16_bytes).b;
  int g = va_arg (argv, struct short_vector_16_bytes).c;
  int h = va_arg (argv, struct short_vector_16_bytes).d;
  int i = va_arg (argv, struct short_vector_16_bytes).a;
  int j = va_arg (argv, struct short_vector_16_bytes).b;
  int k = va_arg (argv, struct short_vector_16_bytes).c;
  int l = va_arg (argv, struct short_vector_16_bytes).d;
  int m = va_arg (argv, struct short_vector_16_bytes).a;
  int n = va_arg (argv, struct short_vector_16_bytes).b;
  int o = va_arg (argv, struct short_vector_16_bytes).c;
  int p = va_arg (argv, struct short_vector_16_bytes).d;
  int q = va_arg (argv, struct short_vector_16_bytes).a;
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_few_hfa_2_floats (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  float a = va_arg (argv, struct hfa_2_floats).a;
  float b = va_arg (argv, struct hfa_2_floats).b;
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_hfa_2_floats (const char *format, va_list argv)
{
  float a = va_arg (argv, struct hfa_2_floats).a;
  float b = va_arg (argv, struct hfa_2_floats).b;
  return a + b;
}

EXPORT int DECL
use_va_args_several_hfa_2_floats (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  float a = va_arg (argv, struct hfa_2_floats).a;
  float b = va_arg (argv, struct hfa_2_floats).b;
  float c = va_arg (argv, struct hfa_2_floats).a;
  float d = va_arg (argv, struct hfa_2_floats).b;
  float e = va_arg (argv, struct hfa_2_floats).a;
  float f = va_arg (argv, struct hfa_2_floats).b;
  float g = va_arg (argv, struct hfa_2_floats).a;
  float h = va_arg (argv, struct hfa_2_floats).b;
  float i = va_arg (argv, struct hfa_2_floats).a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list_several_hfa_2_floats (const char *format, va_list argv)
{
  float a = va_arg (argv, struct hfa_2_floats).a;
  float b = va_arg (argv, struct hfa_2_floats).b;
  float c = va_arg (argv, struct hfa_2_floats).a;
  float d = va_arg (argv, struct hfa_2_floats).b;
  float e = va_arg (argv, struct hfa_2_floats).a;
  float f = va_arg (argv, struct hfa_2_floats).b;
  float g = va_arg (argv, struct hfa_2_floats).a;
  float h = va_arg (argv, struct hfa_2_floats).b;
  float i = va_arg (argv, struct hfa_2_floats).a;
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_args_many_hfa_2_floats (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  float a = va_arg (argv, struct hfa_2_floats).a;
  float b = va_arg (argv, struct hfa_2_floats).b;
  float c = va_arg (argv, struct hfa_2_floats).a;
  float d = va_arg (argv, struct hfa_2_floats).b;
  float e = va_arg (argv, struct hfa_2_floats).a;
  float f = va_arg (argv, struct hfa_2_floats).b;
  float g = va_arg (argv, struct hfa_2_floats).a;
  float h = va_arg (argv, struct hfa_2_floats).b;
  float i = va_arg (argv, struct hfa_2_floats).a;
  float j = va_arg (argv, struct hfa_2_floats).b;
  float k = va_arg (argv, struct hfa_2_floats).a;
  float l = va_arg (argv, struct hfa_2_floats).b;
  float m = va_arg (argv, struct hfa_2_floats).a;
  float n = va_arg (argv, struct hfa_2_floats).b;
  float o = va_arg (argv, struct hfa_2_floats).a;
  float p = va_arg (argv, struct hfa_2_floats).b;
  float q = va_arg (argv, struct hfa_2_floats).a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_hfa_2_floats (const char *format, va_list argv)
{
  float a = va_arg (argv, struct hfa_2_floats).a;
  float b = va_arg (argv, struct hfa_2_floats).b;
  float c = va_arg (argv, struct hfa_2_floats).a;
  float d = va_arg (argv, struct hfa_2_floats).b;
  float e = va_arg (argv, struct hfa_2_floats).a;
  float f = va_arg (argv, struct hfa_2_floats).b;
  float g = va_arg (argv, struct hfa_2_floats).a;
  float h = va_arg (argv, struct hfa_2_floats).b;
  float i = va_arg (argv, struct hfa_2_floats).a;
  float j = va_arg (argv, struct hfa_2_floats).b;
  float k = va_arg (argv, struct hfa_2_floats).a;
  float l = va_arg (argv, struct hfa_2_floats).b;
  float m = va_arg (argv, struct hfa_2_floats).a;
  float n = va_arg (argv, struct hfa_2_floats).b;
  float o = va_arg (argv, struct hfa_2_floats).a;
  float p = va_arg (argv, struct hfa_2_floats).b;
  float q = va_arg (argv, struct hfa_2_floats).a;
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_few_hfa_4_floats (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  float a = va_arg (argv, struct hfa_4_floats).a;
  float b = va_arg (argv, struct hfa_4_floats).b;
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_hfa_4_floats (const char *format, va_list argv)
{
  float a = va_arg (argv, struct hfa_4_floats).a;
  float b = va_arg (argv, struct hfa_4_floats).b;
  return a + b;
}

EXPORT int DECL
use_va_args_several_hfa_4_floats (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  float a = va_arg (argv, struct hfa_4_floats).a;
  float b = va_arg (argv, struct hfa_4_floats).b;
  float c = va_arg (argv, struct hfa_4_floats).c;
  float d = va_arg (argv, struct hfa_4_floats).d;
  float e = va_arg (argv, struct hfa_4_floats).a;
  float f = va_arg (argv, struct hfa_4_floats).b;
  float g = va_arg (argv, struct hfa_4_floats).c;
  float h = va_arg (argv, struct hfa_4_floats).d;
  float i = va_arg (argv, struct hfa_4_floats).a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list_several_hfa_4_floats (const char *format, va_list argv)
{
  float a = va_arg (argv, struct hfa_4_floats).a;
  float b = va_arg (argv, struct hfa_4_floats).b;
  float c = va_arg (argv, struct hfa_4_floats).c;
  float d = va_arg (argv, struct hfa_4_floats).d;
  float e = va_arg (argv, struct hfa_4_floats).a;
  float f = va_arg (argv, struct hfa_4_floats).b;
  float g = va_arg (argv, struct hfa_4_floats).c;
  float h = va_arg (argv, struct hfa_4_floats).d;
  float i = va_arg (argv, struct hfa_4_floats).a;
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_args_many_hfa_4_floats (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  float a = va_arg (argv, struct hfa_4_floats).a;
  float b = va_arg (argv, struct hfa_4_floats).b;
  float c = va_arg (argv, struct hfa_4_floats).c;
  float d = va_arg (argv, struct hfa_4_floats).d;
  float e = va_arg (argv, struct hfa_4_floats).a;
  float f = va_arg (argv, struct hfa_4_floats).b;
  float g = va_arg (argv, struct hfa_4_floats).c;
  float h = va_arg (argv, struct hfa_4_floats).d;
  float i = va_arg (argv, struct hfa_4_floats).a;
  float j = va_arg (argv, struct hfa_4_floats).b;
  float k = va_arg (argv, struct hfa_4_floats).c;
  float l = va_arg (argv, struct hfa_4_floats).d;
  float m = va_arg (argv, struct hfa_4_floats).a;
  float n = va_arg (argv, struct hfa_4_floats).b;
  float o = va_arg (argv, struct hfa_4_floats).c;
  float p = va_arg (argv, struct hfa_4_floats).d;
  float q = va_arg (argv, struct hfa_4_floats).a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_hfa_4_floats (const char *format, va_list argv)
{
  float a = va_arg (argv, struct hfa_4_floats).a;
  float b = va_arg (argv, struct hfa_4_floats).b;
  float c = va_arg (argv, struct hfa_4_floats).c;
  float d = va_arg (argv, struct hfa_4_floats).d;
  float e = va_arg (argv, struct hfa_4_floats).a;
  float f = va_arg (argv, struct hfa_4_floats).b;
  float g = va_arg (argv, struct hfa_4_floats).c;
  float h = va_arg (argv, struct hfa_4_floats).d;
  float i = va_arg (argv, struct hfa_4_floats).a;
  float j = va_arg (argv, struct hfa_4_floats).b;
  float k = va_arg (argv, struct hfa_4_floats).c;
  float l = va_arg (argv, struct hfa_4_floats).d;
  float m = va_arg (argv, struct hfa_4_floats).a;
  float n = va_arg (argv, struct hfa_4_floats).b;
  float o = va_arg (argv, struct hfa_4_floats).c;
  float p = va_arg (argv, struct hfa_4_floats).d;
  float q = va_arg (argv, struct hfa_4_floats).a;
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_few_hfa_2_doubles (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  double a = va_arg (argv, struct hfa_2_doubles).a;
  double b = va_arg (argv, struct hfa_2_doubles).b;
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_hfa_2_doubles (const char *format, va_list argv)
{
  double a = va_arg (argv, struct hfa_2_doubles).a;
  double b = va_arg (argv, struct hfa_2_doubles).b;
  return a + b;
}

EXPORT int DECL
use_va_args_several_hfa_2_doubles (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  double a = va_arg (argv, struct hfa_2_doubles).a;
  double b = va_arg (argv, struct hfa_2_doubles).b;
  double c = va_arg (argv, struct hfa_2_doubles).a;
  double d = va_arg (argv, struct hfa_2_doubles).b;
  double e = va_arg (argv, struct hfa_2_doubles).a;
  double f = va_arg (argv, struct hfa_2_doubles).b;
  double g = va_arg (argv, struct hfa_2_doubles).a;
  double h = va_arg (argv, struct hfa_2_doubles).b;
  double i = va_arg (argv, struct hfa_2_doubles).a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list_several_hfa_2_doubles (const char *format, va_list argv)
{
  double a = va_arg (argv, struct hfa_2_doubles).a;
  double b = va_arg (argv, struct hfa_2_doubles).b;
  double c = va_arg (argv, struct hfa_2_doubles).a;
  double d = va_arg (argv, struct hfa_2_doubles).b;
  double e = va_arg (argv, struct hfa_2_doubles).a;
  double f = va_arg (argv, struct hfa_2_doubles).b;
  double g = va_arg (argv, struct hfa_2_doubles).a;
  double h = va_arg (argv, struct hfa_2_doubles).b;
  double i = va_arg (argv, struct hfa_2_doubles).a;
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_args_many_hfa_2_doubles (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  double a = va_arg (argv, struct hfa_2_doubles).a;
  double b = va_arg (argv, struct hfa_2_doubles).b;
  double c = va_arg (argv, struct hfa_2_doubles).a;
  double d = va_arg (argv, struct hfa_2_doubles).b;
  double e = va_arg (argv, struct hfa_2_doubles).a;
  double f = va_arg (argv, struct hfa_2_doubles).b;
  double g = va_arg (argv, struct hfa_2_doubles).a;
  double h = va_arg (argv, struct hfa_2_doubles).b;
  double i = va_arg (argv, struct hfa_2_doubles).a;
  double j = va_arg (argv, struct hfa_2_doubles).b;
  double k = va_arg (argv, struct hfa_2_doubles).a;
  double l = va_arg (argv, struct hfa_2_doubles).b;
  double m = va_arg (argv, struct hfa_2_doubles).a;
  double n = va_arg (argv, struct hfa_2_doubles).b;
  double o = va_arg (argv, struct hfa_2_doubles).a;
  double p = va_arg (argv, struct hfa_2_doubles).b;
  double q = va_arg (argv, struct hfa_2_doubles).a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_hfa_2_doubles (const char *format, va_list argv)
{
  double a = va_arg (argv, struct hfa_2_doubles).a;
  double b = va_arg (argv, struct hfa_2_doubles).b;
  double c = va_arg (argv, struct hfa_2_doubles).a;
  double d = va_arg (argv, struct hfa_2_doubles).b;
  double e = va_arg (argv, struct hfa_2_doubles).a;
  double f = va_arg (argv, struct hfa_2_doubles).b;
  double g = va_arg (argv, struct hfa_2_doubles).a;
  double h = va_arg (argv, struct hfa_2_doubles).b;
  double i = va_arg (argv, struct hfa_2_doubles).a;
  double j = va_arg (argv, struct hfa_2_doubles).b;
  double k = va_arg (argv, struct hfa_2_doubles).a;
  double l = va_arg (argv, struct hfa_2_doubles).b;
  double m = va_arg (argv, struct hfa_2_doubles).a;
  double n = va_arg (argv, struct hfa_2_doubles).b;
  double o = va_arg (argv, struct hfa_2_doubles).a;
  double p = va_arg (argv, struct hfa_2_doubles).b;
  double q = va_arg (argv, struct hfa_2_doubles).a;
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_few_hfa_4_doubles (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  double a = va_arg (argv, struct hfa_4_doubles).a;
  double b = va_arg (argv, struct hfa_4_doubles).b;
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_hfa_4_doubles (const char *format, va_list argv)
{
  double a = va_arg (argv, struct hfa_4_doubles).a;
  double b = va_arg (argv, struct hfa_4_doubles).b;
  return a + b;
}

EXPORT int DECL
use_va_args_several_hfa_4_doubles (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  double a = va_arg (argv, struct hfa_4_doubles).a;
  double b = va_arg (argv, struct hfa_4_doubles).b;
  double c = va_arg (argv, struct hfa_4_doubles).c;
  double d = va_arg (argv, struct hfa_4_doubles).d;
  double e = va_arg (argv, struct hfa_4_doubles).a;
  double f = va_arg (argv, struct hfa_4_doubles).b;
  double g = va_arg (argv, struct hfa_4_doubles).c;
  double h = va_arg (argv, struct hfa_4_doubles).d;
  double i = va_arg (argv, struct hfa_4_doubles).a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list_several_hfa_4_doubles (const char *format, va_list argv)
{
  double a = va_arg (argv, struct hfa_4_doubles).a;
  double b = va_arg (argv, struct hfa_4_doubles).b;
  double c = va_arg (argv, struct hfa_4_doubles).c;
  double d = va_arg (argv, struct hfa_4_doubles).d;
  double e = va_arg (argv, struct hfa_4_doubles).a;
  double f = va_arg (argv, struct hfa_4_doubles).b;
  double g = va_arg (argv, struct hfa_4_doubles).c;
  double h = va_arg (argv, struct hfa_4_doubles).d;
  double i = va_arg (argv, struct hfa_4_doubles).a;
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_args_many_hfa_4_doubles (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  double a = va_arg (argv, struct hfa_4_doubles).a;
  double b = va_arg (argv, struct hfa_4_doubles).b;
  double c = va_arg (argv, struct hfa_4_doubles).c;
  double d = va_arg (argv, struct hfa_4_doubles).d;
  double e = va_arg (argv, struct hfa_4_doubles).a;
  double f = va_arg (argv, struct hfa_4_doubles).b;
  double g = va_arg (argv, struct hfa_4_doubles).c;
  double h = va_arg (argv, struct hfa_4_doubles).d;
  double i = va_arg (argv, struct hfa_4_doubles).a;
  double j = va_arg (argv, struct hfa_4_doubles).b;
  double k = va_arg (argv, struct hfa_4_doubles).c;
  double l = va_arg (argv, struct hfa_4_doubles).d;
  double m = va_arg (argv, struct hfa_4_doubles).a;
  double n = va_arg (argv, struct hfa_4_doubles).b;
  double o = va_arg (argv, struct hfa_4_doubles).c;
  double p = va_arg (argv, struct hfa_4_doubles).d;
  double q = va_arg (argv, struct hfa_4_doubles).a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_hfa_4_doubles (const char *format, va_list argv)
{
  double a = va_arg (argv, struct hfa_4_doubles).a;
  double b = va_arg (argv, struct hfa_4_doubles).b;
  double c = va_arg (argv, struct hfa_4_doubles).c;
  double d = va_arg (argv, struct hfa_4_doubles).d;
  double e = va_arg (argv, struct hfa_4_doubles).a;
  double f = va_arg (argv, struct hfa_4_doubles).b;
  double g = va_arg (argv, struct hfa_4_doubles).c;
  double h = va_arg (argv, struct hfa_4_doubles).d;
  double i = va_arg (argv, struct hfa_4_doubles).a;
  double j = va_arg (argv, struct hfa_4_doubles).b;
  double k = va_arg (argv, struct hfa_4_doubles).c;
  double l = va_arg (argv, struct hfa_4_doubles).d;
  double m = va_arg (argv, struct hfa_4_doubles).a;
  double n = va_arg (argv, struct hfa_4_doubles).b;
  double o = va_arg (argv, struct hfa_4_doubles).c;
  double p = va_arg (argv, struct hfa_4_doubles).d;
  double q = va_arg (argv, struct hfa_4_doubles).a;
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_few_hva_2_short_vector_8_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_hva_2_short_vector_8_bytes (const char *format, va_list argv)
{
  int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  return a + b;
}

EXPORT int DECL
use_va_args_several_hva_2_short_vector_8_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int c = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int d = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int e = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int f = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int g = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int h = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int i = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list_several_hva_2_short_vector_8_bytes (const char *format,
                                                va_list argv)
{
  int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int c = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int d = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int e = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int f = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int g = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int h = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int i = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_args_many_hva_2_short_vector_8_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int c = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int d = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int e = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int f = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int g = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int h = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int i = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int j = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int k = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int l = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int m = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int n = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int o = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int p = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int q = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_hva_2_short_vector_8_bytes (const char *format, va_list argv)
{
  int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int c = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int d = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int e = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int f = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int g = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int h = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int i = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int j = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int k = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int l = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int m = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int n = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int o = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  int p = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
  int q = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_few_hva_4_short_vector_8_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_hva_4_short_vector_8_bytes (const char *format, va_list argv)
{
  int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
  return a + b;
}

EXPORT int DECL
use_va_args_several_hva_4_short_vector_8_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
  int c = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
  int d = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
  int e = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  int f = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
  int g = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
  int h = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
  int i = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list_several_hva_4_short_vector_8_bytes (const char *format,
                                                va_list argv)
{
  int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
  int c = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
  int d = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
  int e = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  int f = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
  int g = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
  int h = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
  int i = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_args_many_hva_4_short_vector_8_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
  int c = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
  int d = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
  int e = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  int f = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
  int g = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
  int h = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
  int i = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  int j = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
  int k = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
  int l = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
  int m = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  int n = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
  int o = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
  int p = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
  int q = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_hva_4_short_vector_8_bytes (const char *format, va_list argv)
{
  int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
  int c = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
  int d = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
  int e = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  int f = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
  int g = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
  int h = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
  int i = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  int j = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
  int k = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
  int l = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
  int m = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  int n = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
  int o = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
  int p = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
  int q = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_few_hva_2_short_vector_16_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_hva_2_short_vector_16_bytes (const char *format, va_list argv)
{
  int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  return a + b;
}

EXPORT int DECL
use_va_args_several_hva_2_short_vector_16_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int c = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int d = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int e = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int f = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int g = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int h = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int i = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list_several_hva_2_short_vector_16_bytes (const char *format,
                                                 va_list argv)
{
  int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int c = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int d = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int e = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int f = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int g = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int h = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int i = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_args_many_hva_2_short_vector_16_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int c = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int d = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int e = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int f = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int g = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int h = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int i = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int j = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int k = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int l = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int m = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int n = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int o = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int p = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int q = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_hva_2_short_vector_16_bytes (const char *format, va_list argv)
{
  int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int c = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int d = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int e = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int f = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int g = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int h = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int i = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int j = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int k = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int l = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int m = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int n = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int o = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  int p = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
  int q = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_few_hva_4_short_vector_16_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
  va_end (argv);
  return a + b;
}

EXPORT int DECL
use_va_list_few_hva_4_short_vector_16_bytes (const char *format, va_list argv)
{
  int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
  return a + b;
}

EXPORT int DECL
use_va_args_several_hva_4_short_vector_16_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
  int c = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
  int d = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
  int e = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  int f = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
  int g = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
  int h = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
  int i = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_list_several_hva_4_short_vector_16_bytes (const char *format,
                                                 va_list argv)
{
  int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
  int c = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
  int d = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
  int e = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  int f = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
  int g = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
  int h = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
  int i = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  return a + b + c + d + e + f + g + h + i;
}

EXPORT int DECL
use_va_args_many_hva_4_short_vector_16_bytes (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
  int c = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
  int d = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
  int e = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  int f = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
  int g = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
  int h = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
  int i = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  int j = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
  int k = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
  int l = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
  int m = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  int n = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
  int o = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
  int p = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
  int q = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_many_hva_4_short_vector_16_bytes (const char *format, va_list argv)
{
  int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
  int c = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
  int d = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
  int e = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  int f = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
  int g = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
  int h = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
  int i = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  int j = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
  int k = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
  int l = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
  int m = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  int n = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
  int o = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
  int p = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
  int q = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_ints_and_composites (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, int);
  long b = va_arg (argv, long);
  int c = atoi (va_arg (argv, struct composite).c);
  int d = va_arg (argv, int);
  long e = va_arg (argv, long);
  int f = atoi (va_arg (argv, struct composite).c);
  int g = va_arg (argv, int);
  long h = va_arg (argv, long);
  int i = atoi (va_arg (argv, struct composite).c);
  int j = va_arg (argv, int);
  long k = va_arg (argv, long);
  int l = atoi (va_arg (argv, struct composite).c);
  int m = va_arg (argv, int);
  long n = va_arg (argv, long);
  int o = atoi (va_arg (argv, struct composite).c);
  int p = va_arg (argv, int);
  long q = va_arg (argv, long);
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_ints_and_composites (const char *format, va_list argv)
{
  int a = va_arg (argv, int);
  long b = va_arg (argv, long);
  int c = atoi (va_arg (argv, struct composite).c);
  int d = va_arg (argv, int);
  long e = va_arg (argv, long);
  int f = atoi (va_arg (argv, struct composite).c);
  int g = va_arg (argv, int);
  long h = va_arg (argv, long);
  int i = atoi (va_arg (argv, struct composite).c);
  int j = va_arg (argv, int);
  long k = va_arg (argv, long);
  int l = atoi (va_arg (argv, struct composite).c);
  int m = va_arg (argv, int);
  long n = va_arg (argv, long);
  int o = atoi (va_arg (argv, struct composite).c);
  int p = va_arg (argv, int);
  long q = va_arg (argv, long);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_ints_and_floats (const char *format, ...)
{
  // the float is promoted to double
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, int);
  long b = va_arg (argv, long);
  double c = va_arg (argv, double);
  double d = va_arg (argv, double);
  int e = va_arg (argv, int);
  long f = va_arg (argv, long);
  double g = va_arg (argv, double);
  double h = va_arg (argv, double);
  int i = va_arg (argv, int);
  long j = va_arg (argv, long);
  double k = va_arg (argv, double);
  double l = va_arg (argv, double);
  int m = va_arg (argv, int);
  long n = va_arg (argv, long);
  double o = va_arg (argv, double);
  double p = va_arg (argv, double);
  int q = va_arg (argv, int);
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_ints_and_floats (const char *format, va_list argv)
{
  // the float is promoted to double
  int a = va_arg (argv, int);
  long b = va_arg (argv, long);
  double c = va_arg (argv, double);
  double d = va_arg (argv, double);
  int e = va_arg (argv, int);
  long f = va_arg (argv, long);
  double g = va_arg (argv, double);
  double h = va_arg (argv, double);
  int i = va_arg (argv, int);
  long j = va_arg (argv, long);
  double k = va_arg (argv, double);
  double l = va_arg (argv, double);
  int m = va_arg (argv, int);
  long n = va_arg (argv, long);
  double o = va_arg (argv, double);
  double p = va_arg (argv, double);
  int q = va_arg (argv, int);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_args_ints_floats_and_composites (const char *format, ...)
{
  // the float is promoted to double
  va_list argv;
  va_start (argv, format);
  int a = va_arg (argv, int);
  long b = va_arg (argv, long);
  double c = va_arg (argv, double);
  double d = va_arg (argv, double);
  int e = va_arg (argv, struct composite).b;
  int f = va_arg (argv, int);
  long g = va_arg (argv, long);
  double h = va_arg (argv, double);
  double i = va_arg (argv, double);
  char j = va_arg (argv, struct composite).a;
  int k = va_arg (argv, int);
  long l = va_arg (argv, long);
  double m = va_arg (argv, double);
  double n = va_arg (argv, double);
  int o = atoi (va_arg (argv, struct composite).c);
  int p = va_arg (argv, int);
  long q = va_arg (argv, long);
  va_end (argv);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}

EXPORT int DECL
use_va_list_ints_floats_and_composites (const char *format, va_list argv)
{
  // the float is promoted to double
  int a = va_arg (argv, int);
  long b = va_arg (argv, long);
  double c = va_arg (argv, double);
  double d = va_arg (argv, double);
  int e = va_arg (argv, struct composite).b;
  int f = va_arg (argv, int);
  long g = va_arg (argv, long);
  double h = va_arg (argv, double);
  double i = va_arg (argv, double);
  char j = va_arg (argv, struct composite).a;
  int k = va_arg (argv, int);
  long l = va_arg (argv, long);
  double m = va_arg (argv, double);
  double n = va_arg (argv, double);
  int o = atoi (va_arg (argv, struct composite).c);
  int p = va_arg (argv, int);
  long q = va_arg (argv, long);
  return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
}
