	.arch armv8-a
;# GNU C17 (GCC) version 15.0.0 20241016 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed: -march=armv8-a -mtune=cortex-a53 -O0
	.text
	.align	2
	.global	no_arguments
	.def	no_arguments;	.scl	2;	.type	32;	.endef
	.seh_proc	no_arguments
no_arguments:
	sub	sp, sp, #208	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 152]	;#,
	str	x2, [sp, 160]	;#,
	str	x3, [sp, 168]	;#,
	str	x4, [sp, 176]	;#,
	str	x5, [sp, 184]	;#,
	str	x6, [sp, 192]	;#,
	str	x7, [sp, 200]	;#,
	str	q0, [sp, 16]	;#,
	str	q1, [sp, 32]	;#,
	str	q2, [sp, 48]	;#,
	str	q3, [sp, 64]	;#,
	str	q4, [sp, 80]	;#,
	str	q5, [sp, 96]	;#,
	str	q6, [sp, 112]	;#,
	str	q7, [sp, 128]	;#,
;# vararg-dll.c:19: }
	nop	
	add	sp, sp, 208	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	one_int_argument
	.def	one_int_argument;	.scl	2;	.type	32;	.endef
	.seh_proc	one_int_argument
one_int_argument:
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
;# vararg-dll.c:25:   va_start (argv, format);
	add	x0, sp, 256	;# tmp120,,
	str	x0, [sp, 24]	;# tmp120, MEM[(struct  *)&argv].__stack
	add	x0, sp, 256	;# tmp121,,
	str	x0, [sp, 32]	;# tmp121, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 192	;# tmp114,,
	str	x0, [sp, 40]	;# tmp114, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	;# tmp115,
	str	w0, [sp, 48]	;# tmp115, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	;# tmp116,
	str	w0, [sp, 52]	;# tmp116, MEM[(struct  *)&argv].__vr_offs
;# vararg-dll.c:26:   const char *a = va_arg (argv, const char *);
	ldr	w1, [sp, 48]	;# D.4492, argv.__gr_offs
	ldr	x0, [sp, 24]	;# iftmp.0, argv.__stack
	cmp	w1, 0	;# D.4492,
	blt	.L3		;#,
	add	x1, x0, 15	;# D.4497, iftmp.0,
	and	x1, x1, -8	;# D.4498, D.4497,
	str	x1, [sp, 24]	;# D.4498, argv.__stack
	b	.L4		;#
.L3:
	add	w2, w1, 8	;# D.4500, D.4492,
	str	w2, [sp, 48]	;# D.4500, argv.__gr_offs
	ldr	w2, [sp, 48]	;# D.4501, argv.__gr_offs
	cmp	w2, 0	;# D.4501,
	ble	.L5		;#,
	add	x1, x0, 15	;# D.4504, iftmp.0,
	and	x1, x1, -8	;# D.4505, D.4504,
	str	x1, [sp, 24]	;# D.4505, argv.__stack
	b	.L4		;#
.L5:
	ldr	x2, [sp, 32]	;# D.4507, argv.__gr_top
	sxtw	x0, w1	;# D.4508, D.4492
	add	x0, x2, x0	;# iftmp.0, D.4507, D.4508
.L4:
	ldr	x0, [x0]	;# tmp117, *iftmp.0_9
	str	x0, [sp, 56]	;# tmp117, a
;# vararg-dll.c:28:   return a;
	ldr	x0, [sp, 56]	;# _6, a
;# vararg-dll.c:29: }
	add	sp, sp, 256	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	one_string_argument
	.def	one_string_argument;	.scl	2;	.type	32;	.endef
	.seh_proc	one_string_argument
one_string_argument:
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
;# vararg-dll.c:35:   va_start (argv, format);
	add	x0, sp, 256	;# tmp120,,
	str	x0, [sp, 24]	;# tmp120, MEM[(struct  *)&argv].__stack
	add	x0, sp, 256	;# tmp121,,
	str	x0, [sp, 32]	;# tmp121, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 192	;# tmp114,,
	str	x0, [sp, 40]	;# tmp114, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	;# tmp115,
	str	w0, [sp, 48]	;# tmp115, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	;# tmp116,
	str	w0, [sp, 52]	;# tmp116, MEM[(struct  *)&argv].__vr_offs
;# vararg-dll.c:36:   const char *a = va_arg (argv, const char *);
	ldr	w1, [sp, 48]	;# D.4512, argv.__gr_offs
	ldr	x0, [sp, 24]	;# iftmp.1, argv.__stack
	cmp	w1, 0	;# D.4512,
	blt	.L8		;#,
	add	x1, x0, 15	;# D.4517, iftmp.1,
	and	x1, x1, -8	;# D.4518, D.4517,
	str	x1, [sp, 24]	;# D.4518, argv.__stack
	b	.L9		;#
.L8:
	add	w2, w1, 8	;# D.4520, D.4512,
	str	w2, [sp, 48]	;# D.4520, argv.__gr_offs
	ldr	w2, [sp, 48]	;# D.4521, argv.__gr_offs
	cmp	w2, 0	;# D.4521,
	ble	.L10		;#,
	add	x1, x0, 15	;# D.4524, iftmp.1,
	and	x1, x1, -8	;# D.4525, D.4524,
	str	x1, [sp, 24]	;# D.4525, argv.__stack
	b	.L9		;#
.L10:
	ldr	x2, [sp, 32]	;# D.4527, argv.__gr_top
	sxtw	x0, w1	;# D.4528, D.4512
	add	x0, x2, x0	;# iftmp.1, D.4527, D.4528
.L9:
	ldr	x0, [x0]	;# tmp117, *iftmp.1_9
	str	x0, [sp, 56]	;# tmp117, a
;# vararg-dll.c:38:   return a;
	ldr	x0, [sp, 56]	;# _6, a
;# vararg-dll.c:39: }
	add	sp, sp, 256	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	sixteen_int_arguments
	.def	sixteen_int_arguments;	.scl	2;	.type	32;	.endef
	.seh_proc	sixteen_int_arguments
sixteen_int_arguments:
	sub	sp, sp, #304	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 248]	;#,
	str	x2, [sp, 256]	;#,
	str	x3, [sp, 264]	;#,
	str	x4, [sp, 272]	;#,
	str	x5, [sp, 280]	;#,
	str	x6, [sp, 288]	;#,
	str	x7, [sp, 296]	;#,
	str	q0, [sp, 112]	;#,
	str	q1, [sp, 128]	;#,
	str	q2, [sp, 144]	;#,
	str	q3, [sp, 160]	;#,
	str	q4, [sp, 176]	;#,
	str	q5, [sp, 192]	;#,
	str	q6, [sp, 208]	;#,
	str	q7, [sp, 224]	;#,
