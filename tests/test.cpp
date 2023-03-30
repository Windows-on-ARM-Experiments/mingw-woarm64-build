#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int calc_func(int x, int y)
{
    printf("calc-func\n");
    int i = x;
    int j = y;
    return i + j;
}

int throw_func(void)
{
  printf("throw-func\n");
  int x = calc_func(13, 19);
  throw x;
}

void big_stack_func(void)
{
  printf("big-stack-func\n");
  char sz[0x4000] = "";
  strcpy(sz, "hello");
}

int main(void)
{
    printf("main\n");
    big_stack_func();

    int rc = 0;
    float rd = 1.0f;

    try
    {
        int j = throw_func();
    }
    catch(...)
    {
        throw;
    }
    
    printf("return\n");
    return rc;
}
