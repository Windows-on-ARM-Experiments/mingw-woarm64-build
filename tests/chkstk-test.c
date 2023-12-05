/* 
   Tests stack probing
*/

void f1(char* data) 
{
    *data = 0;
}

void chkstk_test() {
    char test[300000];
    f1(test);
}