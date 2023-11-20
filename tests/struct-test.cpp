#include <gtest/gtest.h>

extern "C" void struct_test();

TEST(Aarch64MinGW, StructTest) 
{
    struct_test();
}


