#include <gtest/gtest.h>

extern "C" void dll_test();

TEST(Aarch64MinGW, DllTest) 
{
    dll_test();
}


