#include "gtest_like_c.h"

TEST(Aarch64MinGW, BigDataTest);
TEST(Aarch64MinGW, CHKSTKTest);
TEST(Aarch64MinGW, DllTest);
TEST(Aarch64MinGW, MathTest);
TEST(Aarch64MinGW, NestedFunction);
TEST(Aarch64MinGW, OmpTest);
TEST(Aarch64MinGW, TestUnwindStack);
TEST(Aarch64MinGW, SJLJTest);
TEST(Aarch64MinGW, StructTest);
TEST(Aarch64MinGW, TestVaList);
TEST(Aarch64MinGW, TestSPrintf);
TEST(Aarch64MinGW, TestVaArgPack);

int WinMain() {
    struct Test tests[] = {
        DECLARE_TEST(Aarch64MinGW, BigDataTest),
        DECLARE_TEST(Aarch64MinGW, CHKSTKTest),
        DECLARE_TEST(Aarch64MinGW, DllTest),
        DECLARE_TEST(Aarch64MinGW, MathTest),
        DECLARE_TEST(Aarch64MinGW, NestedFunction),
        DECLARE_TEST(Aarch64MinGW, OmpTest),
        DECLARE_TEST(Aarch64MinGW, TestUnwindStack),
        DECLARE_TEST(Aarch64MinGW, SJLJTest),
        DECLARE_TEST(Aarch64MinGW, StructTest),
        DECLARE_TEST(Aarch64MinGW, TestVaList),
        DECLARE_TEST(Aarch64MinGW, TestSPrintf),
        DECLARE_TEST(Aarch64MinGW, TestVaArgPack)
    };

    return gtest_like_c_run_tests(tests, sizeof(tests) / sizeof(tests[0]));
}
