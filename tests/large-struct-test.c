/*
   Tests relocation and data in a large (>1MB) struct
*/

#include "gtest_like_c.h"

struct LargeStruct {
  unsigned char member1[1<<20];
  unsigned char member2;
  unsigned char member3;
  unsigned char member4;
};

static struct LargeStruct large_struct;

void fn1(char *test) {
    *test = 0xab;
}

int large_struct_relocation()
{
    memset(&large_struct, 0xaa, sizeof(large_struct));
    fn1(&large_struct.member2);
    large_struct.member3 = 0xac;

    int success = *(&large_struct.member2 - 1) == 0xaa && large_struct.member2 == 0xab &&
		large_struct.member3 == 0xac && large_struct.member4 == 0xaa;
    return success;
}

TEST(Aarch64MinGW, LargeStructRelocationTest)
{
    ASSERT_TRUE(large_struct_relocation());
}
