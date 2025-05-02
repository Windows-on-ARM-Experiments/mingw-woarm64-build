#include "gtest_like_c.h"

#include <stdexcept>

namespace {

void fn1() 
{
    throw std::length_error("");
}

void test_seh_stack_probing() 
{
    char buf[20000];
    char buf2[4000];
    bool exception_catch = false;

    try 
    {
        fn1();
    }
    catch(std::length_error const&) 
    { 
        exception_catch = true;
    } 
    catch (...) 
    {
        printf("Unexpected exception handling\n");
    }

    ASSERT_TRUE(exception_catch);
}

}

extern "C" {

    TEST(Aarch64MinGW, SEHStackProbing)
    {
        test_seh_stack_probing();
    }
    
}