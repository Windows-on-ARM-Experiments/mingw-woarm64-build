#include "gtest_like_c.h"

jmp_buf gtest_jmp;

int gtest_like_c_run_tests(const struct Test* tests, size_t num_tests, const char* gtest_filter) {
    int passed_tests = 0;
    int skipped_tests = 0;
    int filtered_tests = 0;

    for (int i = 0; i < num_tests; i++) {

        char full_test_name[256];
        strncpy(full_test_name, tests[i].group_name, sizeof(full_test_name) - 1);
        strncat(full_test_name, ".", sizeof(full_test_name) - 1);
        strncat(full_test_name, tests[i].test_name, sizeof(full_test_name) - 1);

        if (gtest_filter && strncmp(gtest_filter, full_test_name, strlen(gtest_filter))) {
            ++filtered_tests;
            continue;
        }

        switch (setjmp(gtest_jmp))
        {
        case TEST_PASSED:
            printf("[ RUN      ] %s\n", full_test_name);
            tests[i].fn_test();
            printf("[       OK ] %s\n", full_test_name);
            ++passed_tests;
            break;
        case TEST_FAILED:
            printf("[   FAILED ] %s\n", full_test_name);
            break;
        case TEST_SKIPPED:
            printf("[  SKIPPED ] %s\n", full_test_name);
            ++skipped_tests;
            break;
        }
    }

    num_tests -= filtered_tests;
    printf("[  PASSED  ] %d tests\n", passed_tests);
    printf("[  SKIPPED ] %d tests\n", skipped_tests);
    printf("[   FAILED ] %d tests\n", num_tests - passed_tests - skipped_tests);

    return (passed_tests + skipped_tests) != num_tests;
}
