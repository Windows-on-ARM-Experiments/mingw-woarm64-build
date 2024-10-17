#include "gtest_like_c.h"

#include <stdbool.h>

bool static_construtor();

TEST(Aarch64MinGW, StaticConstructorTest)
{
    ASSERT_TRUE(static_construtor());
}
