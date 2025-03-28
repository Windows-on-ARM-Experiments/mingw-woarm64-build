#include <stdarg.h>

struct hfa_4_doubles
{
  double a;
  double b;
  double c;
  double d;
};

#if defined(__linux__)
#define EXPORT
#define DECL
#else
#define EXPORT __declspec(dllexport)
#define DECL __cdecl
#endif

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