;# vararg-dll.c:45:   va_start (argv, format);
	add	x0, sp, 304	;# tmp315,,
	str	x0, [sp, 16]	;# tmp315, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	;# tmp316,,
	str	x0, [sp, 24]	;# tmp316, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	;# tmp278,,
	str	x0, [sp, 32]	;# tmp278, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	;# tmp279,
	str	w0, [sp, 40]	;# tmp279, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	;# tmp280,
	str	w0, [sp, 44]	;# tmp280, MEM[(struct  *)&argv].__vr_offs
;# vararg-dll.c:46:   int a = va_arg (argv, int);
	ldr	w1, [sp, 40]	;# D.4532, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.2, argv.__stack
	cmp	w1, 0	;# D.4532,
	blt	.L13		;#,
	add	x1, x0, 11	;# D.4537, iftmp.2,
	and	x1, x1, -8	;# D.4538, D.4537,
	str	x1, [sp, 16]	;# D.4538, argv.__stack
	b	.L14		;#
.L13:
	add	w2, w1, 8	;# D.4540, D.4532,
	str	w2, [sp, 40]	;# D.4540, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4541, argv.__gr_offs
	cmp	w2, 0	;# D.4541,
	ble	.L15		;#,
	add	x1, x0, 11	;# D.4544, iftmp.2,
	and	x1, x1, -8	;# D.4545, D.4544,
	str	x1, [sp, 16]	;# D.4545, argv.__stack
	b	.L14		;#
.L15:
	ldr	x2, [sp, 24]	;# D.4547, argv.__gr_top
	sxtw	x0, w1	;# D.4548, D.4532
	add	x0, x2, x0	;# iftmp.2, D.4547, D.4548
.L14:
	ldr	w0, [x0]	;# tmp281, *iftmp.2_68
	str	w0, [sp, 108]	;# tmp281, a
;# vararg-dll.c:47:   int b = va_arg (argv, int);
	ldr	w1, [sp, 40]	;# D.4549, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.3, argv.__stack
	cmp	w1, 0	;# D.4549,
	blt	.L16		;#,
	add	x1, x0, 11	;# D.4554, iftmp.3,
	and	x1, x1, -8	;# D.4555, D.4554,
	str	x1, [sp, 16]	;# D.4555, argv.__stack
	b	.L17		;#
.L16:
	add	w2, w1, 8	;# D.4557, D.4549,
	str	w2, [sp, 40]	;# D.4557, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4558, argv.__gr_offs
	cmp	w2, 0	;# D.4558,
	ble	.L18		;#,
	add	x1, x0, 11	;# D.4561, iftmp.3,
	and	x1, x1, -8	;# D.4562, D.4561,
	str	x1, [sp, 16]	;# D.4562, argv.__stack
	b	.L17		;#
.L18:
	ldr	x2, [sp, 24]	;# D.4564, argv.__gr_top
	sxtw	x0, w1	;# D.4565, D.4549
	add	x0, x2, x0	;# iftmp.3, D.4564, D.4565
.L17:
	ldr	w0, [x0]	;# tmp282, *iftmp.3_69
	str	w0, [sp, 104]	;# tmp282, b
;# vararg-dll.c:48:   int c = va_arg (argv, int);
	ldr	w1, [sp, 40]	;# D.4566, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.4, argv.__stack
	cmp	w1, 0	;# D.4566,
	blt	.L19		;#,
	add	x1, x0, 11	;# D.4571, iftmp.4,
	and	x1, x1, -8	;# D.4572, D.4571,
	str	x1, [sp, 16]	;# D.4572, argv.__stack
	b	.L20		;#
.L19:
	add	w2, w1, 8	;# D.4574, D.4566,
	str	w2, [sp, 40]	;# D.4574, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4575, argv.__gr_offs
	cmp	w2, 0	;# D.4575,
	ble	.L21		;#,
	add	x1, x0, 11	;# D.4578, iftmp.4,
	and	x1, x1, -8	;# D.4579, D.4578,
	str	x1, [sp, 16]	;# D.4579, argv.__stack
	b	.L20		;#
.L21:
	ldr	x2, [sp, 24]	;# D.4581, argv.__gr_top
	sxtw	x0, w1	;# D.4582, D.4566
	add	x0, x2, x0	;# iftmp.4, D.4581, D.4582
.L20:
	ldr	w0, [x0]	;# tmp283, *iftmp.4_70
	str	w0, [sp, 100]	;# tmp283, c
;# vararg-dll.c:49:   int d = va_arg (argv, int);
	ldr	w1, [sp, 40]	;# D.4583, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.5, argv.__stack
	cmp	w1, 0	;# D.4583,
	blt	.L22		;#,
	add	x1, x0, 11	;# D.4588, iftmp.5,
	and	x1, x1, -8	;# D.4589, D.4588,
	str	x1, [sp, 16]	;# D.4589, argv.__stack
	b	.L23		;#
.L22:
	add	w2, w1, 8	;# D.4591, D.4583,
	str	w2, [sp, 40]	;# D.4591, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4592, argv.__gr_offs
	cmp	w2, 0	;# D.4592,
	ble	.L24		;#,
	add	x1, x0, 11	;# D.4595, iftmp.5,
	and	x1, x1, -8	;# D.4596, D.4595,
	str	x1, [sp, 16]	;# D.4596, argv.__stack
	b	.L23		;#
.L24:
	ldr	x2, [sp, 24]	;# D.4598, argv.__gr_top
	sxtw	x0, w1	;# D.4599, D.4583
	add	x0, x2, x0	;# iftmp.5, D.4598, D.4599
.L23:
	ldr	w0, [x0]	;# tmp284, *iftmp.5_71
	str	w0, [sp, 96]	;# tmp284, d
;# vararg-dll.c:50:   int e = va_arg (argv, int);
	ldr	w1, [sp, 40]	;# D.4600, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.6, argv.__stack
	cmp	w1, 0	;# D.4600,
	blt	.L25		;#,
	add	x1, x0, 11	;# D.4605, iftmp.6,
	and	x1, x1, -8	;# D.4606, D.4605,
	str	x1, [sp, 16]	;# D.4606, argv.__stack
	b	.L26		;#
.L25:
	add	w2, w1, 8	;# D.4608, D.4600,
	str	w2, [sp, 40]	;# D.4608, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4609, argv.__gr_offs
	cmp	w2, 0	;# D.4609,
	ble	.L27		;#,
	add	x1, x0, 11	;# D.4612, iftmp.6,
	and	x1, x1, -8	;# D.4613, D.4612,
	str	x1, [sp, 16]	;# D.4613, argv.__stack
	b	.L26		;#
