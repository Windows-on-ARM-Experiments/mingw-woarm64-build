#include "gtest_like_c.h"

#include <stdio.h>
#include <stdarg.h>

#define M_E_LD 2.718281828459045235360287471352662498L

// _Float128 is not fully supported yet, for example strfromf128() or Q length specifier in
// printf() don't work yet. So for now, instead of testing _Float128 in printf_test() like other
// types, we test some arithmetics and type handling in float_128_test().

_Float128 foo(_Float128 x)
{
    _Complex _Float128 z1, z2;

    z1 = x;
    z2 = x / 7.F128;
    z2 /= z1;

    return (_Float128)z2;
}

_Float128 bar(_Float128 x)
{
    return x * __builtin_huge_valf128();
}

_Float128 baz(_Float128 x)
{
    return x * __builtin_huge_valf128();
}

void float_128_test()
{
    // Based on test from gcc/libgfortran/configure
    foo(1.2Q);
    bar(1.2Q);
    foo(1.2F128);
    bar(1.2F128);
    baz(1.2F128);
    foo(1.2Q);
    bar(1.2Q);
    baz(1.2Q);
}

void sizeof_test()
{
    ASSERT_EQ(sizeof(float), 4);
    ASSERT_EQ(sizeof(double), 8);
    ASSERT_EQ(sizeof(long double), 8);
    ASSERT_EQ(sizeof(_Float128), 16);
}

void assert_snprintf(const char* expected, const char* format, ...)
{
    va_list list;
    va_start (list, format);

    const int SIZE = 1024;
    char actual[SIZE];
    snprintf(actual, SIZE, format, list);
    ASSERT_STREQ(expected, actual);

    va_end(list);
}

void printf_test()
{
    float f = 1.23456f;
    double d = 1.23456;
    long double ld = M_E_LD;

    assert_snprintf("float %f => 1.234560", "float %%f => %f", f);
    assert_snprintf("float %F => 1.234560", "float %%F => %F", f);
    assert_snprintf("float %e => 1.234560e+00", "float %%e => %e", f);
    assert_snprintf("float %E => 1.234560E+00", "float %%E => %E", f);
    assert_snprintf("float %g => 1.23456", "float %%g => %g", f);
    assert_snprintf("float %G => 1.23456", "float %%G => %G", f);
    assert_snprintf("float %a => 0x1.3c0c2p+0", "float %%a => %a", f);
    assert_snprintf("float %A => 0X1.3C0C2P+0", "float %%A => %A", f);

    assert_snprintf("double %f => 1.234560", "double %%f => %f", d);
    assert_snprintf("double %F => 1.234560", "double %%F => %F", d);
    assert_snprintf("double %e => 1.234560e+00", "double %%e => %e", d);
    assert_snprintf("double %E => 1.234560E+00", "double %%E => %E", d);
    assert_snprintf("double %g => 1.23456", "double %%g => %g", d);
    assert_snprintf("double %G => 1.23456", "double %%G => %G", d);
    assert_snprintf("double %a => 0x1.3c0c1fc8f3238p+0", "double %%a => %a", d);
    assert_snprintf("double %A => 0X1.3C0C1FC8F3238P+0", "double %%A => %A", d);

    assert_snprintf("long double %f => 2.718282", "long double %%f => %f", ld);
    assert_snprintf("long double %F => 2.718282", "long double %%F => %F", ld);
    assert_snprintf("long double %e => 2.718282e+00", "long double %%e => %e", ld);
    assert_snprintf("long double %E => 2.718282E+00", "long double %%E => %E", ld);
    assert_snprintf("long double %g => 2.71828", "long double %%g => %g", ld);
    assert_snprintf("long double %G => 2.71828", "long double %%G => %G", ld);
    assert_snprintf("long double %a => 0x1.5bf0a8b145769p+1", "long double %%a => %a", ld);
    assert_snprintf("long double %A => 0X1.5BF0A8B145769P+1", "long double %%A => %A", ld);

    assert_snprintf("long double %Lf => 2.718282", "long double %%Lf => %Lf", ld);
    assert_snprintf("long double %LF => 2.718282", "long double %%LF => %LF", ld);
    assert_snprintf("long double %Le => 2.718282e+00", "long double %%Le => %Le", ld);
    assert_snprintf("long double %LE => 2.718282E+00", "long double %%LE => %LE", ld);
    assert_snprintf("long double %Lg => 2.71828", "long double %%Lg => %Lg", ld);
    assert_snprintf("long double %LG => 2.71828", "long double %%LG => %LG", ld);
    assert_snprintf("long double %La => 0x1.5bf0a8b145769p+1", "long double %%La => %La", ld);
    assert_snprintf("long double %LA => 0X1.5BF0A8B145769P+1", "long double %%LA => %LA", ld);

    assert_snprintf("long double %lf => 2.718282", "long double %%lf => %lf", ld);
    assert_snprintf("long double %lF => 2.718282", "long double %%lF => %lF", ld);
    assert_snprintf("long double %le => 2.718282e+00", "long double %%le => %le", ld);
    assert_snprintf("long double %lE => 2.718282E+00", "long double %%lE => %lE", ld);
    assert_snprintf("long double %lg => 2.71828", "long double %%lg => %lg", ld);
    assert_snprintf("long double %lG => 2.71828", "long double %%lG => %lG", ld);
    assert_snprintf("long double %la => 0x1.5bf0a8b145769p+1", "long double %%la => %la", ld);
    assert_snprintf("long double %lA => 0X1.5BF0A8B145769P+1", "long double %%lA => %lA", ld);
}

TEST(Aarch64MinGW, MathTest)
{
    float_128_test();
    sizeof_test();
    printf_test();
}