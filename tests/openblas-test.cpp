#include <gtest/gtest.h>

extern "C" void openblas_test();

TEST(Aarch64MinGW, OpenBLASTest)
{
    openblas_test();
}
