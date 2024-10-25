	.arch armv8-a
	.file	"valist-dll.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	use_va_args
	.type	use_va_args, %function
use_va_args:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -448]!	//,,,
	.cfi_def_cfa_offset 448
	.cfi_offset 29, -448
	.cfi_offset 30, -440
	mov	x29, sp	//,
	str	x0, [sp, 24]	// format, format
	str	x1, [sp, 392]	//,
	str	x2, [sp, 400]	//,
	str	x3, [sp, 408]	//,
	str	x4, [sp, 416]	//,
	str	x5, [sp, 424]	//,
	str	x6, [sp, 432]	//,
	str	x7, [sp, 440]	//,
	str	q0, [sp, 256]	//,
	str	q1, [sp, 272]	//,
	str	q2, [sp, 288]	//,
	str	q3, [sp, 304]	//,
	str	q4, [sp, 320]	//,
	str	q5, [sp, 336]	//,
	str	q6, [sp, 352]	//,
	str	q7, [sp, 368]	//,
// valist-dll.c:20: {
	adrp	x0, :got:__stack_chk_guard	// tmp192,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp191, tmp192,
	ldr	x1, [x0]	// tmp254,
	str	x1, [sp, 248]	// tmp254, D.4062
	mov	x1, 0	// tmp254
// valist-dll.c:22:   va_start (argv, format);
	add	x0, sp, 448	// tmp259,,
	str	x0, [sp, 216]	// tmp259, MEM[(struct  *)&argv].__stack
	add	x0, sp, 448	// tmp260,,
	str	x0, [sp, 224]	// tmp260, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 384	// tmp194,,
	str	x0, [sp, 232]	// tmp194, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp195,
	str	w0, [sp, 240]	// tmp195, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp196,
	str	w0, [sp, 244]	// tmp196, MEM[(struct  *)&argv].__vr_offs
// valist-dll.c:23:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w1, [sp, 240]	// D.3900, argv.__gr_offs
	ldr	x0, [sp, 216]	// iftmp.1, argv.__stack
	cmp	w1, 0	// D.3900,
	blt	.L2		//,
	add	x1, x0, 19	// D.3905, iftmp.1,
	and	x1, x1, -8	// D.3906, D.3905,
	str	x1, [sp, 216]	// D.3906, argv.__stack
	b	.L3		//
.L2:
	add	w2, w1, 16	// D.3908, D.3900,
	str	w2, [sp, 240]	// D.3908, argv.__gr_offs
	ldr	w2, [sp, 240]	// D.3910, argv.__gr_offs
	cmp	w2, 0	// D.3910,
	ble	.L4		//,
	add	x1, x0, 19	// D.3913, iftmp.1,
	and	x1, x1, -8	// D.3914, D.3913,
	str	x1, [sp, 216]	// D.3914, argv.__stack
	b	.L3		//
.L4:
	ldr	x2, [sp, 224]	// D.3916, argv.__gr_top
	sxtw	x0, w1	// D.3917, D.3900
	add	x0, x2, x0	// iftmp.1, D.3916, D.3917
.L3:
	add	x1, sp, 72	// tmp197,,
	ldr	x2, [x0]	// tmp199, *iftmp.0_49
	str	x2, [x1]	// tmp199, D.3875
	ldr	w0, [x0, 8]	// tmp200, *iftmp.0_49
	str	w0, [x1, 8]	// tmp200, D.3875
// valist-dll.c:23:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 72]	// tmp201, D.3875.a
	str	w0, [sp, 36]	// tmp201, a
// valist-dll.c:24:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w1, [sp, 240]	// D.3918, argv.__gr_offs
	ldr	x0, [sp, 216]	// iftmp.3, argv.__stack
	cmp	w1, 0	// D.3918,
	blt	.L6		//,
	add	x1, x0, 19	// D.3923, iftmp.3,
	and	x1, x1, -8	// D.3924, D.3923,
	str	x1, [sp, 216]	// D.3924, argv.__stack
	b	.L7		//
.L6:
	add	w2, w1, 16	// D.3926, D.3918,
	str	w2, [sp, 240]	// D.3926, argv.__gr_offs
	ldr	w2, [sp, 240]	// D.3928, argv.__gr_offs
	cmp	w2, 0	// D.3928,
	ble	.L8		//,
	add	x1, x0, 19	// D.3931, iftmp.3,
	and	x1, x1, -8	// D.3932, D.3931,
	str	x1, [sp, 216]	// D.3932, argv.__stack
	b	.L7		//
