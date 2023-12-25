#include <gtest/gtest.h>

extern "C" void math_test();

TEST(Aarch64MinGW, MathTest)
{
    math_test();
}
