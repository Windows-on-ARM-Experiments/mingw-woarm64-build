/*
   Tests reading double from a string
*/

#include "gtest_like_c.h"

extern int (*get_test_static(void))(int* val);

int static_function_test()
{
    int (*test_static)(int* val) = get_test_static();
    int i = 10;

    if (test_static(&i) != 10)
        return 0;

    return 1;
}

TEST(Aarch64MinGW, StaticFunctionTest)
{
    ASSERT_TRUE(static_function_test());
}
