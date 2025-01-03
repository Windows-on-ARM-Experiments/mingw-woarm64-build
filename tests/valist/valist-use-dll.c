#include <stdarg.h>

int use_va_args (const char *format, ...);

int
main (int argc, char *argv[])
{
  return use_va_args ("%d\n", 11, 22);
}
