#include "gtest_like_c.h"

#define NOP_1 asm volatile("nop");
#define NOP_2 NOP_1 NOP_1
#define NOP_4 NOP_2 NOP_2
#define NOP_8 NOP_4 NOP_4
#define NOP_16 NOP_8 NOP_8
#define NOP_32 NOP_16 NOP_16
#define NOP_64 NOP_32 NOP_32
#define NOP_128 NOP_64 NOP_64
#define NOP_256 NOP_128 NOP_128
#define NOP_512 NOP_256 NOP_256
#define NOP_1024 NOP_512 NOP_512
#define NOP_2048 NOP_1024 NOP_1024
#define NOP_4096 NOP_2048 NOP_2048
#define NOP_8192 NOP_4096 NOP_4096
#define NOP_16384 NOP_8192 NOP_8192
#define NOP_32768 NOP_16384 NOP_16384
#define NOP_65536 NOP_32768 NOP_32768
#define NOP_131072 NOP_65536 NOP_65536

void test_seh_small() {
    int test[1000];
    bool exception_catch = false;

    try {
        NOP_16384
        printf("Throw an exception from a small function\n");
        throw 1;
    }
    catch(...) {
        printf("The exception has been caught\n");
        exception_catch = true;
    }

    ASSERT_TRUE(exception_catch);
}

void test_seh_large() {
    int test[1000];
    bool exception_catch = false;

    try {
        NOP_131072
        NOP_131072
        NOP_131072
        NOP_131072
        NOP_131072
        printf("Throw an exception from a large function\n");
        throw 1;
    }
    catch(...) {
        printf("The exception has been caught\n");
        exception_catch = true;
    }

    ASSERT_TRUE(exception_catch);
}

extern "C" {

    TEST(Aarch64MinGW, SEHLargeFunctionTest)
    {
        test_seh_small();
        test_seh_large();
    }
    
}