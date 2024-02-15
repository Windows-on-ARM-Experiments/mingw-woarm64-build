#ifndef GTEST_LIKE_C_H
#define GTEST_LIKE_C_H

#include <setjmp.h>
#include <stdio.h>
#include <string.h>

#define TEST_NAME(GROUP, NAME) \
    GROUP_##NAME

#define TEST(GROUP, NAME) \
    void TEST_NAME(GROUP,NAME)()

extern jmp_buf gtest_jmp;

enum {TEST_PASSED, TEST_FAILED, TEST_SKIPPED};

#define ASSERT_EQ(VALUE1, VALUE2) \
    if ((VALUE1) != (VALUE2)) { \
        printf("%s:%d ASSERT_EQ(%s, %s) failed\n", __FILE__, __LINE__, #VALUE1, #VALUE2); \
        longjmp(gtest_jmp, TEST_FAILED); \
    }

#define ASSERT_TRUE(EXPRESSION) \
    if (!(EXPRESSION)) {\
        printf("%s:%d ASSERT_TRUE(%s) failed\n", __FILE__, __LINE__, #EXPRESSION); \
        longjmp(gtest_jmp, TEST_FAILED); \
    }

#define ASSERT_STREQ(VALUE1, VALUE2) \
    if (strcmp((VALUE1), (VALUE2))) { \
        printf("%s:%d ASSERT_EQ(%s, %s) failed\n", __FILE__, __LINE__, #VALUE1, #VALUE2); \
        longjmp(gtest_jmp, TEST_FAILED); \
    }

#define GTEST_SKIP() \
    longjmp(gtest_jmp, TEST_SKIPPED);

struct Test {
    const char* group_name;
    const char* test_name;
    void (*fn_test)();
};

#define DECLARE_TEST(GROUP, NAME) \
    {#GROUP, #NAME, TEST_NAME(GROUP, NAME)} 

int gtest_like_c_run_tests(const struct Test* tests, size_t num_tests);

#endif // GTEST_LIKE_C_H
