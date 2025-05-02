#include "gtest_like_c.h"

#include <stdexcept>

struct FREGPTest {
    int v1, v2;
    double v3, v4, v5;

    FREGPTest(int v1, int v2, double v3, double v4, double v5)
        : v1(v1), v2(v2), v3(v3), v4(v4), v5(v5)
    {
    }

    FREGPTest(const FREGPTest& v1, int v2) : 
    FREGPTest(1, 2, v1.get(), v1.get(), v1.get()) 
    {
        throw std::invalid_argument("");
    }

    double get() const {
        return 0;
    }
};

void test_seh_fregp() {
    auto a = FREGPTest(1, 2, 3, 4, 5);
    bool exception_catch = false;

    try {
        FREGPTest(a, 2);
    }
    catch(std::invalid_argument const&) 
    { 
        exception_catch = true;
    } 
    catch (...) 
    {
        printf("Unexpected exception handling\n");
    }

    ASSERT_TRUE(exception_catch);
}

extern "C" {

    TEST(Aarch64MinGW, SEHFregpTest)
    {
        test_seh_fregp();
    }
    
}