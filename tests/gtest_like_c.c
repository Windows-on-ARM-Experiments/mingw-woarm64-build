#include "gtest_like_c.h"

jmp_buf gtest_jmp;

int gtest_like_c_run_tests(const struct Test* tests, size_t num_tests) {
    int passed_tests = 0;
    int skipped_tests = 0;

    for (int i = 0; i < num_tests; i++) {
        switch (setjmp(gtest_jmp))
        {
        case TEST_PASSED:
            printf("Test %s %s\n", tests[i].group_name, tests[i].test_name);
            tests[i].fn_test();
            printf("passed\n");
            ++passed_tests;
            break;
        case TEST_FAILED:
            printf("failed\n");
            break;
        case TEST_SKIPPED:
            printf("skipped\n");
            ++skipped_tests;
            break;
        }
    }

    printf("Tests passed: %d/%d, %d (skipped)\n", passed_tests, num_tests, skipped_tests);

    return (passed_tests + skipped_tests) != num_tests;
}