.L27:
	ldr	x2, [sp, 24]	;# D.4615, argv.__gr_top
	sxtw	x0, w1	;# D.4616, D.4600
	add	x0, x2, x0	;# iftmp.6, D.4615, D.4616
.L26:
	ldr	w0, [x0]	;# tmp285, *iftmp.6_72
	str	w0, [sp, 92]	;# tmp285, e
;# vararg-dll.c:51:   int f = va_arg (argv, int);
	ldr	w1, [sp, 40]	;# D.4617, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.7, argv.__stack
	cmp	w1, 0	;# D.4617,
	blt	.L28		;#,
	add	x1, x0, 11	;# D.4622, iftmp.7,
	and	x1, x1, -8	;# D.4623, D.4622,
	str	x1, [sp, 16]	;# D.4623, argv.__stack
	b	.L29		;#
.L28:
	add	w2, w1, 8	;# D.4625, D.4617,
	str	w2, [sp, 40]	;# D.4625, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4626, argv.__gr_offs
	cmp	w2, 0	;# D.4626,
	ble	.L30		;#,
	add	x1, x0, 11	;# D.4629, iftmp.7,
	and	x1, x1, -8	;# D.4630, D.4629,
	str	x1, [sp, 16]	;# D.4630, argv.__stack
	b	.L29		;#
.L30:
	ldr	x2, [sp, 24]	;# D.4632, argv.__gr_top
	sxtw	x0, w1	;# D.4633, D.4617
	add	x0, x2, x0	;# iftmp.7, D.4632, D.4633
.L29:
	ldr	w0, [x0]	;# tmp286, *iftmp.7_73
	str	w0, [sp, 88]	;# tmp286, f
;# vararg-dll.c:52:   int g = va_arg (argv, int);
	ldr	w1, [sp, 40]	;# D.4634, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.8, argv.__stack
	cmp	w1, 0	;# D.4634,
	blt	.L31		;#,
	add	x1, x0, 11	;# D.4639, iftmp.8,
	and	x1, x1, -8	;# D.4640, D.4639,
	str	x1, [sp, 16]	;# D.4640, argv.__stack
	b	.L32		;#
.L31:
	add	w2, w1, 8	;# D.4642, D.4634,
	str	w2, [sp, 40]	;# D.4642, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4643, argv.__gr_offs
	cmp	w2, 0	;# D.4643,
	ble	.L33		;#,
	add	x1, x0, 11	;# D.4646, iftmp.8,
	and	x1, x1, -8	;# D.4647, D.4646,
	str	x1, [sp, 16]	;# D.4647, argv.__stack
	b	.L32		;#
.L33:
	ldr	x2, [sp, 24]	;# D.4649, argv.__gr_top
	sxtw	x0, w1	;# D.4650, D.4634
	add	x0, x2, x0	;# iftmp.8, D.4649, D.4650
.L32:
	ldr	w0, [x0]	;# tmp287, *iftmp.8_74
	str	w0, [sp, 84]	;# tmp287, g
;# vararg-dll.c:53:   int h = va_arg (argv, int);
	ldr	w1, [sp, 40]	;# D.4651, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.9, argv.__stack
	cmp	w1, 0	;# D.4651,
	blt	.L34		;#,
	add	x1, x0, 11	;# D.4656, iftmp.9,
	and	x1, x1, -8	;# D.4657, D.4656,
	str	x1, [sp, 16]	;# D.4657, argv.__stack
	b	.L35		;#
.L34:
	add	w2, w1, 8	;# D.4659, D.4651,
	str	w2, [sp, 40]	;# D.4659, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4660, argv.__gr_offs
	cmp	w2, 0	;# D.4660,
	ble	.L36		;#,
	add	x1, x0, 11	;# D.4663, iftmp.9,
	and	x1, x1, -8	;# D.4664, D.4663,
	str	x1, [sp, 16]	;# D.4664, argv.__stack
	b	.L35		;#
.L36:
	ldr	x2, [sp, 24]	;# D.4666, argv.__gr_top
	sxtw	x0, w1	;# D.4667, D.4651
	add	x0, x2, x0	;# iftmp.9, D.4666, D.4667
.L35:
	ldr	w0, [x0]	;# tmp288, *iftmp.9_75
	str	w0, [sp, 80]	;# tmp288, h
;# vararg-dll.c:54:   int i = va_arg (argv, int);
	ldr	w1, [sp, 40]	;# D.4668, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.10, argv.__stack
	cmp	w1, 0	;# D.4668,
	blt	.L37		;#,
	add	x1, x0, 11	;# D.4673, iftmp.10,
	and	x1, x1, -8	;# D.4674, D.4673,
	str	x1, [sp, 16]	;# D.4674, argv.__stack
	b	.L38		;#
.L37:
	add	w2, w1, 8	;# D.4676, D.4668,
	str	w2, [sp, 40]	;# D.4676, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4677, argv.__gr_offs
	cmp	w2, 0	;# D.4677,
	ble	.L39		;#,
	add	x1, x0, 11	;# D.4680, iftmp.10,
	and	x1, x1, -8	;# D.4681, D.4680,
	str	x1, [sp, 16]	;# D.4681, argv.__stack
	b	.L38		;#
.L39:
	ldr	x2, [sp, 24]	;# D.4683, argv.__gr_top
	sxtw	x0, w1	;# D.4684, D.4668
	add	x0, x2, x0	;# iftmp.10, D.4683, D.4684
.L38:
	ldr	w0, [x0]	;# tmp289, *iftmp.10_76
	str	w0, [sp, 76]	;# tmp289, i
;# vararg-dll.c:55:   int j = va_arg (argv, int);
	ldr	w1, [sp, 40]	;# D.4685, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.11, argv.__stack
	cmp	w1, 0	;# D.4685,
	blt	.L40		;#,
	add	x1, x0, 11	;# D.4690, iftmp.11,
	and	x1, x1, -8	;# D.4691, D.4690,
	str	x1, [sp, 16]	;# D.4691, argv.__stack
	b	.L41		;#
.L40:
	add	w2, w1, 8	;# D.4693, D.4685,
	str	w2, [sp, 40]	;# D.4693, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4694, argv.__gr_offs
	cmp	w2, 0	;# D.4694,
	ble	.L42		;#,
	add	x1, x0, 11	;# D.4697, iftmp.11,
	and	x1, x1, -8	;# D.4698, D.4697,
	str	x1, [sp, 16]	;# D.4698, argv.__stack
	b	.L41		;#
.L42:
	ldr	x2, [sp, 24]	;# D.4700, argv.__gr_top
	sxtw	x0, w1	;# D.4701, D.4685
	add	x0, x2, x0	;# iftmp.11, D.4700, D.4701
