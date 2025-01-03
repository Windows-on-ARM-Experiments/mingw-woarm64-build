#include <stdarg.h>

int
use_va_args (int a, int b, int c, int d, ...);

int
main (int argc, char *argv[])
{
  return use_va_args (1, 2, 3, 5, 8, 13, 21, 34, 55);
}