.L8:
	ldr	x2, [sp, 224]	// D.3934, argv.__gr_top
	sxtw	x0, w1	// D.3935, D.3918
	add	x0, x2, x0	// iftmp.3, D.3934, D.3935
.L7:
	add	x1, sp, 88	// tmp202,,
	ldr	x2, [x0]	// tmp204, *iftmp.2_51
	str	x2, [x1]	// tmp204, D.3876
	ldr	w0, [x0, 8]	// tmp205, *iftmp.2_51
	str	w0, [x1, 8]	// tmp205, D.3876
// valist-dll.c:24:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 92]	// tmp206, D.3876.b
	str	w0, [sp, 40]	// tmp206, b
// valist-dll.c:25:   int c = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w1, [sp, 240]	// D.3936, argv.__gr_offs
	ldr	x0, [sp, 216]	// iftmp.5, argv.__stack
	cmp	w1, 0	// D.3936,
	blt	.L10		//,
	add	x1, x0, 19	// D.3941, iftmp.5,
	and	x1, x1, -8	// D.3942, D.3941,
	str	x1, [sp, 216]	// D.3942, argv.__stack
	b	.L11		//
.L10:
	add	w2, w1, 16	// D.3944, D.3936,
	str	w2, [sp, 240]	// D.3944, argv.__gr_offs
	ldr	w2, [sp, 240]	// D.3946, argv.__gr_offs
	cmp	w2, 0	// D.3946,
	ble	.L12		//,
	add	x1, x0, 19	// D.3949, iftmp.5,
	and	x1, x1, -8	// D.3950, D.3949,
	str	x1, [sp, 216]	// D.3950, argv.__stack
	b	.L11		//
.L12:
	ldr	x2, [sp, 224]	// D.3952, argv.__gr_top
	sxtw	x0, w1	// D.3953, D.3936
	add	x0, x2, x0	// iftmp.5, D.3952, D.3953
.L11:
	add	x1, sp, 104	// tmp207,,
	ldr	x2, [x0]	// tmp209, *iftmp.4_53
	str	x2, [x1]	// tmp209, D.3877
	ldr	w0, [x0, 8]	// tmp210, *iftmp.4_53
	str	w0, [x1, 8]	// tmp210, D.3877
// valist-dll.c:25:   int c = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 112]	// tmp211, D.3877.c
	str	w0, [sp, 44]	// tmp211, c
// valist-dll.c:26:   int d = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w1, [sp, 240]	// D.3954, argv.__gr_offs
	ldr	x0, [sp, 216]	// iftmp.7, argv.__stack
	cmp	w1, 0	// D.3954,
	blt	.L14		//,
	add	x1, x0, 19	// D.3959, iftmp.7,
	and	x1, x1, -8	// D.3960, D.3959,
	str	x1, [sp, 216]	// D.3960, argv.__stack
	b	.L15		//
.L14:
	add	w2, w1, 16	// D.3962, D.3954,
	str	w2, [sp, 240]	// D.3962, argv.__gr_offs
	ldr	w2, [sp, 240]	// D.3964, argv.__gr_offs
	cmp	w2, 0	// D.3964,
	ble	.L16		//,
	add	x1, x0, 19	// D.3967, iftmp.7,
	and	x1, x1, -8	// D.3968, D.3967,
	str	x1, [sp, 216]	// D.3968, argv.__stack
	b	.L15		//
.L16:
	ldr	x2, [sp, 224]	// D.3970, argv.__gr_top
	sxtw	x0, w1	// D.3971, D.3954
	add	x0, x2, x0	// iftmp.7, D.3970, D.3971
.L15:
	add	x1, sp, 120	// tmp212,,
	ldr	x2, [x0]	// tmp214, *iftmp.6_55
	str	x2, [x1]	// tmp214, D.3878
	ldr	w0, [x0, 8]	// tmp215, *iftmp.6_55
	str	w0, [x1, 8]	// tmp215, D.3878
// valist-dll.c:26:   int d = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 120]	// tmp216, D.3878.a
	str	w0, [sp, 48]	// tmp216, d
