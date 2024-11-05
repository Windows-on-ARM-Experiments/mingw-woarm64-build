	.arch armv8-a
;# GNU C17 (GCC) version 15.0.0 20241105 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
;# options passed: -march=armv8-a -mtune=cortex-a53 -O0
	.text
	.align	2
	.global	use_va_list
	.def	use_va_list;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list
use_va_list:
	str	x19, [sp, -48]!	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	mov	x19, x1	;# tmp123,
;# valist-dll.c:14:   int a = va_arg (argv, int);
	ldr	w1, [x19, 24]	;# D.4441, argv.__gr_offs
	ldr	x0, [x19]	;# iftmp.0, argv.__stack
	cmp	w1, 0	;# D.4441,
	blt	.L2		;#,
	add	x1, x0, 11	;# D.4446, iftmp.0,
	and	x1, x1, -8	;# D.4447, D.4446,
	str	x1, [x19]	;# D.4447, argv.__stack
	b	.L3		;#
.L2:
	add	w2, w1, 8	;# D.4449, D.4441,
	str	w2, [x19, 24]	;# D.4449, argv.__gr_offs
	ldr	w2, [x19, 24]	;# D.4450, argv.__gr_offs
	cmp	w2, 0	;# D.4450,
	ble	.L4		;#,
	add	x1, x0, 11	;# D.4453, iftmp.0,
	and	x1, x1, -8	;# D.4454, D.4453,
	str	x1, [x19]	;# D.4454, argv.__stack
	b	.L3		;#
.L4:
	ldr	x2, [x19, 8]	;# D.4456, argv.__gr_top
	sxtw	x0, w1	;# D.4457, D.4441
	add	x0, x2, x0	;# iftmp.0, D.4456, D.4457
.L3:
	ldr	w0, [x0]	;# tmp124, *iftmp.0_9
	str	w0, [sp, 44]	;# tmp124, a
;# valist-dll.c:15:   int b = va_arg (argv, long);
	ldr	w1, [x19, 24]	;# D.4458, argv.__gr_offs
	ldr	x0, [x19]	;# iftmp.1, argv.__stack
	cmp	w1, 0	;# D.4458,
	blt	.L5		;#,
	add	x1, x0, 11	;# D.4463, iftmp.1,
	and	x1, x1, -8	;# D.4464, D.4463,
	str	x1, [x19]	;# D.4464, argv.__stack
	b	.L6		;#
.L5:
	add	w2, w1, 8	;# D.4466, D.4458,
	str	w2, [x19, 24]	;# D.4466, argv.__gr_offs
	ldr	w2, [x19, 24]	;# D.4467, argv.__gr_offs
	cmp	w2, 0	;# D.4467,
	ble	.L7		;#,
	add	x1, x0, 11	;# D.4470, iftmp.1,
	and	x1, x1, -8	;# D.4471, D.4470,
	str	x1, [x19]	;# D.4471, argv.__stack
	b	.L6		;#
.L7:
	ldr	x2, [x19, 8]	;# D.4473, argv.__gr_top
	sxtw	x0, w1	;# D.4474, D.4458
	add	x0, x2, x0	;# iftmp.1, D.4473, D.4474
.L6:
	ldr	w0, [x0]	;# tmp125, *iftmp.1_10
	str	w0, [sp, 40]	;# tmp125, b
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
	ldr	w1, [sp, 48]	;# D.4475, argv.__gr_offs
	ldr	x0, [sp, 24]	;# iftmp.2, argv.__stack
	cmp	w1, 0	;# D.4475,
	blt	.L10		;#,
	add	x1, x0, 11	;# D.4480, iftmp.2,
	and	x1, x1, -8	;# D.4481, D.4480,
	str	x1, [sp, 24]	;# D.4481, argv.__stack
	b	.L11		;#
.L10:
	add	w2, w1, 8	;# D.4483, D.4475,
	str	w2, [sp, 48]	;# D.4483, argv.__gr_offs
	ldr	w2, [sp, 48]	;# D.4484, argv.__gr_offs
	cmp	w2, 0	;# D.4484,
	ble	.L12		;#,
	add	x1, x0, 11	;# D.4487, iftmp.2,
	and	x1, x1, -8	;# D.4488, D.4487,
	str	x1, [sp, 24]	;# D.4488, argv.__stack
	b	.L11		;#
.L12:
	ldr	x2, [sp, 32]	;# D.4490, argv.__gr_top
	sxtw	x0, w1	;# D.4491, D.4475
	add	x0, x2, x0	;# iftmp.2, D.4490, D.4491
.L11:
	ldr	w0, [x0]	;# tmp127, *iftmp.2_12
	str	w0, [sp, 60]	;# tmp127, a
;# valist-dll.c:25:   int b = va_arg (argv, long);
	ldr	w1, [sp, 48]	;# D.4492, argv.__gr_offs
	ldr	x0, [sp, 24]	;# iftmp.3, argv.__stack
	cmp	w1, 0	;# D.4492,
	blt	.L13		;#,
	add	x1, x0, 11	;# D.4497, iftmp.3,
	and	x1, x1, -8	;# D.4498, D.4497,
	str	x1, [sp, 24]	;# D.4498, argv.__stack
	b	.L14		;#
.L13:
	add	w2, w1, 8	;# D.4500, D.4492,
	str	w2, [sp, 48]	;# D.4500, argv.__gr_offs
	ldr	w2, [sp, 48]	;# D.4501, argv.__gr_offs
	cmp	w2, 0	;# D.4501,
	ble	.L15		;#,
	add	x1, x0, 11	;# D.4504, iftmp.3,
	and	x1, x1, -8	;# D.4505, D.4504,
	str	x1, [sp, 24]	;# D.4505, argv.__stack
	b	.L14		;#
.L15:
	ldr	x2, [sp, 32]	;# D.4507, argv.__gr_top
	sxtw	x0, w1	;# D.4508, D.4492
	add	x0, x2, x0	;# iftmp.3, D.4507, D.4508
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
