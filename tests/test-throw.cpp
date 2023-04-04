#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifdef __USING_SJLJ_EXCEPTIONS__
#error "__USING_SJLJ_EXCEPTIONS__ cannot be defined."
#endif

#ifndef __SEH__
#error "__SEH__ must be defined."
#endif

int throw_func(void)
{
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
    }
    
    printf("main end\n");
    return 0;
}
