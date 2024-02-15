#include "gtest_like_c.h"

#define MIN(a, b) ((a) < (b) ? (a) : (b))

jmp_buf gtest_jmp;

int gtest_like_c_run_tests(const struct Test* tests, size_t num_tests, const char* gtest_filter) {
    int passed_tests = 0;
    int skipped_tests = 0;
    int filtered_tests = 0;

    for (int i = 0; i < num_tests; i++) {

        if (gtest_filter) {
            char full_test_name[256];
            strncpy(full_test_name, tests[i].group_name, sizeof(full_test_name) - 1);
            strncat(full_test_name, ".", sizeof(full_test_name) - 1);
            strncat(full_test_name, tests[i].test_name, sizeof(full_test_name) - 1);

            if (strncmp(gtest_filter, full_test_name, MIN(strlen(gtest_filter), sizeof(full_test_name) - 1))) {
                ++filtered_tests;
                continue;
            }
        }

        switch (setjmp(gtest_jmp))
        {
        case TEST_PASSED:
            printf("[ RUN      ] %s.%s\n", tests[i].group_name, tests[i].test_name);
            tests[i].fn_test();
            printf("[       OK ] %s.%s\n", tests[i].group_name, tests[i].test_name);
            ++passed_tests;
            break;
        case TEST_FAILED:
            printf("[   FAILED ] %s.%s\n", tests[i].group_name, tests[i].test_name);
            break;
        case TEST_SKIPPED:
            printf("[  SKIPPED ] %s.%s\n", tests[i].group_name, tests[i].test_name);
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
