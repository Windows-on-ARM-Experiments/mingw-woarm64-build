	.arch armv8-a
	.file	"valist-use-dll.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -ggdb -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
.Ltext0:
	.file 0 "/home/blachex/mingw-woarm64-build/tests/valist" "valist-use-dll.c"
	.align	2
	.global	test_va_list
	.type	test_va_list, %function
test_va_list:
.LFB0:
	.file 1 "valist-use-dll.c"
	.loc 1 20 1
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
	.loc 1 20 1
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.4311
	mov	x1, 0	// tmp108
// valist-use-dll.c:22:   va_start (argv, format);
	.loc 1 22 3
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
	.loc 1 23 16
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
	.loc 1 25 10
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
// valist-use-dll.c:26: }
	.loc 1 26 1
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.4311
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
	.loc 1 30 1
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
	.loc 1 31 10
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	mov	x1, x0	//, tmp99
	ldr	x0, [sp, 72]	//, format
	bl	use_va_list		//
// valist-use-dll.c:32: }
	.loc 1 32 1
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
	.loc 1 36 1
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
	.loc 1 36 1
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.4319
	mov	x1, 0	// tmp108
// valist-use-dll.c:38:   va_start (argv, format);
	.loc 1 38 3
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
	.loc 1 39 16
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
	.loc 1 41 10
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
// valist-use-dll.c:42: }
	.loc 1 42 1
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.4319
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
	.loc 1 53 1
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
	.loc 1 54 36
	adrp	x0, .LC0	// tmp102,
	add	x1, x0, :lo12:.LC0	// tmp101, tmp102,
	add	x0, sp, 144	// tmp103,,
	ldr	x2, [x1]	// tmp105,
	str	x2, [x0]	// tmp105, nsv12_a
	ldr	w1, [x1, 8]	// tmp106,
	str	w1, [x0, 8]	// tmp106, nsv12_a
// valist-use-dll.c:55:   struct not_short_vector_12_bytes nsv12_b = { .a = 2, .b = 2, .c = 2 };
	.loc 1 55 36
	adrp	x0, .LC1	// tmp108,
	add	x1, x0, :lo12:.LC1	// tmp107, tmp108,
	add	x0, sp, 160	// tmp109,,
	ldr	x2, [x1]	// tmp111,
	str	x2, [x0]	// tmp111, nsv12_b
	ldr	w1, [x1, 8]	// tmp112,
	str	w1, [x0, 8]	// tmp112, nsv12_b
// valist-use-dll.c:56:   struct not_short_vector_12_bytes nsv12_c = { .a = 3, .b = 3, .c = 3 };
	.loc 1 56 36
	adrp	x0, .LC2	// tmp114,
	add	x1, x0, :lo12:.LC2	// tmp113, tmp114,
	add	x0, sp, 176	// tmp115,,
	ldr	x2, [x1]	// tmp117,
	str	x2, [x0]	// tmp117, nsv12_c
	ldr	w1, [x1, 8]	// tmp118,
	str	w1, [x0, 8]	// tmp118, nsv12_c
// valist-use-dll.c:57:   struct not_short_vector_12_bytes nsv12_d = { .a = 5, .b = 5, .c = 5 };
	.loc 1 57 36
	adrp	x0, .LC3	// tmp120,
	add	x1, x0, :lo12:.LC3	// tmp119, tmp120,
	add	x0, sp, 192	// tmp121,,
	ldr	x2, [x1]	// tmp123,
	str	x2, [x0]	// tmp123, nsv12_d
	ldr	w1, [x1, 8]	// tmp124,
	str	w1, [x0, 8]	// tmp124, nsv12_d
// valist-use-dll.c:58:   struct not_short_vector_12_bytes nsv12_e = { .a = 8, .b = 8, .c = 8 };
	.loc 1 58 36
	adrp	x0, .LC4	// tmp126,
	add	x1, x0, :lo12:.LC4	// tmp125, tmp126,
	add	x0, sp, 208	// tmp127,,
	ldr	x2, [x1]	// tmp129,
	str	x2, [x0]	// tmp129, nsv12_e
	ldr	w1, [x1, 8]	// tmp130,
	str	w1, [x0, 8]	// tmp130, nsv12_e
