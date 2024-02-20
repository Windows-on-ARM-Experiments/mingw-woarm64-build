#include "gtest_like_c.h"

double nested_add_squares(double a, double b)
{
    double square(double z) { return z * z; }
    return square(a) + square(b);
}

TEST(Aarch64MinGW, NestedFunction)
{
    ASSERT_TRUE(nested_add_squares(3.0, 7.0) == 3.0 * 3.0 + 7.0 * 7.0);
}