// valist-dll.c:27:   int e = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w1, [sp, 240]	// D.3972, argv.__gr_offs
	ldr	x0, [sp, 216]	// iftmp.9, argv.__stack
	cmp	w1, 0	// D.3972,
	blt	.L18		//,
	add	x1, x0, 19	// D.3977, iftmp.9,
	and	x1, x1, -8	// D.3978, D.3977,
	str	x1, [sp, 216]	// D.3978, argv.__stack
	b	.L19		//
.L18:
	add	w2, w1, 16	// D.3980, D.3972,
	str	w2, [sp, 240]	// D.3980, argv.__gr_offs
	ldr	w2, [sp, 240]	// D.3982, argv.__gr_offs
	cmp	w2, 0	// D.3982,
	ble	.L20		//,
	add	x1, x0, 19	// D.3985, iftmp.9,
	and	x1, x1, -8	// D.3986, D.3985,
	str	x1, [sp, 216]	// D.3986, argv.__stack
	b	.L19		//
.L20:
	ldr	x2, [sp, 224]	// D.3988, argv.__gr_top
	sxtw	x0, w1	// D.3989, D.3972
	add	x0, x2, x0	// iftmp.9, D.3988, D.3989
.L19:
	add	x1, sp, 136	// tmp217,,
	ldr	x2, [x0]	// tmp219, *iftmp.8_57
	str	x2, [x1]	// tmp219, D.3879
	ldr	w0, [x0, 8]	// tmp220, *iftmp.8_57
	str	w0, [x1, 8]	// tmp220, D.3879
// valist-dll.c:27:   int e = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 140]	// tmp221, D.3879.b
	str	w0, [sp, 52]	// tmp221, e
// valist-dll.c:28:   int f = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w1, [sp, 240]	// D.3990, argv.__gr_offs
	ldr	x0, [sp, 216]	// iftmp.11, argv.__stack
	cmp	w1, 0	// D.3990,
	blt	.L22		//,
	add	x1, x0, 19	// D.3995, iftmp.11,
	and	x1, x1, -8	// D.3996, D.3995,
	str	x1, [sp, 216]	// D.3996, argv.__stack
	b	.L23		//
.L22:
	add	w2, w1, 16	// D.3998, D.3990,
	str	w2, [sp, 240]	// D.3998, argv.__gr_offs
	ldr	w2, [sp, 240]	// D.4000, argv.__gr_offs
	cmp	w2, 0	// D.4000,
	ble	.L24		//,
	add	x1, x0, 19	// D.4003, iftmp.11,
	and	x1, x1, -8	// D.4004, D.4003,
	str	x1, [sp, 216]	// D.4004, argv.__stack
	b	.L23		//
.L24:
	ldr	x2, [sp, 224]	// D.4006, argv.__gr_top
	sxtw	x0, w1	// D.4007, D.3990
	add	x0, x2, x0	// iftmp.11, D.4006, D.4007
.L23:
	add	x1, sp, 152	// tmp222,,
	ldr	x2, [x0]	// tmp224, *iftmp.10_59
	str	x2, [x1]	// tmp224, D.3880
	ldr	w0, [x0, 8]	// tmp225, *iftmp.10_59
	str	w0, [x1, 8]	// tmp225, D.3880
// valist-dll.c:28:   int f = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 160]	// tmp226, D.3880.c
	str	w0, [sp, 56]	// tmp226, f
// valist-dll.c:29:   int g = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w1, [sp, 240]	// D.4008, argv.__gr_offs
	ldr	x0, [sp, 216]	// iftmp.13, argv.__stack
	cmp	w1, 0	// D.4008,
	blt	.L26		//,
	add	x1, x0, 19	// D.4013, iftmp.13,
	and	x1, x1, -8	// D.4014, D.4013,
	str	x1, [sp, 216]	// D.4014, argv.__stack
	b	.L27		//
.L26:
	add	w2, w1, 16	// D.4016, D.4008,
	str	w2, [sp, 240]	// D.4016, argv.__gr_offs
	ldr	w2, [sp, 240]	// D.4018, argv.__gr_offs
	cmp	w2, 0	// D.4018,
	ble	.L28		//,
	add	x1, x0, 19	// D.4021, iftmp.13,
	and	x1, x1, -8	// D.4022, D.4021,
	str	x1, [sp, 216]	// D.4022, argv.__stack
	b	.L27		//
.L28:
	ldr	x2, [sp, 224]	// D.4024, argv.__gr_top
	sxtw	x0, w1	// D.4025, D.4008
	add	x0, x2, x0	// iftmp.13, D.4024, D.4025
