	.arch armv8-a
	.file	"valist-use-dll.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	test_va_list
	.type	test_va_list, %function
test_va_list:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// format, format
	str	x1, [sp, 248]	//,
	str	x2, [sp, 256]	//,
	str	x3, [sp, 264]	//,
	str	x4, [sp, 272]	//,
	str	x5, [sp, 280]	//,
	str	x6, [sp, 288]	//,
	str	x7, [sp, 296]	//,
	str	q0, [sp, 112]	//,
	str	q1, [sp, 128]	//,
	str	q2, [sp, 144]	//,
	str	q3, [sp, 160]	//,
	str	q4, [sp, 176]	//,
	str	q5, [sp, 192]	//,
	str	q6, [sp, 208]	//,
	str	q7, [sp, 224]	//,
// valist-use-dll.c:20: {
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.4308
	mov	x1, 0	// tmp108
// valist-use-dll.c:22:   va_start (argv, format);
	add	x0, sp, 304	// tmp113,,
	str	x0, [sp, 72]	// tmp113, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp114,,
	str	x0, [sp, 80]	// tmp114, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
// valist-use-dll.c:23:   int retval = use_va_list (format, argv);
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, format
	bl	use_va_list		//
	str	w0, [sp, 68]	//, retval
// valist-use-dll.c:25:   return retval;
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
// valist-use-dll.c:26: }
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.4308
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L3		//,
	bl	__stack_chk_fail		//
.L3:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	test_va_list, .-test_va_list
	.align	2
	.global	use_indirect_va_list
	.type	use_indirect_va_list, %function
use_indirect_va_list:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -64
	str	x0, [sp, 72]	// format, format
	mov	x19, x1	// tmp94,
// valist-use-dll.c:31:   return use_va_list (format, argv);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	mov	x1, x0	//, tmp99
	ldr	x0, [sp, 72]	//, format
	bl	use_va_list		//
// valist-use-dll.c:32: }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	use_indirect_va_list, .-use_indirect_va_list
	.align	2
	.global	test_indirect_va_list
	.type	test_indirect_va_list, %function
test_indirect_va_list:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// format, format
	str	x1, [sp, 248]	//,
	str	x2, [sp, 256]	//,
	str	x3, [sp, 264]	//,
	str	x4, [sp, 272]	//,
	str	x5, [sp, 280]	//,
	str	x6, [sp, 288]	//,
	str	x7, [sp, 296]	//,
	str	q0, [sp, 112]	//,
	str	q1, [sp, 128]	//,
	str	q2, [sp, 144]	//,
	str	q3, [sp, 160]	//,
	str	q4, [sp, 176]	//,
	str	q5, [sp, 192]	//,
	str	q6, [sp, 208]	//,
	str	q7, [sp, 224]	//,
// valist-use-dll.c:36: {
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.4316
	mov	x1, 0	// tmp108
// valist-use-dll.c:38:   va_start (argv, format);
	add	x0, sp, 304	// tmp113,,
	str	x0, [sp, 72]	// tmp113, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp114,,
	str	x0, [sp, 80]	// tmp114, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
// valist-use-dll.c:39:   int retval = use_indirect_va_list (format, argv);
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, format
	bl	use_indirect_va_list		//
	str	w0, [sp, 68]	//, retval
// valist-use-dll.c:41:   return retval;
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
// valist-use-dll.c:42: }
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.4316
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L8		//,
	bl	__stack_chk_fail		//
.L8:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2:
	.size	test_indirect_va_list, .-test_indirect_va_list
	.section	.rodata
	.align	3
.LC9:
	.string	"format"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #288	//,,
	.cfi_def_cfa_offset 288
	stp	x29, x30, [sp, 96]	//,,
	.cfi_offset 29, -192
	.cfi_offset 30, -184
	add	x29, sp, 96	//,,
	str	w0, [sp, 124]	// argc, argc
	str	x1, [sp, 112]	// argv, argv
