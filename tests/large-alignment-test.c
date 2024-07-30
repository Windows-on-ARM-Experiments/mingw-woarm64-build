/*
   Tests relocation and data in a large (>1MB) struct
*/

#include "gtest_like_c.h"

float __attribute__((aligned (32))) large_aligned_array[3];

int large_alignment()
{
  large_aligned_array[0] = 1;
  large_aligned_array[0] = 1;
  printf("%d\n", sizeof(large_aligned_array));
  return 0;
}

TEST(Aarch64MinGW, LargeAlignmentTest)
{
    ASSERT_TRUE(large_alignment());
}
