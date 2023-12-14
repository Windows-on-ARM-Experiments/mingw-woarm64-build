#include <stdio.h>
#include <stdarg.h>

static void va_list_print(char *buf, size_t length, const char *fmt, ...)
{
  va_list argv; 
  va_start( argv, fmt );
  register int retval = _vsnprintf( buf, length, fmt, argv );
  va_end( argv );
}

void test_va_list(char *buf, size_t length)
{
  va_list_print(buf, length, "%s %d %x %f", "string", 11, 0x1919, 111.111);
}

void test_sprintf(char *buf, size_t length)
{
  sprintf(buf, "%s %d %x %f", "string", 11, 0x1919, 111.111);
}

static inline __attribute__(( __always_inline__)) void va_arg_pack_printf (char *buf, const char *format, ...)
{
  sprintf (buf, format, __builtin_va_arg_pack ());
}

void test_va_arg_pack(char *buf, size_t length)
{
  va_arg_pack_printf(buf, "%s %d %x %f", "string", 11, 0x1919, 111.111);
}
