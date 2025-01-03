	.arch armv8-a
	.file	"valist-dll.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	use_va_args2
	.type	use_va_args2, %function
use_va_args2:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -288]!	//,,,
	.cfi_def_cfa_offset 288
	.cfi_offset 29, -288
	.cfi_offset 30, -280
	mov	x29, sp	//,
	str	x0, [sp, 24]	// format, format
	str	x1, [sp, 232]	//,
	str	x2, [sp, 240]	//,
	str	x3, [sp, 248]	//,
	str	x4, [sp, 256]	//,
	str	x5, [sp, 264]	//,
	str	x6, [sp, 272]	//,
	str	x7, [sp, 280]	//,
	str	q0, [sp, 96]	//,
	str	q1, [sp, 112]	//,
	str	q2, [sp, 128]	//,
	str	q3, [sp, 144]	//,
	str	q4, [sp, 160]	//,
	str	q5, [sp, 176]	//,
	str	q6, [sp, 192]	//,
	str	q7, [sp, 208]	//,
// valist-dll.c:13: {
	adrp	x0, :got:__stack_chk_guard	// tmp117,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp116, tmp117,
	ldr	x1, [x0]	// tmp129,
	str	x1, [sp, 88]	// tmp129, D.3900
	mov	x1, 0	// tmp129
// valist-dll.c:15:   va_start (argv, format);
	add	x0, sp, 288	// tmp134,,
	str	x0, [sp, 56]	// tmp134, MEM[(struct  *)&argv].__stack
	add	x0, sp, 288	// tmp135,,
	str	x0, [sp, 64]	// tmp135, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 224	// tmp119,,
	str	x0, [sp, 72]	// tmp119, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp120,
	str	w0, [sp, 80]	// tmp120, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp121,
	str	w0, [sp, 84]	// tmp121, MEM[(struct  *)&argv].__vr_offs
// valist-dll.c:16:   int a = va_arg (argv, int);
	ldr	w1, [sp, 80]	// D.3864, argv.__gr_offs
	ldr	x0, [sp, 56]	// iftmp.1, argv.__stack
	cmp	w1, 0	// D.3864,
	blt	.L2		//,
	add	x1, x0, 11	// D.3869, iftmp.1,
	and	x1, x1, -8	// D.3870, D.3869,
	str	x1, [sp, 56]	// D.3870, argv.__stack
	b	.L3		//
.L2:
	add	w2, w1, 8	// D.3872, D.3864,
	str	w2, [sp, 80]	// D.3872, argv.__gr_offs
	ldr	w2, [sp, 80]	// D.3874, argv.__gr_offs
	cmp	w2, 0	// D.3874,
	ble	.L4		//,
	add	x1, x0, 11	// D.3877, iftmp.1,
	and	x1, x1, -8	// D.3878, D.3877,
	str	x1, [sp, 56]	// D.3878, argv.__stack
	b	.L3		//
.L4:
	ldr	x2, [sp, 64]	// D.3880, argv.__gr_top
	sxtw	x0, w1	// D.3881, D.3864
	add	x0, x2, x0	// iftmp.1, D.3880, D.3881
.L3:
	ldr	w0, [x0]	// tmp122, *iftmp.0_16
	str	w0, [sp, 44]	// tmp122, a
// valist-dll.c:17:   double b = va_arg (argv, double);
	ldr	w1, [sp, 84]	// D.3882, argv.__vr_offs
	ldr	x0, [sp, 56]	// iftmp.3, argv.__stack
	cmp	w1, 0	// D.3882,
	blt	.L6		//,
	add	x1, x0, 15	// D.3887, iftmp.3,
	and	x1, x1, -8	// D.3888, D.3887,
	str	x1, [sp, 56]	// D.3888, argv.__stack
	b	.L7		//
.L6:
	add	w2, w1, 16	// D.3890, D.3882,
	str	w2, [sp, 84]	// D.3890, argv.__vr_offs
	ldr	w2, [sp, 84]	// D.3892, argv.__vr_offs
	cmp	w2, 0	// D.3892,
	ble	.L8		//,
	add	x1, x0, 15	// D.3895, iftmp.3,
	and	x1, x1, -8	// D.3896, D.3895,
	str	x1, [sp, 56]	// D.3896, argv.__stack
	b	.L7		//
.L8:
	ldr	x2, [sp, 72]	// D.3898, argv.__vr_top
	sxtw	x0, w1	// D.3899, D.3882
	add	x0, x2, x0	// iftmp.3, D.3898, D.3899
