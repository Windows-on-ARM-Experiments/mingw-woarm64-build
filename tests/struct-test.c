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

// This checks elements in a struct
// are accessed correctly by copying across values.
int check_struct()
{
    struct aaa a = {11, 22, {0}, 33, 44};
    struct bbb *b = (struct bbb *)malloc(sizeof(struct bbb));

    copy_parts(&a, b);

    // check all values are the same
    int success = b->a == 11 &&
                  b->b == 22 &&
                  b->c == 33 &&
                  b->d == 44;

    return success;
}