.L27:
	add	x1, sp, 168	// tmp227,,
	ldr	x2, [x0]	// tmp229, *iftmp.12_61
	str	x2, [x1]	// tmp229, D.3881
	ldr	w0, [x0, 8]	// tmp230, *iftmp.12_61
	str	w0, [x1, 8]	// tmp230, D.3881
// valist-dll.c:29:   int g = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 168]	// tmp231, D.3881.a
	str	w0, [sp, 60]	// tmp231, g
// valist-dll.c:30:   int h = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w1, [sp, 240]	// D.4026, argv.__gr_offs
	ldr	x0, [sp, 216]	// iftmp.15, argv.__stack
	cmp	w1, 0	// D.4026,
	blt	.L30		//,
	add	x1, x0, 19	// D.4031, iftmp.15,
	and	x1, x1, -8	// D.4032, D.4031,
	str	x1, [sp, 216]	// D.4032, argv.__stack
	b	.L31		//
.L30:
	add	w2, w1, 16	// D.4034, D.4026,
	str	w2, [sp, 240]	// D.4034, argv.__gr_offs
	ldr	w2, [sp, 240]	// D.4036, argv.__gr_offs
	cmp	w2, 0	// D.4036,
	ble	.L32		//,
	add	x1, x0, 19	// D.4039, iftmp.15,
	and	x1, x1, -8	// D.4040, D.4039,
	str	x1, [sp, 216]	// D.4040, argv.__stack
	b	.L31		//
.L32:
	ldr	x2, [sp, 224]	// D.4042, argv.__gr_top
	sxtw	x0, w1	// D.4043, D.4026
	add	x0, x2, x0	// iftmp.15, D.4042, D.4043
.L31:
	add	x1, sp, 184	// tmp232,,
	ldr	x2, [x0]	// tmp234, *iftmp.14_63
	str	x2, [x1]	// tmp234, D.3882
	ldr	w0, [x0, 8]	// tmp235, *iftmp.14_63
	str	w0, [x1, 8]	// tmp235, D.3882
// valist-dll.c:30:   int h = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 188]	// tmp236, D.3882.b
	str	w0, [sp, 64]	// tmp236, h
// valist-dll.c:31:   int i = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w1, [sp, 240]	// D.4044, argv.__gr_offs
	ldr	x0, [sp, 216]	// iftmp.17, argv.__stack
	cmp	w1, 0	// D.4044,
	blt	.L34		//,
	add	x1, x0, 19	// D.4049, iftmp.17,
	and	x1, x1, -8	// D.4050, D.4049,
	str	x1, [sp, 216]	// D.4050, argv.__stack
	b	.L35		//
.L34:
	add	w2, w1, 16	// D.4052, D.4044,
	str	w2, [sp, 240]	// D.4052, argv.__gr_offs
	ldr	w2, [sp, 240]	// D.4054, argv.__gr_offs
	cmp	w2, 0	// D.4054,
	ble	.L36		//,
	add	x1, x0, 19	// D.4057, iftmp.17,
	and	x1, x1, -8	// D.4058, D.4057,
	str	x1, [sp, 216]	// D.4058, argv.__stack
	b	.L35		//
.L36:
	ldr	x2, [sp, 224]	// D.4060, argv.__gr_top
	sxtw	x0, w1	// D.4061, D.4044
	add	x0, x2, x0	// iftmp.17, D.4060, D.4061
.L35:
	add	x1, sp, 200	// tmp237,,
	ldr	x2, [x0]	// tmp239, *iftmp.16_65
	str	x2, [x1]	// tmp239, D.3883
	ldr	w0, [x0, 8]	// tmp240, *iftmp.16_65
	str	w0, [x1, 8]	// tmp240, D.3883
// valist-dll.c:31:   int i = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 208]	// tmp241, D.3883.c
	str	w0, [sp, 68]	// tmp241, i
// valist-dll.c:33:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 36]	// tmp242, a
	ldr	w0, [sp, 40]	// tmp243, b
	add	w1, w1, w0	// _1, tmp242, tmp243
// valist-dll.c:33:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 44]	// tmp244, c
	add	w1, w1, w0	// _2, _1, tmp244
// valist-dll.c:33:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 48]	// tmp245, d
	add	w1, w1, w0	// _3, _2, tmp245
// valist-dll.c:33:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 52]	// tmp246, e
	add	w1, w1, w0	// _4, _3, tmp246
