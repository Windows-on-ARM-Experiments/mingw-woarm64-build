	.arch armv8-a
	.file	"valist-dll.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	use_va_list
	.type	use_va_list, %function
use_va_list:
.LFB0:
	.cfi_startproc
	str	x19, [sp, -48]!	//,
	.cfi_def_cfa_offset 48
	.cfi_offset 19, -48
	str	x0, [sp, 24]	// format, format
	mov	x19, x1	// tmp115,
// valist-dll.c:14:   int a = va_arg (argv, int);
	ldr	w1, [x19, 24]	// D.3864, argv.__gr_offs
	ldr	x0, [x19]	// iftmp.1, argv.__stack
	cmp	w1, 0	// D.3864,
	blt	.L2		//,
	add	x1, x0, 11	// D.3869, iftmp.1,
	and	x1, x1, -8	// D.3870, D.3869,
	str	x1, [x19]	// D.3870, argv.__stack
	b	.L3		//
.L2:
	add	w2, w1, 8	// D.3872, D.3864,
	str	w2, [x19, 24]	// D.3872, argv.__gr_offs
	ldr	w2, [x19, 24]	// D.3874, argv.__gr_offs
	cmp	w2, 0	// D.3874,
	ble	.L4		//,
	add	x1, x0, 11	// D.3877, iftmp.1,
	and	x1, x1, -8	// D.3878, D.3877,
	str	x1, [x19]	// D.3878, argv.__stack
	b	.L3		//
.L4:
	ldr	x2, [x19, 8]	// D.3880, argv.__gr_top
	sxtw	x0, w1	// D.3881, D.3864
	add	x0, x2, x0	// iftmp.1, D.3880, D.3881
.L3:
	ldr	w0, [x0]	// tmp116, *iftmp.0_12
	str	w0, [sp, 40]	// tmp116, a
// valist-dll.c:15:   int b = va_arg (argv, long);
	ldr	w1, [x19, 24]	// D.3882, argv.__gr_offs
	ldr	x0, [x19]	// iftmp.3, argv.__stack
	cmp	w1, 0	// D.3882,
	blt	.L6		//,
	add	x1, x0, 15	// D.3887, iftmp.3,
	and	x1, x1, -8	// D.3888, D.3887,
	str	x1, [x19]	// D.3888, argv.__stack
	b	.L7		//
.L6:
	add	w2, w1, 8	// D.3890, D.3882,
	str	w2, [x19, 24]	// D.3890, argv.__gr_offs
	ldr	w2, [x19, 24]	// D.3892, argv.__gr_offs
	cmp	w2, 0	// D.3892,
	ble	.L8		//,
	add	x1, x0, 15	// D.3895, iftmp.3,
	and	x1, x1, -8	// D.3896, D.3895,
	str	x1, [x19]	// D.3896, argv.__stack
	b	.L7		//
.L8:
	ldr	x2, [x19, 8]	// D.3898, argv.__gr_top
	sxtw	x0, w1	// D.3899, D.3882
	add	x0, x2, x0	// iftmp.3, D.3898, D.3899
.L7:
	ldr	x0, [x0]	// _1, *iftmp.2_14
// valist-dll.c:15:   int b = va_arg (argv, long);
	str	w0, [sp, 44]	// tmp117, b
// valist-dll.c:16:   return a + b;
	ldr	w1, [sp, 40]	// tmp118, a
	ldr	w0, [sp, 44]	// tmp119, b
	add	w0, w1, w0	// _7, tmp118, tmp119
// valist-dll.c:17: }
	ldr	x19, [sp], 48	//,
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	use_va_list, .-use_va_list
	.align	2
	.global	use_va_arg
	.type	use_va_arg, %function
use_va_arg:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -272]!	//,,,
	.cfi_def_cfa_offset 272
	.cfi_offset 29, -272
	.cfi_offset 30, -264
	mov	x29, sp	//,
	str	x0, [sp, 24]	// format, format
	str	x1, [sp, 216]	//,
	str	x2, [sp, 224]	//,
	str	x3, [sp, 232]	//,
	str	x4, [sp, 240]	//,
	str	x5, [sp, 248]	//,
	str	x6, [sp, 256]	//,
	str	x7, [sp, 264]	//,
	str	q0, [sp, 80]	//,
	str	q1, [sp, 96]	//,
	str	q2, [sp, 112]	//,
	str	q3, [sp, 128]	//,
	str	q4, [sp, 144]	//,
	str	q5, [sp, 160]	//,
	str	q6, [sp, 176]	//,
	str	q7, [sp, 192]	//,
