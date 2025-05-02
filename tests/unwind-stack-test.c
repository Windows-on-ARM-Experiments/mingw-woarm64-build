#include "gtest_like_c.h"


#include <windows.h>

#define STACK_MAX 150
void* stack[STACK_MAX];
int stack_size = 0;

int walk_stack_rtl()
{
    CONTEXT ctx;
    memset(&ctx, 0, sizeof(CONTEXT));
    ctx.ContextFlags = CONTEXT_ALL;
    RtlCaptureContext(&ctx);

    UNWIND_HISTORY_TABLE ms_history;
    DISPATCHER_CONTEXT disp_context;
    ULONG64 ip;

    disp_context.ContextRecord = &ctx;
    disp_context.HistoryTable = &ms_history;

    int i;

    for (i = 0; i < STACK_MAX; i++)
    {
        ip = ctx.Pc;
        stack[i] = (void*) ip;
        disp_context.ControlPc = ip;
        disp_context.FunctionEntry = RtlLookupFunctionEntry(ip, &disp_context.ImageBase, &ms_history);

        if (!disp_context.FunctionEntry)
            return i;

        disp_context.LanguageHandler = RtlVirtualUnwind(0, disp_context.ImageBase, ip,
                                                        disp_context.FunctionEntry, &ctx,
                                                        &disp_context.HandlerData,
                                                        &disp_context.EstablisherFrame, NULL);

       if (ip == 0)
            return i;
    }

    return i;
}

void fn(int level) {
    if (level == 103) {
        int stack_size = walk_stack_rtl();
        ASSERT_TRUE(stack_size > 105);

        int fn_call_count = 0;
        for (int i = 0; i < stack_size; i++) {
            if (stack[i] == stack[2])
                ++fn_call_count;
        }

        ASSERT_EQ(fn_call_count, 102);

        return;
    }

    return fn(level + 1);
}

void unwind_stack_test()
{
    fn(1);
}

TEST(Aarch64MinGW, UnwindStackTest)
{
    unwind_stack_test();
}

