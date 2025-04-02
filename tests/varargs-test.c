#include "gtest_like_c.h"

#include <stdio.h>
#include <stdarg.h>

static int va_list_print_direct(char *buf, size_t length, const char *fmt, ...)
{
    va_list argv;
    va_start(argv, fmt);
    register int retval = _vsnprintf(buf, length, fmt, argv);
    va_end(argv);
    return retval;
}

static int va_list_print_indirect_wrapper(char *buf, size_t length, const char *fmt, va_list argv)
{
    register int retval = _vsnprintf(buf, length, fmt, argv);
    return retval;
}

static int va_list_print_indirect(char *buf, size_t length, const char *fmt, ...)
{
    va_list argv;
    va_start(argv, fmt);
    register int retval = va_list_print_indirect_wrapper(buf, length, fmt, argv);
    va_end(argv);
    return retval;
}

void test_va_list_direct(char *buf, size_t length)
{
    va_list_print_direct(buf, length, "%s %d %x %f", "string", 11, 0x1919, 111.111);
}

void test_va_list_indirect(char *buf, size_t length)
{
    va_list_print_indirect(buf, length, "%s %d %x %f", "string", 11, 0x1919, 111.111);
}

void test_sprintf(char *buf, size_t length)
{
    sprintf(buf, "%s %d %x %f", "string", 11, 0x1919, 111.111);
}

static inline __attribute__((__always_inline__)) void va_arg_pack_printf(char *buf, const char *format, ...)
{
    sprintf(buf, format, __builtin_va_arg_pack());
}

void test_va_arg_pack(char *buf, size_t length)
{
    va_arg_pack_printf(buf, "%s %d %x %f", "string", 11, 0x1919, 111.111);
}

// Test if the va_list builtin can be passed to CRT methods.
// I would expect this to fail until the va_list builtin is implemented for
// the Windows ABI.
TEST(Aarch64MinGW, VaListDirectTest)
{
    char sz[100];
    test_va_list_direct(sz, 100);
    ASSERT_STREQ(sz, "string 11 1919 111.111000");
}

// Test if the va_list builtin can be passed to CRT methods.
// I would expect this to fail until the va_list builtin is implemented for
// the Windows ABI. Indirect variant according to https://c-faq.com/varargs/handoff.html
TEST(Aarch64MinGW, VaListIndirectTest)
{
    char sz[100];
    test_va_list_indirect(sz, 100);
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

