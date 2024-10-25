
#include <assert.h>

#if linux
#define IMPORT
#define DECL
#else
#define IMPORT __declspec (dllimport)
#define DECL __cdecl
#endif

IMPORT void DECL no_arguments (const char *format, ...);

IMPORT int DECL one_int_argument (const char *format, ...);

IMPORT const char *DECL one_string_argument (const char *format, ...);

IMPORT int DECL sixteen_int_arguments (const char *format, ...);

IMPORT const char *DECL sixteen_string_arguments (const char *format, ...);

int
main (int argc, char *argv[])
{
  no_arguments ("test\n");
  assert (one_int_argument ("test: %d\n", 100) == 100);
  assert (one_string_argument ("test: %s\n", "test") == "test");
  assert (sixteen_int_arguments ("test: %d\n", 1, 2, 4, 8, 16, 32, 64, 128,
                                 256, 512, 1024, 2048, 4096, 8192, 16384,
                                 32768)
          == 65535);
  assert (sixteen_string_arguments ("test: %s\n", "a", "b", "c", "d", "e", "f",
                                    "g", "h", "i", "j", "k", "l", "m", "n",
                                    "o", "p")
          == "p");
  return 0;
}
