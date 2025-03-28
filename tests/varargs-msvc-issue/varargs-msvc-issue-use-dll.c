#include <stdarg.h>

struct hfa_4_doubles
{
  double a;
  double b;
  double c;
  double d;
};

#if defined(__linux__)
#define IMPORT
#define DECL
#else
#define IMPORT __declspec (dllimport)
#define DECL __cdecl
#endif

IMPORT int DECL use_va_args_few_hfa_4_doubles (const char *name, ...);

struct hfa_4_doubles hfa4d_a = { .a = 1.0, .b = 1.1, .c = 1.2, .d = 1.3 };
struct hfa_4_doubles hfa4d_b = { .a = 2.0, .b = 2.1, .c = 2.2, .d = 2.3 };

int
main (int argc, char *argv[])
{
  int actual
      = use_va_args_few_hfa_4_doubles ("few_hfa_4_doubles", hfa4d_a, hfa4d_b);
  if (actual != 3.1)
    return 1;

  return 0;
}
