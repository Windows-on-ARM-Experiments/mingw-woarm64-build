#include "gtest_like_c.h"

__attribute__((weak)) int weak_fn1(void);
__attribute__((weak)) int weak_fn2(void);
[[gnu::weak]] int weak_fn3(void);
[[gnu::weak]] int weak_fn4(void);

__attribute__((weak)) int weak_v1;
__attribute__((weak)) int weak_v2;
[[gnu::weak]] int weak_v3;
[[gnu::weak]] int weak_v4;

int weak_references()
{
  if (weak_fn1 || weak_fn3 || weak_fn2() != 10 || weak_fn4() != 11)
    return 0;

  if (weak_v1 || weak_v3 || weak_v2 != 12 || weak_v4 != 13)
    return 0;

  return 1;
}

TEST(Aarch64MinGW, WeakReferencesTest)
{
    ASSERT_TRUE(weak_references());
}
