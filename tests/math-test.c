#include "gtest_like_c.h"

#include <stdio.h>
#include <complex.h>

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

_Complex double complex_func(_Complex double a, _Complex double b)
{
  return a + b;
}

void math_test()
{
    foo(1.2Q);
    bar(1.2Q);
    foo(1.2F128);
    bar(1.2F128);
    baz(1.2F128);
    foo(1.2Q);
    bar(1.2Q);
    baz(1.2Q);

    printf("ok\n");
}

void complex_func_test()
{
  _Complex double a = 1.0 + 2.0 * I;
  _Complex double b = 3.0 + 4.0 * I;
  _Complex double c = complex_func(a, b);

  printf("%f + %f * I\n", creal(c), cimag(c));
}

void cexp_test()
{
    _Complex double z = 1.0 + 2.0 * I;
    _Complex double w = __builtin_cexp(z);

    printf("%f + %f * I\n", creal(w), cimag(w));
}


void ccos_test()
{
    _Complex double z = 1.0 + 2.0 * I;
    _Complex double w = __builtin_ccos(z);

    printf("%f + %f * I\n", creal(w), cimag(w));
}

TEST(Aarch64MinGW, MathTest)
{
    math_test();
}
