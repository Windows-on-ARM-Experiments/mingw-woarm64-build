#include <gtest/gtest.h>

extern "C" int check_big_stack_allocation();

TEST(Aarch64MinGW, CHKSTKTest) 
{
    ASSERT_TRUE(check_big_stack_allocation());
}


