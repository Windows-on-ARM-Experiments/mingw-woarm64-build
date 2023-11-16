#include <stdio.h>


_Float128 foo (_Float128 x)
{
    _Complex _Float128 z1, z2;

    z1 = x;
    z2 = x / 7.F128;
    z2 /= z1;

    return (_Float128) z2;
}

_Float128 bar (_Float128 x)
{
    return x * __builtin_huge_valf128 ();
}

_Float128 baz (_Float128 x)
{
    return x * __builtin_huge_valf128 ();
}


void math_test() 
{
    foo (1.2Q);
    bar (1.2Q);
    foo (1.2F128);
    bar (1.2F128);
    baz (1.2F128);
    foo (1.2Q);
    bar (1.2Q);
    baz (1.2Q);

   printf("ok\n");
}