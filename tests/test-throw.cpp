#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifdef __USING_SJLJ_EXCEPTIONS__
#error "__USING_SJLJ_EXCEPTIONS__ cannot be defined."
#endif

#ifndef __SEH__
#error "__SEH__ must be defined."
#endif

struct scope
{
  scope()
  {
    printf("construct\n");
  }

  ~scope()
  {
    printf("destruct\n");
  }
};

int throw_func(void)
{
  scope s;
  printf("throw-func\n");
  throw 32;
}

int main(void)
{
    printf("main start\n");

    try
    {
        throw_func();
    }
    catch(...)
    {
      printf("catch\n");
    }
    
    printf("ok\n");
    return 0;
}