.L41:
	ldr	w0, [x0]	;# tmp290, *iftmp.11_77
	str	w0, [sp, 72]	;# tmp290, j
;# vararg-dll.c:56:   int k = va_arg (argv, int);
	ldr	w1, [sp, 40]	;# D.4702, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.12, argv.__stack
	cmp	w1, 0	;# D.4702,
	blt	.L43		;#,
	add	x1, x0, 11	;# D.4707, iftmp.12,
	and	x1, x1, -8	;# D.4708, D.4707,
	str	x1, [sp, 16]	;# D.4708, argv.__stack
	b	.L44		;#
.L43:
	add	w2, w1, 8	;# D.4710, D.4702,
	str	w2, [sp, 40]	;# D.4710, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4711, argv.__gr_offs
	cmp	w2, 0	;# D.4711,
	ble	.L45		;#,
	add	x1, x0, 11	;# D.4714, iftmp.12,
	and	x1, x1, -8	;# D.4715, D.4714,
	str	x1, [sp, 16]	;# D.4715, argv.__stack
	b	.L44		;#
.L45:
	ldr	x2, [sp, 24]	;# D.4717, argv.__gr_top
	sxtw	x0, w1	;# D.4718, D.4702
	add	x0, x2, x0	;# iftmp.12, D.4717, D.4718
.L44:
	ldr	w0, [x0]	;# tmp291, *iftmp.12_78
	str	w0, [sp, 68]	;# tmp291, k
;# vararg-dll.c:57:   int l = va_arg (argv, int);
	ldr	w1, [sp, 40]	;# D.4719, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.13, argv.__stack
	cmp	w1, 0	;# D.4719,
	blt	.L46		;#,
	add	x1, x0, 11	;# D.4724, iftmp.13,
	and	x1, x1, -8	;# D.4725, D.4724,
	str	x1, [sp, 16]	;# D.4725, argv.__stack
	b	.L47		;#
.L46:
	add	w2, w1, 8	;# D.4727, D.4719,
	str	w2, [sp, 40]	;# D.4727, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4728, argv.__gr_offs
	cmp	w2, 0	;# D.4728,
	ble	.L48		;#,
	add	x1, x0, 11	;# D.4731, iftmp.13,
	and	x1, x1, -8	;# D.4732, D.4731,
	str	x1, [sp, 16]	;# D.4732, argv.__stack
	b	.L47		;#
.L48:
	ldr	x2, [sp, 24]	;# D.4734, argv.__gr_top
	sxtw	x0, w1	;# D.4735, D.4719
	add	x0, x2, x0	;# iftmp.13, D.4734, D.4735
.L47:
	ldr	w0, [x0]	;# tmp292, *iftmp.13_79
	str	w0, [sp, 64]	;# tmp292, l
;# vararg-dll.c:58:   int m = va_arg (argv, int);
	ldr	w1, [sp, 40]	;# D.4736, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.14, argv.__stack
	cmp	w1, 0	;# D.4736,
	blt	.L49		;#,
	add	x1, x0, 11	;# D.4741, iftmp.14,
	and	x1, x1, -8	;# D.4742, D.4741,
	str	x1, [sp, 16]	;# D.4742, argv.__stack
	b	.L50		;#
.L49:
	add	w2, w1, 8	;# D.4744, D.4736,
	str	w2, [sp, 40]	;# D.4744, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4745, argv.__gr_offs
	cmp	w2, 0	;# D.4745,
	ble	.L51		;#,
	add	x1, x0, 11	;# D.4748, iftmp.14,
	and	x1, x1, -8	;# D.4749, D.4748,
	str	x1, [sp, 16]	;# D.4749, argv.__stack
	b	.L50		;#
.L51:
	ldr	x2, [sp, 24]	;# D.4751, argv.__gr_top
	sxtw	x0, w1	;# D.4752, D.4736
	add	x0, x2, x0	;# iftmp.14, D.4751, D.4752
.L50:
	ldr	w0, [x0]	;# tmp293, *iftmp.14_80
	str	w0, [sp, 60]	;# tmp293, m
;# vararg-dll.c:59:   int n = va_arg (argv, int);
	ldr	w1, [sp, 40]	;# D.4753, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.15, argv.__stack
	cmp	w1, 0	;# D.4753,
	blt	.L52		;#,
	add	x1, x0, 11	;# D.4758, iftmp.15,
	and	x1, x1, -8	;# D.4759, D.4758,
	str	x1, [sp, 16]	;# D.4759, argv.__stack
	b	.L53		;#
.L52:
	add	w2, w1, 8	;# D.4761, D.4753,
	str	w2, [sp, 40]	;# D.4761, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4762, argv.__gr_offs
	cmp	w2, 0	;# D.4762,
	ble	.L54		;#,
	add	x1, x0, 11	;# D.4765, iftmp.15,
	and	x1, x1, -8	;# D.4766, D.4765,
	str	x1, [sp, 16]	;# D.4766, argv.__stack
	b	.L53		;#
.L54:
	ldr	x2, [sp, 24]	;# D.4768, argv.__gr_top
	sxtw	x0, w1	;# D.4769, D.4753
	add	x0, x2, x0	;# iftmp.15, D.4768, D.4769
.L53:
	ldr	w0, [x0]	;# tmp294, *iftmp.15_81
	str	w0, [sp, 56]	;# tmp294, n
;# vararg-dll.c:60:   int o = va_arg (argv, int);
	ldr	w1, [sp, 40]	;# D.4770, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.16, argv.__stack
	cmp	w1, 0	;# D.4770,
	blt	.L55		;#,
	add	x1, x0, 11	;# D.4775, iftmp.16,
	and	x1, x1, -8	;# D.4776, D.4775,
	str	x1, [sp, 16]	;# D.4776, argv.__stack
	b	.L56		;#
.L55:
	add	w2, w1, 8	;# D.4778, D.4770,
	str	w2, [sp, 40]	;# D.4778, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4779, argv.__gr_offs
	cmp	w2, 0	;# D.4779,
	ble	.L57		;#,
	add	x1, x0, 11	;# D.4782, iftmp.16,
	and	x1, x1, -8	;# D.4783, D.4782,
	str	x1, [sp, 16]	;# D.4783, argv.__stack
	b	.L56		;#
.L57:
	ldr	x2, [sp, 24]	;# D.4785, argv.__gr_top
	sxtw	x0, w1	;# D.4786, D.4770
	add	x0, x2, x0	;# iftmp.16, D.4785, D.4786
.L56:
	ldr	w0, [x0]	;# tmp295, *iftmp.16_82
	str	w0, [sp, 52]	;# tmp295, o