// valist-dll.c:33:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 56]	// tmp247, f
	add	w1, w1, w0	// _5, _4, tmp247
// valist-dll.c:33:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 60]	// tmp248, g
	add	w1, w1, w0	// _6, _5, tmp248
// valist-dll.c:33:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 64]	// tmp249, h
	add	w1, w1, w0	// _7, _6, tmp249
// valist-dll.c:33:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 68]	// tmp250, i
	add	w0, w1, w0	// _29, _7, tmp250
	mov	w1, w0	// <retval>, _29
// valist-dll.c:34: }
	adrp	x0, :got:__stack_chk_guard	// tmp253,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp252, tmp253,
	ldr	x3, [sp, 248]	// tmp255, D.4062
	ldr	x2, [x0]	// tmp256,
	subs	x3, x3, x2	// tmp255, tmp256
	mov	x2, 0	// tmp256
	beq	.L39		//,
	bl	__stack_chk_fail		//
.L39:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 448	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	use_va_args, .-use_va_args
	.align	2
	.global	use_va_list
	.type	use_va_list, %function
use_va_list:
.LFB1:
	.cfi_startproc
	str	x19, [sp, -224]!	//,
	.cfi_def_cfa_offset 224
	.cfi_offset 19, -224
	str	x0, [sp, 24]	// format, format
	mov	x19, x1	// tmp191,
// valist-dll.c:39:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w1, [x19, 24]	// D.4068, argv.__gr_offs
	ldr	x0, [x19]	// iftmp.19, argv.__stack
	cmp	w1, 0	// D.4068,
	blt	.L41		//,
	add	x1, x0, 19	// D.4073, iftmp.19,
	and	x1, x1, -8	// D.4074, D.4073,
	str	x1, [x19]	// D.4074, argv.__stack
	b	.L42		//
.L41:
	add	w2, w1, 16	// D.4076, D.4068,
	str	w2, [x19, 24]	// D.4076, argv.__gr_offs
	ldr	w2, [x19, 24]	// D.4078, argv.__gr_offs
	cmp	w2, 0	// D.4078,
	ble	.L43		//,
	add	x1, x0, 19	// D.4081, iftmp.19,
	and	x1, x1, -8	// D.4082, D.4081,
	str	x1, [x19]	// D.4082, argv.__stack
	b	.L42		//
.L43:
	ldr	x2, [x19, 8]	// D.4084, argv.__gr_top
	sxtw	x0, w1	// D.4085, D.4068
	add	x0, x2, x0	// iftmp.19, D.4084, D.4085
.L42:
	add	x1, sp, 80	// tmp192,,
	ldr	x2, [x0]	// tmp194, *iftmp.18_46
	str	x2, [x1]	// tmp194, D.3887
	ldr	w0, [x0, 8]	// tmp195, *iftmp.18_46
	str	w0, [x1, 8]	// tmp195, D.3887
// valist-dll.c:39:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 80]	// tmp196, D.3887.a
	str	w0, [sp, 44]	// tmp196, a
// valist-dll.c:40:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w1, [x19, 24]	// D.4086, argv.__gr_offs
	ldr	x0, [x19]	// iftmp.21, argv.__stack
	cmp	w1, 0	// D.4086,
	blt	.L45		//,
	add	x1, x0, 19	// D.4091, iftmp.21,
	and	x1, x1, -8	// D.4092, D.4091,
	str	x1, [x19]	// D.4092, argv.__stack
	b	.L46		//
.L45:
	add	w2, w1, 16	// D.4094, D.4086,
	str	w2, [x19, 24]	// D.4094, argv.__gr_offs
	ldr	w2, [x19, 24]	// D.4096, argv.__gr_offs
	cmp	w2, 0	// D.4096,
	ble	.L47		//,
	add	x1, x0, 19	// D.4099, iftmp.21,
	and	x1, x1, -8	// D.4100, D.4099,
	str	x1, [x19]	// D.4100, argv.__stack
	b	.L46		//
.L47:
	ldr	x2, [x19, 8]	// D.4102, argv.__gr_top
	sxtw	x0, w1	// D.4103, D.4086
	add	x0, x2, x0	// iftmp.21, D.4102, D.4103
