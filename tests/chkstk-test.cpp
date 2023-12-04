#include <gtest/gtest.h>

extern "C" void chkstk_test();

TEST(Aarch64MinGW, CHKSTKTest) 
{
    chkstk_test();
}