;# vararg-dll.c:61:   int p = va_arg (argv, int);
	ldr	w1, [sp, 40]	;# D.4787, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.17, argv.__stack
	cmp	w1, 0	;# D.4787,
	blt	.L58		;#,
	add	x1, x0, 11	;# D.4792, iftmp.17,
	and	x1, x1, -8	;# D.4793, D.4792,
	str	x1, [sp, 16]	;# D.4793, argv.__stack
	b	.L59		;#
.L58:
	add	w2, w1, 8	;# D.4795, D.4787,
	str	w2, [sp, 40]	;# D.4795, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4796, argv.__gr_offs
	cmp	w2, 0	;# D.4796,
	ble	.L60		;#,
	add	x1, x0, 11	;# D.4799, iftmp.17,
	and	x1, x1, -8	;# D.4800, D.4799,
	str	x1, [sp, 16]	;# D.4800, argv.__stack
	b	.L59		;#
.L60:
	ldr	x2, [sp, 24]	;# D.4802, argv.__gr_top
	sxtw	x0, w1	;# D.4803, D.4787
	add	x0, x2, x0	;# iftmp.17, D.4802, D.4803
.L59:
	ldr	w0, [x0]	;# tmp296, *iftmp.17_83
	str	w0, [sp, 48]	;# tmp296, p
;# vararg-dll.c:63:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p;
	ldr	w1, [sp, 108]	;# tmp297, a
	ldr	w0, [sp, 104]	;# tmp298, b
	add	w1, w1, w0	;# _1, tmp297, tmp298
;# vararg-dll.c:63:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p;
	ldr	w0, [sp, 100]	;# tmp299, c
	add	w1, w1, w0	;# _2, _1, tmp299
;# vararg-dll.c:63:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p;
	ldr	w0, [sp, 96]	;# tmp300, d
	add	w1, w1, w0	;# _3, _2, tmp300
;# vararg-dll.c:63:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p;
	ldr	w0, [sp, 92]	;# tmp301, e
	add	w1, w1, w0	;# _4, _3, tmp301
;# vararg-dll.c:63:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p;
	ldr	w0, [sp, 88]	;# tmp302, f
	add	w1, w1, w0	;# _5, _4, tmp302
;# vararg-dll.c:63:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p;
	ldr	w0, [sp, 84]	;# tmp303, g
	add	w1, w1, w0	;# _6, _5, tmp303
;# vararg-dll.c:63:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p;
	ldr	w0, [sp, 80]	;# tmp304, h
	add	w1, w1, w0	;# _7, _6, tmp304
;# vararg-dll.c:63:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p;
	ldr	w0, [sp, 76]	;# tmp305, i
	add	w1, w1, w0	;# _8, _7, tmp305
;# vararg-dll.c:63:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p;
	ldr	w0, [sp, 72]	;# tmp306, j
	add	w1, w1, w0	;# _9, _8, tmp306
;# vararg-dll.c:63:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p;
	ldr	w0, [sp, 68]	;# tmp307, k
	add	w1, w1, w0	;# _10, _9, tmp307
;# vararg-dll.c:63:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p;
	ldr	w0, [sp, 64]	;# tmp308, l
	add	w1, w1, w0	;# _11, _10, tmp308
;# vararg-dll.c:63:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p;
	ldr	w0, [sp, 60]	;# tmp309, m
	add	w1, w1, w0	;# _12, _11, tmp309
;# vararg-dll.c:63:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p;
	ldr	w0, [sp, 56]	;# tmp310, n
	add	w1, w1, w0	;# _13, _12, tmp310
;# vararg-dll.c:63:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p;
	ldr	w0, [sp, 52]	;# tmp311, o
	add	w1, w1, w0	;# _14, _13, tmp311
;# vararg-dll.c:63:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p;
	ldr	w0, [sp, 48]	;# tmp312, p
	add	w0, w1, w0	;# _50, _14, tmp312
;# vararg-dll.c:64: }
	add	sp, sp, 304	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	sixteen_string_arguments
	.def	sixteen_string_arguments;	.scl	2;	.type	32;	.endef
	.seh_proc	sixteen_string_arguments
sixteen_string_arguments:
	sub	sp, sp, #368	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 312]	;#,
	str	x2, [sp, 320]	;#,
	str	x3, [sp, 328]	;#,
	str	x4, [sp, 336]	;#,
	str	x5, [sp, 344]	;#,
	str	x6, [sp, 352]	;#,
	str	x7, [sp, 360]	;#,
	str	q0, [sp, 176]	;#,
	str	q1, [sp, 192]	;#,
	str	q2, [sp, 208]	;#,
	str	q3, [sp, 224]	;#,
	str	q4, [sp, 240]	;#,
	str	q5, [sp, 256]	;#,
	str	q6, [sp, 272]	;#,
	str	q7, [sp, 288]	;#,
;# vararg-dll.c:70:   va_start (argv, format);
	add	x0, sp, 368	;# tmp285,,
	str	x0, [sp, 16]	;# tmp285, MEM[(struct  *)&argv].__stack
	add	x0, sp, 368	;# tmp286,,
	str	x0, [sp, 24]	;# tmp286, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 304	;# tmp264,,
	str	x0, [sp, 32]	;# tmp264, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	;# tmp265,
	str	w0, [sp, 40]	;# tmp265, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	;# tmp266,
	str	w0, [sp, 44]	;# tmp266, MEM[(struct  *)&argv].__vr_offs
;# vararg-dll.c:71:   const char *a = va_arg (argv, const char *);
	ldr	w1, [sp, 40]	;# D.4807, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.18, argv.__stack
	cmp	w1, 0	;# D.4807,
	blt	.L63		;#,
	add	x1, x0, 15	;# D.4812, iftmp.18,
	and	x1, x1, -8	;# D.4813, D.4812,
	str	x1, [sp, 16]	;# D.4813, argv.__stack
	b	.L64		;#
.L63:
	add	w2, w1, 8	;# D.4815, D.4807,
	str	w2, [sp, 40]	;# D.4815, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4816, argv.__gr_offs
	cmp	w2, 0	;# D.4816,
	ble	.L65		;#,
	add	x1, x0, 15	;# D.4819, iftmp.18,
	and	x1, x1, -8	;# D.4820, D.4819,
	str	x1, [sp, 16]	;# D.4820, argv.__stack
	b	.L64		;#
.L65:
	ldr	x2, [sp, 24]	;# D.4822, argv.__gr_top
	sxtw	x0, w1	;# D.4823, D.4807
	add	x0, x2, x0	;# iftmp.18, D.4822, D.4823
.L64:
	ldr	x0, [x0]	;# tmp267, *iftmp.18_54
	str	x0, [sp, 168]	;# tmp267, a