// valist-use-dll.c:59:   struct not_short_vector_12_bytes nsv12_f = { .a = 13, .b = 13, .c = 13 };
	.loc 1 59 36
	adrp	x0, .LC5	// tmp132,
	add	x1, x0, :lo12:.LC5	// tmp131, tmp132,
	add	x0, sp, 224	// tmp133,,
	ldr	x2, [x1]	// tmp135,
	str	x2, [x0]	// tmp135, nsv12_f
	ldr	w1, [x1, 8]	// tmp136,
	str	w1, [x0, 8]	// tmp136, nsv12_f
// valist-use-dll.c:60:   struct not_short_vector_12_bytes nsv12_g = { .a = 21, .b = 21, .c = 21 };
	.loc 1 60 36
	adrp	x0, .LC6	// tmp138,
	add	x1, x0, :lo12:.LC6	// tmp137, tmp138,
	add	x0, sp, 240	// tmp139,,
	ldr	x2, [x1]	// tmp141,
	str	x2, [x0]	// tmp141, nsv12_g
	ldr	w1, [x1, 8]	// tmp142,
	str	w1, [x0, 8]	// tmp142, nsv12_g
// valist-use-dll.c:61:   struct not_short_vector_12_bytes nsv12_h = { .a = 34, .b = 34, .c = 34 };
	.loc 1 61 36
	adrp	x0, .LC7	// tmp144,
	add	x1, x0, :lo12:.LC7	// tmp143, tmp144,
	add	x0, sp, 256	// tmp145,,
	ldr	x2, [x1]	// tmp147,
	str	x2, [x0]	// tmp147, nsv12_h
	ldr	w1, [x1, 8]	// tmp148,
	str	w1, [x0, 8]	// tmp148, nsv12_h
// valist-use-dll.c:62:   struct not_short_vector_12_bytes nsv12_i = { .a = 55, .b = 55, .c = 55 };
	.loc 1 62 36
	adrp	x0, .LC8	// tmp150,
	add	x1, x0, :lo12:.LC8	// tmp149, tmp150,
	add	x0, sp, 272	// tmp151,,
	ldr	x2, [x1]	// tmp153,
	str	x2, [x0]	// tmp153, nsv12_i
	ldr	w1, [x1, 8]	// tmp154,
	str	w1, [x0, 8]	// tmp154, nsv12_i
// valist-use-dll.c:64:   int test1 = use_va_args ("format", nsv12_a, nsv12_b, nsv12_c,
	.loc 1 64 15
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
	.loc 1 66 15
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
	.loc 1 68 15
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
	.loc 1 71 30
	ldr	w0, [sp, 132]	// tmp249, test1
	cmp	w0, 142	// tmp249,
	cset	w0, ne	// tmp250,
	and	w0, w0, 255	// _1, tmp248
	mov	w1, w0	// _2, _1
// valist-use-dll.c:72:     ((test2 == 142) ? 0 : 1) +
	.loc 1 72 25
	ldr	w0, [sp, 136]	// tmp252, test2
	cmp	w0, 142	// tmp252,
	cset	w0, ne	// tmp253,
	and	w0, w0, 255	// _3, tmp251
// valist-use-dll.c:71:   return ((test1 == 142) ? 0 : 1) +
	.loc 1 71 35
	add	w0, w1, w0	// _5, _2, _4
// valist-use-dll.c:73:     ((test3 == 142) ? 0 : 1);
	.loc 1 73 25
	ldr	w1, [sp, 140]	// tmp255, test3
	cmp	w1, 142	// tmp255,
	cset	w1, ne	// tmp256,
	and	w1, w1, 255	// _6, tmp254
// valist-use-dll.c:72:     ((test2 == 142) ? 0 : 1) +
	.loc 1 72 30
	add	w0, w0, w1	// _24, _5, _7
// valist-use-dll.c:74: }
	.loc 1 74 1
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
	.align	2
	.global	__main
	.type	__main, %function
__main:
.LFB4:
	.loc 1 79 1
	.cfi_startproc
// valist-use-dll.c:80: }
	.loc 1 80 1
	nop	
	ret	
	.cfi_endproc
.LFE4:
	.size	__main, .-__main
