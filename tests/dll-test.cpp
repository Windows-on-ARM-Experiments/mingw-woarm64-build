#include <gtest/gtest.h>

extern "C" int check_dll();

TEST(Aarch64MinGW, DllTest)
{
    ASSERT_EQ(check_dll(), 0);
}