;# vararg-dll.c:72:   const char *b = va_arg (argv, const char *);
	ldr	w1, [sp, 40]	;# D.4824, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.19, argv.__stack
	cmp	w1, 0	;# D.4824,
	blt	.L66		;#,
	add	x1, x0, 15	;# D.4829, iftmp.19,
	and	x1, x1, -8	;# D.4830, D.4829,
	str	x1, [sp, 16]	;# D.4830, argv.__stack
	b	.L67		;#
.L66:
	add	w2, w1, 8	;# D.4832, D.4824,
	str	w2, [sp, 40]	;# D.4832, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4833, argv.__gr_offs
	cmp	w2, 0	;# D.4833,
	ble	.L68		;#,
	add	x1, x0, 15	;# D.4836, iftmp.19,
	and	x1, x1, -8	;# D.4837, D.4836,
	str	x1, [sp, 16]	;# D.4837, argv.__stack
	b	.L67		;#
.L68:
	ldr	x2, [sp, 24]	;# D.4839, argv.__gr_top
	sxtw	x0, w1	;# D.4840, D.4824
	add	x0, x2, x0	;# iftmp.19, D.4839, D.4840
.L67:
	ldr	x0, [x0]	;# tmp268, *iftmp.19_55
	str	x0, [sp, 160]	;# tmp268, b
;# vararg-dll.c:73:   const char *c = va_arg (argv, const char *);
	ldr	w1, [sp, 40]	;# D.4841, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.20, argv.__stack
	cmp	w1, 0	;# D.4841,
	blt	.L69		;#,
	add	x1, x0, 15	;# D.4846, iftmp.20,
	and	x1, x1, -8	;# D.4847, D.4846,
	str	x1, [sp, 16]	;# D.4847, argv.__stack
	b	.L70		;#
.L69:
	add	w2, w1, 8	;# D.4849, D.4841,
	str	w2, [sp, 40]	;# D.4849, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4850, argv.__gr_offs
	cmp	w2, 0	;# D.4850,
	ble	.L71		;#,
	add	x1, x0, 15	;# D.4853, iftmp.20,
	and	x1, x1, -8	;# D.4854, D.4853,
	str	x1, [sp, 16]	;# D.4854, argv.__stack
	b	.L70		;#
.L71:
	ldr	x2, [sp, 24]	;# D.4856, argv.__gr_top
	sxtw	x0, w1	;# D.4857, D.4841
	add	x0, x2, x0	;# iftmp.20, D.4856, D.4857
.L70:
	ldr	x0, [x0]	;# tmp269, *iftmp.20_56
	str	x0, [sp, 152]	;# tmp269, c
;# vararg-dll.c:74:   const char *d = va_arg (argv, const char *);
	ldr	w1, [sp, 40]	;# D.4858, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.21, argv.__stack
	cmp	w1, 0	;# D.4858,
	blt	.L72		;#,
	add	x1, x0, 15	;# D.4863, iftmp.21,
	and	x1, x1, -8	;# D.4864, D.4863,
	str	x1, [sp, 16]	;# D.4864, argv.__stack
	b	.L73		;#
.L72:
	add	w2, w1, 8	;# D.4866, D.4858,
	str	w2, [sp, 40]	;# D.4866, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4867, argv.__gr_offs
	cmp	w2, 0	;# D.4867,
	ble	.L74		;#,
	add	x1, x0, 15	;# D.4870, iftmp.21,
	and	x1, x1, -8	;# D.4871, D.4870,
	str	x1, [sp, 16]	;# D.4871, argv.__stack
	b	.L73		;#
.L74:
	ldr	x2, [sp, 24]	;# D.4873, argv.__gr_top
	sxtw	x0, w1	;# D.4874, D.4858
	add	x0, x2, x0	;# iftmp.21, D.4873, D.4874
.L73:
	ldr	x0, [x0]	;# tmp270, *iftmp.21_57
	str	x0, [sp, 144]	;# tmp270, d
;# vararg-dll.c:75:   const char *e = va_arg (argv, const char *);
	ldr	w1, [sp, 40]	;# D.4875, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.22, argv.__stack
	cmp	w1, 0	;# D.4875,
	blt	.L75		;#,
	add	x1, x0, 15	;# D.4880, iftmp.22,
	and	x1, x1, -8	;# D.4881, D.4880,
	str	x1, [sp, 16]	;# D.4881, argv.__stack
	b	.L76		;#
.L75:
	add	w2, w1, 8	;# D.4883, D.4875,
	str	w2, [sp, 40]	;# D.4883, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4884, argv.__gr_offs
	cmp	w2, 0	;# D.4884,
	ble	.L77		;#,
	add	x1, x0, 15	;# D.4887, iftmp.22,
	and	x1, x1, -8	;# D.4888, D.4887,
	str	x1, [sp, 16]	;# D.4888, argv.__stack
	b	.L76		;#
.L77:
	ldr	x2, [sp, 24]	;# D.4890, argv.__gr_top
	sxtw	x0, w1	;# D.4891, D.4875
	add	x0, x2, x0	;# iftmp.22, D.4890, D.4891
.L76:
	ldr	x0, [x0]	;# tmp271, *iftmp.22_58
	str	x0, [sp, 136]	;# tmp271, e
;# vararg-dll.c:76:   const char *f = va_arg (argv, const char *);
	ldr	w1, [sp, 40]	;# D.4892, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.23, argv.__stack
	cmp	w1, 0	;# D.4892,
	blt	.L78		;#,
	add	x1, x0, 15	;# D.4897, iftmp.23,
	and	x1, x1, -8	;# D.4898, D.4897,
	str	x1, [sp, 16]	;# D.4898, argv.__stack
	b	.L79		;#
.L78:
	add	w2, w1, 8	;# D.4900, D.4892,
	str	w2, [sp, 40]	;# D.4900, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4901, argv.__gr_offs
	cmp	w2, 0	;# D.4901,
	ble	.L80		;#,
	add	x1, x0, 15	;# D.4904, iftmp.23,
	and	x1, x1, -8	;# D.4905, D.4904,
	str	x1, [sp, 16]	;# D.4905, argv.__stack
	b	.L79		;#
.L80:
	ldr	x2, [sp, 24]	;# D.4907, argv.__gr_top
	sxtw	x0, w1	;# D.4908, D.4892
	add	x0, x2, x0	;# iftmp.23, D.4907, D.4908
.L79:
	ldr	x0, [x0]	;# tmp272, *iftmp.23_59
	str	x0, [sp, 128]	;# tmp272, f
