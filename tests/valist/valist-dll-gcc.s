	.arch armv8-a
;# GNU C17 (GCC) version 15.0.0 20241016 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed: -march=armv8-a -mtune=cortex-a53 -O0
	.text
	.align	2
	.global	use_va_list
	.def	use_va_list;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list
use_va_list:
	sub	sp, sp, #32	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# valist-dll.c:14:   int a = va_arg (argv, int);
	ldr	x0, [sp]	;# D.4433, argv
	add	x1, x0, 8	;# D.4434, D.4433,
	str	x1, [sp]	;# D.4434, argv
	ldr	w0, [x0]	;# tmp107, MEM[(int *)_7]
	str	w0, [sp, 28]	;# tmp107, a
;# valist-dll.c:15:   int b = va_arg (argv, long);
	ldr	x0, [sp]	;# D.4435, argv
	add	x1, x0, 8	;# D.4436, D.4435,
	str	x1, [sp]	;# D.4436, argv
	ldr	w0, [x0]	;# tmp108, MEM[(long int *)_10]
	str	w0, [sp, 24]	;# tmp108, b
;# valist-dll.c:16:   return a + b;
	ldr	w1, [sp, 28]	;# tmp109, a
	ldr	w0, [sp, 24]	;# tmp110, b
	add	w0, w1, w0	;# _6, tmp109, tmp110
;# valist-dll.c:17: }
	add	sp, sp, 32	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_arg
	.def	use_va_arg;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_arg
use_va_arg:
	sub	sp, sp, #224	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 168]	;#,
	str	x2, [sp, 176]	;#,
	str	x3, [sp, 184]	;#,
	str	x4, [sp, 192]	;#,
	str	x5, [sp, 200]	;#,
	str	x6, [sp, 208]	;#,
	str	x7, [sp, 216]	;#,
	str	q0, [sp, 32]	;#,
	str	q1, [sp, 48]	;#,
	str	q2, [sp, 64]	;#,
	str	q3, [sp, 80]	;#,
	str	q4, [sp, 96]	;#,
	str	q5, [sp, 112]	;#,
	str	q6, [sp, 128]	;#,
	str	q7, [sp, 144]	;#,
;# valist-dll.c:23:   va_start (argv, format);
	add	x0, sp, 224	;# tmp107,,
	sub	x0, x0, #4	;# tmp108, tmp107,
	str	x0, [sp, 16]	;# tmp108, MEM[(void * *)&argv]
;# valist-dll.c:24:   int a = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.4437, argv
	add	x1, x0, 8	;# D.4438, D.4437,
	str	x1, [sp, 16]	;# D.4438, argv
	ldr	w0, [x0]	;# tmp109, MEM[(int *)_10]
	str	w0, [sp, 28]	;# tmp109, a
;# valist-dll.c:25:   int b = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.4439, argv
	add	x1, x0, 8	;# D.4440, D.4439,
	str	x1, [sp, 16]	;# D.4440, argv
	ldr	w0, [x0]	;# tmp110, MEM[(long int *)_13]
	str	w0, [sp, 24]	;# tmp110, b
;# valist-dll.c:27:   return a + b;
	ldr	w1, [sp, 28]	;# tmp111, a
	ldr	w0, [sp, 24]	;# tmp112, b
	add	w0, w1, w0	;# _8, tmp111, tmp112
;# valist-dll.c:28: }
	add	sp, sp, 224	;#,,
	ret	
	.seh_endproc
