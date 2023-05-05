#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int get_len()
{
  return 100;
}

int calc_func2(int x, int y)
{
    printf("calc-func\n");
    int i = x;
    int j = y;
    return i + j;
}

int throw_func1(void)
{
  printf("throw-func\n");
  int x = calc_func2(13, 19);
  return x;
}

void big_stack_func(void)
{
  printf("big-stack-func\n");
  char sz[0x4000] = "";
  strcpy(sz, "hello");

  int num = get_len();
    
  {
      int scopes[num];
      int temps[num];

      throw_func1();
  }
}

int main(void)
{
    printf("main\n");
    big_stack_func();
    printf("return\n");
    return 0;
}
