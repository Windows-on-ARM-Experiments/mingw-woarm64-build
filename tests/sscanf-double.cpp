#include <gtest/gtest.h>

extern "C" int sscanf_double();

TEST(Aarch64MinGW, SscanfDoubleTest) 
{
    ASSERT_TRUE(sscanf_double());
}