;# vararg-dll.c:77:   const char *g = va_arg (argv, const char *);
	ldr	w1, [sp, 40]	;# D.4909, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.24, argv.__stack
	cmp	w1, 0	;# D.4909,
	blt	.L81		;#,
	add	x1, x0, 15	;# D.4914, iftmp.24,
	and	x1, x1, -8	;# D.4915, D.4914,
	str	x1, [sp, 16]	;# D.4915, argv.__stack
	b	.L82		;#
.L81:
	add	w2, w1, 8	;# D.4917, D.4909,
	str	w2, [sp, 40]	;# D.4917, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4918, argv.__gr_offs
	cmp	w2, 0	;# D.4918,
	ble	.L83		;#,
	add	x1, x0, 15	;# D.4921, iftmp.24,
	and	x1, x1, -8	;# D.4922, D.4921,
	str	x1, [sp, 16]	;# D.4922, argv.__stack
	b	.L82		;#
.L83:
	ldr	x2, [sp, 24]	;# D.4924, argv.__gr_top
	sxtw	x0, w1	;# D.4925, D.4909
	add	x0, x2, x0	;# iftmp.24, D.4924, D.4925
.L82:
	ldr	x0, [x0]	;# tmp273, *iftmp.24_60
	str	x0, [sp, 120]	;# tmp273, g
;# vararg-dll.c:78:   const char *h = va_arg (argv, const char *);
	ldr	w1, [sp, 40]	;# D.4926, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.25, argv.__stack
	cmp	w1, 0	;# D.4926,
	blt	.L84		;#,
	add	x1, x0, 15	;# D.4931, iftmp.25,
	and	x1, x1, -8	;# D.4932, D.4931,
	str	x1, [sp, 16]	;# D.4932, argv.__stack
	b	.L85		;#
.L84:
	add	w2, w1, 8	;# D.4934, D.4926,
	str	w2, [sp, 40]	;# D.4934, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4935, argv.__gr_offs
	cmp	w2, 0	;# D.4935,
	ble	.L86		;#,
	add	x1, x0, 15	;# D.4938, iftmp.25,
	and	x1, x1, -8	;# D.4939, D.4938,
	str	x1, [sp, 16]	;# D.4939, argv.__stack
	b	.L85		;#
.L86:
	ldr	x2, [sp, 24]	;# D.4941, argv.__gr_top
	sxtw	x0, w1	;# D.4942, D.4926
	add	x0, x2, x0	;# iftmp.25, D.4941, D.4942
.L85:
	ldr	x0, [x0]	;# tmp274, *iftmp.25_61
	str	x0, [sp, 112]	;# tmp274, h
;# vararg-dll.c:79:   const char *i = va_arg (argv, const char *);
	ldr	w1, [sp, 40]	;# D.4943, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.26, argv.__stack
	cmp	w1, 0	;# D.4943,
	blt	.L87		;#,
	add	x1, x0, 15	;# D.4948, iftmp.26,
	and	x1, x1, -8	;# D.4949, D.4948,
	str	x1, [sp, 16]	;# D.4949, argv.__stack
	b	.L88		;#
.L87:
	add	w2, w1, 8	;# D.4951, D.4943,
	str	w2, [sp, 40]	;# D.4951, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4952, argv.__gr_offs
	cmp	w2, 0	;# D.4952,
	ble	.L89		;#,
	add	x1, x0, 15	;# D.4955, iftmp.26,
	and	x1, x1, -8	;# D.4956, D.4955,
	str	x1, [sp, 16]	;# D.4956, argv.__stack
	b	.L88		;#
.L89:
	ldr	x2, [sp, 24]	;# D.4958, argv.__gr_top
	sxtw	x0, w1	;# D.4959, D.4943
	add	x0, x2, x0	;# iftmp.26, D.4958, D.4959
.L88:
	ldr	x0, [x0]	;# tmp275, *iftmp.26_62
	str	x0, [sp, 104]	;# tmp275, i
;# vararg-dll.c:80:   const char *j = va_arg (argv, const char *);
	ldr	w1, [sp, 40]	;# D.4960, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.27, argv.__stack
	cmp	w1, 0	;# D.4960,
	blt	.L90		;#,
	add	x1, x0, 15	;# D.4965, iftmp.27,
	and	x1, x1, -8	;# D.4966, D.4965,
	str	x1, [sp, 16]	;# D.4966, argv.__stack
	b	.L91		;#
.L90:
	add	w2, w1, 8	;# D.4968, D.4960,
	str	w2, [sp, 40]	;# D.4968, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4969, argv.__gr_offs
	cmp	w2, 0	;# D.4969,
	ble	.L92		;#,
	add	x1, x0, 15	;# D.4972, iftmp.27,
	and	x1, x1, -8	;# D.4973, D.4972,
	str	x1, [sp, 16]	;# D.4973, argv.__stack
	b	.L91		;#
.L92:
	ldr	x2, [sp, 24]	;# D.4975, argv.__gr_top
	sxtw	x0, w1	;# D.4976, D.4960
	add	x0, x2, x0	;# iftmp.27, D.4975, D.4976
.L91:
	ldr	x0, [x0]	;# tmp276, *iftmp.27_63
	str	x0, [sp, 96]	;# tmp276, j
;# vararg-dll.c:81:   const char *k = va_arg (argv, const char *);
	ldr	w1, [sp, 40]	;# D.4977, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.28, argv.__stack
	cmp	w1, 0	;# D.4977,
	blt	.L93		;#,
	add	x1, x0, 15	;# D.4982, iftmp.28,
	and	x1, x1, -8	;# D.4983, D.4982,
	str	x1, [sp, 16]	;# D.4983, argv.__stack
	b	.L94		;#
.L93:
	add	w2, w1, 8	;# D.4985, D.4977,
	str	w2, [sp, 40]	;# D.4985, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.4986, argv.__gr_offs
	cmp	w2, 0	;# D.4986,
	ble	.L95		;#,
	add	x1, x0, 15	;# D.4989, iftmp.28,
	and	x1, x1, -8	;# D.4990, D.4989,
	str	x1, [sp, 16]	;# D.4990, argv.__stack
	b	.L94		;#
.L95:
	ldr	x2, [sp, 24]	;# D.4992, argv.__gr_top
	sxtw	x0, w1	;# D.4993, D.4977
	add	x0, x2, x0	;# iftmp.28, D.4992, D.4993
.L94:
	ldr	x0, [x0]	;# tmp277, *iftmp.28_64
	str	x0, [sp, 88]	;# tmp277, k
