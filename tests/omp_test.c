#include <stdio.h>
#include <omp.h>

void omp_test(void)
{
    #pragma omp parallel
    {
        printf("Hello from process: %d\n", omp_get_thread_num());
    }
    printf("ok\n");
}