// valist-use-dll.c:54:   struct not_short_vector_12_bytes nsv12_a = { .a = 1, .b = 1, .c = 1 };
	adrp	x0, .LC0	// tmp102,
	add	x1, x0, :lo12:.LC0	// tmp101, tmp102,
	add	x0, sp, 144	// tmp103,,
	ldr	x2, [x1]	// tmp105,
	str	x2, [x0]	// tmp105, nsv12_a
	ldr	w1, [x1, 8]	// tmp106,
	str	w1, [x0, 8]	// tmp106, nsv12_a
// valist-use-dll.c:55:   struct not_short_vector_12_bytes nsv12_b = { .a = 2, .b = 2, .c = 2 };
	adrp	x0, .LC1	// tmp108,
	add	x1, x0, :lo12:.LC1	// tmp107, tmp108,
	add	x0, sp, 160	// tmp109,,
	ldr	x2, [x1]	// tmp111,
	str	x2, [x0]	// tmp111, nsv12_b
	ldr	w1, [x1, 8]	// tmp112,
	str	w1, [x0, 8]	// tmp112, nsv12_b
// valist-use-dll.c:56:   struct not_short_vector_12_bytes nsv12_c = { .a = 3, .b = 3, .c = 3 };
	adrp	x0, .LC2	// tmp114,
	add	x1, x0, :lo12:.LC2	// tmp113, tmp114,
	add	x0, sp, 176	// tmp115,,
	ldr	x2, [x1]	// tmp117,
	str	x2, [x0]	// tmp117, nsv12_c
	ldr	w1, [x1, 8]	// tmp118,
	str	w1, [x0, 8]	// tmp118, nsv12_c
// valist-use-dll.c:57:   struct not_short_vector_12_bytes nsv12_d = { .a = 5, .b = 5, .c = 5 };
	adrp	x0, .LC3	// tmp120,
	add	x1, x0, :lo12:.LC3	// tmp119, tmp120,
	add	x0, sp, 192	// tmp121,,
	ldr	x2, [x1]	// tmp123,
	str	x2, [x0]	// tmp123, nsv12_d
	ldr	w1, [x1, 8]	// tmp124,
	str	w1, [x0, 8]	// tmp124, nsv12_d
// valist-use-dll.c:58:   struct not_short_vector_12_bytes nsv12_e = { .a = 8, .b = 8, .c = 8 };
	adrp	x0, .LC4	// tmp126,
	add	x1, x0, :lo12:.LC4	// tmp125, tmp126,
	add	x0, sp, 208	// tmp127,,
	ldr	x2, [x1]	// tmp129,
	str	x2, [x0]	// tmp129, nsv12_e
	ldr	w1, [x1, 8]	// tmp130,
	str	w1, [x0, 8]	// tmp130, nsv12_e
// valist-use-dll.c:59:   struct not_short_vector_12_bytes nsv12_f = { .a = 13, .b = 13, .c = 13 };
	adrp	x0, .LC5	// tmp132,
	add	x1, x0, :lo12:.LC5	// tmp131, tmp132,
	add	x0, sp, 224	// tmp133,,
	ldr	x2, [x1]	// tmp135,
	str	x2, [x0]	// tmp135, nsv12_f
	ldr	w1, [x1, 8]	// tmp136,
	str	w1, [x0, 8]	// tmp136, nsv12_f
// valist-use-dll.c:60:   struct not_short_vector_12_bytes nsv12_g = { .a = 21, .b = 21, .c = 21 };
	adrp	x0, .LC6	// tmp138,
	add	x1, x0, :lo12:.LC6	// tmp137, tmp138,
	add	x0, sp, 240	// tmp139,,
	ldr	x2, [x1]	// tmp141,
	str	x2, [x0]	// tmp141, nsv12_g
	ldr	w1, [x1, 8]	// tmp142,
	str	w1, [x0, 8]	// tmp142, nsv12_g
