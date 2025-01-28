#include <gtest/gtest.h>

extern "C" void math_test();
extern "C" void complex_func_test();
extern "C" void cexp_test();
extern "C" void ccos_test();

TEST(Aarch64MinGW, MathTest)
{
    math_test();
}

TEST(Aarch64MinGW, ComplexFuncTest)
{
    complex_func_test();
}

TEST(Aarch64MinGW, CexpTest)
{
    cexp_test();
}

TEST(Aarch64MinGW, CcosTest)
{
    ccos_test();
}
