#if defined(__linux__) || defined(__CYGWIN__)
#define EXPORT
#define DECL
#else
#define EXPORT __declspec(dllexport)
#define DECL __cdecl
#endif

EXPORT int DECL size_of_long() {
  return sizeof(long);
}
