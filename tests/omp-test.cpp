#include <gtest/gtest.h>

extern "C" void omp_test();

TEST(Aarch64MinGW, OmpTest)
{
    omp_test();
}