;# vararg-dll.c:82:   const char *l = va_arg (argv, const char *);
	ldr	w1, [sp, 40]	;# D.4994, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.29, argv.__stack
	cmp	w1, 0	;# D.4994,
	blt	.L96		;#,
	add	x1, x0, 15	;# D.4999, iftmp.29,
	and	x1, x1, -8	;# D.5000, D.4999,
	str	x1, [sp, 16]	;# D.5000, argv.__stack
	b	.L97		;#
.L96:
	add	w2, w1, 8	;# D.5002, D.4994,
	str	w2, [sp, 40]	;# D.5002, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.5003, argv.__gr_offs
	cmp	w2, 0	;# D.5003,
	ble	.L98		;#,
	add	x1, x0, 15	;# D.5006, iftmp.29,
	and	x1, x1, -8	;# D.5007, D.5006,
	str	x1, [sp, 16]	;# D.5007, argv.__stack
	b	.L97		;#
.L98:
	ldr	x2, [sp, 24]	;# D.5009, argv.__gr_top
	sxtw	x0, w1	;# D.5010, D.4994
	add	x0, x2, x0	;# iftmp.29, D.5009, D.5010
.L97:
	ldr	x0, [x0]	;# tmp278, *iftmp.29_65
	str	x0, [sp, 80]	;# tmp278, l
;# vararg-dll.c:83:   const char *m = va_arg (argv, const char *);
	ldr	w1, [sp, 40]	;# D.5011, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.30, argv.__stack
	cmp	w1, 0	;# D.5011,
	blt	.L99		;#,
	add	x1, x0, 15	;# D.5016, iftmp.30,
	and	x1, x1, -8	;# D.5017, D.5016,
	str	x1, [sp, 16]	;# D.5017, argv.__stack
	b	.L100		;#
.L99:
	add	w2, w1, 8	;# D.5019, D.5011,
	str	w2, [sp, 40]	;# D.5019, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.5020, argv.__gr_offs
	cmp	w2, 0	;# D.5020,
	ble	.L101		;#,
	add	x1, x0, 15	;# D.5023, iftmp.30,
	and	x1, x1, -8	;# D.5024, D.5023,
	str	x1, [sp, 16]	;# D.5024, argv.__stack
	b	.L100		;#
.L101:
	ldr	x2, [sp, 24]	;# D.5026, argv.__gr_top
	sxtw	x0, w1	;# D.5027, D.5011
	add	x0, x2, x0	;# iftmp.30, D.5026, D.5027
.L100:
	ldr	x0, [x0]	;# tmp279, *iftmp.30_66
	str	x0, [sp, 72]	;# tmp279, m
;# vararg-dll.c:84:   const char *n = va_arg (argv, const char *);
	ldr	w1, [sp, 40]	;# D.5028, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.31, argv.__stack
	cmp	w1, 0	;# D.5028,
	blt	.L102		;#,
	add	x1, x0, 15	;# D.5033, iftmp.31,
	and	x1, x1, -8	;# D.5034, D.5033,
	str	x1, [sp, 16]	;# D.5034, argv.__stack
	b	.L103		;#
.L102:
	add	w2, w1, 8	;# D.5036, D.5028,
	str	w2, [sp, 40]	;# D.5036, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.5037, argv.__gr_offs
	cmp	w2, 0	;# D.5037,
	ble	.L104		;#,
	add	x1, x0, 15	;# D.5040, iftmp.31,
	and	x1, x1, -8	;# D.5041, D.5040,
	str	x1, [sp, 16]	;# D.5041, argv.__stack
	b	.L103		;#
.L104:
	ldr	x2, [sp, 24]	;# D.5043, argv.__gr_top
	sxtw	x0, w1	;# D.5044, D.5028
	add	x0, x2, x0	;# iftmp.31, D.5043, D.5044
.L103:
	ldr	x0, [x0]	;# tmp280, *iftmp.31_67
	str	x0, [sp, 64]	;# tmp280, n
;# vararg-dll.c:85:   const char *o = va_arg (argv, const char *);
	ldr	w1, [sp, 40]	;# D.5045, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.32, argv.__stack
	cmp	w1, 0	;# D.5045,
	blt	.L105		;#,
	add	x1, x0, 15	;# D.5050, iftmp.32,
	and	x1, x1, -8	;# D.5051, D.5050,
	str	x1, [sp, 16]	;# D.5051, argv.__stack
	b	.L106		;#
.L105:
	add	w2, w1, 8	;# D.5053, D.5045,
	str	w2, [sp, 40]	;# D.5053, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.5054, argv.__gr_offs
	cmp	w2, 0	;# D.5054,
	ble	.L107		;#,
	add	x1, x0, 15	;# D.5057, iftmp.32,
	and	x1, x1, -8	;# D.5058, D.5057,
	str	x1, [sp, 16]	;# D.5058, argv.__stack
	b	.L106		;#
.L107:
	ldr	x2, [sp, 24]	;# D.5060, argv.__gr_top
	sxtw	x0, w1	;# D.5061, D.5045
	add	x0, x2, x0	;# iftmp.32, D.5060, D.5061
.L106:
	ldr	x0, [x0]	;# tmp281, *iftmp.32_68
	str	x0, [sp, 56]	;# tmp281, o
;# vararg-dll.c:86:   const char *p = va_arg (argv, const char *);
	ldr	w1, [sp, 40]	;# D.5062, argv.__gr_offs
	ldr	x0, [sp, 16]	;# iftmp.33, argv.__stack
	cmp	w1, 0	;# D.5062,
	blt	.L108		;#,
	add	x1, x0, 15	;# D.5067, iftmp.33,
	and	x1, x1, -8	;# D.5068, D.5067,
	str	x1, [sp, 16]	;# D.5068, argv.__stack
	b	.L109		;#
.L108:
	add	w2, w1, 8	;# D.5070, D.5062,
	str	w2, [sp, 40]	;# D.5070, argv.__gr_offs
	ldr	w2, [sp, 40]	;# D.5071, argv.__gr_offs
	cmp	w2, 0	;# D.5071,
	ble	.L110		;#,
	add	x1, x0, 15	;# D.5074, iftmp.33,
	and	x1, x1, -8	;# D.5075, D.5074,
	str	x1, [sp, 16]	;# D.5075, argv.__stack
	b	.L109		;#
.L110:
	ldr	x2, [sp, 24]	;# D.5077, argv.__gr_top
	sxtw	x0, w1	;# D.5078, D.5062
	add	x0, x2, x0	;# iftmp.33, D.5077, D.5078
.L109:
	ldr	x0, [x0]	;# tmp282, *iftmp.33_69
	str	x0, [sp, 48]	;# tmp282, p
;# vararg-dll.c:88:   return p;
	ldr	x0, [sp, 48]	;# _36, p
;# vararg-dll.c:89: }
	add	sp, sp, 368	;#,,
	ret	
	.seh_endproc
