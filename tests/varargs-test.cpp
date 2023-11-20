#include <gtest/gtest.h>

extern "C" void varargs_test();

TEST(Aarch64MinGW, VarargsTest) 
{
    varargs_test();
}