.L46:
	add	x1, sp, 96	// tmp197,,
	ldr	x2, [x0]	// tmp199, *iftmp.20_48
	str	x2, [x1]	// tmp199, D.3888
	ldr	w0, [x0, 8]	// tmp200, *iftmp.20_48
	str	w0, [x1, 8]	// tmp200, D.3888
// valist-dll.c:40:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 100]	// tmp201, D.3888.b
	str	w0, [sp, 48]	// tmp201, b
// valist-dll.c:41:   int c = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w1, [x19, 24]	// D.4104, argv.__gr_offs
	ldr	x0, [x19]	// iftmp.23, argv.__stack
	cmp	w1, 0	// D.4104,
	blt	.L49		//,
	add	x1, x0, 19	// D.4109, iftmp.23,
	and	x1, x1, -8	// D.4110, D.4109,
	str	x1, [x19]	// D.4110, argv.__stack
	b	.L50		//
.L49:
	add	w2, w1, 16	// D.4112, D.4104,
	str	w2, [x19, 24]	// D.4112, argv.__gr_offs
	ldr	w2, [x19, 24]	// D.4114, argv.__gr_offs
	cmp	w2, 0	// D.4114,
	ble	.L51		//,
	add	x1, x0, 19	// D.4117, iftmp.23,
	and	x1, x1, -8	// D.4118, D.4117,
	str	x1, [x19]	// D.4118, argv.__stack
	b	.L50		//
.L51:
	ldr	x2, [x19, 8]	// D.4120, argv.__gr_top
	sxtw	x0, w1	// D.4121, D.4104
	add	x0, x2, x0	// iftmp.23, D.4120, D.4121
.L50:
	add	x1, sp, 112	// tmp202,,
	ldr	x2, [x0]	// tmp204, *iftmp.22_50
	str	x2, [x1]	// tmp204, D.3889
	ldr	w0, [x0, 8]	// tmp205, *iftmp.22_50
	str	w0, [x1, 8]	// tmp205, D.3889
// valist-dll.c:41:   int c = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 120]	// tmp206, D.3889.c
	str	w0, [sp, 52]	// tmp206, c
// valist-dll.c:42:   int d = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w1, [x19, 24]	// D.4122, argv.__gr_offs
	ldr	x0, [x19]	// iftmp.25, argv.__stack
	cmp	w1, 0	// D.4122,
	blt	.L53		//,
	add	x1, x0, 19	// D.4127, iftmp.25,
	and	x1, x1, -8	// D.4128, D.4127,
	str	x1, [x19]	// D.4128, argv.__stack
	b	.L54		//
.L53:
	add	w2, w1, 16	// D.4130, D.4122,
	str	w2, [x19, 24]	// D.4130, argv.__gr_offs
	ldr	w2, [x19, 24]	// D.4132, argv.__gr_offs
	cmp	w2, 0	// D.4132,
	ble	.L55		//,
	add	x1, x0, 19	// D.4135, iftmp.25,
	and	x1, x1, -8	// D.4136, D.4135,
	str	x1, [x19]	// D.4136, argv.__stack
	b	.L54		//
.L55:
	ldr	x2, [x19, 8]	// D.4138, argv.__gr_top
	sxtw	x0, w1	// D.4139, D.4122
	add	x0, x2, x0	// iftmp.25, D.4138, D.4139
.L54:
	add	x1, sp, 128	// tmp207,,
	ldr	x2, [x0]	// tmp209, *iftmp.24_52
	str	x2, [x1]	// tmp209, D.3890
	ldr	w0, [x0, 8]	// tmp210, *iftmp.24_52
	str	w0, [x1, 8]	// tmp210, D.3890
// valist-dll.c:42:   int d = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 128]	// tmp211, D.3890.a
	str	w0, [sp, 56]	// tmp211, d
// valist-dll.c:43:   int e = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w1, [x19, 24]	// D.4140, argv.__gr_offs
	ldr	x0, [x19]	// iftmp.27, argv.__stack
	cmp	w1, 0	// D.4140,
	blt	.L57		//,
	add	x1, x0, 19	// D.4145, iftmp.27,
	and	x1, x1, -8	// D.4146, D.4145,
	str	x1, [x19]	// D.4146, argv.__stack
	b	.L58		//
.L57:
	add	w2, w1, 16	// D.4148, D.4140,
	str	w2, [x19, 24]	// D.4148, argv.__gr_offs
	ldr	w2, [x19, 24]	// D.4150, argv.__gr_offs
	cmp	w2, 0	// D.4150,
	ble	.L59		//,
	add	x1, x0, 19	// D.4153, iftmp.27,
	and	x1, x1, -8	// D.4154, D.4153,
	str	x1, [x19]	// D.4154, argv.__stack
	b	.L58		//