// valist-use-dll.c:61:   struct not_short_vector_12_bytes nsv12_h = { .a = 34, .b = 34, .c = 34 };
	adrp	x0, .LC7	// tmp144,
	add	x1, x0, :lo12:.LC7	// tmp143, tmp144,
	add	x0, sp, 256	// tmp145,,
	ldr	x2, [x1]	// tmp147,
	str	x2, [x0]	// tmp147, nsv12_h
	ldr	w1, [x1, 8]	// tmp148,
	str	w1, [x0, 8]	// tmp148, nsv12_h
// valist-use-dll.c:62:   struct not_short_vector_12_bytes nsv12_i = { .a = 55, .b = 55, .c = 55 };
	adrp	x0, .LC8	// tmp150,
	add	x1, x0, :lo12:.LC8	// tmp149, tmp150,
	add	x0, sp, 272	// tmp151,,
	ldr	x2, [x1]	// tmp153,
	str	x2, [x0]	// tmp153, nsv12_i
	ldr	w1, [x1, 8]	// tmp154,
	str	w1, [x0, 8]	// tmp154, nsv12_i
// valist-use-dll.c:64:   int test1 = use_va_args ("format", nsv12_a, nsv12_b, nsv12_c,
	ldr	x5, [sp, 176]	// tmp155, nsv12_c
	ldr	w6, [sp, 184]	// tmp156, nsv12_c
	ldr	x3, [sp, 160]	// tmp157, nsv12_b
	ldr	w4, [sp, 168]	// tmp158, nsv12_b
	ldr	x8, [sp, 144]	// tmp159, nsv12_a
	ldr	w7, [sp, 152]	// tmp160, nsv12_a
	add	x0, sp, 80	// tmp161,,
	add	x1, sp, 272	// tmp162,,
	ldr	x2, [x1]	// tmp163, nsv12_i
	str	x2, [x0]	// tmp163,
	ldr	w1, [x1, 8]	// tmp164, nsv12_i
	str	w1, [x0, 8]	// tmp164,
	add	x0, sp, 64	// tmp165,,
	add	x1, sp, 256	// tmp166,,
	ldr	x2, [x1]	// tmp167, nsv12_h
	str	x2, [x0]	// tmp167,
	ldr	w1, [x1, 8]	// tmp168, nsv12_h
	str	w1, [x0, 8]	// tmp168,
	add	x0, sp, 48	// tmp169,,
	add	x1, sp, 240	// tmp170,,
	ldr	x2, [x1]	// tmp171, nsv12_g
	str	x2, [x0]	// tmp171,
	ldr	w1, [x1, 8]	// tmp172, nsv12_g
	str	w1, [x0, 8]	// tmp172,
	add	x0, sp, 32	// tmp173,,
	add	x1, sp, 224	// tmp174,,
	ldr	x2, [x1]	// tmp175, nsv12_f
	str	x2, [x0]	// tmp175,
	ldr	w1, [x1, 8]	// tmp176, nsv12_f
	str	w1, [x0, 8]	// tmp176,
	add	x0, sp, 16	// tmp177,,
	add	x1, sp, 208	// tmp178,,
	ldr	x2, [x1]	// tmp179, nsv12_e
	str	x2, [x0]	// tmp179,
	ldr	w1, [x1, 8]	// tmp180, nsv12_e
	str	w1, [x0, 8]	// tmp180,
	mov	x1, sp	// tmp181,
	add	x0, sp, 192	// tmp182,,
	ldr	x2, [x0]	// tmp183, nsv12_d
	str	x2, [x1]	// tmp183,
	ldr	w0, [x0, 8]	// tmp184, nsv12_d
	str	w0, [x1, 8]	// tmp184,
	mov	x1, x8	//, tmp159
	mov	x2, x7	//, tmp160
	adrp	x0, .LC9	// tmp185,
	add	x0, x0, :lo12:.LC9	//, tmp185,
	bl	use_va_args		//
	str	w0, [sp, 132]	//, test1
