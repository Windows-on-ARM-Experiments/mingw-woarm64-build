/*
   Tests stack probing
*/

#include "gtest_like_c.h"

#define BIG_STACK_ALLOC_SIZE 300000

void write_to_big_stack_alloc(char *stack_data)
{
    stack_data[0] = 18;
    stack_data[BIG_STACK_ALLOC_SIZE - 1] = 19;
}

int check_big_stack_allocation()
{
    char stack_data[BIG_STACK_ALLOC_SIZE];
    write_to_big_stack_alloc(stack_data);
    return stack_data[BIG_STACK_ALLOC_SIZE - 1] == 19;
}

TEST(Aarch64MinGW, CHKSTKTest)
{
    ASSERT_TRUE(check_big_stack_allocation());
}
