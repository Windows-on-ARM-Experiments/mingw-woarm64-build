#include "gtest_like_c.h"

#define UNICODE 1
#define _UNICODE 1

#include <windows.h>

#define STACK_MAX 100

int walk_stack_rtl()
{
    CONTEXT ctx;
    memset(&ctx, 0, sizeof(CONTEXT));
    ctx.ContextFlags = CONTEXT_ALL;
    RtlCaptureContext(&ctx);

    HANDLE hp = GetCurrentProcess();
    HANDLE ht = GetCurrentThread();

    UNWIND_HISTORY_TABLE ms_history;
    DISPATCHER_CONTEXT disp_context;
    ULONG64 ip;

    disp_context.ContextRecord = &ctx;
    disp_context.HistoryTable = &ms_history;

    int i;

    for (i = 0; i < STACK_MAX; i++)
    {
#ifdef _M_AMD64
        ip = ctx.Rip;
#elif defined(_M_ARM64)
        ip = ctx.Pc;
#endif

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

int level4(void)
{
    return walk_stack_rtl();
}
int level3(void) { level4(); }
int level2(void) { level3(); }
int level1(void) { level2(); }

int count_stack_frames()
{
    return level1();
}

TEST(Aarch64MinGW, TestUnwindStack)
{
    GTEST_SKIP();
    
    ASSERT_EQ(count_stack_frames(), 22);
}

