#include <stdarg.h>
#include <stdio.h>

#include "types.h"

void
__chkstk ()
{
}

#if defined(__linux__)
#define IMPORT
#define DECL
#else
#define IMPORT __declspec(dllimport)
#define DECL __cdecl
#endif

#if 1
#include <stdio.h>
#define DEBUG(...) printf (__VA_ARGS__)
#else
#define DEBUG
#endif

#define assert(expected, actual)                                               \
  if (expected != actual)                                                      \
    {                                                                          \
      failures++;                                                              \
      DEBUG ("\t\ttest failed, expected: %d, actual: %d\n\n", expected,        \
              actual);                                                         \
    }

#define DECLARE_TEST(name)                                                     \
  IMPORT int DECL use_va_args_##name (const char *name, ...);                  \
  IMPORT int DECL use_va_list_##name (const char *name, va_list argv);         \
  int test_va_list_##name (int (*func) (const char *, va_list), ...)           \
  {                                                                            \
    va_list argv;                                                              \
    va_start (argv, func);                                                     \
    int retval = func (#name, argv);                                           \
    va_end (argv);                                                             \
    DEBUG ("\tuse_va_list_%s, result: %d\n", #name, retval);                   \
    return retval;                                                             \
  }                                                                            \
  int use_indirect_va_list_##name (int (*func) (const char *, va_list),        \
                                   va_list argv)                               \
  {                                                                            \
    int retval = func (#name, argv);                                           \
    DEBUG ("\tuse_va_list_%s_indirect, result: %d\n", #name, retval);          \
    return retval;                                                             \
  }                                                                            \
  int test_indirect_va_list_##name (int (*func) (const char *, va_list), ...)  \
  {                                                                            \
    va_list argv;                                                              \
    va_start (argv, func);                                                     \
    int retval = use_indirect_va_list_##name (func, argv);                     \
    va_end (argv);                                                             \
    return retval;                                                             \
  }

#define VA_ARGS(...) , ##__VA_ARGS__

#define TEST_VA_ARGS(name, expected, ...)                                      \
  {                                                                            \
    int actual = use_va_args_##name (#name VA_ARGS (__VA_ARGS__));             \
    DEBUG ("\tuse_va_args_%s result: %d\n", #name, actual);                    \
    assert (expected, actual);                                                 \
  }

#define TEST_DIRECT_VA_LIST(name, expected, ...)/*                               \
  {                                                                            \
    int actual                                                                 \
        = test_va_list_##name (&use_va_list_##name VA_ARGS (__VA_ARGS__));     \
    assert (expected, actual);                                                 \
  }*/

#define TEST_INDIRECT_VA_LIST(name, expected, ...)/*                             \
  {                                                                            \
    int actual = test_indirect_va_list_##name (                                \
        &use_va_list_##name VA_ARGS (__VA_ARGS__));                            \
    assert (expected, actual);                                                 \
  }*/

#define TEST(name, expected, ...)                                              \
  TEST_VA_ARGS(name, expected, __VA_ARGS__)                                    \
  TEST_DIRECT_VA_LIST(name, expected, __VA_ARGS__)                             \
  TEST_INDIRECT_VA_LIST(name, expected, __VA_ARGS__)

DECLARE_TEST (no_arguments);

DECLARE_TEST (few_longs);
DECLARE_TEST (several_longs);
DECLARE_TEST (many_longs);

DECLARE_TEST (few_ints);
DECLARE_TEST (several_ints);
DECLARE_TEST (many_ints);

DECLARE_TEST (few_doubles);
DECLARE_TEST (several_doubles);
DECLARE_TEST (many_doubles);

DECLARE_TEST (few_floats);
DECLARE_TEST (several_floats);
DECLARE_TEST (many_floats);

DECLARE_TEST (few_strings);
DECLARE_TEST (several_strings);
DECLARE_TEST (many_strings);

DECLARE_TEST (few_composites);
DECLARE_TEST (several_composites);
DECLARE_TEST (many_composites);

DECLARE_TEST (few_short_vector_8_bytes);
DECLARE_TEST (several_short_vector_8_bytes);
DECLARE_TEST (many_short_vector_8_bytes);

DECLARE_TEST (few_not_short_vector_12_bytes);
DECLARE_TEST (several_not_short_vector_12_bytes);
DECLARE_TEST (many_not_short_vector_12_bytes);

DECLARE_TEST (few_short_vector_16_bytes);
DECLARE_TEST (several_short_vector_16_bytes);
DECLARE_TEST (many_short_vector_16_bytes);

DECLARE_TEST (few_hfa_2_floats);
DECLARE_TEST (several_hfa_2_floats);
DECLARE_TEST (many_hfa_2_floats);

DECLARE_TEST (few_hfa_4_floats);
DECLARE_TEST (several_hfa_4_floats);
DECLARE_TEST (many_hfa_4_floats);

DECLARE_TEST (few_hfa_2_doubles);
DECLARE_TEST (several_hfa_2_doubles);
DECLARE_TEST (many_hfa_2_doubles);

DECLARE_TEST (few_hfa_4_doubles);
DECLARE_TEST (several_hfa_4_doubles);
DECLARE_TEST (many_hfa_4_doubles);

DECLARE_TEST (few_hva_2_short_vector_8_bytes);
DECLARE_TEST (several_hva_2_short_vector_8_bytes);
DECLARE_TEST (many_hva_2_short_vector_8_bytes);

DECLARE_TEST (few_hva_4_short_vector_8_bytes);
DECLARE_TEST (several_hva_4_short_vector_8_bytes);
DECLARE_TEST (many_hva_4_short_vector_8_bytes);

DECLARE_TEST (few_hva_2_short_vector_16_bytes);
DECLARE_TEST (several_hva_2_short_vector_16_bytes);
DECLARE_TEST (many_hva_2_short_vector_16_bytes);

DECLARE_TEST (few_hva_4_short_vector_16_bytes);
DECLARE_TEST (several_hva_4_short_vector_16_bytes);
DECLARE_TEST (many_hva_4_short_vector_16_bytes);

DECLARE_TEST (ints_and_composites);
DECLARE_TEST (ints_and_floats);
DECLARE_TEST (ints_floats_and_composites);

struct composite a = { .a = 1 };
struct composite b = { .b = 2 };
struct composite c = { .c = "3" };
struct composite d = { .a = 5 };
struct composite e = { .b = 8 };
struct composite f = { .c = "13" };
struct composite g = { .a = 21 };
struct composite h = { .b = 34 };
struct composite i = { .c = "55" };
struct composite j = { .a = 89 };
struct composite k = { .b = 144 };
struct composite l = { .c = "233" };
// from here the values do not fit char
struct composite m = { .b = 377 };
struct composite n = { .b = 610 };
struct composite o = { .c = "987" };
struct composite p = { .b = 1597 };
struct composite q = { .b = 2584 };

struct short_vector_8_bytes sv8_a = { .a = 1 };
struct short_vector_8_bytes sv8_b = { .b = 2 };
struct short_vector_8_bytes sv8_c = { .a = 3 };
struct short_vector_8_bytes sv8_d = { .b = 5 };
struct short_vector_8_bytes sv8_e = { .a = 8 };
struct short_vector_8_bytes sv8_f = { .b = 13 };
struct short_vector_8_bytes sv8_g = { .a = 21 };
struct short_vector_8_bytes sv8_h = { .b = 34 };
struct short_vector_8_bytes sv8_i = { .a = 55 };
struct short_vector_8_bytes sv8_j = { .b = 89 };
struct short_vector_8_bytes sv8_k = { .a = 144 };
struct short_vector_8_bytes sv8_l = { .b = 233 };
struct short_vector_8_bytes sv8_m = { .a = 377 };
struct short_vector_8_bytes sv8_n = { .b = 610 };
struct short_vector_8_bytes sv8_o = { .a = 987 };
struct short_vector_8_bytes sv8_p = { .b = 1597 };
struct short_vector_8_bytes sv8_q = { .a = 2584 };

struct not_short_vector_12_bytes nsv12_a = { .a = 1 };
struct not_short_vector_12_bytes nsv12_b = { .b = 2 };
struct not_short_vector_12_bytes nsv12_c = { .c = 3 };
struct not_short_vector_12_bytes nsv12_d = { .a = 5 };
struct not_short_vector_12_bytes nsv12_e = { .b = 8 };
struct not_short_vector_12_bytes nsv12_f = { .c = 13 };
struct not_short_vector_12_bytes nsv12_g = { .a = 21 };
struct not_short_vector_12_bytes nsv12_h = { .b = 34 };
struct not_short_vector_12_bytes nsv12_i = { .c = 55 };
struct not_short_vector_12_bytes nsv12_j = { .a = 89 };
struct not_short_vector_12_bytes nsv12_k = { .b = 144 };
struct not_short_vector_12_bytes nsv12_l = { .c = 233 };
struct not_short_vector_12_bytes nsv12_m = { .a = 377 };
struct not_short_vector_12_bytes nsv12_n = { .b = 610 };
struct not_short_vector_12_bytes nsv12_o = { .c = 987 };
struct not_short_vector_12_bytes nsv12_p = { .a = 1597 };
struct not_short_vector_12_bytes nsv12_q = { .b = 2584 };

struct short_vector_16_bytes sv16_a = { .a = 1 };
struct short_vector_16_bytes sv16_b = { .b = 2 };
struct short_vector_16_bytes sv16_c = { .c = 3 };
struct short_vector_16_bytes sv16_d = { .d = 5 };
struct short_vector_16_bytes sv16_e = { .a = 8 };
struct short_vector_16_bytes sv16_f = { .b = 13 };
struct short_vector_16_bytes sv16_g = { .c = 21 };
struct short_vector_16_bytes sv16_h = { .d = 34 };
struct short_vector_16_bytes sv16_i = { .a = 55 };
struct short_vector_16_bytes sv16_j = { .b = 89 };
struct short_vector_16_bytes sv16_k = { .c = 144 };
struct short_vector_16_bytes sv16_l = { .d = 233 };
struct short_vector_16_bytes sv16_m = { .a = 377 };
struct short_vector_16_bytes sv16_n = { .b = 610 };
struct short_vector_16_bytes sv16_o = { .c = 987 };
struct short_vector_16_bytes sv16_p = { .d = 1597 };
struct short_vector_16_bytes sv16_q = { .a = 2584 };

struct hfa_2_floats hfa2f_a = { .a = 1.0f };
struct hfa_2_floats hfa2f_b = { .b = 2.0f };
struct hfa_2_floats hfa2f_c = { .a = 3.0f };
struct hfa_2_floats hfa2f_d = { .b = 5.0f };
struct hfa_2_floats hfa2f_e = { .a = 8.0f };
struct hfa_2_floats hfa2f_f = { .b = 13.0f };
struct hfa_2_floats hfa2f_g = { .a = 21.0f };
struct hfa_2_floats hfa2f_h = { .b = 34.0f };
struct hfa_2_floats hfa2f_i = { .a = 55.0f };
struct hfa_2_floats hfa2f_j = { .b = 89.0f };
struct hfa_2_floats hfa2f_k = { .a = 144.0f };
struct hfa_2_floats hfa2f_l = { .b = 233.0f };
struct hfa_2_floats hfa2f_m = { .a = 377.0f };
struct hfa_2_floats hfa2f_n = { .b = 610.0f };
struct hfa_2_floats hfa2f_o = { .a = 987.0f };
struct hfa_2_floats hfa2f_p = { .b = 1597.0f };
struct hfa_2_floats hfa2f_q = { .a = 2584.0f };

struct hfa_4_floats hfa4f_a = { .a = 1.0f };
struct hfa_4_floats hfa4f_b = { .b = 2.0f };
struct hfa_4_floats hfa4f_c = { .c = 3.0f };
struct hfa_4_floats hfa4f_d = { .d = 5.0f };
struct hfa_4_floats hfa4f_e = { .a = 8.0f };
struct hfa_4_floats hfa4f_f = { .b = 13.0f };
struct hfa_4_floats hfa4f_g = { .c = 21.0f };
struct hfa_4_floats hfa4f_h = { .d = 34.0f };
struct hfa_4_floats hfa4f_i = { .a = 55.0f };
struct hfa_4_floats hfa4f_j = { .b = 89.0f };
struct hfa_4_floats hfa4f_k = { .c = 144.0f };
struct hfa_4_floats hfa4f_l = { .d = 233.0f };
struct hfa_4_floats hfa4f_m = { .a = 377.0f };
struct hfa_4_floats hfa4f_n = { .b = 610.0f };
struct hfa_4_floats hfa4f_o = { .c = 987.0f };
struct hfa_4_floats hfa4f_p = { .d = 1597.0f };
struct hfa_4_floats hfa4f_q = { .a = 2584.0f };

struct hfa_2_doubles hfa2d_a = { .a = 1.0 };
struct hfa_2_doubles hfa2d_b = { .b = 2.0 };
struct hfa_2_doubles hfa2d_c = { .a = 3.0 };
struct hfa_2_doubles hfa2d_d = { .b = 5.0 };
struct hfa_2_doubles hfa2d_e = { .a = 8.0 };
struct hfa_2_doubles hfa2d_f = { .b = 13.0 };
struct hfa_2_doubles hfa2d_g = { .a = 21.0 };
struct hfa_2_doubles hfa2d_h = { .b = 34.0 };
struct hfa_2_doubles hfa2d_i = { .a = 55.0 };
struct hfa_2_doubles hfa2d_j = { .b = 89.0 };
struct hfa_2_doubles hfa2d_k = { .a = 144.0 };
struct hfa_2_doubles hfa2d_l = { .b = 233.0 };
struct hfa_2_doubles hfa2d_m = { .a = 377.0 };
struct hfa_2_doubles hfa2d_n = { .b = 610.0 };
struct hfa_2_doubles hfa2d_o = { .a = 987.0 };
struct hfa_2_doubles hfa2d_p = { .b = 1597.0 };
struct hfa_2_doubles hfa2d_q = { .a = 2584.0 };

struct hfa_4_doubles hfa4d_a = { .a = 1.0 };
struct hfa_4_doubles hfa4d_b = { .b = 2.0 };
struct hfa_4_doubles hfa4d_c = { .c = 3.0 };
struct hfa_4_doubles hfa4d_d = { .d = 5.0 };
struct hfa_4_doubles hfa4d_e = { .a = 8.0 };
struct hfa_4_doubles hfa4d_f = { .b = 13.0 };
struct hfa_4_doubles hfa4d_g = { .c = 21.0 };
struct hfa_4_doubles hfa4d_h = { .d = 34.0 };
struct hfa_4_doubles hfa4d_i = { .a = 55.0 };
struct hfa_4_doubles hfa4d_j = { .b = 89.0 };
struct hfa_4_doubles hfa4d_k = { .c = 144.0 };
struct hfa_4_doubles hfa4d_l = { .d = 233.0 };
struct hfa_4_doubles hfa4d_m = { .a = 377.0 };
struct hfa_4_doubles hfa4d_n = { .b = 610.0 };
struct hfa_4_doubles hfa4d_o = { .c = 987.0 };
struct hfa_4_doubles hfa4d_p = { .d = 1597.0 };
struct hfa_4_doubles hfa4d_q = { .a = 2584.0 };

struct hva_2_short_vector_8_bytes hva2sv8_a = { .a = { .a = 1 } };
struct hva_2_short_vector_8_bytes hva2sv8_b = { .b = { .b = 2 } };
struct hva_2_short_vector_8_bytes hva2sv8_c = { .a = { .a = 3 } };
struct hva_2_short_vector_8_bytes hva2sv8_d = { .b = { .b = 5 } };
struct hva_2_short_vector_8_bytes hva2sv8_e = { .a = { .a = 8 } };
struct hva_2_short_vector_8_bytes hva2sv8_f = { .b = { .b = 13 } };
struct hva_2_short_vector_8_bytes hva2sv8_g = { .a = { .a = 21 } };
struct hva_2_short_vector_8_bytes hva2sv8_h = { .b = { .b = 34 } };
struct hva_2_short_vector_8_bytes hva2sv8_i = { .a = { .a = 55 } };
struct hva_2_short_vector_8_bytes hva2sv8_j = { .b = { .b = 89 } };
struct hva_2_short_vector_8_bytes hva2sv8_k = { .a = { .a = 144 } };
struct hva_2_short_vector_8_bytes hva2sv8_l = { .b = { .b = 233 } };
struct hva_2_short_vector_8_bytes hva2sv8_m = { .a = { .a = 377 } };
struct hva_2_short_vector_8_bytes hva2sv8_n = { .b = { .b = 610 } };
struct hva_2_short_vector_8_bytes hva2sv8_o = { .a = { .a = 987 } };
struct hva_2_short_vector_8_bytes hva2sv8_p = { .b = { .b = 1597 } };
struct hva_2_short_vector_8_bytes hva2sv8_q = { .a = { .a = 2584 } };

struct hva_4_short_vector_8_bytes hva4sv8_a = { .a = { .a = 1 } };
struct hva_4_short_vector_8_bytes hva4sv8_b = { .b = { .b = 2 } };
struct hva_4_short_vector_8_bytes hva4sv8_c = { .c = { .a = 3 } };
struct hva_4_short_vector_8_bytes hva4sv8_d = { .d = { .b = 5 } };
struct hva_4_short_vector_8_bytes hva4sv8_e = { .a = { .a = 8 } };
struct hva_4_short_vector_8_bytes hva4sv8_f = { .b = { .b = 13 } };
struct hva_4_short_vector_8_bytes hva4sv8_g = { .c = { .a = 21 } };
struct hva_4_short_vector_8_bytes hva4sv8_h = { .d = { .b = 34 } };
struct hva_4_short_vector_8_bytes hva4sv8_i = { .a = { .a = 55 } };
struct hva_4_short_vector_8_bytes hva4sv8_j = { .b = { .b = 89 } };
struct hva_4_short_vector_8_bytes hva4sv8_k = { .c = { .a = 144 } };
struct hva_4_short_vector_8_bytes hva4sv8_l = { .d = { .b = 233 } };
struct hva_4_short_vector_8_bytes hva4sv8_m = { .a = { .a = 377 } };
struct hva_4_short_vector_8_bytes hva4sv8_n = { .b = { .b = 610 } };
struct hva_4_short_vector_8_bytes hva4sv8_o = { .c = { .a = 987 } };
struct hva_4_short_vector_8_bytes hva4sv8_p = { .d = { .b = 1597 } };
struct hva_4_short_vector_8_bytes hva4sv8_q = { .a = { .a = 2584 } };

struct hva_2_short_vector_16_bytes hva2sv16_a = { .a = { .a = 1 } };
struct hva_2_short_vector_16_bytes hva2sv16_b = { .b = { .b = 2 } };
struct hva_2_short_vector_16_bytes hva2sv16_c = { .a = { .a = 3 } };
struct hva_2_short_vector_16_bytes hva2sv16_d = { .b = { .b = 5 } };
struct hva_2_short_vector_16_bytes hva2sv16_e = { .a = { .a = 8 } };
struct hva_2_short_vector_16_bytes hva2sv16_f = { .b = { .b = 13 } };
struct hva_2_short_vector_16_bytes hva2sv16_g = { .a = { .a = 21 } };
struct hva_2_short_vector_16_bytes hva2sv16_h = { .b = { .b = 34 } };
struct hva_2_short_vector_16_bytes hva2sv16_i = { .a = { .a = 55 } };
struct hva_2_short_vector_16_bytes hva2sv16_j = { .b = { .b = 89 } };
struct hva_2_short_vector_16_bytes hva2sv16_k = { .a = { .a = 144 } };
struct hva_2_short_vector_16_bytes hva2sv16_l = { .b = { .b = 233 } };
struct hva_2_short_vector_16_bytes hva2sv16_m = { .a = { .a = 377 } };
struct hva_2_short_vector_16_bytes hva2sv16_n = { .b = { .b = 610 } };
struct hva_2_short_vector_16_bytes hva2sv16_o = { .a = { .a = 987 } };
struct hva_2_short_vector_16_bytes hva2sv16_p = { .b = { .b = 1597 } };
struct hva_2_short_vector_16_bytes hva2sv16_q = { .a = { .a = 2584 } };

struct hva_4_short_vector_16_bytes hva4sv16_a = { .a = { .a = 1 } };
struct hva_4_short_vector_16_bytes hva4sv16_b = { .b = { .b = 2 } };
struct hva_4_short_vector_16_bytes hva4sv16_c = { .c = { .c = 3 } };
struct hva_4_short_vector_16_bytes hva4sv16_d = { .d = { .d = 5 } };
struct hva_4_short_vector_16_bytes hva4sv16_e = { .a = { .a = 8 } };
struct hva_4_short_vector_16_bytes hva4sv16_f = { .b = { .b = 13 } };
struct hva_4_short_vector_16_bytes hva4sv16_g = { .c = { .c = 21 } };
struct hva_4_short_vector_16_bytes hva4sv16_h = { .d = { .d = 34 } };
struct hva_4_short_vector_16_bytes hva4sv16_i = { .a = { .a = 55 } };
struct hva_4_short_vector_16_bytes hva4sv16_j = { .b = { .b = 89 } };
struct hva_4_short_vector_16_bytes hva4sv16_k = { .c = { .c = 144 } };
struct hva_4_short_vector_16_bytes hva4sv16_l = { .d = { .d = 233 } };
struct hva_4_short_vector_16_bytes hva4sv16_m = { .a = { .a = 377 } };
struct hva_4_short_vector_16_bytes hva4sv16_n = { .b = { .b = 610 } };
struct hva_4_short_vector_16_bytes hva4sv16_o = { .c = { .c = 987 } };
struct hva_4_short_vector_16_bytes hva4sv16_p = { .d = { .d = 1597 } };
struct hva_4_short_vector_16_bytes hva4sv16_q = { .a = { .a = 2584 } };

int
main (int argc, char *argv[])
{
  DEBUG ("\tshort_vector_8_bytes size: %lu\n"
          "\tshort_vector_16_bytes size: %lu\n"
          "\thfa_2_floats size: %lu\n"
          "\thfa_4_floats size: %lu\n"
          "\thfa_2_doubles size: %lu\n"
          "\thfa_4_doubles size: %lu\n"
          "\thva_2_short_vector_8_bytes size: %lu\n"
          "\thva_4_short_vector_8_bytes size: %lu\n"
          "\thva_2_short_vector_16_bytes size: %lu\n"
          "\thva_4_short_vector_16_bytes size: %lu\n"
          "\tcomposite size: %lu\n",
          sizeof (struct short_vector_8_bytes),
          sizeof (struct short_vector_16_bytes), sizeof (struct hfa_2_floats),
          sizeof (struct hfa_4_floats), sizeof (struct hfa_2_doubles),
          sizeof (struct hfa_4_doubles),
          sizeof (struct hva_2_short_vector_8_bytes),
          sizeof (struct hva_4_short_vector_8_bytes),
          sizeof (struct hva_2_short_vector_16_bytes),
          sizeof (struct hva_4_short_vector_16_bytes),
          sizeof (struct composite));

  int failures = 0;

  TEST (no_arguments, 165);

  TEST (few_longs, 142, 100L, 42L);
  TEST (several_longs, 142, 1L, 2L, 3L, 5L, 8L, 13L, 21L, 34L, 55L);
  TEST (many_longs, 6763, 1L, 2L, 3L, 5L, 8L, 13L, 21L, 34L, 55L, 89L, 144L,
        233L, 377L, 610L, 987L, 1597L, 2584L);

  TEST (few_ints, 142, 100, 42);
  TEST (several_ints, 142, 1, 2, 3, 5, 8, 13, 21, 34, 55);
  TEST (many_ints, 6763, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610,
        987, 1597, 2584);

  TEST (few_doubles, 142, 100.0, 42.0);
  TEST (several_doubles, 142, 1.0, 2.0, 3.0, 5.0, 8.0, 13.0, 21.0, 34.0, 55.0);
  TEST (many_doubles, 6763, 1.0, 2.0, 3.0, 5.0, 8.0, 13.0, 21.0, 34.0, 55.0,
        89.0, 144.0, 233.0, 377.0, 610.0, 987.0, 1597.0, 2584.0);

  TEST (few_floats, 142, 100.0f, 42.0f);
  TEST (several_floats, 142, 1.0f, 2.0f, 3.0f, 5.0f, 8.0f, 13.0f, 21.0f, 34.0f,
        55.0f);
  TEST (many_floats, 6763, 1.0f, 2.0f, 3.0f, 5.0f, 8.0f, 13.0f, 21.0f, 34.0f,
        55.0f, 89.0f, 144.0f, 233.0f, 377.0f, 610.0f, 987.0f, 1597.0f,
        2584.0f);

  TEST (few_composites, 3, a, b);
  TEST (several_composites, 142, a, b, c, d, e, f, g, h, i);
  TEST (many_composites, 6763, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p,
        q);

  TEST (few_short_vector_8_bytes, 3, sv8_a, sv8_b);
  TEST (several_short_vector_8_bytes, 142, sv8_a, sv8_b, sv8_c, sv8_d, sv8_e,
        sv8_f, sv8_g, sv8_h, sv8_i);
  TEST (many_short_vector_8_bytes, 6763, sv8_a, sv8_b, sv8_c, sv8_d, sv8_e,
        sv8_f, sv8_g, sv8_h, sv8_i, sv8_j, sv8_k, sv8_l, sv8_m, sv8_n, sv8_o,
        sv8_p, sv8_q);

  TEST (few_not_short_vector_12_bytes, 3, nsv12_a, nsv12_b);
  TEST (several_not_short_vector_12_bytes, 142, nsv12_a, nsv12_b, nsv12_c,
        nsv12_d, nsv12_e, nsv12_f, nsv12_g, nsv12_h, nsv12_i);
  TEST (many_not_short_vector_12_bytes, 6763, nsv12_a, nsv12_b, nsv12_c,
        nsv12_d, nsv12_e, nsv12_f, nsv12_g, nsv12_h, nsv12_i, nsv12_j, nsv12_k,
        nsv12_l, nsv12_m, nsv12_n, nsv12_o, nsv12_p, nsv12_q);

  TEST (few_short_vector_16_bytes, 3, sv16_a, sv16_b);
  TEST (several_short_vector_16_bytes, 142, sv16_a, sv16_b, sv16_c, sv16_d,
        sv16_e, sv16_f, sv16_g, sv16_h, sv16_i);
  TEST (many_short_vector_16_bytes, 6763, sv16_a, sv16_b, sv16_c, sv16_d,
        sv16_e, sv16_f, sv16_g, sv16_h, sv16_i, sv16_j, sv16_k, sv16_l, sv16_m,
        sv16_n, sv16_o, sv16_p, sv16_q);

  TEST (few_hfa_2_floats, 3, hfa2f_a, hfa2f_b);
  TEST (several_hfa_2_floats, 142, hfa2f_a, hfa2f_b, hfa2f_c, hfa2f_d, hfa2f_e,
        hfa2f_f, hfa2f_g, hfa2f_h, hfa2f_i);
  TEST (many_hfa_2_floats, 6763, hfa2f_a, hfa2f_b, hfa2f_c, hfa2f_d, hfa2f_e,
        hfa2f_f, hfa2f_g, hfa2f_h, hfa2f_i, hfa2f_j, hfa2f_k, hfa2f_l, hfa2f_m,
        hfa2f_n, hfa2f_o, hfa2f_p, hfa2f_q);

  TEST (few_hfa_4_floats, 3, hfa4f_a, hfa4f_b);
  TEST (several_hfa_4_floats, 142, hfa4f_a, hfa4f_b, hfa4f_c, hfa4f_d, hfa4f_e,
        hfa4f_f, hfa4f_g, hfa4f_h, hfa4f_i);
  TEST (many_hfa_4_floats, 6763, hfa4f_a, hfa4f_b, hfa4f_c, hfa4f_d, hfa4f_e,
        hfa4f_f, hfa4f_g, hfa4f_h, hfa4f_i, hfa4f_j, hfa4f_k, hfa4f_l, hfa4f_m,
        hfa4f_n, hfa4f_o, hfa4f_p, hfa4f_q);

  TEST (few_hfa_2_doubles, 3, hfa2d_a, hfa2d_b);
  TEST (several_hfa_2_doubles, 142, hfa2d_a, hfa2d_b, hfa2d_c, hfa2d_d,
        hfa2d_e, hfa2d_f, hfa2d_g, hfa2d_h, hfa2d_i);
  TEST (many_hfa_2_doubles, 6763, hfa2d_a, hfa2d_b, hfa2d_c, hfa2d_d, hfa2d_e,
        hfa2d_f, hfa2d_g, hfa2d_h, hfa2d_i, hfa2d_j, hfa2d_k, hfa2d_l, hfa2d_m,
        hfa2d_n, hfa2d_o, hfa2d_p, hfa2d_q);

  TEST (few_hfa_4_doubles, 3, hfa4d_a, hfa4d_b);
  TEST (several_hfa_4_doubles, 142, hfa4d_a, hfa4d_b, hfa4d_c, hfa4d_d,
        hfa4d_e, hfa4d_f, hfa4d_g, hfa4d_h, hfa4d_i);
  TEST (many_hfa_4_doubles, 6763, hfa4d_a, hfa4d_b, hfa4d_c, hfa4d_d, hfa4d_e,
        hfa4d_f, hfa4d_g, hfa4d_h, hfa4d_i, hfa4d_j, hfa4d_k, hfa4d_l, hfa4d_m,
        hfa4d_n, hfa4d_o, hfa4d_p, hfa4d_q);

  TEST (few_hva_2_short_vector_8_bytes, 3, hva2sv8_a, hva2sv8_b);
  TEST (several_hva_2_short_vector_8_bytes, 142, hva2sv8_a, hva2sv8_b,
        hva2sv8_c, hva2sv8_d, hva2sv8_e, hva2sv8_f, hva2sv8_g, hva2sv8_h,
        hva2sv8_i);
  TEST (many_hva_2_short_vector_8_bytes, 6763, hva2sv8_a, hva2sv8_b, hva2sv8_c,
        hva2sv8_d, hva2sv8_e, hva2sv8_f, hva2sv8_g, hva2sv8_h, hva2sv8_i,
        hva2sv8_j, hva2sv8_k, hva2sv8_l, hva2sv8_m, hva2sv8_n, hva2sv8_o,
        hva2sv8_p, hva2sv8_q);

  TEST (few_hva_4_short_vector_8_bytes, 3, hva4sv8_a, hva4sv8_b);
  TEST (several_hva_4_short_vector_8_bytes, 142, hva4sv8_a, hva4sv8_b,
        hva4sv8_c, hva4sv8_d, hva4sv8_e, hva4sv8_f, hva4sv8_g, hva4sv8_h,
        hva4sv8_i);
  TEST (many_hva_4_short_vector_8_bytes, 6763, hva4sv8_a, hva4sv8_b, hva4sv8_c,
        hva4sv8_d, hva4sv8_e, hva4sv8_f, hva4sv8_g, hva4sv8_h, hva4sv8_i,
        hva4sv8_j, hva4sv8_k, hva4sv8_l, hva4sv8_m, hva4sv8_n, hva4sv8_o,
        hva4sv8_p, hva4sv8_q);

  TEST (few_hva_2_short_vector_16_bytes, 3, hva2sv16_a, hva2sv16_b);
  TEST (several_hva_2_short_vector_16_bytes, 142, hva2sv16_a, hva2sv16_b,
        hva2sv16_c, hva2sv16_d, hva2sv16_e, hva2sv16_f, hva2sv16_g, hva2sv16_h,
        hva2sv16_i);
  TEST (many_hva_2_short_vector_16_bytes, 6763, hva2sv16_a, hva2sv16_b,
        hva2sv16_c, hva2sv16_d, hva2sv16_e, hva2sv16_f, hva2sv16_g, hva2sv16_h,
        hva2sv16_i, hva2sv16_j, hva2sv16_k, hva2sv16_l, hva2sv16_m, hva2sv16_n,
        hva2sv16_o, hva2sv16_p, hva2sv16_q);

  TEST (few_hva_4_short_vector_16_bytes, 3, hva4sv16_a, hva4sv16_b);
  TEST (several_hva_4_short_vector_16_bytes, 142, hva4sv16_a, hva4sv16_b,
        hva4sv16_c, hva4sv16_d, hva4sv16_e, hva4sv16_f, hva4sv16_g, hva4sv16_h,
        hva4sv16_i);
  TEST (many_hva_4_short_vector_16_bytes, 6763, hva4sv16_a, hva4sv16_b,
        hva4sv16_c, hva4sv16_d, hva4sv16_e, hva4sv16_f, hva4sv16_g, hva4sv16_h,
        hva4sv16_i, hva4sv16_j, hva4sv16_k, hva4sv16_l, hva4sv16_m, hva4sv16_n,
        hva4sv16_o, hva4sv16_p, hva4sv16_q);

  TEST (ints_and_composites, 6763, 1, 2L, c, 5, 8L, f, 21, 34L, i, 89, 144L, l,
        377, 610L, o, 1597, 2584L);
  TEST (ints_and_floats, 6763, 1, 2L, 3.0f, 5.0, 8, 13L, 21.0f, 34.0, 55, 89L,
        144.0f, 233.0, 377, 610L, 987.0f, 1597.0, 2584);
  TEST (ints_floats_and_composites, 6763, 1, 2L, 3.0f, 5.0, e, 13, 21L, 34.0f,
        55.0, j, 144, 233L, 377.0f, 610.0, o, 1597, 2584L);

  DEBUG ("\tfailures: %d\n", failures);

  return failures;
}