.L7:
	ldr	d0, [x0]	// tmp123, *iftmp.2_18
	str	d0, [sp, 48]	// tmp123, b
// valist-dll.c:19:   return a + b;
	ldr	w0, [sp, 44]	// tmp124, a
	scvtf	d1, w0	// _1, tmp124
	ldr	d0, [sp, 48]	// tmp125, b
	fadd	d0, d1, d0	// _2, _1, tmp125
	fcvtzs	w0, d0	// _10, _2
	mov	w1, w0	// <retval>, _10
// valist-dll.c:20: }
	adrp	x0, :got:__stack_chk_guard	// tmp128,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp127, tmp128,
	ldr	x3, [sp, 88]	// tmp130, D.3900
	ldr	x2, [x0]	// tmp131,
	subs	x3, x3, x2	// tmp130, tmp131
	mov	x2, 0	// tmp131
	beq	.L11		//,
	bl	__stack_chk_fail		//
.L11:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 288	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	use_va_args2, .-use_va_args2
	.align	2
	.global	use_va_list
	.type	use_va_list, %function
use_va_list:
.LFB1:
	.cfi_startproc
	str	x19, [sp, -48]!	//,
	.cfi_def_cfa_offset 48
	.cfi_offset 19, -48
	str	x0, [sp, 24]	// format, format
	mov	x19, x1	// tmp116,
// valist-dll.c:25:   int a = va_arg (argv, int);
	ldr	w1, [x19, 24]	// D.3906, argv.__gr_offs
	ldr	x0, [x19]	// iftmp.5, argv.__stack
	cmp	w1, 0	// D.3906,
	blt	.L13		//,
	add	x1, x0, 11	// D.3911, iftmp.5,
	and	x1, x1, -8	// D.3912, D.3911,
	str	x1, [x19]	// D.3912, argv.__stack
	b	.L14		//
.L13:
	add	w2, w1, 8	// D.3914, D.3906,
	str	w2, [x19, 24]	// D.3914, argv.__gr_offs
	ldr	w2, [x19, 24]	// D.3916, argv.__gr_offs
	cmp	w2, 0	// D.3916,
	ble	.L15		//,
	add	x1, x0, 11	// D.3919, iftmp.5,
	and	x1, x1, -8	// D.3920, D.3919,
	str	x1, [x19]	// D.3920, argv.__stack
	b	.L14		//
.L15:
	ldr	x2, [x19, 8]	// D.3922, argv.__gr_top
	sxtw	x0, w1	// D.3923, D.3906
	add	x0, x2, x0	// iftmp.5, D.3922, D.3923
.L14:
	ldr	w0, [x0]	// tmp117, *iftmp.4_13
	str	w0, [sp, 36]	// tmp117, a
// valist-dll.c:26:   double b = va_arg (argv, double);
	ldr	w1, [x19, 28]	// D.3924, argv.__vr_offs
	ldr	x0, [x19]	// iftmp.7, argv.__stack
	cmp	w1, 0	// D.3924,
	blt	.L17		//,
	add	x1, x0, 15	// D.3929, iftmp.7,
	and	x1, x1, -8	// D.3930, D.3929,
	str	x1, [x19]	// D.3930, argv.__stack
	b	.L18		//
.L17:
	add	w2, w1, 16	// D.3932, D.3924,
	str	w2, [x19, 28]	// D.3932, argv.__vr_offs
	ldr	w2, [x19, 28]	// D.3934, argv.__vr_offs
	cmp	w2, 0	// D.3934,
	ble	.L19		//,
	add	x1, x0, 15	// D.3937, iftmp.7,
	and	x1, x1, -8	// D.3938, D.3937,
	str	x1, [x19]	// D.3938, argv.__stack
	b	.L18		//
.L19:
	ldr	x2, [x19, 16]	// D.3940, argv.__vr_top
	sxtw	x0, w1	// D.3941, D.3924
	add	x0, x2, x0	// iftmp.7, D.3940, D.3941
.L18:
	ldr	d0, [x0]	// tmp118, *iftmp.6_15
	str	d0, [sp, 40]	// tmp118, b
// valist-dll.c:27:   return a + b;
	ldr	w0, [sp, 36]	// tmp119, a
	scvtf	d1, w0	// _1, tmp119
	ldr	d0, [sp, 40]	// tmp120, b
	fadd	d0, d1, d0	// _2, _1, tmp120
	fcvtzs	w0, d0	// _8, _2
// valist-dll.c:28: }
	ldr	x19, [sp], 48	//,
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	use_va_list, .-use_va_list
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
