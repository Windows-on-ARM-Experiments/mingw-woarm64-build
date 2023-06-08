#define UNICODE 1
#define _UNICODE 1

#include <windows.h>
#include <stdio.h>
#include <dbghelp.h>

#pragma comment(lib, "dbghelp.lib")

// build with
// ~/cross/bin/aarch64-w64-mingw32-gcc test-pdata.c -ldbghelp -o test-pdata.exe
//
// View pdata
// ~/cross/bin/aarch64-w64-mingw32-objdump -s -j .pdata test-pdata.exe

#define STACK_MAX 16
#define SYMBOL_MAXLEN 256

static void print_symbol(HANDLE hp, DWORD64 offset)
{
	IMAGEHLP_MODULEW64 module;
	memset(&module, 0, sizeof(module));
	module.SizeOfStruct = sizeof(module);
	SymGetModuleInfoW64(hp, offset, &module);

	if (wcslen(module.ModuleName) > 0)
	{
		//wprintf(L"%-8s", module.ModuleName);
		wprintf(module.ModuleName);
	}

	BYTE buffer[sizeof(IMAGEHLP_SYMBOL64) + SYMBOL_MAXLEN];
	memset(buffer, 0, sizeof(buffer));

	const char* symbolName = "";
	DWORD64 dwDisplacement = 0;
	IMAGEHLP_SYMBOL64* p = (IMAGEHLP_SYMBOL64*)buffer;
	p->SizeOfStruct = sizeof(IMAGEHLP_SYMBOL64);
	p->MaxNameLength = SYMBOL_MAXLEN;

	if (SymGetSymFromAddr64(hp, offset, &dwDisplacement, p))
	{
		printf(" %s+0x%.04llX", p->Name, dwDisplacement);
	}
	else
	{
		DWORD64 base;
		UNWIND_HISTORY_TABLE history;
		PRUNTIME_FUNCTION func = RtlLookupFunctionEntry(offset, &base, &history);

		if (func)
		{
			printf(" %llX", (DWORD64)func);
		}
	}
}


static void dump_xdata(PULONG Xdata)
{
	ULONG Size = 0;
	ULONG EpilogScopes = 0;
	ULONG UnwindWords = 0;


	if ((Xdata[0] >> 22) != 0) {
		Size = 4;
		EpilogScopes = (Xdata[0] >> 22) & 0x1f;
		UnwindWords = (Xdata[0] >> 27) & 0x1f;
	}
	else {
		Size = 8;
		EpilogScopes = Xdata[1] & 0xffff;
		UnwindWords = (Xdata[1] >> 16) & 0xff;
	}

	if (!(Xdata[0] & (1 << 21))) {
		Size += 4 * EpilogScopes;		
	}

	wprintf(L"    epilog scopes = %d\n", EpilogScopes);
	wprintf(L"    unwind words = %d\n", UnwindWords);

	Size += 4 * UnwindWords;

	if (Xdata[0] & (1 << 20)) {
		ULONG exception_rva = Xdata[Size / 4];
		wprintf(L"    exception rva = %x\n", exception_rva);
		Size += 4;  // Exception handler RVA
	}

	wprintf(L"    size = %d\n", Size);
}

void walk_stack_rtl()
{
	CONTEXT ctx;
	memset(&ctx, 0, sizeof(CONTEXT));
	ctx.ContextFlags = CONTEXT_ALL;
	RtlCaptureContext(&ctx);

	HANDLE hp = GetCurrentProcess();
	HANDLE ht = GetCurrentThread();
	BOOL sym_initialized = SymInitialize(hp, NULL, TRUE);
	printf("walk_stack\n");

	UNWIND_HISTORY_TABLE ms_history;
	DISPATCHER_CONTEXT disp_context;
	ULONG64 ip;

	disp_context.ContextRecord = &ctx;
	disp_context.HistoryTable = &ms_history;

	for (int i = 0; i < STACK_MAX; i++)
	{
#ifdef _M_AMD64
		ip = ctx.Rip;
#elif defined(_M_ARM64)
		ip = ctx.Pc;
#endif

		wprintf(L" %2d: 0x%.08llX  ", i, ip);

		if (sym_initialized)
		{
			print_symbol(hp, ip);
		}

		printf("\n");

		disp_context.ControlPc = ip;
		disp_context.FunctionEntry = RtlLookupFunctionEntry(ip, &disp_context.ImageBase, &ms_history);

		if (!disp_context.FunctionEntry)
			return;

		disp_context.LanguageHandler = RtlVirtualUnwind(0, disp_context.ImageBase, ip,
			disp_context.FunctionEntry, &ctx,
			&disp_context.HandlerData,
			&disp_context.EstablisherFrame, NULL);

		if (ip == 0)
			return;
	}

	if (sym_initialized)
		SymCleanup(hp);
}



