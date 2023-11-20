#include <stdio.h>
#include <stdarg.h>

static void xprintf(char *buf, size_t length, const char *fmt, ...)
{
  va_list argv; 
  va_start( argv, fmt );
  register int retval = _vsnprintf( buf, length, fmt, argv );
  va_end( argv );
}

static inline __attribute__(( __always_inline__)) void yprintf (const char *format, ...)
{
  printf (format, __builtin_va_arg_pack ());
}

int main() 
{
  printf("expected %s %d %x %f\n", "string", 11, 0x1919, 111.111);

  char sz[100];
  sprintf(sz, "sprintf actual %s %d %x %f\n", "string", 11, 0x1919, 111.111);
  puts(sz);

  snprintf(sz, 100, "snprintf actual %s %d %x %f\n", "string", 11, 0x1919, 111.111);
  puts(sz);

  xprintf(sz, 100, "va_list actual %s %d %x %f\n", "string", 11, 0x1919, 111.111);
  puts(sz);

  yprintf("__builtin_va_arg_pack actual %s %d %x %f\n", "string", 11, 0x1919, 111.111);

  printf("ok\n");
  return 0;
}