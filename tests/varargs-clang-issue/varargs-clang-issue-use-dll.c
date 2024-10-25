#include <stdarg.h>
#include <stdio.h>

#if defined(__linux__)
#define IMPORT
#define DECL
#else
#define IMPORT __declspec(dllimport)
#define DECL __cdecl
#endif

IMPORT int DECL
use_va_args (const char *format, ...);

IMPORT int DECL
use_va_list (const char *format, va_list argv);

int
test_va_list (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int retval = use_va_list (format, argv);
  va_end (argv);
  return retval;
}

int
use_indirect_va_list (const char *format, va_list argv)
{
  return use_va_list (format, argv);
}

int
test_indirect_va_list (const char *format, ...)
{
  va_list argv;
  va_start (argv, format);
  int retval = use_indirect_va_list (format, argv);
  va_end (argv);
  return retval;
}

struct not_short_vector_12_bytes
{
  int a;
  int b;
  int c;
};

int
main (int argc, char *argv[])
{
  struct not_short_vector_12_bytes nsv12_a = { .a = 1, .b = 1, .c = 1 };
  struct not_short_vector_12_bytes nsv12_b = { .a = 2, .b = 2, .c = 2 };
  struct not_short_vector_12_bytes nsv12_c = { .a = 3, .b = 3, .c = 3 };
  struct not_short_vector_12_bytes nsv12_d = { .a = 5, .b = 5, .c = 5 };
  struct not_short_vector_12_bytes nsv12_e = { .a = 8, .b = 8, .c = 8 };
  struct not_short_vector_12_bytes nsv12_f = { .a = 13, .b = 13, .c = 13 };
  struct not_short_vector_12_bytes nsv12_g = { .a = 21, .b = 21, .c = 21 };
  struct not_short_vector_12_bytes nsv12_h = { .a = 34, .b = 34, .c = 34 };
  struct not_short_vector_12_bytes nsv12_i = { .a = 55, .b = 55, .c = 55 };

  int test1 = use_va_args ("format", nsv12_a, nsv12_b, nsv12_c,
        nsv12_d, nsv12_e, nsv12_f, nsv12_g, nsv12_h, nsv12_i);
  int test2 = test_va_list ("format", nsv12_a, nsv12_b, nsv12_c,
        nsv12_d, nsv12_e, nsv12_f, nsv12_g, nsv12_h, nsv12_i);
  int test3 = test_indirect_va_list ("format", nsv12_a, nsv12_b, nsv12_c,
        nsv12_d, nsv12_e, nsv12_f, nsv12_g, nsv12_h, nsv12_i);

  return ((test1 == 142) ? 0 : 1) +
    ((test2 == 142) ? 0 : 1) +
    ((test3 == 142) ? 0 : 1);
}

#if defined(MSVC) && defined (LINK)
void
__main ()
{
}
#endif
