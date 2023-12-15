#include <gtest/gtest.h>

extern "C" int check_struct();

TEST(Aarch64MinGW, StructTest) 
{
    ASSERT_TRUE(check_struct());
}


