#include "gtest_like_c.h"

#include <cstdio>

constexpr int RESULTS_SIZE = 3;
static bool results[RESULTS_SIZE] = {false, false, false};

class C {
public:
    C(int index) {
        results[index] = true;
    }
};

static C b(0);

namespace N {
    static C d(1);
}

extern "C" {
 
bool static_construtor() {
    static C c(2);

    for (int i = 0; i < RESULTS_SIZE; i++) {
        if (!results[i]) {
           return false;
        }
    }
    return true;
}

TEST(Aarch64MinGW, StaticConstructorTest)
{
    ASSERT_TRUE(static_construtor());
}

}
