#include <stdio.h>

#if defined(__linux__) || defined(__CYGWIN__)
#define IMPORT
#define DECL
#else
#define IMPORT __declspec(dllimport)
#define DECL __cdecl
#endif

IMPORT int DECL size_of_long();

int main() {
  return size_of_long();
}
