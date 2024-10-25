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
	str	x19, [sp, -48]!	;#,
	.seh_endprologue

	str	x0, [sp, #24]	;# format, format
	str	x1, [sp, #16]	;# args, args

	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	str w8, [sp, 44]	;# a

	ldr	x8, [sp, #16]
	add	x8, x8, #8
	ldr	w8, [x8]
	str w8, [sp, 40]	;# b

;# valist-dll.c:16:   return a + b;
	ldr	w1, [sp, 44]	;# tmp126, a
	ldr	w0, [sp, 40]	;# tmp127, b
	add	w0, w1, w0	;# _6, tmp126, tmp127
;# valist-dll.c:17: }
	ldr	x19, [sp], 48	;#,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_arg
	.def	use_va_arg;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_arg
use_va_arg:
	sub	sp, sp, #256	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 200]	;#,
	str	x2, [sp, 208]	;#,
	str	x3, [sp, 216]	;#,
	str	x4, [sp, 224]	;#,
	str	x5, [sp, 232]	;#,
	str	x6, [sp, 240]	;#,
	str	x7, [sp, 248]	;#,
	str	q0, [sp, 64]	;#,
	str	q1, [sp, 80]	;#,
	str	q2, [sp, 96]	;#,
	str	q3, [sp, 112]	;#,
	str	q4, [sp, 128]	;#,
	str	q5, [sp, 144]	;#,
	str	q6, [sp, 160]	;#,
	str	q7, [sp, 176]	;#,
;# valist-dll.c:23:   va_start (argv, format);
	add	x0, sp, 256	;# tmp133,,
	str	x0, [sp, 24]	;# tmp133, MEM[(struct  *)&argv].__stack
	add	x0, sp, 256	;# tmp134,,
	str	x0, [sp, 32]	;# tmp134, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 192	;# tmp124,,
	str	x0, [sp, 40]	;# tmp124, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	;# tmp125,
	str	w0, [sp, 48]	;# tmp125, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	;# tmp126,
	str	w0, [sp, 52]	;# tmp126, MEM[(struct  *)&argv].__vr_offs
;# valist-dll.c:24:   int a = va_arg (argv, int);
	ldr	w1, [sp, 48]	;# D.4473, argv.__gr_offs
	ldr	x0, [sp, 24]	;# iftmp.2, argv.__stack
	cmp	w1, 0	;# D.4473,
	blt	.L10		;#,
	add	x1, x0, 11	;# D.4478, iftmp.2,
	and	x1, x1, -8	;# D.4479, D.4478,
	str	x1, [sp, 24]	;# D.4479, argv.__stack
	b	.L11		;#
.L10:
	add	w2, w1, 8	;# D.4481, D.4473,
	str	w2, [sp, 48]	;# D.4481, argv.__gr_offs
	ldr	w2, [sp, 48]	;# D.4482, argv.__gr_offs
	cmp	w2, 0	;# D.4482,
	ble	.L12		;#,
	add	x1, x0, 11	;# D.4485, iftmp.2,
	and	x1, x1, -8	;# D.4486, D.4485,
	str	x1, [sp, 24]	;# D.4486, argv.__stack
	b	.L11		;#
.L12:
	ldr	x2, [sp, 32]	;# D.4488, argv.__gr_top
	sxtw	x0, w1	;# D.4489, D.4473
	add	x0, x2, x0	;# iftmp.2, D.4488, D.4489
.L11:
	ldr	w0, [x0]	;# tmp127, *iftmp.2_12
	str	w0, [sp, 60]	;# tmp127, a
;# valist-dll.c:25:   int b = va_arg (argv, long);
	ldr	w1, [sp, 48]	;# D.4490, argv.__gr_offs
	ldr	x0, [sp, 24]	;# iftmp.3, argv.__stack
	cmp	w1, 0	;# D.4490,
	blt	.L13		;#,
	add	x1, x0, 11	;# D.4495, iftmp.3,
	and	x1, x1, -8	;# D.4496, D.4495,
	str	x1, [sp, 24]	;# D.4496, argv.__stack
	b	.L14		;#
.L13:
	add	w2, w1, 8	;# D.4498, D.4490,
	str	w2, [sp, 48]	;# D.4498, argv.__gr_offs
	ldr	w2, [sp, 48]	;# D.4499, argv.__gr_offs
	cmp	w2, 0	;# D.4499,
	ble	.L15		;#,
	add	x1, x0, 11	;# D.4502, iftmp.3,
	and	x1, x1, -8	;# D.4503, D.4502,
	str	x1, [sp, 24]	;# D.4503, argv.__stack
	b	.L14		;#
.L15:
	ldr	x2, [sp, 32]	;# D.4505, argv.__gr_top
	sxtw	x0, w1	;# D.4506, D.4490
	add	x0, x2, x0	;# iftmp.3, D.4505, D.4506
.L14:
	ldr	w0, [x0]	;# tmp128, *iftmp.3_13
	str	w0, [sp, 56]	;# tmp128, b
;# valist-dll.c:27:   return a + b;
	ldr	w1, [sp, 60]	;# tmp129, a
	ldr	w0, [sp, 56]	;# tmp130, b
	add	w0, w1, w0	;# _8, tmp129, tmp130
;# valist-dll.c:28: }
	add	sp, sp, 256	;#,,
	ret	
	.seh_endproc
