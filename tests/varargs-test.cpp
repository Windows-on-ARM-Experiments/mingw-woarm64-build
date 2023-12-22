#include <gtest/gtest.h>

extern "C" void test_va_list(char *buf, size_t length);
extern "C" void test_sprintf(char *buf, size_t length);
extern "C" void test_va_arg_pack(char *buf, size_t length);

// Test if the va_list builtin can be passed to CRT methods.
// I would expect this to fail until the va_list builtin is implemented for
// the Windows ABI.
TEST(Aarch64MinGW, TestVaList)
{
    char sz[100];
    test_va_list(sz, 100);
    ASSERT_STREQ(sz, "string 11 1919 111.111000");
}

// Test if sprintf can receive variadic parameters.
// In most cases this is inlined and should work.
// In the case of UCRT it is a direct call to the CRT
// and I would expect it to fail until the variadic
// ABI is correctly implemented.
TEST(Aarch64MinGW, TestSPrintf)
{
    char sz[100];
    test_sprintf(sz, 100);
    ASSERT_STREQ(sz, "string 11 1919 111.111000");
}

// This test if the GCC va_arg_pack
// builtin can pass variadic parameters.
TEST(Aarch64MinGW, TestVaArgPack)
{
    char sz[100];
    test_va_arg_pack(sz, 100);
    ASSERT_STREQ(sz, "string 11 1919 111.111000");
}
