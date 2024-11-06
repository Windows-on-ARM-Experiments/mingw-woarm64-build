#include "gtest_like_c.h"

#include <stdio.h>

#ifdef __USING_SJLJ_EXCEPTIONS__
#error "__USING_SJLJ_EXCEPTIONS__ cannot be defined."
#endif

#ifndef __SEH__
#error "__SEH__ must be defined."
#endif

static bool exception_catch[2] = {false};

struct scope
{
    scope()
    {
        printf("construct\n");
    }

    ~scope()
    {
        printf("destruct\n");
        exception_catch[0] = true;
    }
};

int throw_func(void)
{
    scope s;
    printf("throw-func\n");
    throw 32;
}

extern "C" {

TEST(Aarch64MinGW, ExceptionConstructorTest)
{
    printf("main start\n");

    try
    {
        throw_func();
    }
    catch (...)
    {
        printf("catch\n");
        exception_catch[1] = true;
    }

    ASSERT_TRUE(exception_catch[0] && exception_catch[1]);

    printf("ok\n");
}

}