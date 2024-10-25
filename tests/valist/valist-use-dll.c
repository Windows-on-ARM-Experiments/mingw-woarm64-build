#include <stdarg.h>

#if linux
#define IMPORT
#define DECL
#else
#define IMPORT __declspec (dllexport)
#define DECL __cdecl
#endif

IMPORT int DECL use_va_list(const char *format, va_list argv);
IMPORT int DECL use_va_arg(const char *format, ...);

int test_va_list(const char *format, ...)
{
  va_list argv;
  va_start(argv, format);
  int retval = use_va_list(format, argv);
  va_end(argv);
  return retval;
}

int main(int argc, char *argv[])
{  
  return test_va_list("%d\n", 100, 42);
}
