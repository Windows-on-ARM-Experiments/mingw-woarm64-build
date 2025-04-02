	.arch armv8-a
;# GNU C23 (GCC) version 15.0.1 20250131 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed: -march=armv8-a -mtune=cortex-a53 -O0
	.text
	.align	2
	.global	use_va_args_few_hfa_4_doubles
	.def	use_va_args_few_hfa_4_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_hfa_4_doubles
use_va_args_few_hfa_4_doubles:
	sub	sp, sp, #176	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 120]	;#,
	str	x2, [sp, 128]	;#,
	str	x3, [sp, 136]	;#,
	str	x4, [sp, 144]	;#,
	str	x5, [sp, 152]	;#,
	str	x6, [sp, 160]	;#,
	str	x7, [sp, 168]	;#,
;# varargs-msvc-issue-dll.c:23:   va_start (argv, format);
	add	x0, sp, 176	;# tmp108,,
	sub	x0, x0, #56	;# tmp109, tmp108,
	str	x0, [sp, 24]	;# tmp109, MEM[(char * *)&argv]
;# varargs-msvc-issue-dll.c:24:   double a = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp, 24]	;# D.4477, argv
	add	x0, x1, 32	;# D.4478, D.4477,
	str	x0, [sp, 24]	;# D.4478, argv
	add	x0, sp, 32	;# tmp110,,
	ldr	q30, [x1]	;# tmp112, MEM[(struct hfa_4_doubles *)_11]
	ldr	q31, [x1, 16]	;# tmp113, MEM[(struct hfa_4_doubles *)_11]
	str	q30, [x0]	;# tmp112, D.4471
	str	q31, [x0, 16]	;# tmp113, D.4471
;# varargs-msvc-issue-dll.c:24:   double a = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 32]	;# tmp114, D.4471.a
	str	d31, [sp, 104]	;# tmp114, a
;# varargs-msvc-issue-dll.c:25:   double b = va_arg (argv, struct hfa_4_doubles).b;
	ldr	x1, [sp, 24]	;# D.4479, argv
	add	x0, x1, 32	;# D.4480, D.4479,
	str	x0, [sp, 24]	;# D.4480, argv
	add	x0, sp, 64	;# tmp115,,
	ldr	q30, [x1]	;# tmp117, MEM[(struct hfa_4_doubles *)_15]
	ldr	q31, [x1, 16]	;# tmp118, MEM[(struct hfa_4_doubles *)_15]
	str	q30, [x0]	;# tmp117, D.4472
	str	q31, [x0, 16]	;# tmp118, D.4472
;# varargs-msvc-issue-dll.c:25:   double b = va_arg (argv, struct hfa_4_doubles).b;
	ldr	d31, [sp, 72]	;# tmp119, D.4472.b
	str	d31, [sp, 96]	;# tmp119, b
;# varargs-msvc-issue-dll.c:27:   return a + b;
	ldr	d30, [sp, 104]	;# tmp120, a
	ldr	d31, [sp, 96]	;# tmp121, b
	fadd	d31, d30, d31	;# _1, tmp120, tmp121
	fcvtzs	w0, d31	;# _9, _1
;# varargs-msvc-issue-dll.c:28: }
	add	sp, sp, 176	;#,,
	ret	
	.seh_endproc
