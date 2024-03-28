/*
   Tests double formating
*/

#include "gtest_like_c.h"

#include <stdio.h>

int printf_double()
{
    double v = 0.7;
    printf("sizeof(double) = %d sizeof(long double) = %d value: %f\n", sizeof(double), sizeof(long double), v);

    char buf[0x100];    
    snprintf(buf, sizeof(buf), "%f", v);

    if (strcmp(buf, "0.700000"))
        return 0;

    return 1;
}

TEST(Aarch64MinGW, PrintfDoubleTest)
{
    ASSERT_TRUE(printf_double());
}
