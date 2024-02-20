#include "gtest_like_c.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <setjmp.h>

static jmp_buf env;

int jumper(int val)
{
    printf("jumper\n");
    longjmp(env, val);
}

void sjlj_test()
{
    int val = setjmp(env);

    if (val == 0)
    {
        printf("setjmp %d\n", val);
        jumper(99);
    }
    else
    {
        printf("setjmp %d\n", val);
    }
}

TEST(Aarch64MinGW, SJLJTest)
{
    sjlj_test();
}
