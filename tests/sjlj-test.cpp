#include <gtest/gtest.h>

extern "C" void sjlj_test();

TEST(Aarch64MinGW, SJLJTest) 
{
    sjlj_test();
}