.L59:
	ldr	x2, [x19, 8]	// D.4156, argv.__gr_top
	sxtw	x0, w1	// D.4157, D.4140
	add	x0, x2, x0	// iftmp.27, D.4156, D.4157
.L58:
	add	x1, sp, 144	// tmp212,,
	ldr	x2, [x0]	// tmp214, *iftmp.26_54
	str	x2, [x1]	// tmp214, D.3891
	ldr	w0, [x0, 8]	// tmp215, *iftmp.26_54
	str	w0, [x1, 8]	// tmp215, D.3891
// valist-dll.c:43:   int e = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 148]	// tmp216, D.3891.b
	str	w0, [sp, 60]	// tmp216, e
// valist-dll.c:44:   int f = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w1, [x19, 24]	// D.4158, argv.__gr_offs
	ldr	x0, [x19]	// iftmp.29, argv.__stack
	cmp	w1, 0	// D.4158,
	blt	.L61		//,
	add	x1, x0, 19	// D.4163, iftmp.29,
	and	x1, x1, -8	// D.4164, D.4163,
	str	x1, [x19]	// D.4164, argv.__stack
	b	.L62		//
.L61:
	add	w2, w1, 16	// D.4166, D.4158,
	str	w2, [x19, 24]	// D.4166, argv.__gr_offs
	ldr	w2, [x19, 24]	// D.4168, argv.__gr_offs
	cmp	w2, 0	// D.4168,
	ble	.L63		//,
	add	x1, x0, 19	// D.4171, iftmp.29,
	and	x1, x1, -8	// D.4172, D.4171,
	str	x1, [x19]	// D.4172, argv.__stack
	b	.L62		//
.L63:
	ldr	x2, [x19, 8]	// D.4174, argv.__gr_top
	sxtw	x0, w1	// D.4175, D.4158
	add	x0, x2, x0	// iftmp.29, D.4174, D.4175
.L62:
	add	x1, sp, 160	// tmp217,,
	ldr	x2, [x0]	// tmp219, *iftmp.28_56
	str	x2, [x1]	// tmp219, D.3892
	ldr	w0, [x0, 8]	// tmp220, *iftmp.28_56
	str	w0, [x1, 8]	// tmp220, D.3892
// valist-dll.c:44:   int f = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 168]	// tmp221, D.3892.c
	str	w0, [sp, 64]	// tmp221, f
// valist-dll.c:45:   int g = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w1, [x19, 24]	// D.4176, argv.__gr_offs
	ldr	x0, [x19]	// iftmp.31, argv.__stack
	cmp	w1, 0	// D.4176,
	blt	.L65		//,
	add	x1, x0, 19	// D.4181, iftmp.31,
	and	x1, x1, -8	// D.4182, D.4181,
	str	x1, [x19]	// D.4182, argv.__stack
	b	.L66		//
.L65:
	add	w2, w1, 16	// D.4184, D.4176,
	str	w2, [x19, 24]	// D.4184, argv.__gr_offs
	ldr	w2, [x19, 24]	// D.4186, argv.__gr_offs
	cmp	w2, 0	// D.4186,
	ble	.L67		//,
	add	x1, x0, 19	// D.4189, iftmp.31,
	and	x1, x1, -8	// D.4190, D.4189,
	str	x1, [x19]	// D.4190, argv.__stack
	b	.L66		//
.L67:
	ldr	x2, [x19, 8]	// D.4192, argv.__gr_top
	sxtw	x0, w1	// D.4193, D.4176
	add	x0, x2, x0	// iftmp.31, D.4192, D.4193
.L66:
	add	x1, sp, 176	// tmp222,,
	ldr	x2, [x0]	// tmp224, *iftmp.30_58
	str	x2, [x1]	// tmp224, D.3893
	ldr	w0, [x0, 8]	// tmp225, *iftmp.30_58
	str	w0, [x1, 8]	// tmp225, D.3893
// valist-dll.c:45:   int g = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 176]	// tmp226, D.3893.a
	str	w0, [sp, 68]	// tmp226, g
