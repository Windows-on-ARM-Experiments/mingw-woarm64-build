#include <gtest/gtest.h>

extern "C" double nested_add_squares(double a, double b);

TEST(Aarch64MinGW, NestedFunction)
{
    ASSERT_TRUE(nested_add_squares(3.0, 7.0) == 3.0 * 3.0 + 7.0 * 7.0);
}