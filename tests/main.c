#include "gtest_like_c.h"

#include <getopt.h>

TEST(Aarch64MinGW, BigDataTest);
TEST(Aarch64MinGW, CHKSTKTest);
TEST(Aarch64MinGW, DllTest);
TEST(Aarch64MinGW, LargeStructRelocationTest);
TEST(Aarch64MinGW, MathTest);
TEST(Aarch64MinGW, NestedFunction);
TEST(Aarch64MinGW, OmpTest);
TEST(Aarch64MinGW, PrintfDoubleTest);
TEST(Aarch64MinGW, TestUnwindStack);
TEST(Aarch64MinGW, SJLJTest);
TEST(Aarch64MinGW, SscanfDoubleTest);
TEST(Aarch64MinGW, StaticFunctionTest);
TEST(Aarch64MinGW, StructTest);
TEST(Aarch64MinGW, TestVaList);
TEST(Aarch64MinGW, TestSPrintf);
TEST(Aarch64MinGW, TestVaArgPack);
TEST(Aarch64MinGW, WeakReferencesTest);

int main(int argc, char **argv) {

    const char *gtest_filter = NULL;
    int opt;

    struct option long_options[] = {
        {"gtest_filter", required_argument, NULL, 'f'},
        {NULL, 0, NULL, 0}
    };

    while ((opt = getopt_long(argc, argv, "f:", long_options, NULL)) != -1) {
        switch (opt)
        {
        case 'f':
            gtest_filter = optarg;
            break;
        default:
            fprintf(stderr, "Usage: %s [--gtest_filter=TEST_NAME]\n", argv[0]);
            return 1;
        }
    }

    struct Test tests[] = {
        DECLARE_TEST(Aarch64MinGW, BigDataTest),
        DECLARE_TEST(Aarch64MinGW, CHKSTKTest),
        DECLARE_TEST(Aarch64MinGW, DllTest),
        DECLARE_TEST(Aarch64MinGW, LargeStructRelocationTest),
        DECLARE_TEST(Aarch64MinGW, MathTest),
        DECLARE_TEST(Aarch64MinGW, NestedFunction),
        DECLARE_TEST(Aarch64MinGW, OmpTest),
        DECLARE_TEST(Aarch64MinGW, PrintfDoubleTest),
        DECLARE_TEST(Aarch64MinGW, TestUnwindStack),
        DECLARE_TEST(Aarch64MinGW, SJLJTest),
        DECLARE_TEST(Aarch64MinGW, SscanfDoubleTest),
        DECLARE_TEST(Aarch64MinGW, StaticFunctionTest),
        DECLARE_TEST(Aarch64MinGW, StructTest),
        DECLARE_TEST(Aarch64MinGW, TestVaList),
        DECLARE_TEST(Aarch64MinGW, TestSPrintf),
        DECLARE_TEST(Aarch64MinGW, TestVaArgPack),
        DECLARE_TEST(Aarch64MinGW, WeakReferencesTest)
    };

    return gtest_like_c_run_tests(tests, sizeof(tests) / sizeof(tests[0]), gtest_filter);
}