// valist-use-dll.c:66:   int test2 = test_va_list ("format", nsv12_a, nsv12_b, nsv12_c,
	ldr	x5, [sp, 176]	// tmp186, nsv12_c
	ldr	w6, [sp, 184]	// tmp187, nsv12_c
	ldr	x3, [sp, 160]	// tmp188, nsv12_b
	ldr	w4, [sp, 168]	// tmp189, nsv12_b
	ldr	x8, [sp, 144]	// tmp190, nsv12_a
	ldr	w7, [sp, 152]	// tmp191, nsv12_a
	add	x0, sp, 80	// tmp192,,
	add	x1, sp, 272	// tmp193,,
	ldr	x2, [x1]	// tmp194, nsv12_i
	str	x2, [x0]	// tmp194,
	ldr	w1, [x1, 8]	// tmp195, nsv12_i
	str	w1, [x0, 8]	// tmp195,
	add	x0, sp, 64	// tmp196,,
	add	x1, sp, 256	// tmp197,,
	ldr	x2, [x1]	// tmp198, nsv12_h
	str	x2, [x0]	// tmp198,
	ldr	w1, [x1, 8]	// tmp199, nsv12_h
	str	w1, [x0, 8]	// tmp199,
	add	x0, sp, 48	// tmp200,,
	add	x1, sp, 240	// tmp201,,
	ldr	x2, [x1]	// tmp202, nsv12_g
	str	x2, [x0]	// tmp202,
	ldr	w1, [x1, 8]	// tmp203, nsv12_g
	str	w1, [x0, 8]	// tmp203,
	add	x0, sp, 32	// tmp204,,
	add	x1, sp, 224	// tmp205,,
	ldr	x2, [x1]	// tmp206, nsv12_f
	str	x2, [x0]	// tmp206,
	ldr	w1, [x1, 8]	// tmp207, nsv12_f
	str	w1, [x0, 8]	// tmp207,
	add	x0, sp, 16	// tmp208,,
	add	x1, sp, 208	// tmp209,,
	ldr	x2, [x1]	// tmp210, nsv12_e
	str	x2, [x0]	// tmp210,
	ldr	w1, [x1, 8]	// tmp211, nsv12_e
	str	w1, [x0, 8]	// tmp211,
	mov	x1, sp	// tmp212,
	add	x0, sp, 192	// tmp213,,
	ldr	x2, [x0]	// tmp214, nsv12_d
	str	x2, [x1]	// tmp214,
	ldr	w0, [x0, 8]	// tmp215, nsv12_d
	str	w0, [x1, 8]	// tmp215,
	mov	x1, x8	//, tmp190
	mov	x2, x7	//, tmp191
	adrp	x0, .LC9	// tmp216,
	add	x0, x0, :lo12:.LC9	//, tmp216,
	bl	test_va_list		//
	str	w0, [sp, 136]	//, test2