// valist-dll.c:21: {
	adrp	x0, :got:__stack_chk_guard	// tmp116,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp115, tmp116,
	ldr	x1, [x0]	// tmp128,
	str	x1, [sp, 72]	// tmp128, D.3936
	mov	x1, 0	// tmp128
// valist-dll.c:23:   va_start (argv, format);
	add	x0, sp, 272	// tmp133,,
	str	x0, [sp, 40]	// tmp133, MEM[(struct  *)&argv].__stack
	add	x0, sp, 272	// tmp134,,
	str	x0, [sp, 48]	// tmp134, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 208	// tmp118,,
	str	x0, [sp, 56]	// tmp118, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp119,
	str	w0, [sp, 64]	// tmp119, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp120,
	str	w0, [sp, 68]	// tmp120, MEM[(struct  *)&argv].__vr_offs
// valist-dll.c:24:   int a = va_arg (argv, int);
	ldr	w1, [sp, 64]	// D.3900, argv.__gr_offs
	ldr	x0, [sp, 40]	// iftmp.5, argv.__stack
	cmp	w1, 0	// D.3900,
	blt	.L12		//,
	add	x1, x0, 11	// D.3905, iftmp.5,
	and	x1, x1, -8	// D.3906, D.3905,
	str	x1, [sp, 40]	// D.3906, argv.__stack
	b	.L13		//
.L12:
	add	w2, w1, 8	// D.3908, D.3900,
	str	w2, [sp, 64]	// D.3908, argv.__gr_offs
	ldr	w2, [sp, 64]	// D.3910, argv.__gr_offs
	cmp	w2, 0	// D.3910,
	ble	.L14		//,
	add	x1, x0, 11	// D.3913, iftmp.5,
	and	x1, x1, -8	// D.3914, D.3913,
	str	x1, [sp, 40]	// D.3914, argv.__stack
	b	.L13		//
.L14:
	ldr	x2, [sp, 48]	// D.3916, argv.__gr_top
	sxtw	x0, w1	// D.3917, D.3900
	add	x0, x2, x0	// iftmp.5, D.3916, D.3917
.L13:
	ldr	w0, [x0]	// tmp121, *iftmp.4_15
	str	w0, [sp, 32]	// tmp121, a
// valist-dll.c:25:   int b = va_arg (argv, long);
	ldr	w1, [sp, 64]	// D.3918, argv.__gr_offs
	ldr	x0, [sp, 40]	// iftmp.7, argv.__stack
	cmp	w1, 0	// D.3918,
	blt	.L16		//,
	add	x1, x0, 15	// D.3923, iftmp.7,
	and	x1, x1, -8	// D.3924, D.3923,
	str	x1, [sp, 40]	// D.3924, argv.__stack
	b	.L17		//
.L16:
	add	w2, w1, 8	// D.3926, D.3918,
	str	w2, [sp, 64]	// D.3926, argv.__gr_offs
	ldr	w2, [sp, 64]	// D.3928, argv.__gr_offs
	cmp	w2, 0	// D.3928,
	ble	.L18		//,
	add	x1, x0, 15	// D.3931, iftmp.7,
	and	x1, x1, -8	// D.3932, D.3931,
	str	x1, [sp, 40]	// D.3932, argv.__stack
	b	.L17		//
.L18:
	ldr	x2, [sp, 48]	// D.3934, argv.__gr_top
	sxtw	x0, w1	// D.3935, D.3918
	add	x0, x2, x0	// iftmp.7, D.3934, D.3935
.L17:
	ldr	x0, [x0]	// _1, *iftmp.6_17
// valist-dll.c:25:   int b = va_arg (argv, long);
	str	w0, [sp, 36]	// tmp122, b
// valist-dll.c:27:   return a + b;
	ldr	w1, [sp, 32]	// tmp123, a
	ldr	w0, [sp, 36]	// tmp124, b
	add	w0, w1, w0	// _9, tmp123, tmp124
	mov	w1, w0	// <retval>, _9
// valist-dll.c:28: }
	adrp	x0, :got:__stack_chk_guard	// tmp127,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp126, tmp127,
	ldr	x3, [sp, 72]	// tmp129, D.3936
	ldr	x2, [x0]	// tmp130,
	subs	x3, x3, x2	// tmp129, tmp130
	mov	x2, 0	// tmp130
	beq	.L21		//,
	bl	__stack_chk_fail		//
.L21:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 272	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	use_va_arg, .-use_va_arg
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
