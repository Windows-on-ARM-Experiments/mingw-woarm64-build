#include <stdio.h>
#include <stdarg.h>

static int xprintf(char *buf, size_t length, const char *fmt, ...)
{
  va_list argv; 
  va_start( argv, fmt );
  register int retval = _vsnprintf( buf, length, fmt, argv );
  va_end( argv );
  return retval;
}

int main() 
{
   char sz[100];

   sprintf(sz, "format 32=(%d)", 32);
   puts(sz);

   sprintf(sz, "format 33.33=(%f)", 33.33);
   puts(sz);

   printf("expected %s %d %x %f", "string", 11, 0x1919, 111.111);
   xprintf(sz, 100, "actual %s %d %x %f", "string", 11, 0x1919, 111.111);
   puts(sz);

   printf("ok\n");
   return 0;
}