void list_pdata()
{
	printf("list_pdata  sizeof(IMAGE_RUNTIME_FUNCTION_ENTRY) = %d\n", sizeof(IMAGE_RUNTIME_FUNCTION_ENTRY));

#ifdef _M_AMD64
	printf("_M_AMD64\n");
#elif defined(_M_ARM64)
	printf("_M_ARM64\n");
#endif	

	PVOID base = GetModuleHandle(NULL);
	HANDLE hp = GetCurrentProcess();
	HANDLE ht = GetCurrentThread();
	BOOL sym_initialized = SymInitialize(hp, NULL, TRUE);

	IMAGEHLP_MODULEW64 module;
	memset(&module, 0, sizeof(module));
	module.SizeOfStruct = sizeof(module);
	SymGetModuleInfoW64(hp, (DWORD64)base, &module);
	printf("SymType = %d\n", module.SymType);
	printf("\n");


	PIMAGE_NT_HEADERS image = ImageNtHeader(base);

	//CONTEXT ctx;
	//memset(&ctx, 0, sizeof(CONTEXT));
	//ctx.ContextFlags = CONTEXT_ALL;
	//RtlCaptureContext(&ctx);

	//
	//PIMAGE_NT_HEADERS image = (PIMAGE_NT_HEADERS)RtlPcToFileHeader((PVOID)ctx.Rip, &base);

	if (image)
	{
		//ULONG exception_size;
		//IMAGE_RUNTIME_FUNCTION_ENTRY* funcs = (IMAGE_RUNTIME_FUNCTION_ENTRY*)
		//	ImageDirectoryEntryToData(base, TRUE,
		//		IMAGE_DIRECTORY_ENTRY_EXCEPTION, &exception_size);


		PIMAGE_OPTIONAL_HEADER64 optional_header = &image->OptionalHeader;
		if (optional_header->Magic != IMAGE_NT_OPTIONAL_HDR64_MAGIC) {
			return;
		}

		DWORD exception_rva =
			optional_header->DataDirectory[IMAGE_DIRECTORY_ENTRY_EXCEPTION]
			.VirtualAddress;

		DWORD exception_size =
			optional_header->DataDirectory[IMAGE_DIRECTORY_ENTRY_EXCEPTION].Size;

		IMAGE_RUNTIME_FUNCTION_ENTRY* funcs = (IMAGE_RUNTIME_FUNCTION_ENTRY*)(module.BaseOfImage + exception_rva);

		//auto funcs = (PIMAGE_RUNTIME_FUNCTION_ENTRY)ImageRvaToVa(image, h, exception_rva, NULL);
		////auto funcs = (PIMAGE_RUNTIME_FUNCTION_ENTRY)RvaToVa(exception_rva);
		//if (!funcs) {
		//	return;
		//}

		DWORD count = exception_size / sizeof(IMAGE_RUNTIME_FUNCTION_ENTRY);

		for (DWORD i = 0; i < count; i++)
		{
			IMAGE_RUNTIME_FUNCTION_ENTRY entry = funcs[i];
			//PVOID va = ImageRvaToVa(image, base, entry.BeginAddress, NULL);
			PVOID va = (PVOID)(module.BaseOfImage + entry.BeginAddress);

			wprintf(L" %2d: %.08X:%.08X -- %.08llX ", i, entry.BeginAddress, entry.UnwindData, (ULONG64)va);

			if (sym_initialized)
			{
				print_symbol(hp, (DWORD64)va);
			}

			printf("\n");

			if ((entry.UnwindData & 0x03) == 0)
			{
				PVOID va = (PVOID)(module.BaseOfImage + entry.UnwindData);
				dump_xdata(va);
			}
		}
	}

	printf("\n");

	if (sym_initialized)
		SymCleanup(hp);
}

void level4(void)
{
	list_pdata();
	walk_stack_rtl();
}
void level3(void) { level4(); }
void level2(void) { level3(); }
void level1(void) { level2(); }


int main(void)
{
	level1();
	return 0;
}