// valist-use-dll.c:68:   int test3 = test_indirect_va_list ("format", nsv12_a, nsv12_b, nsv12_c,
	ldr	x5, [sp, 176]	// tmp217, nsv12_c
	ldr	w6, [sp, 184]	// tmp218, nsv12_c
	ldr	x3, [sp, 160]	// tmp219, nsv12_b
	ldr	w4, [sp, 168]	// tmp220, nsv12_b
	ldr	x8, [sp, 144]	// tmp221, nsv12_a
	ldr	w7, [sp, 152]	// tmp222, nsv12_a
	add	x0, sp, 80	// tmp223,,
	add	x1, sp, 272	// tmp224,,
	ldr	x2, [x1]	// tmp225, nsv12_i
	str	x2, [x0]	// tmp225,
	ldr	w1, [x1, 8]	// tmp226, nsv12_i
	str	w1, [x0, 8]	// tmp226,
	add	x0, sp, 64	// tmp227,,
	add	x1, sp, 256	// tmp228,,
	ldr	x2, [x1]	// tmp229, nsv12_h
	str	x2, [x0]	// tmp229,
	ldr	w1, [x1, 8]	// tmp230, nsv12_h
	str	w1, [x0, 8]	// tmp230,
	add	x0, sp, 48	// tmp231,,
	add	x1, sp, 240	// tmp232,,
	ldr	x2, [x1]	// tmp233, nsv12_g
	str	x2, [x0]	// tmp233,
	ldr	w1, [x1, 8]	// tmp234, nsv12_g
	str	w1, [x0, 8]	// tmp234,
	add	x0, sp, 32	// tmp235,,
	add	x1, sp, 224	// tmp236,,
	ldr	x2, [x1]	// tmp237, nsv12_f
	str	x2, [x0]	// tmp237,
	ldr	w1, [x1, 8]	// tmp238, nsv12_f
	str	w1, [x0, 8]	// tmp238,
	add	x0, sp, 16	// tmp239,,
	add	x1, sp, 208	// tmp240,,
	ldr	x2, [x1]	// tmp241, nsv12_e
	str	x2, [x0]	// tmp241,
	ldr	w1, [x1, 8]	// tmp242, nsv12_e
	str	w1, [x0, 8]	// tmp242,
	mov	x1, sp	// tmp243,
	add	x0, sp, 192	// tmp244,,
	ldr	x2, [x0]	// tmp245, nsv12_d
	str	x2, [x1]	// tmp245,
	ldr	w0, [x0, 8]	// tmp246, nsv12_d
	str	w0, [x1, 8]	// tmp246,
	mov	x1, x8	//, tmp221
	mov	x2, x7	//, tmp222
	adrp	x0, .LC9	// tmp247,
	add	x0, x0, :lo12:.LC9	//, tmp247,
	bl	test_indirect_va_list		//
	str	w0, [sp, 140]	//, test3
// valist-use-dll.c:71:   return ((test1 == 142) ? 0 : 1) +
	ldr	w0, [sp, 132]	// tmp249, test1
	cmp	w0, 142	// tmp249,
	cset	w0, ne	// tmp250,
	and	w0, w0, 255	// _1, tmp248
	mov	w1, w0	// _2, _1
// valist-use-dll.c:72:     ((test2 == 142) ? 0 : 1) +
	ldr	w0, [sp, 136]	// tmp252, test2
	cmp	w0, 142	// tmp252,
	cset	w0, ne	// tmp253,
	and	w0, w0, 255	// _3, tmp251
// valist-use-dll.c:71:   return ((test1 == 142) ? 0 : 1) +
	add	w0, w1, w0	// _5, _2, _4
// valist-use-dll.c:73:     ((test3 == 142) ? 0 : 1);
	ldr	w1, [sp, 140]	// tmp255, test3
	cmp	w1, 142	// tmp255,
	cset	w1, ne	// tmp256,
	and	w1, w1, 255	// _6, tmp254
// valist-use-dll.c:72:     ((test2 == 142) ? 0 : 1) +
	add	w0, w0, w1	// _24, _5, _7
// valist-use-dll.c:74: }
	ldp	x29, x30, [sp, 96]	//,,
	add	sp, sp, 288	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
// a:
	.word	1
// b:
	.word	1
// c:
	.word	1
	.align	3
.LC1:
// a:
	.word	2
// b:
	.word	2
// c:
	.word	2
	.align	3
.LC2:
// a:
	.word	3
// b:
	.word	3
// c:
	.word	3
	.align	3
.LC3:
// a:
	.word	5
// b:
	.word	5
// c:
	.word	5
	.align	3
.LC4:
// a:
	.word	8
// b:
	.word	8
// c:
	.word	8
	.align	3
.LC5:
// a:
	.word	13
// b:
	.word	13
// c:
	.word	13
	.align	3
.LC6:
// a:
	.word	21
// b:
	.word	21
// c:
	.word	21
	.align	3
.LC7:
// a:
	.word	34
// b:
	.word	34
// c:
	.word	34
	.align	3
.LC8:
// a:
	.word	55
// b:
	.word	55
// c:
	.word	55
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
