/*
   Tests reading double from a string
*/

#include "gtest_like_c.h"

#include <stdio.h>

int sscanf_double()
{
    double v[3];
    sscanf("0.0 1.0 0.7", "%lf %lf %lf", v, v + 1, v + 2);
    printf("%lf %lf %lf\n", v[0], v[1], v[2]);

    if (v[0] != 0. || v[1] != 1. || v[2] != 0.7)
        return 0;

    return 1;
}

TEST(Aarch64MinGW, SscanfDoubleTest)
{
    ASSERT_TRUE(sscanf_double());
}
