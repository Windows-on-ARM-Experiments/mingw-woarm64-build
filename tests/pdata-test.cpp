#include <gtest/gtest.h>

extern "C" void pdata_test();

TEST(Aarch64MinGW, PDATATest) 
{
    pdata_test();
}


