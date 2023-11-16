#include <assert.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>

// Sources:
// - https://cpufun.substack.com/p/portable-support-for-128b-floats
// - https://cplusplus.com/reference/cstdio/printf/

#define M_E_LD 2.718281828459045235360287471352662498L

#define assert_sizeof(type, size) \
    printf ("expected: sizeof(%s) == %d\n", #type, size); \
    printf ("actual: sizeof(%s) == %d\n", #type, sizeof (type)); \
    assert (sizeof (type) == size);

void assert_snprintf(const char* expected, const char* format, ...)
{
    va_list list;
    va_start (list, format);

    const int SIZE = 1024;
    char actual[SIZE];
    snprintf (actual, SIZE, format, list);
    printf ("expected: %s\n", expected);
    printf ("actual: %s\n", actual);
    assert (strncmp (expected, actual, SIZE) == 0);

    va_end(list);
}

int main()
{
    assert_sizeof (float, 4);
    assert_sizeof (double, 8);
    assert_sizeof (long double, 8);

    float f = 1.23456f;
    double d = 1.23456;
    long double ld = M_E_LD;

    assert_snprintf ("float %f => 1.234560", "float %%f => %f", f);
    assert_snprintf ("float %F => 1.234560", "float %%F => %F", f);
    assert_snprintf ("float %e => 1.234560e+00", "float %%e => %e", f);
    assert_snprintf ("float %E => 1.234560E+00", "float %%E => %E", f);
    assert_snprintf ("float %g => 1.23456", "float %%g => %g", f);
    assert_snprintf ("float %G => 1.23456", "float %%G => %G", f);
    assert_snprintf ("float %a => 0x1.3c0c2p+0", "float %%a => %a", f);
    assert_snprintf ("float %A => 0X1.3C0C2P+0", "float %%A => %A", f);

    assert_snprintf ("double %f => 1.234560", "double %%f => %f", d);
    assert_snprintf ("double %F => 1.234560", "double %%F => %F", d);
    assert_snprintf ("double %e => 1.234560e+00", "double %%e => %e", d);
    assert_snprintf ("double %E => 1.234560E+00", "double %%E => %E", d);
    assert_snprintf ("double %g => 1.23456", "double %%g => %g", d);
    assert_snprintf ("double %G => 1.23456", "double %%G => %G", d);
    assert_snprintf ("double %a => 0x1.3c0c1fc8f3238p+0", "double %%a => %a", d);
    assert_snprintf ("double %A => 0X1.3C0C1FC8F3238P+0", "double %%A => %A", d);

    assert_snprintf ("long double %f => 2.718282", "long double %%f => %f", ld);
    assert_snprintf ("long double %F => 2.718282", "long double %%F => %F", ld);
    assert_snprintf ("long double %e => 2.718282e+00", "long double %%e => %e", ld);
    assert_snprintf ("long double %E => 2.718282E+00", "long double %%E => %E", ld);
    assert_snprintf ("long double %g => 2.71828", "long double %%g => %g", ld);
    assert_snprintf ("long double %G => 2.71828", "long double %%G => %G", ld);
    assert_snprintf ("long double %a => 0x1.5bf0a8b145769p+1", "long double %%a => %a", ld);
    assert_snprintf ("long double %A => 0X1.5BF0A8B145769P+1", "long double %%A => %A", ld);

    assert_snprintf ("long double %Lf => 2.718282", "long double %%Lf => %Lf", ld);
    assert_snprintf ("long double %LF => 2.718282", "long double %%LF => %LF", ld);
    assert_snprintf ("long double %Le => 2.718282e+00", "long double %%Le => %Le", ld);
    assert_snprintf ("long double %LE => 2.718282E+00", "long double %%LE => %LE", ld);
    assert_snprintf ("long double %Lg => 2.71828", "long double %%Lg => %Lg", ld);
    assert_snprintf ("long double %LG => 2.71828", "long double %%LG => %LG", ld);
    assert_snprintf ("long double %La => 0x1.5bf0a8b145769p+1", "long double %%La => %La", ld);
    assert_snprintf ("long double %LA => 0X1.5BF0A8B145769P+1", "long double %%LA => %LA", ld);

    assert_snprintf ("long double %lf => 2.718282", "long double %%lf => %lf", ld);
    assert_snprintf ("long double %lF => 2.718282", "long double %%lF => %lF", ld);
    assert_snprintf ("long double %le => 2.718282e+00", "long double %%le => %le", ld);
    assert_snprintf ("long double %lE => 2.718282E+00", "long double %%lE => %lE", ld);
    assert_snprintf ("long double %lg => 2.71828", "long double %%lg => %lg", ld);
    assert_snprintf ("long double %lG => 2.71828", "long double %%lG => %lG", ld);
    assert_snprintf ("long double %la => 0x1.5bf0a8b145769p+1", "long double %%la => %la", ld);
    assert_snprintf ("long double %lA => 0X1.5BF0A8B145769P+1", "long double %%lA => %lA", ld);

    assert_snprintf ("long double %llf => 2.718282", "long double %%llf => %llf", ld);
    assert_snprintf ("long double %llF => 2.718282", "long double %%llF => %llF", ld);
    assert_snprintf ("long double %lle => 2.718282e+00", "long double %%lle => %lle", ld);
    assert_snprintf ("long double %llE => 2.718282E+00", "long double %%llE => %llE", ld);
    assert_snprintf ("long double %llg => 2.71828", "long double %%llg => %llg", ld);
    assert_snprintf ("long double %llG => 2.71828", "long double %%llG => %llG", ld);
    assert_snprintf ("long double %lla => 0x1.5bf0a8b145769p+1", "long double %%lla => %lla", ld);
    assert_snprintf ("long double %llA => 0X1.5BF0A8B145769P+1", "long double %%llA => %llA", ld);

    assert_snprintf ("long double %Qf => 2.718282", "long double %%Qf => %Qf", ld);
    assert_snprintf ("long double %QF => 2.718282", "long double %%QF => %QF", ld);
    assert_snprintf ("long double %Qe => 2.718282e+00", "long double %%Qe => %Qe", ld);
    assert_snprintf ("long double %QE => 2.718282E+00", "long double %%QE => %QE", ld);
    assert_snprintf ("long double %Qg => 2.71828", "long double %%Qg => %Qg", ld);
    assert_snprintf ("long double %QG => 2.71828", "long double %%QG => %QG", ld);
    assert_snprintf ("long double %Qa => 0x1.5bf0a8b145769p+1", "long double %%Qa => %Qa", ld);
    assert_snprintf ("long double %QA => 0X1.5BF0A8B145769P+1", "long double %%QA => %QA", ld);

    assert_snprintf ("long double %qf => 2.718282", "long double %%qf => %qf", ld);
    assert_snprintf ("long double %qF => 2.718282", "long double %%qF => %qF", ld);
    assert_snprintf ("long double %qe => 2.718282e+00", "long double %%qe => %qe", ld);
    assert_snprintf ("long double %qE => 2.718282E+00", "long double %%qE => %qE", ld);
    assert_snprintf ("long double %qg => 2.71828", "long double %%qg => %qg", ld);
    assert_snprintf ("long double %qG => 2.71828", "long double %%qG => %qG", ld);
    assert_snprintf ("long double %qa => 0x1.5bf0a8b145769p+1", "long double %%qa => %qa", ld);
    assert_snprintf ("long double %qA => 0X1.5BF0A8B145769P+1", "long double %%qA => %qA", ld);

    printf ("ok\n");

    return 0;
}