.Letext0:
	.file 2 "/usr/lib/gcc/aarch64-linux-gnu/11/include/stdarg.h"
	.file 3 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x30e
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.4byte	.LASF7
	.byte	0x28
	.byte	0x1b
	.4byte	0x39
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x20
	.byte	0x3
	.byte	0
	.4byte	0x78
	.uleb128 0x4
	.4byte	.LASF2
	.4byte	0x78
	.byte	0
	.uleb128 0x4
	.4byte	.LASF3
	.4byte	0x78
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF4
	.4byte	0x78
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF5
	.4byte	0x7a
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF6
	.4byte	0x7a
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.4byte	.LASF8
	.byte	0x63
	.byte	0x18
	.4byte	0x2e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x5
	.4byte	0xc2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x10
	.4byte	0xc2
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0xc
	.byte	0x1
	.byte	0x2c
	.byte	0x8
	.4byte	0xf7
	.uleb128 0x6
	.string	"a"
	.byte	0x2e
	.4byte	0x7a
	.byte	0
	.uleb128 0x6
	.string	"b"
	.byte	0x2f
	.4byte	0x7a
	.byte	0x4
	.uleb128 0x6
	.string	"c"
	.byte	0x30
	.4byte	0x7a
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0xd
	.4byte	0x7a
	.4byte	0x10c
	.uleb128 0x7
	.4byte	0x10c
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.4byte	0xc9
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x10
	.4byte	0x7a
	.4byte	0x12a
	.uleb128 0x7
	.4byte	0x10c
	.uleb128 0x7
	.4byte	0x81
	.byte	0
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.8byte	.LFB4
	.8byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x34
	.4byte	0x7a
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x233
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x34
	.byte	0xb
	.4byte	0x7a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x34
	.byte	0x17
	.4byte	0x233
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x36
	.byte	0x24
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x37
	.byte	0x24
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x38
	.byte	0x24
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x39
	.byte	0x24
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x3a
	.byte	0x24
	.4byte	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x3b
	.byte	0x24
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x3c
	.byte	0x24
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x3d
	.byte	0x24
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x3e
	.byte	0x24
	.4byte	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x40
	.byte	0x7
	.4byte	0x7a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x42
	.byte	0x7
	.4byte	0x7a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x44
	.byte	0x7
	.4byte	0x7a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.uleb128 0x5
	.4byte	0xbd
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x23
	.4byte	0x7a
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x287
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x23
	.byte	0x24
	.4byte	0x10c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x8
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x25
	.byte	0xb
	.4byte	0x81
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x27
	.byte	0x7
	.4byte	0x7a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x1d
	.4byte	0x7a
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c4
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x1d
	.byte	0x23
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x1d
	.byte	0x33
	.4byte	0x81
	.uleb128 0x2
	.byte	0x83
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	0x7a
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x13
	.byte	0x1b
	.4byte	0x10c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x8
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x15
	.byte	0xb
	.4byte	0x81
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x17
	.byte	0x7
	.4byte	0x7a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"short int"
.LASF33:
	.string	"main"
.LASF8:
	.string	"va_list"
.LASF36:
	.string	"retval"
.LASF5:
	.string	"__gr_offs"
.LASF30:
	.string	"test1"
.LASF31:
	.string	"test2"
.LASF32:
	.string	"test3"
.LASF4:
	.string	"__vr_top"
.LASF35:
	.string	"format"
.LASF39:
	.string	"__va_list"
.LASF15:
	.string	"long int"
.LASF38:
	.string	"GNU C17 11.4.0 -mlittle-endian -mabi=lp64 -ggdb -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection"
.LASF17:
	.string	"use_va_args"
.LASF3:
	.string	"__gr_top"
.LASF2:
	.string	"__stack"
.LASF41:
	.string	"__main"
.LASF40:
	.string	"not_short_vector_12_bytes"
.LASF10:
	.string	"unsigned char"
.LASF19:
	.string	"argc"
.LASF13:
	.string	"signed char"
.LASF12:
	.string	"unsigned int"
.LASF20:
	.string	"argv"
.LASF11:
	.string	"short unsigned int"
.LASF18:
	.string	"use_va_list"
.LASF16:
	.string	"char"
.LASF42:
	.string	"test_va_list"
.LASF37:
	.string	"use_indirect_va_list"
.LASF9:
	.string	"long unsigned int"
.LASF7:
	.string	"__gnuc_va_list"
.LASF6:
	.string	"__vr_offs"
.LASF21:
	.string	"nsv12_a"
.LASF22:
	.string	"nsv12_b"
.LASF23:
	.string	"nsv12_c"
.LASF24:
	.string	"nsv12_d"
.LASF25:
	.string	"nsv12_e"
.LASF26:
	.string	"nsv12_f"
.LASF27:
	.string	"nsv12_g"
.LASF28:
	.string	"nsv12_h"
.LASF29:
	.string	"nsv12_i"
.LASF34:
	.string	"test_indirect_va_list"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/blachex/mingw-woarm64-build/tests/valist"
.LASF0:
	.string	"valist-use-dll.c"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
