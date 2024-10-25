#include <stdarg.h>

struct short_vector_16_bytes
{
  int a;
  int b;
  int c;
  int d;
};

struct short_vector_16_bytes sv16_a = { .a = 1, .b = 1, .c = 1, .d = 1 };
struct short_vector_16_bytes sv16_b = { .a = 2, .b = 2, .c = 2, .d = 2 };
struct short_vector_16_bytes sv16_c = { .a = 3, .b = 3, .c = 3, .d = 3 };
struct short_vector_16_bytes sv16_d = { .a = 5, .b = 5, .c = 5, .d = 5 };
struct short_vector_16_bytes sv16_e = { .a = 8, .b = 8, .c = 8, .d = 8 };
struct short_vector_16_bytes sv16_f = { .a = 13, .b = 13, .c = 13, .d = 13 };
struct short_vector_16_bytes sv16_g = { .a = 21, .b = 21, .c = 21, .d = 21 };
struct short_vector_16_bytes sv16_h = { .a = 34, .b = 34, .c = 34, .d = 34 };
struct short_vector_16_bytes sv16_i = { .a = 55, .b = 55, .c = 55, .d = 55 };

int use_va_args (const char *format, ...);

int
main (int argc, char *argv[])
{
  return use_va_args ("%d\n", sv16_a, sv16_b, sv16_c, sv16_d, sv16_e, sv16_f,
                      sv16_g, sv16_h, sv16_i);
}
