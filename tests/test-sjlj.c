#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <setjmp.h>

static jmp_buf env;

int jumper(int val)
{
    longjmp(env, val);
}

int main()
{	
	int val = setjmp(env);

	if (val==0)
	{
		printf("setjmp %d\n", val);
		jumper(99);
	}
	else
	{          
        printf("setjmp %d\n", val);
	}

    printf("terminating\n");
	return 0;
}