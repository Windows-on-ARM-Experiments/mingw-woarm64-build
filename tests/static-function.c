/*
   Tests reading double from a string
*/


static int test_static(int* val)
{
    return *val;
}


int (*get_test_static(void))(int* val) 
{
    return test_static;
}
