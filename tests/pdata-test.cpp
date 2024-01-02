#include <gtest/gtest.h>

extern "C" int count_stack_frames();

// This test asserts the number stack frames that can be unwound using RtlVirtualUnwind.
// This is a good proxy to determine if pdata entries are correct.
TEST(Aarch64MinGW, TestUnwindStack)
{
    GTEST_SKIP();
    
    EXPECT_EQ(count_stack_frames(), 22);
}
