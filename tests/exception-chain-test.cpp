#include "gtest_like_c.h"

#include <stdio.h>
#include <cstdio>
#include <exception>

static bool exception_catch[5] = {false};

void fn7(void) {

    throw 0.1;
}

void fn6(void) {
    fn7();
}

void fn5(void) {
    try {
        fn6();
    }
    catch(double e) {
        printf("catch at fn5 %f\n", e);
        exception_catch[4] = e == 0.1;
        throw;
    }
}

void fn4(void) {
    try {
        fn5();
    }
    catch(int i) {
        printf("unexpected catch at fn4 %d\n", i);
        exception_catch[3] = true;
    }
}

void fn3(void)
{
    try {
        fn4();
    }
    catch(double e) {
        printf("catch at fn3 %f\n", e);
        exception_catch[2] = e == 0.1;
        throw 32;
    }
}

void fn2(void)
{
    bool first_catch = false;
    try {
        try {
            fn3();
        }
        catch (int e)
        {
            printf("the first catch at fn2 %d\n", e);
            first_catch = e == 32;
            throw std::exception();
        }
    }
    catch(std::exception& e) {
        printf("the second catch at fn2\n");
        exception_catch[1] = first_catch;
        throw;
    }
}

void fn1(void)
{
    try
    {
        fn2();
    }
    catch (...)
    {
        printf("catch at fn1\n");
        exception_catch[0] = true;
    }
}

extern "C" {

TEST(Aarch64MinGW, ExceptionChainTest)
{
    fn1();
    ASSERT_TRUE(exception_catch[0] && exception_catch[1] && exception_catch[2] && !exception_catch[3] && exception_catch[4]);
}

}