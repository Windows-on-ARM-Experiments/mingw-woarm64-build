/* 
   Tests data in a structure is addressed correctrly
*/

#include <stdio.h>
#include <stdlib.h>

struct aaa
{
    int a;
    int b;
    int space[2000];
    int c;
    int d;
};

struct bbb
{
    int space[2000];
    int a;
    int b;
    int c;
    int d;
};

void copy_parts(struct aaa *a, struct bbb *b)
{
    b->a = a->a;
    b->b = a->b;
    b->c = a->c;
    b->d = a->d;
}

void struct_test() 
{
   struct aaa a = { 11, 22, { 0 }, 33, 44 };
   struct bbb *b = (struct bbb*)malloc(sizeof(struct bbb));

   copy_parts(&a, b);
   printf("result %d %d %d %d\n", b->a, b->b, b->c, b->d);
   printf("ok\n");
}