// valist-dll.c:46:   int h = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w1, [x19, 24]	// D.4194, argv.__gr_offs
	ldr	x0, [x19]	// iftmp.33, argv.__stack
	cmp	w1, 0	// D.4194,
	blt	.L69		//,
	add	x1, x0, 19	// D.4199, iftmp.33,
	and	x1, x1, -8	// D.4200, D.4199,
	str	x1, [x19]	// D.4200, argv.__stack
	b	.L70		//
.L69:
	add	w2, w1, 16	// D.4202, D.4194,
	str	w2, [x19, 24]	// D.4202, argv.__gr_offs
	ldr	w2, [x19, 24]	// D.4204, argv.__gr_offs
	cmp	w2, 0	// D.4204,
	ble	.L71		//,
	add	x1, x0, 19	// D.4207, iftmp.33,
	and	x1, x1, -8	// D.4208, D.4207,
	str	x1, [x19]	// D.4208, argv.__stack
	b	.L70		//
.L71:
	ldr	x2, [x19, 8]	// D.4210, argv.__gr_top
	sxtw	x0, w1	// D.4211, D.4194
	add	x0, x2, x0	// iftmp.33, D.4210, D.4211
.L70:
	add	x1, sp, 192	// tmp227,,
	ldr	x2, [x0]	// tmp229, *iftmp.32_60
	str	x2, [x1]	// tmp229, D.3894
	ldr	w0, [x0, 8]	// tmp230, *iftmp.32_60
	str	w0, [x1, 8]	// tmp230, D.3894
// valist-dll.c:46:   int h = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 196]	// tmp231, D.3894.b
	str	w0, [sp, 72]	// tmp231, h
// valist-dll.c:47:   int i = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w1, [x19, 24]	// D.4212, argv.__gr_offs
	ldr	x0, [x19]	// iftmp.35, argv.__stack
	cmp	w1, 0	// D.4212,
	blt	.L73		//,
	add	x1, x0, 19	// D.4217, iftmp.35,
	and	x1, x1, -8	// D.4218, D.4217,
	str	x1, [x19]	// D.4218, argv.__stack
	b	.L74		//
.L73:
	add	w2, w1, 16	// D.4220, D.4212,
	str	w2, [x19, 24]	// D.4220, argv.__gr_offs
	ldr	w2, [x19, 24]	// D.4222, argv.__gr_offs
	cmp	w2, 0	// D.4222,
	ble	.L75		//,
	add	x1, x0, 19	// D.4225, iftmp.35,
	and	x1, x1, -8	// D.4226, D.4225,
	str	x1, [x19]	// D.4226, argv.__stack
	b	.L74		//
.L75:
	ldr	x2, [x19, 8]	// D.4228, argv.__gr_top
	sxtw	x0, w1	// D.4229, D.4212
	add	x0, x2, x0	// iftmp.35, D.4228, D.4229
.L74:
	add	x1, sp, 208	// tmp232,,
	ldr	x2, [x0]	// tmp234, *iftmp.34_62
	str	x2, [x1]	// tmp234, D.3895
	ldr	w0, [x0, 8]	// tmp235, *iftmp.34_62
	str	w0, [x1, 8]	// tmp235, D.3895
// valist-dll.c:47:   int i = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 216]	// tmp236, D.3895.c
	str	w0, [sp, 76]	// tmp236, i
// valist-dll.c:48:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 44]	// tmp237, a
	ldr	w0, [sp, 48]	// tmp238, b
	add	w1, w1, w0	// _1, tmp237, tmp238
// valist-dll.c:48:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 52]	// tmp239, c
	add	w1, w1, w0	// _2, _1, tmp239
// valist-dll.c:48:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 56]	// tmp240, d
	add	w1, w1, w0	// _3, _2, tmp240
// valist-dll.c:48:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 60]	// tmp241, e
	add	w1, w1, w0	// _4, _3, tmp241
// valist-dll.c:48:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 64]	// tmp242, f
	add	w1, w1, w0	// _5, _4, tmp242
// valist-dll.c:48:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 68]	// tmp243, g
	add	w1, w1, w0	// _6, _5, tmp243
// valist-dll.c:48:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 72]	// tmp244, h
	add	w1, w1, w0	// _7, _6, tmp244
// valist-dll.c:48:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 76]	// tmp245, i
	add	w0, w1, w0	// _27, _7, tmp245
// valist-dll.c:49: }
	ldr	x19, [sp], 224	//,
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	use_va_list, .-use_va_list
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
