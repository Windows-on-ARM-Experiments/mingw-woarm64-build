	.arch armv8-a
	.file	"varargs-use-dll.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	__chkstk
	.type	__chkstk, %function
__chkstk:
.LFB0:
	.cfi_startproc
// varargs-use-dll.c:9: }
	nop	
	ret	
	.cfi_endproc
.LFE0:
	.size	__chkstk, .-__chkstk
	.section	.rodata
	.align	3
.LC0:
	.string	"no_arguments"
	.align	3
.LC1:
	.string	"\tuse_va_list_%s, result: %d\n"
	.text
	.align	2
	.global	test_va_list_no_arguments
	.type	test_va_list_no_arguments, %function
test_va_list_no_arguments:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:90: DECLARE_TEST (no_arguments);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6672
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC0	// tmp106,
	add	x0, x0, :lo12:.LC0	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC0	// tmp107,
	add	x1, x0, :lo12:.LC0	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6672
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L4		//,
	bl	__stack_chk_fail		//
.L4:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	test_va_list_no_arguments, .-test_va_list_no_arguments
	.section	.rodata
	.align	3
.LC2:
	.string	"\tuse_va_list_%s_indirect, result: %d\n"
	.text
	.align	2
	.global	use_indirect_va_list_no_arguments
	.type	use_indirect_va_list_no_arguments, %function
use_indirect_va_list_no_arguments:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:90: DECLARE_TEST (no_arguments);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC0	// tmp101,
	add	x0, x0, :lo12:.LC0	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC0	// tmp102,
	add	x1, x0, :lo12:.LC0	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2:
	.size	use_indirect_va_list_no_arguments, .-use_indirect_va_list_no_arguments
	.align	2
	.global	test_indirect_va_list_no_arguments
	.type	test_indirect_va_list_no_arguments, %function
test_indirect_va_list_no_arguments:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:90: DECLARE_TEST (no_arguments);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6683
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_no_arguments		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6683
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L9		//,
	bl	__stack_chk_fail		//
.L9:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3:
	.size	test_indirect_va_list_no_arguments, .-test_indirect_va_list_no_arguments
	.section	.rodata
	.align	3
.LC3:
	.string	"few_longs"
	.text
	.align	2
	.global	test_va_list_few_longs
	.type	test_va_list_few_longs, %function
test_va_list_few_longs:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:92: DECLARE_TEST (few_longs);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6688
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC3	// tmp106,
	add	x0, x0, :lo12:.LC3	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC3	// tmp107,
	add	x1, x0, :lo12:.LC3	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6688
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L12		//,
	bl	__stack_chk_fail		//
.L12:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE4:
	.size	test_va_list_few_longs, .-test_va_list_few_longs
	.align	2
	.global	use_indirect_va_list_few_longs
	.type	use_indirect_va_list_few_longs, %function
use_indirect_va_list_few_longs:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:92: DECLARE_TEST (few_longs);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC3	// tmp101,
	add	x0, x0, :lo12:.LC3	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC3	// tmp102,
	add	x1, x0, :lo12:.LC3	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE5:
	.size	use_indirect_va_list_few_longs, .-use_indirect_va_list_few_longs
	.align	2
	.global	test_indirect_va_list_few_longs
	.type	test_indirect_va_list_few_longs, %function
test_indirect_va_list_few_longs:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:92: DECLARE_TEST (few_longs);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6695
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_longs		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6695
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L17		//,
	bl	__stack_chk_fail		//
.L17:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	test_indirect_va_list_few_longs, .-test_indirect_va_list_few_longs
	.section	.rodata
	.align	3
.LC4:
	.string	"several_longs"
	.text
	.align	2
	.global	test_va_list_several_longs
	.type	test_va_list_several_longs, %function
test_va_list_several_longs:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:93: DECLARE_TEST (several_longs);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6700
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC4	// tmp106,
	add	x0, x0, :lo12:.LC4	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC4	// tmp107,
	add	x1, x0, :lo12:.LC4	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6700
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L20		//,
	bl	__stack_chk_fail		//
.L20:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	test_va_list_several_longs, .-test_va_list_several_longs
	.align	2
	.global	use_indirect_va_list_several_longs
	.type	use_indirect_va_list_several_longs, %function
use_indirect_va_list_several_longs:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:93: DECLARE_TEST (several_longs);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC4	// tmp101,
	add	x0, x0, :lo12:.LC4	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC4	// tmp102,
	add	x1, x0, :lo12:.LC4	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	use_indirect_va_list_several_longs, .-use_indirect_va_list_several_longs
	.align	2
	.global	test_indirect_va_list_several_longs
	.type	test_indirect_va_list_several_longs, %function
test_indirect_va_list_several_longs:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:93: DECLARE_TEST (several_longs);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6707
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_longs		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6707
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L25		//,
	bl	__stack_chk_fail		//
.L25:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE9:
	.size	test_indirect_va_list_several_longs, .-test_indirect_va_list_several_longs
	.section	.rodata
	.align	3
.LC5:
	.string	"many_longs"
	.text
	.align	2
	.global	test_va_list_many_longs
	.type	test_va_list_many_longs, %function
test_va_list_many_longs:
.LFB10:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:94: DECLARE_TEST (many_longs);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6712
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC5	// tmp106,
	add	x0, x0, :lo12:.LC5	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC5	// tmp107,
	add	x1, x0, :lo12:.LC5	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6712
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L28		//,
	bl	__stack_chk_fail		//
.L28:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE10:
	.size	test_va_list_many_longs, .-test_va_list_many_longs
	.align	2
	.global	use_indirect_va_list_many_longs
	.type	use_indirect_va_list_many_longs, %function
use_indirect_va_list_many_longs:
.LFB11:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:94: DECLARE_TEST (many_longs);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC5	// tmp101,
	add	x0, x0, :lo12:.LC5	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC5	// tmp102,
	add	x1, x0, :lo12:.LC5	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE11:
	.size	use_indirect_va_list_many_longs, .-use_indirect_va_list_many_longs
	.align	2
	.global	test_indirect_va_list_many_longs
	.type	test_indirect_va_list_many_longs, %function
test_indirect_va_list_many_longs:
.LFB12:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:94: DECLARE_TEST (many_longs);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6719
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_longs		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6719
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L33		//,
	bl	__stack_chk_fail		//
.L33:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE12:
	.size	test_indirect_va_list_many_longs, .-test_indirect_va_list_many_longs
	.section	.rodata
	.align	3
.LC6:
	.string	"few_ints"
	.text
	.align	2
	.global	test_va_list_few_ints
	.type	test_va_list_few_ints, %function
test_va_list_few_ints:
.LFB13:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:96: DECLARE_TEST (few_ints);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6724
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC6	// tmp106,
	add	x0, x0, :lo12:.LC6	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC6	// tmp107,
	add	x1, x0, :lo12:.LC6	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6724
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L36		//,
	bl	__stack_chk_fail		//
.L36:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE13:
	.size	test_va_list_few_ints, .-test_va_list_few_ints
	.align	2
	.global	use_indirect_va_list_few_ints
	.type	use_indirect_va_list_few_ints, %function
use_indirect_va_list_few_ints:
.LFB14:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:96: DECLARE_TEST (few_ints);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC6	// tmp101,
	add	x0, x0, :lo12:.LC6	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC6	// tmp102,
	add	x1, x0, :lo12:.LC6	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE14:
	.size	use_indirect_va_list_few_ints, .-use_indirect_va_list_few_ints
	.align	2
	.global	test_indirect_va_list_few_ints
	.type	test_indirect_va_list_few_ints, %function
test_indirect_va_list_few_ints:
.LFB15:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:96: DECLARE_TEST (few_ints);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6731
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_ints		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6731
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L41		//,
	bl	__stack_chk_fail		//
.L41:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE15:
	.size	test_indirect_va_list_few_ints, .-test_indirect_va_list_few_ints
	.section	.rodata
	.align	3
.LC7:
	.string	"several_ints"
	.text
	.align	2
	.global	test_va_list_several_ints
	.type	test_va_list_several_ints, %function
test_va_list_several_ints:
.LFB16:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:97: DECLARE_TEST (several_ints);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6736
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC7	// tmp106,
	add	x0, x0, :lo12:.LC7	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC7	// tmp107,
	add	x1, x0, :lo12:.LC7	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6736
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L44		//,
	bl	__stack_chk_fail		//
.L44:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE16:
	.size	test_va_list_several_ints, .-test_va_list_several_ints
	.align	2
	.global	use_indirect_va_list_several_ints
	.type	use_indirect_va_list_several_ints, %function
use_indirect_va_list_several_ints:
.LFB17:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:97: DECLARE_TEST (several_ints);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC7	// tmp101,
	add	x0, x0, :lo12:.LC7	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC7	// tmp102,
	add	x1, x0, :lo12:.LC7	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE17:
	.size	use_indirect_va_list_several_ints, .-use_indirect_va_list_several_ints
	.align	2
	.global	test_indirect_va_list_several_ints
	.type	test_indirect_va_list_several_ints, %function
test_indirect_va_list_several_ints:
.LFB18:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:97: DECLARE_TEST (several_ints);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6743
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_ints		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6743
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L49		//,
	bl	__stack_chk_fail		//
.L49:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE18:
	.size	test_indirect_va_list_several_ints, .-test_indirect_va_list_several_ints
	.section	.rodata
	.align	3
.LC8:
	.string	"many_ints"
	.text
	.align	2
	.global	test_va_list_many_ints
	.type	test_va_list_many_ints, %function
test_va_list_many_ints:
.LFB19:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:98: DECLARE_TEST (many_ints);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6748
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC8	// tmp106,
	add	x0, x0, :lo12:.LC8	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC8	// tmp107,
	add	x1, x0, :lo12:.LC8	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6748
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L52		//,
	bl	__stack_chk_fail		//
.L52:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE19:
	.size	test_va_list_many_ints, .-test_va_list_many_ints
	.align	2
	.global	use_indirect_va_list_many_ints
	.type	use_indirect_va_list_many_ints, %function
use_indirect_va_list_many_ints:
.LFB20:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:98: DECLARE_TEST (many_ints);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC8	// tmp101,
	add	x0, x0, :lo12:.LC8	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC8	// tmp102,
	add	x1, x0, :lo12:.LC8	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE20:
	.size	use_indirect_va_list_many_ints, .-use_indirect_va_list_many_ints
	.align	2
	.global	test_indirect_va_list_many_ints
	.type	test_indirect_va_list_many_ints, %function
test_indirect_va_list_many_ints:
.LFB21:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:98: DECLARE_TEST (many_ints);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6755
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_ints		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6755
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L57		//,
	bl	__stack_chk_fail		//
.L57:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE21:
	.size	test_indirect_va_list_many_ints, .-test_indirect_va_list_many_ints
	.section	.rodata
	.align	3
.LC9:
	.string	"few_doubles"
	.text
	.align	2
	.global	test_va_list_few_doubles
	.type	test_va_list_few_doubles, %function
test_va_list_few_doubles:
.LFB22:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:100: DECLARE_TEST (few_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6760
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC9	// tmp106,
	add	x0, x0, :lo12:.LC9	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC9	// tmp107,
	add	x1, x0, :lo12:.LC9	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6760
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L60		//,
	bl	__stack_chk_fail		//
.L60:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE22:
	.size	test_va_list_few_doubles, .-test_va_list_few_doubles
	.align	2
	.global	use_indirect_va_list_few_doubles
	.type	use_indirect_va_list_few_doubles, %function
use_indirect_va_list_few_doubles:
.LFB23:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:100: DECLARE_TEST (few_doubles);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC9	// tmp101,
	add	x0, x0, :lo12:.LC9	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC9	// tmp102,
	add	x1, x0, :lo12:.LC9	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE23:
	.size	use_indirect_va_list_few_doubles, .-use_indirect_va_list_few_doubles
	.align	2
	.global	test_indirect_va_list_few_doubles
	.type	test_indirect_va_list_few_doubles, %function
test_indirect_va_list_few_doubles:
.LFB24:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:100: DECLARE_TEST (few_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6767
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_doubles		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6767
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L65		//,
	bl	__stack_chk_fail		//
.L65:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE24:
	.size	test_indirect_va_list_few_doubles, .-test_indirect_va_list_few_doubles
	.section	.rodata
	.align	3
.LC10:
	.string	"several_doubles"
	.text
	.align	2
	.global	test_va_list_several_doubles
	.type	test_va_list_several_doubles, %function
test_va_list_several_doubles:
.LFB25:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:101: DECLARE_TEST (several_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6772
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC10	// tmp106,
	add	x0, x0, :lo12:.LC10	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC10	// tmp107,
	add	x1, x0, :lo12:.LC10	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6772
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L68		//,
	bl	__stack_chk_fail		//
.L68:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE25:
	.size	test_va_list_several_doubles, .-test_va_list_several_doubles
	.align	2
	.global	use_indirect_va_list_several_doubles
	.type	use_indirect_va_list_several_doubles, %function
use_indirect_va_list_several_doubles:
.LFB26:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:101: DECLARE_TEST (several_doubles);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC10	// tmp101,
	add	x0, x0, :lo12:.LC10	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC10	// tmp102,
	add	x1, x0, :lo12:.LC10	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE26:
	.size	use_indirect_va_list_several_doubles, .-use_indirect_va_list_several_doubles
	.align	2
	.global	test_indirect_va_list_several_doubles
	.type	test_indirect_va_list_several_doubles, %function
test_indirect_va_list_several_doubles:
.LFB27:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:101: DECLARE_TEST (several_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6779
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_doubles		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6779
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L73		//,
	bl	__stack_chk_fail		//
.L73:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE27:
	.size	test_indirect_va_list_several_doubles, .-test_indirect_va_list_several_doubles
	.section	.rodata
	.align	3
.LC11:
	.string	"many_doubles"
	.text
	.align	2
	.global	test_va_list_many_doubles
	.type	test_va_list_many_doubles, %function
test_va_list_many_doubles:
.LFB28:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:102: DECLARE_TEST (many_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6784
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC11	// tmp106,
	add	x0, x0, :lo12:.LC11	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC11	// tmp107,
	add	x1, x0, :lo12:.LC11	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6784
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L76		//,
	bl	__stack_chk_fail		//
.L76:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE28:
	.size	test_va_list_many_doubles, .-test_va_list_many_doubles
	.align	2
	.global	use_indirect_va_list_many_doubles
	.type	use_indirect_va_list_many_doubles, %function
use_indirect_va_list_many_doubles:
.LFB29:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:102: DECLARE_TEST (many_doubles);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC11	// tmp101,
	add	x0, x0, :lo12:.LC11	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC11	// tmp102,
	add	x1, x0, :lo12:.LC11	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE29:
	.size	use_indirect_va_list_many_doubles, .-use_indirect_va_list_many_doubles
	.align	2
	.global	test_indirect_va_list_many_doubles
	.type	test_indirect_va_list_many_doubles, %function
test_indirect_va_list_many_doubles:
.LFB30:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:102: DECLARE_TEST (many_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6791
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_doubles		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6791
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L81		//,
	bl	__stack_chk_fail		//
.L81:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE30:
	.size	test_indirect_va_list_many_doubles, .-test_indirect_va_list_many_doubles
	.section	.rodata
	.align	3
.LC12:
	.string	"few_floats"
	.text
	.align	2
	.global	test_va_list_few_floats
	.type	test_va_list_few_floats, %function
test_va_list_few_floats:
.LFB31:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:104: DECLARE_TEST (few_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6796
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC12	// tmp106,
	add	x0, x0, :lo12:.LC12	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC12	// tmp107,
	add	x1, x0, :lo12:.LC12	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6796
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L84		//,
	bl	__stack_chk_fail		//
.L84:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE31:
	.size	test_va_list_few_floats, .-test_va_list_few_floats
	.align	2
	.global	use_indirect_va_list_few_floats
	.type	use_indirect_va_list_few_floats, %function
use_indirect_va_list_few_floats:
.LFB32:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:104: DECLARE_TEST (few_floats);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC12	// tmp101,
	add	x0, x0, :lo12:.LC12	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC12	// tmp102,
	add	x1, x0, :lo12:.LC12	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE32:
	.size	use_indirect_va_list_few_floats, .-use_indirect_va_list_few_floats
	.align	2
	.global	test_indirect_va_list_few_floats
	.type	test_indirect_va_list_few_floats, %function
test_indirect_va_list_few_floats:
.LFB33:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:104: DECLARE_TEST (few_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6803
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_floats		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6803
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L89		//,
	bl	__stack_chk_fail		//
.L89:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE33:
	.size	test_indirect_va_list_few_floats, .-test_indirect_va_list_few_floats
	.section	.rodata
	.align	3
.LC13:
	.string	"several_floats"
	.text
	.align	2
	.global	test_va_list_several_floats
	.type	test_va_list_several_floats, %function
test_va_list_several_floats:
.LFB34:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:105: DECLARE_TEST (several_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6808
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC13	// tmp106,
	add	x0, x0, :lo12:.LC13	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC13	// tmp107,
	add	x1, x0, :lo12:.LC13	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6808
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L92		//,
	bl	__stack_chk_fail		//
.L92:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE34:
	.size	test_va_list_several_floats, .-test_va_list_several_floats
	.align	2
	.global	use_indirect_va_list_several_floats
	.type	use_indirect_va_list_several_floats, %function
use_indirect_va_list_several_floats:
.LFB35:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:105: DECLARE_TEST (several_floats);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC13	// tmp101,
	add	x0, x0, :lo12:.LC13	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC13	// tmp102,
	add	x1, x0, :lo12:.LC13	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE35:
	.size	use_indirect_va_list_several_floats, .-use_indirect_va_list_several_floats
	.align	2
	.global	test_indirect_va_list_several_floats
	.type	test_indirect_va_list_several_floats, %function
test_indirect_va_list_several_floats:
.LFB36:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:105: DECLARE_TEST (several_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6815
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_floats		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6815
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L97		//,
	bl	__stack_chk_fail		//
.L97:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE36:
	.size	test_indirect_va_list_several_floats, .-test_indirect_va_list_several_floats
	.section	.rodata
	.align	3
.LC14:
	.string	"many_floats"
	.text
	.align	2
	.global	test_va_list_many_floats
	.type	test_va_list_many_floats, %function
test_va_list_many_floats:
.LFB37:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:106: DECLARE_TEST (many_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6820
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC14	// tmp106,
	add	x0, x0, :lo12:.LC14	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC14	// tmp107,
	add	x1, x0, :lo12:.LC14	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6820
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L100		//,
	bl	__stack_chk_fail		//
.L100:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE37:
	.size	test_va_list_many_floats, .-test_va_list_many_floats
	.align	2
	.global	use_indirect_va_list_many_floats
	.type	use_indirect_va_list_many_floats, %function
use_indirect_va_list_many_floats:
.LFB38:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:106: DECLARE_TEST (many_floats);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC14	// tmp101,
	add	x0, x0, :lo12:.LC14	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC14	// tmp102,
	add	x1, x0, :lo12:.LC14	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE38:
	.size	use_indirect_va_list_many_floats, .-use_indirect_va_list_many_floats
	.align	2
	.global	test_indirect_va_list_many_floats
	.type	test_indirect_va_list_many_floats, %function
test_indirect_va_list_many_floats:
.LFB39:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:106: DECLARE_TEST (many_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6827
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_floats		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6827
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L105		//,
	bl	__stack_chk_fail		//
.L105:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE39:
	.size	test_indirect_va_list_many_floats, .-test_indirect_va_list_many_floats
	.section	.rodata
	.align	3
.LC15:
	.string	"few_strings"
	.text
	.align	2
	.global	test_va_list_few_strings
	.type	test_va_list_few_strings, %function
test_va_list_few_strings:
.LFB40:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:108: DECLARE_TEST (few_strings);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6832
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC15	// tmp106,
	add	x0, x0, :lo12:.LC15	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC15	// tmp107,
	add	x1, x0, :lo12:.LC15	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6832
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L108		//,
	bl	__stack_chk_fail		//
.L108:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE40:
	.size	test_va_list_few_strings, .-test_va_list_few_strings
	.align	2
	.global	use_indirect_va_list_few_strings
	.type	use_indirect_va_list_few_strings, %function
use_indirect_va_list_few_strings:
.LFB41:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:108: DECLARE_TEST (few_strings);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC15	// tmp101,
	add	x0, x0, :lo12:.LC15	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC15	// tmp102,
	add	x1, x0, :lo12:.LC15	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE41:
	.size	use_indirect_va_list_few_strings, .-use_indirect_va_list_few_strings
	.align	2
	.global	test_indirect_va_list_few_strings
	.type	test_indirect_va_list_few_strings, %function
test_indirect_va_list_few_strings:
.LFB42:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:108: DECLARE_TEST (few_strings);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6839
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_strings		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6839
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L113		//,
	bl	__stack_chk_fail		//
.L113:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE42:
	.size	test_indirect_va_list_few_strings, .-test_indirect_va_list_few_strings
	.section	.rodata
	.align	3
.LC16:
	.string	"several_strings"
	.text
	.align	2
	.global	test_va_list_several_strings
	.type	test_va_list_several_strings, %function
test_va_list_several_strings:
.LFB43:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:109: DECLARE_TEST (several_strings);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6844
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC16	// tmp106,
	add	x0, x0, :lo12:.LC16	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC16	// tmp107,
	add	x1, x0, :lo12:.LC16	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6844
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L116		//,
	bl	__stack_chk_fail		//
.L116:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE43:
	.size	test_va_list_several_strings, .-test_va_list_several_strings
	.align	2
	.global	use_indirect_va_list_several_strings
	.type	use_indirect_va_list_several_strings, %function
use_indirect_va_list_several_strings:
.LFB44:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:109: DECLARE_TEST (several_strings);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC16	// tmp101,
	add	x0, x0, :lo12:.LC16	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC16	// tmp102,
	add	x1, x0, :lo12:.LC16	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE44:
	.size	use_indirect_va_list_several_strings, .-use_indirect_va_list_several_strings
	.align	2
	.global	test_indirect_va_list_several_strings
	.type	test_indirect_va_list_several_strings, %function
test_indirect_va_list_several_strings:
.LFB45:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:109: DECLARE_TEST (several_strings);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6851
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_strings		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6851
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L121		//,
	bl	__stack_chk_fail		//
.L121:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE45:
	.size	test_indirect_va_list_several_strings, .-test_indirect_va_list_several_strings
	.section	.rodata
	.align	3
.LC17:
	.string	"many_strings"
	.text
	.align	2
	.global	test_va_list_many_strings
	.type	test_va_list_many_strings, %function
test_va_list_many_strings:
.LFB46:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:110: DECLARE_TEST (many_strings);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6856
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC17	// tmp106,
	add	x0, x0, :lo12:.LC17	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC17	// tmp107,
	add	x1, x0, :lo12:.LC17	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6856
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L124		//,
	bl	__stack_chk_fail		//
.L124:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE46:
	.size	test_va_list_many_strings, .-test_va_list_many_strings
	.align	2
	.global	use_indirect_va_list_many_strings
	.type	use_indirect_va_list_many_strings, %function
use_indirect_va_list_many_strings:
.LFB47:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:110: DECLARE_TEST (many_strings);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC17	// tmp101,
	add	x0, x0, :lo12:.LC17	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC17	// tmp102,
	add	x1, x0, :lo12:.LC17	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE47:
	.size	use_indirect_va_list_many_strings, .-use_indirect_va_list_many_strings
	.align	2
	.global	test_indirect_va_list_many_strings
	.type	test_indirect_va_list_many_strings, %function
test_indirect_va_list_many_strings:
.LFB48:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:110: DECLARE_TEST (many_strings);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6863
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_strings		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6863
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L129		//,
	bl	__stack_chk_fail		//
.L129:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE48:
	.size	test_indirect_va_list_many_strings, .-test_indirect_va_list_many_strings
	.section	.rodata
	.align	3
.LC18:
	.string	"few_composites"
	.text
	.align	2
	.global	test_va_list_few_composites
	.type	test_va_list_few_composites, %function
test_va_list_few_composites:
.LFB49:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:112: DECLARE_TEST (few_composites);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6868
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC18	// tmp106,
	add	x0, x0, :lo12:.LC18	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC18	// tmp107,
	add	x1, x0, :lo12:.LC18	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6868
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L132		//,
	bl	__stack_chk_fail		//
.L132:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE49:
	.size	test_va_list_few_composites, .-test_va_list_few_composites
	.align	2
	.global	use_indirect_va_list_few_composites
	.type	use_indirect_va_list_few_composites, %function
use_indirect_va_list_few_composites:
.LFB50:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:112: DECLARE_TEST (few_composites);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC18	// tmp101,
	add	x0, x0, :lo12:.LC18	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC18	// tmp102,
	add	x1, x0, :lo12:.LC18	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE50:
	.size	use_indirect_va_list_few_composites, .-use_indirect_va_list_few_composites
	.align	2
	.global	test_indirect_va_list_few_composites
	.type	test_indirect_va_list_few_composites, %function
test_indirect_va_list_few_composites:
.LFB51:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:112: DECLARE_TEST (few_composites);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6875
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_composites		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6875
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L137		//,
	bl	__stack_chk_fail		//
.L137:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE51:
	.size	test_indirect_va_list_few_composites, .-test_indirect_va_list_few_composites
	.section	.rodata
	.align	3
.LC19:
	.string	"several_composites"
	.text
	.align	2
	.global	test_va_list_several_composites
	.type	test_va_list_several_composites, %function
test_va_list_several_composites:
.LFB52:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:113: DECLARE_TEST (several_composites);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6880
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC19	// tmp106,
	add	x0, x0, :lo12:.LC19	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC19	// tmp107,
	add	x1, x0, :lo12:.LC19	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6880
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L140		//,
	bl	__stack_chk_fail		//
.L140:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE52:
	.size	test_va_list_several_composites, .-test_va_list_several_composites
	.align	2
	.global	use_indirect_va_list_several_composites
	.type	use_indirect_va_list_several_composites, %function
use_indirect_va_list_several_composites:
.LFB53:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:113: DECLARE_TEST (several_composites);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC19	// tmp101,
	add	x0, x0, :lo12:.LC19	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC19	// tmp102,
	add	x1, x0, :lo12:.LC19	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE53:
	.size	use_indirect_va_list_several_composites, .-use_indirect_va_list_several_composites
	.align	2
	.global	test_indirect_va_list_several_composites
	.type	test_indirect_va_list_several_composites, %function
test_indirect_va_list_several_composites:
.LFB54:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:113: DECLARE_TEST (several_composites);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6887
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_composites		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6887
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L145		//,
	bl	__stack_chk_fail		//
.L145:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE54:
	.size	test_indirect_va_list_several_composites, .-test_indirect_va_list_several_composites
	.section	.rodata
	.align	3
.LC20:
	.string	"many_composites"
	.text
	.align	2
	.global	test_va_list_many_composites
	.type	test_va_list_many_composites, %function
test_va_list_many_composites:
.LFB55:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:114: DECLARE_TEST (many_composites);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6892
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC20	// tmp106,
	add	x0, x0, :lo12:.LC20	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC20	// tmp107,
	add	x1, x0, :lo12:.LC20	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6892
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L148		//,
	bl	__stack_chk_fail		//
.L148:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE55:
	.size	test_va_list_many_composites, .-test_va_list_many_composites
	.align	2
	.global	use_indirect_va_list_many_composites
	.type	use_indirect_va_list_many_composites, %function
use_indirect_va_list_many_composites:
.LFB56:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:114: DECLARE_TEST (many_composites);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC20	// tmp101,
	add	x0, x0, :lo12:.LC20	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC20	// tmp102,
	add	x1, x0, :lo12:.LC20	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE56:
	.size	use_indirect_va_list_many_composites, .-use_indirect_va_list_many_composites
	.align	2
	.global	test_indirect_va_list_many_composites
	.type	test_indirect_va_list_many_composites, %function
test_indirect_va_list_many_composites:
.LFB57:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:114: DECLARE_TEST (many_composites);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6899
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_composites		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6899
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L153		//,
	bl	__stack_chk_fail		//
.L153:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE57:
	.size	test_indirect_va_list_many_composites, .-test_indirect_va_list_many_composites
	.section	.rodata
	.align	3
.LC21:
	.string	"few_short_vector_8_bytes"
	.text
	.align	2
	.global	test_va_list_few_short_vector_8_bytes
	.type	test_va_list_few_short_vector_8_bytes, %function
test_va_list_few_short_vector_8_bytes:
.LFB58:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:116: DECLARE_TEST (few_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6904
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC21	// tmp106,
	add	x0, x0, :lo12:.LC21	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC21	// tmp107,
	add	x1, x0, :lo12:.LC21	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6904
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L156		//,
	bl	__stack_chk_fail		//
.L156:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE58:
	.size	test_va_list_few_short_vector_8_bytes, .-test_va_list_few_short_vector_8_bytes
	.align	2
	.global	use_indirect_va_list_few_short_vector_8_bytes
	.type	use_indirect_va_list_few_short_vector_8_bytes, %function
use_indirect_va_list_few_short_vector_8_bytes:
.LFB59:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:116: DECLARE_TEST (few_short_vector_8_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC21	// tmp101,
	add	x0, x0, :lo12:.LC21	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC21	// tmp102,
	add	x1, x0, :lo12:.LC21	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE59:
	.size	use_indirect_va_list_few_short_vector_8_bytes, .-use_indirect_va_list_few_short_vector_8_bytes
	.align	2
	.global	test_indirect_va_list_few_short_vector_8_bytes
	.type	test_indirect_va_list_few_short_vector_8_bytes, %function
test_indirect_va_list_few_short_vector_8_bytes:
.LFB60:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:116: DECLARE_TEST (few_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6911
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_short_vector_8_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6911
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L161		//,
	bl	__stack_chk_fail		//
.L161:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE60:
	.size	test_indirect_va_list_few_short_vector_8_bytes, .-test_indirect_va_list_few_short_vector_8_bytes
	.section	.rodata
	.align	3
.LC22:
	.string	"several_short_vector_8_bytes"
	.text
	.align	2
	.global	test_va_list_several_short_vector_8_bytes
	.type	test_va_list_several_short_vector_8_bytes, %function
test_va_list_several_short_vector_8_bytes:
.LFB61:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:117: DECLARE_TEST (several_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6916
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC22	// tmp106,
	add	x0, x0, :lo12:.LC22	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC22	// tmp107,
	add	x1, x0, :lo12:.LC22	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6916
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L164		//,
	bl	__stack_chk_fail		//
.L164:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE61:
	.size	test_va_list_several_short_vector_8_bytes, .-test_va_list_several_short_vector_8_bytes
	.align	2
	.global	use_indirect_va_list_several_short_vector_8_bytes
	.type	use_indirect_va_list_several_short_vector_8_bytes, %function
use_indirect_va_list_several_short_vector_8_bytes:
.LFB62:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:117: DECLARE_TEST (several_short_vector_8_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC22	// tmp101,
	add	x0, x0, :lo12:.LC22	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC22	// tmp102,
	add	x1, x0, :lo12:.LC22	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE62:
	.size	use_indirect_va_list_several_short_vector_8_bytes, .-use_indirect_va_list_several_short_vector_8_bytes
	.align	2
	.global	test_indirect_va_list_several_short_vector_8_bytes
	.type	test_indirect_va_list_several_short_vector_8_bytes, %function
test_indirect_va_list_several_short_vector_8_bytes:
.LFB63:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:117: DECLARE_TEST (several_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6923
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_short_vector_8_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6923
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L169		//,
	bl	__stack_chk_fail		//
.L169:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE63:
	.size	test_indirect_va_list_several_short_vector_8_bytes, .-test_indirect_va_list_several_short_vector_8_bytes
	.section	.rodata
	.align	3
.LC23:
	.string	"many_short_vector_8_bytes"
	.text
	.align	2
	.global	test_va_list_many_short_vector_8_bytes
	.type	test_va_list_many_short_vector_8_bytes, %function
test_va_list_many_short_vector_8_bytes:
.LFB64:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:118: DECLARE_TEST (many_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6928
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC23	// tmp106,
	add	x0, x0, :lo12:.LC23	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC23	// tmp107,
	add	x1, x0, :lo12:.LC23	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6928
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L172		//,
	bl	__stack_chk_fail		//
.L172:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE64:
	.size	test_va_list_many_short_vector_8_bytes, .-test_va_list_many_short_vector_8_bytes
	.align	2
	.global	use_indirect_va_list_many_short_vector_8_bytes
	.type	use_indirect_va_list_many_short_vector_8_bytes, %function
use_indirect_va_list_many_short_vector_8_bytes:
.LFB65:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:118: DECLARE_TEST (many_short_vector_8_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC23	// tmp101,
	add	x0, x0, :lo12:.LC23	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC23	// tmp102,
	add	x1, x0, :lo12:.LC23	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE65:
	.size	use_indirect_va_list_many_short_vector_8_bytes, .-use_indirect_va_list_many_short_vector_8_bytes
	.align	2
	.global	test_indirect_va_list_many_short_vector_8_bytes
	.type	test_indirect_va_list_many_short_vector_8_bytes, %function
test_indirect_va_list_many_short_vector_8_bytes:
.LFB66:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:118: DECLARE_TEST (many_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6935
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_short_vector_8_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6935
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L177		//,
	bl	__stack_chk_fail		//
.L177:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE66:
	.size	test_indirect_va_list_many_short_vector_8_bytes, .-test_indirect_va_list_many_short_vector_8_bytes
	.section	.rodata
	.align	3
.LC24:
	.string	"few_not_short_vector_12_bytes"
	.text
	.align	2
	.global	test_va_list_few_not_short_vector_12_bytes
	.type	test_va_list_few_not_short_vector_12_bytes, %function
test_va_list_few_not_short_vector_12_bytes:
.LFB67:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:120: DECLARE_TEST (few_not_short_vector_12_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6940
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC24	// tmp106,
	add	x0, x0, :lo12:.LC24	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC24	// tmp107,
	add	x1, x0, :lo12:.LC24	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6940
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L180		//,
	bl	__stack_chk_fail		//
.L180:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE67:
	.size	test_va_list_few_not_short_vector_12_bytes, .-test_va_list_few_not_short_vector_12_bytes
	.align	2
	.global	use_indirect_va_list_few_not_short_vector_12_bytes
	.type	use_indirect_va_list_few_not_short_vector_12_bytes, %function
use_indirect_va_list_few_not_short_vector_12_bytes:
.LFB68:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:120: DECLARE_TEST (few_not_short_vector_12_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC24	// tmp101,
	add	x0, x0, :lo12:.LC24	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC24	// tmp102,
	add	x1, x0, :lo12:.LC24	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE68:
	.size	use_indirect_va_list_few_not_short_vector_12_bytes, .-use_indirect_va_list_few_not_short_vector_12_bytes
	.align	2
	.global	test_indirect_va_list_few_not_short_vector_12_bytes
	.type	test_indirect_va_list_few_not_short_vector_12_bytes, %function
test_indirect_va_list_few_not_short_vector_12_bytes:
.LFB69:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:120: DECLARE_TEST (few_not_short_vector_12_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6947
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_not_short_vector_12_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6947
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L185		//,
	bl	__stack_chk_fail		//
.L185:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE69:
	.size	test_indirect_va_list_few_not_short_vector_12_bytes, .-test_indirect_va_list_few_not_short_vector_12_bytes
	.section	.rodata
	.align	3
.LC25:
	.string	"several_not_short_vector_12_bytes"
	.text
	.align	2
	.global	test_va_list_several_not_short_vector_12_bytes
	.type	test_va_list_several_not_short_vector_12_bytes, %function
test_va_list_several_not_short_vector_12_bytes:
.LFB70:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:121: DECLARE_TEST (several_not_short_vector_12_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6952
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC25	// tmp106,
	add	x0, x0, :lo12:.LC25	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC25	// tmp107,
	add	x1, x0, :lo12:.LC25	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6952
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L188		//,
	bl	__stack_chk_fail		//
.L188:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE70:
	.size	test_va_list_several_not_short_vector_12_bytes, .-test_va_list_several_not_short_vector_12_bytes
	.align	2
	.global	use_indirect_va_list_several_not_short_vector_12_bytes
	.type	use_indirect_va_list_several_not_short_vector_12_bytes, %function
use_indirect_va_list_several_not_short_vector_12_bytes:
.LFB71:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:121: DECLARE_TEST (several_not_short_vector_12_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC25	// tmp101,
	add	x0, x0, :lo12:.LC25	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC25	// tmp102,
	add	x1, x0, :lo12:.LC25	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE71:
	.size	use_indirect_va_list_several_not_short_vector_12_bytes, .-use_indirect_va_list_several_not_short_vector_12_bytes
	.align	2
	.global	test_indirect_va_list_several_not_short_vector_12_bytes
	.type	test_indirect_va_list_several_not_short_vector_12_bytes, %function
test_indirect_va_list_several_not_short_vector_12_bytes:
.LFB72:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:121: DECLARE_TEST (several_not_short_vector_12_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6959
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_not_short_vector_12_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6959
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L193		//,
	bl	__stack_chk_fail		//
.L193:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE72:
	.size	test_indirect_va_list_several_not_short_vector_12_bytes, .-test_indirect_va_list_several_not_short_vector_12_bytes
	.section	.rodata
	.align	3
.LC26:
	.string	"many_not_short_vector_12_bytes"
	.text
	.align	2
	.global	test_va_list_many_not_short_vector_12_bytes
	.type	test_va_list_many_not_short_vector_12_bytes, %function
test_va_list_many_not_short_vector_12_bytes:
.LFB73:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:122: DECLARE_TEST (many_not_short_vector_12_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6964
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC26	// tmp106,
	add	x0, x0, :lo12:.LC26	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC26	// tmp107,
	add	x1, x0, :lo12:.LC26	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6964
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L196		//,
	bl	__stack_chk_fail		//
.L196:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE73:
	.size	test_va_list_many_not_short_vector_12_bytes, .-test_va_list_many_not_short_vector_12_bytes
	.align	2
	.global	use_indirect_va_list_many_not_short_vector_12_bytes
	.type	use_indirect_va_list_many_not_short_vector_12_bytes, %function
use_indirect_va_list_many_not_short_vector_12_bytes:
.LFB74:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:122: DECLARE_TEST (many_not_short_vector_12_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC26	// tmp101,
	add	x0, x0, :lo12:.LC26	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC26	// tmp102,
	add	x1, x0, :lo12:.LC26	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE74:
	.size	use_indirect_va_list_many_not_short_vector_12_bytes, .-use_indirect_va_list_many_not_short_vector_12_bytes
	.align	2
	.global	test_indirect_va_list_many_not_short_vector_12_bytes
	.type	test_indirect_va_list_many_not_short_vector_12_bytes, %function
test_indirect_va_list_many_not_short_vector_12_bytes:
.LFB75:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:122: DECLARE_TEST (many_not_short_vector_12_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6971
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_not_short_vector_12_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6971
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L201		//,
	bl	__stack_chk_fail		//
.L201:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE75:
	.size	test_indirect_va_list_many_not_short_vector_12_bytes, .-test_indirect_va_list_many_not_short_vector_12_bytes
	.section	.rodata
	.align	3
.LC27:
	.string	"few_short_vector_16_bytes"
	.text
	.align	2
	.global	test_va_list_few_short_vector_16_bytes
	.type	test_va_list_few_short_vector_16_bytes, %function
test_va_list_few_short_vector_16_bytes:
.LFB76:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:124: DECLARE_TEST (few_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6976
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC27	// tmp106,
	add	x0, x0, :lo12:.LC27	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC27	// tmp107,
	add	x1, x0, :lo12:.LC27	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6976
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L204		//,
	bl	__stack_chk_fail		//
.L204:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE76:
	.size	test_va_list_few_short_vector_16_bytes, .-test_va_list_few_short_vector_16_bytes
	.align	2
	.global	use_indirect_va_list_few_short_vector_16_bytes
	.type	use_indirect_va_list_few_short_vector_16_bytes, %function
use_indirect_va_list_few_short_vector_16_bytes:
.LFB77:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:124: DECLARE_TEST (few_short_vector_16_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC27	// tmp101,
	add	x0, x0, :lo12:.LC27	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC27	// tmp102,
	add	x1, x0, :lo12:.LC27	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE77:
	.size	use_indirect_va_list_few_short_vector_16_bytes, .-use_indirect_va_list_few_short_vector_16_bytes
	.align	2
	.global	test_indirect_va_list_few_short_vector_16_bytes
	.type	test_indirect_va_list_few_short_vector_16_bytes, %function
test_indirect_va_list_few_short_vector_16_bytes:
.LFB78:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:124: DECLARE_TEST (few_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6983
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_short_vector_16_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6983
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L209		//,
	bl	__stack_chk_fail		//
.L209:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE78:
	.size	test_indirect_va_list_few_short_vector_16_bytes, .-test_indirect_va_list_few_short_vector_16_bytes
	.section	.rodata
	.align	3
.LC28:
	.string	"several_short_vector_16_bytes"
	.text
	.align	2
	.global	test_va_list_several_short_vector_16_bytes
	.type	test_va_list_several_short_vector_16_bytes, %function
test_va_list_several_short_vector_16_bytes:
.LFB79:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:125: DECLARE_TEST (several_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.6988
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC28	// tmp106,
	add	x0, x0, :lo12:.LC28	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC28	// tmp107,
	add	x1, x0, :lo12:.LC28	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.6988
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L212		//,
	bl	__stack_chk_fail		//
.L212:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE79:
	.size	test_va_list_several_short_vector_16_bytes, .-test_va_list_several_short_vector_16_bytes
	.align	2
	.global	use_indirect_va_list_several_short_vector_16_bytes
	.type	use_indirect_va_list_several_short_vector_16_bytes, %function
use_indirect_va_list_several_short_vector_16_bytes:
.LFB80:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:125: DECLARE_TEST (several_short_vector_16_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC28	// tmp101,
	add	x0, x0, :lo12:.LC28	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC28	// tmp102,
	add	x1, x0, :lo12:.LC28	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE80:
	.size	use_indirect_va_list_several_short_vector_16_bytes, .-use_indirect_va_list_several_short_vector_16_bytes
	.align	2
	.global	test_indirect_va_list_several_short_vector_16_bytes
	.type	test_indirect_va_list_several_short_vector_16_bytes, %function
test_indirect_va_list_several_short_vector_16_bytes:
.LFB81:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:125: DECLARE_TEST (several_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.6995
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_short_vector_16_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.6995
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L217		//,
	bl	__stack_chk_fail		//
.L217:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE81:
	.size	test_indirect_va_list_several_short_vector_16_bytes, .-test_indirect_va_list_several_short_vector_16_bytes
	.section	.rodata
	.align	3
.LC29:
	.string	"many_short_vector_16_bytes"
	.text
	.align	2
	.global	test_va_list_many_short_vector_16_bytes
	.type	test_va_list_many_short_vector_16_bytes, %function
test_va_list_many_short_vector_16_bytes:
.LFB82:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:126: DECLARE_TEST (many_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7000
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC29	// tmp106,
	add	x0, x0, :lo12:.LC29	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC29	// tmp107,
	add	x1, x0, :lo12:.LC29	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7000
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L220		//,
	bl	__stack_chk_fail		//
.L220:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE82:
	.size	test_va_list_many_short_vector_16_bytes, .-test_va_list_many_short_vector_16_bytes
	.align	2
	.global	use_indirect_va_list_many_short_vector_16_bytes
	.type	use_indirect_va_list_many_short_vector_16_bytes, %function
use_indirect_va_list_many_short_vector_16_bytes:
.LFB83:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:126: DECLARE_TEST (many_short_vector_16_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC29	// tmp101,
	add	x0, x0, :lo12:.LC29	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC29	// tmp102,
	add	x1, x0, :lo12:.LC29	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE83:
	.size	use_indirect_va_list_many_short_vector_16_bytes, .-use_indirect_va_list_many_short_vector_16_bytes
	.align	2
	.global	test_indirect_va_list_many_short_vector_16_bytes
	.type	test_indirect_va_list_many_short_vector_16_bytes, %function
test_indirect_va_list_many_short_vector_16_bytes:
.LFB84:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:126: DECLARE_TEST (many_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7007
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_short_vector_16_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7007
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L225		//,
	bl	__stack_chk_fail		//
.L225:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE84:
	.size	test_indirect_va_list_many_short_vector_16_bytes, .-test_indirect_va_list_many_short_vector_16_bytes
	.section	.rodata
	.align	3
.LC30:
	.string	"few_hfa_2_floats"
	.text
	.align	2
	.global	test_va_list_few_hfa_2_floats
	.type	test_va_list_few_hfa_2_floats, %function
test_va_list_few_hfa_2_floats:
.LFB85:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:128: DECLARE_TEST (few_hfa_2_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7012
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC30	// tmp106,
	add	x0, x0, :lo12:.LC30	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC30	// tmp107,
	add	x1, x0, :lo12:.LC30	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7012
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L228		//,
	bl	__stack_chk_fail		//
.L228:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE85:
	.size	test_va_list_few_hfa_2_floats, .-test_va_list_few_hfa_2_floats
	.align	2
	.global	use_indirect_va_list_few_hfa_2_floats
	.type	use_indirect_va_list_few_hfa_2_floats, %function
use_indirect_va_list_few_hfa_2_floats:
.LFB86:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:128: DECLARE_TEST (few_hfa_2_floats);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC30	// tmp101,
	add	x0, x0, :lo12:.LC30	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC30	// tmp102,
	add	x1, x0, :lo12:.LC30	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE86:
	.size	use_indirect_va_list_few_hfa_2_floats, .-use_indirect_va_list_few_hfa_2_floats
	.align	2
	.global	test_indirect_va_list_few_hfa_2_floats
	.type	test_indirect_va_list_few_hfa_2_floats, %function
test_indirect_va_list_few_hfa_2_floats:
.LFB87:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:128: DECLARE_TEST (few_hfa_2_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7019
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_hfa_2_floats		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7019
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L233		//,
	bl	__stack_chk_fail		//
.L233:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE87:
	.size	test_indirect_va_list_few_hfa_2_floats, .-test_indirect_va_list_few_hfa_2_floats
	.section	.rodata
	.align	3
.LC31:
	.string	"several_hfa_2_floats"
	.text
	.align	2
	.global	test_va_list_several_hfa_2_floats
	.type	test_va_list_several_hfa_2_floats, %function
test_va_list_several_hfa_2_floats:
.LFB88:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:129: DECLARE_TEST (several_hfa_2_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7024
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC31	// tmp106,
	add	x0, x0, :lo12:.LC31	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC31	// tmp107,
	add	x1, x0, :lo12:.LC31	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7024
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L236		//,
	bl	__stack_chk_fail		//
.L236:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE88:
	.size	test_va_list_several_hfa_2_floats, .-test_va_list_several_hfa_2_floats
	.align	2
	.global	use_indirect_va_list_several_hfa_2_floats
	.type	use_indirect_va_list_several_hfa_2_floats, %function
use_indirect_va_list_several_hfa_2_floats:
.LFB89:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:129: DECLARE_TEST (several_hfa_2_floats);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC31	// tmp101,
	add	x0, x0, :lo12:.LC31	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC31	// tmp102,
	add	x1, x0, :lo12:.LC31	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE89:
	.size	use_indirect_va_list_several_hfa_2_floats, .-use_indirect_va_list_several_hfa_2_floats
	.align	2
	.global	test_indirect_va_list_several_hfa_2_floats
	.type	test_indirect_va_list_several_hfa_2_floats, %function
test_indirect_va_list_several_hfa_2_floats:
.LFB90:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:129: DECLARE_TEST (several_hfa_2_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7031
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_hfa_2_floats		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7031
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L241		//,
	bl	__stack_chk_fail		//
.L241:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE90:
	.size	test_indirect_va_list_several_hfa_2_floats, .-test_indirect_va_list_several_hfa_2_floats
	.section	.rodata
	.align	3
.LC32:
	.string	"many_hfa_2_floats"
	.text
	.align	2
	.global	test_va_list_many_hfa_2_floats
	.type	test_va_list_many_hfa_2_floats, %function
test_va_list_many_hfa_2_floats:
.LFB91:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:130: DECLARE_TEST (many_hfa_2_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7036
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC32	// tmp106,
	add	x0, x0, :lo12:.LC32	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC32	// tmp107,
	add	x1, x0, :lo12:.LC32	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7036
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L244		//,
	bl	__stack_chk_fail		//
.L244:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE91:
	.size	test_va_list_many_hfa_2_floats, .-test_va_list_many_hfa_2_floats
	.align	2
	.global	use_indirect_va_list_many_hfa_2_floats
	.type	use_indirect_va_list_many_hfa_2_floats, %function
use_indirect_va_list_many_hfa_2_floats:
.LFB92:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:130: DECLARE_TEST (many_hfa_2_floats);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC32	// tmp101,
	add	x0, x0, :lo12:.LC32	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC32	// tmp102,
	add	x1, x0, :lo12:.LC32	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE92:
	.size	use_indirect_va_list_many_hfa_2_floats, .-use_indirect_va_list_many_hfa_2_floats
	.align	2
	.global	test_indirect_va_list_many_hfa_2_floats
	.type	test_indirect_va_list_many_hfa_2_floats, %function
test_indirect_va_list_many_hfa_2_floats:
.LFB93:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:130: DECLARE_TEST (many_hfa_2_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7043
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_hfa_2_floats		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7043
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L249		//,
	bl	__stack_chk_fail		//
.L249:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE93:
	.size	test_indirect_va_list_many_hfa_2_floats, .-test_indirect_va_list_many_hfa_2_floats
	.section	.rodata
	.align	3
.LC33:
	.string	"few_hfa_4_floats"
	.text
	.align	2
	.global	test_va_list_few_hfa_4_floats
	.type	test_va_list_few_hfa_4_floats, %function
test_va_list_few_hfa_4_floats:
.LFB94:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:132: DECLARE_TEST (few_hfa_4_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7048
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC33	// tmp106,
	add	x0, x0, :lo12:.LC33	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC33	// tmp107,
	add	x1, x0, :lo12:.LC33	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7048
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L252		//,
	bl	__stack_chk_fail		//
.L252:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE94:
	.size	test_va_list_few_hfa_4_floats, .-test_va_list_few_hfa_4_floats
	.align	2
	.global	use_indirect_va_list_few_hfa_4_floats
	.type	use_indirect_va_list_few_hfa_4_floats, %function
use_indirect_va_list_few_hfa_4_floats:
.LFB95:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:132: DECLARE_TEST (few_hfa_4_floats);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC33	// tmp101,
	add	x0, x0, :lo12:.LC33	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC33	// tmp102,
	add	x1, x0, :lo12:.LC33	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE95:
	.size	use_indirect_va_list_few_hfa_4_floats, .-use_indirect_va_list_few_hfa_4_floats
	.align	2
	.global	test_indirect_va_list_few_hfa_4_floats
	.type	test_indirect_va_list_few_hfa_4_floats, %function
test_indirect_va_list_few_hfa_4_floats:
.LFB96:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:132: DECLARE_TEST (few_hfa_4_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7055
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_hfa_4_floats		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7055
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L257		//,
	bl	__stack_chk_fail		//
.L257:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE96:
	.size	test_indirect_va_list_few_hfa_4_floats, .-test_indirect_va_list_few_hfa_4_floats
	.section	.rodata
	.align	3
.LC34:
	.string	"several_hfa_4_floats"
	.text
	.align	2
	.global	test_va_list_several_hfa_4_floats
	.type	test_va_list_several_hfa_4_floats, %function
test_va_list_several_hfa_4_floats:
.LFB97:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:133: DECLARE_TEST (several_hfa_4_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7060
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC34	// tmp106,
	add	x0, x0, :lo12:.LC34	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC34	// tmp107,
	add	x1, x0, :lo12:.LC34	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7060
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L260		//,
	bl	__stack_chk_fail		//
.L260:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE97:
	.size	test_va_list_several_hfa_4_floats, .-test_va_list_several_hfa_4_floats
	.align	2
	.global	use_indirect_va_list_several_hfa_4_floats
	.type	use_indirect_va_list_several_hfa_4_floats, %function
use_indirect_va_list_several_hfa_4_floats:
.LFB98:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:133: DECLARE_TEST (several_hfa_4_floats);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC34	// tmp101,
	add	x0, x0, :lo12:.LC34	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC34	// tmp102,
	add	x1, x0, :lo12:.LC34	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE98:
	.size	use_indirect_va_list_several_hfa_4_floats, .-use_indirect_va_list_several_hfa_4_floats
	.align	2
	.global	test_indirect_va_list_several_hfa_4_floats
	.type	test_indirect_va_list_several_hfa_4_floats, %function
test_indirect_va_list_several_hfa_4_floats:
.LFB99:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:133: DECLARE_TEST (several_hfa_4_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7067
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_hfa_4_floats		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7067
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L265		//,
	bl	__stack_chk_fail		//
.L265:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE99:
	.size	test_indirect_va_list_several_hfa_4_floats, .-test_indirect_va_list_several_hfa_4_floats
	.section	.rodata
	.align	3
.LC35:
	.string	"many_hfa_4_floats"
	.text
	.align	2
	.global	test_va_list_many_hfa_4_floats
	.type	test_va_list_many_hfa_4_floats, %function
test_va_list_many_hfa_4_floats:
.LFB100:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:134: DECLARE_TEST (many_hfa_4_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7072
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC35	// tmp106,
	add	x0, x0, :lo12:.LC35	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC35	// tmp107,
	add	x1, x0, :lo12:.LC35	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7072
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L268		//,
	bl	__stack_chk_fail		//
.L268:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE100:
	.size	test_va_list_many_hfa_4_floats, .-test_va_list_many_hfa_4_floats
	.align	2
	.global	use_indirect_va_list_many_hfa_4_floats
	.type	use_indirect_va_list_many_hfa_4_floats, %function
use_indirect_va_list_many_hfa_4_floats:
.LFB101:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:134: DECLARE_TEST (many_hfa_4_floats);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC35	// tmp101,
	add	x0, x0, :lo12:.LC35	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC35	// tmp102,
	add	x1, x0, :lo12:.LC35	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE101:
	.size	use_indirect_va_list_many_hfa_4_floats, .-use_indirect_va_list_many_hfa_4_floats
	.align	2
	.global	test_indirect_va_list_many_hfa_4_floats
	.type	test_indirect_va_list_many_hfa_4_floats, %function
test_indirect_va_list_many_hfa_4_floats:
.LFB102:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:134: DECLARE_TEST (many_hfa_4_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7079
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_hfa_4_floats		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7079
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L273		//,
	bl	__stack_chk_fail		//
.L273:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE102:
	.size	test_indirect_va_list_many_hfa_4_floats, .-test_indirect_va_list_many_hfa_4_floats
	.section	.rodata
	.align	3
.LC36:
	.string	"few_hfa_2_doubles"
	.text
	.align	2
	.global	test_va_list_few_hfa_2_doubles
	.type	test_va_list_few_hfa_2_doubles, %function
test_va_list_few_hfa_2_doubles:
.LFB103:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:136: DECLARE_TEST (few_hfa_2_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7084
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC36	// tmp106,
	add	x0, x0, :lo12:.LC36	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC36	// tmp107,
	add	x1, x0, :lo12:.LC36	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7084
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L276		//,
	bl	__stack_chk_fail		//
.L276:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE103:
	.size	test_va_list_few_hfa_2_doubles, .-test_va_list_few_hfa_2_doubles
	.align	2
	.global	use_indirect_va_list_few_hfa_2_doubles
	.type	use_indirect_va_list_few_hfa_2_doubles, %function
use_indirect_va_list_few_hfa_2_doubles:
.LFB104:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:136: DECLARE_TEST (few_hfa_2_doubles);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC36	// tmp101,
	add	x0, x0, :lo12:.LC36	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC36	// tmp102,
	add	x1, x0, :lo12:.LC36	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE104:
	.size	use_indirect_va_list_few_hfa_2_doubles, .-use_indirect_va_list_few_hfa_2_doubles
	.align	2
	.global	test_indirect_va_list_few_hfa_2_doubles
	.type	test_indirect_va_list_few_hfa_2_doubles, %function
test_indirect_va_list_few_hfa_2_doubles:
.LFB105:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:136: DECLARE_TEST (few_hfa_2_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7091
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_hfa_2_doubles		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7091
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L281		//,
	bl	__stack_chk_fail		//
.L281:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE105:
	.size	test_indirect_va_list_few_hfa_2_doubles, .-test_indirect_va_list_few_hfa_2_doubles
	.section	.rodata
	.align	3
.LC37:
	.string	"several_hfa_2_doubles"
	.text
	.align	2
	.global	test_va_list_several_hfa_2_doubles
	.type	test_va_list_several_hfa_2_doubles, %function
test_va_list_several_hfa_2_doubles:
.LFB106:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:137: DECLARE_TEST (several_hfa_2_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7096
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC37	// tmp106,
	add	x0, x0, :lo12:.LC37	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC37	// tmp107,
	add	x1, x0, :lo12:.LC37	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7096
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L284		//,
	bl	__stack_chk_fail		//
.L284:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE106:
	.size	test_va_list_several_hfa_2_doubles, .-test_va_list_several_hfa_2_doubles
	.align	2
	.global	use_indirect_va_list_several_hfa_2_doubles
	.type	use_indirect_va_list_several_hfa_2_doubles, %function
use_indirect_va_list_several_hfa_2_doubles:
.LFB107:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:137: DECLARE_TEST (several_hfa_2_doubles);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC37	// tmp101,
	add	x0, x0, :lo12:.LC37	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC37	// tmp102,
	add	x1, x0, :lo12:.LC37	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE107:
	.size	use_indirect_va_list_several_hfa_2_doubles, .-use_indirect_va_list_several_hfa_2_doubles
	.align	2
	.global	test_indirect_va_list_several_hfa_2_doubles
	.type	test_indirect_va_list_several_hfa_2_doubles, %function
test_indirect_va_list_several_hfa_2_doubles:
.LFB108:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:137: DECLARE_TEST (several_hfa_2_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7103
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_hfa_2_doubles		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7103
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L289		//,
	bl	__stack_chk_fail		//
.L289:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE108:
	.size	test_indirect_va_list_several_hfa_2_doubles, .-test_indirect_va_list_several_hfa_2_doubles
	.section	.rodata
	.align	3
.LC38:
	.string	"many_hfa_2_doubles"
	.text
	.align	2
	.global	test_va_list_many_hfa_2_doubles
	.type	test_va_list_many_hfa_2_doubles, %function
test_va_list_many_hfa_2_doubles:
.LFB109:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:138: DECLARE_TEST (many_hfa_2_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7108
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC38	// tmp106,
	add	x0, x0, :lo12:.LC38	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC38	// tmp107,
	add	x1, x0, :lo12:.LC38	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7108
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L292		//,
	bl	__stack_chk_fail		//
.L292:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE109:
	.size	test_va_list_many_hfa_2_doubles, .-test_va_list_many_hfa_2_doubles
	.align	2
	.global	use_indirect_va_list_many_hfa_2_doubles
	.type	use_indirect_va_list_many_hfa_2_doubles, %function
use_indirect_va_list_many_hfa_2_doubles:
.LFB110:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:138: DECLARE_TEST (many_hfa_2_doubles);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC38	// tmp101,
	add	x0, x0, :lo12:.LC38	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC38	// tmp102,
	add	x1, x0, :lo12:.LC38	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE110:
	.size	use_indirect_va_list_many_hfa_2_doubles, .-use_indirect_va_list_many_hfa_2_doubles
	.align	2
	.global	test_indirect_va_list_many_hfa_2_doubles
	.type	test_indirect_va_list_many_hfa_2_doubles, %function
test_indirect_va_list_many_hfa_2_doubles:
.LFB111:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:138: DECLARE_TEST (many_hfa_2_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7115
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_hfa_2_doubles		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7115
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L297		//,
	bl	__stack_chk_fail		//
.L297:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE111:
	.size	test_indirect_va_list_many_hfa_2_doubles, .-test_indirect_va_list_many_hfa_2_doubles
	.section	.rodata
	.align	3
.LC39:
	.string	"few_hfa_4_doubles"
	.text
	.align	2
	.global	test_va_list_few_hfa_4_doubles
	.type	test_va_list_few_hfa_4_doubles, %function
test_va_list_few_hfa_4_doubles:
.LFB112:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:140: DECLARE_TEST (few_hfa_4_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7120
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC39	// tmp106,
	add	x0, x0, :lo12:.LC39	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC39	// tmp107,
	add	x1, x0, :lo12:.LC39	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7120
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L300		//,
	bl	__stack_chk_fail		//
.L300:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE112:
	.size	test_va_list_few_hfa_4_doubles, .-test_va_list_few_hfa_4_doubles
	.align	2
	.global	use_indirect_va_list_few_hfa_4_doubles
	.type	use_indirect_va_list_few_hfa_4_doubles, %function
use_indirect_va_list_few_hfa_4_doubles:
.LFB113:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:140: DECLARE_TEST (few_hfa_4_doubles);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC39	// tmp101,
	add	x0, x0, :lo12:.LC39	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC39	// tmp102,
	add	x1, x0, :lo12:.LC39	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE113:
	.size	use_indirect_va_list_few_hfa_4_doubles, .-use_indirect_va_list_few_hfa_4_doubles
	.align	2
	.global	test_indirect_va_list_few_hfa_4_doubles
	.type	test_indirect_va_list_few_hfa_4_doubles, %function
test_indirect_va_list_few_hfa_4_doubles:
.LFB114:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:140: DECLARE_TEST (few_hfa_4_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7127
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_hfa_4_doubles		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7127
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L305		//,
	bl	__stack_chk_fail		//
.L305:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE114:
	.size	test_indirect_va_list_few_hfa_4_doubles, .-test_indirect_va_list_few_hfa_4_doubles
	.section	.rodata
	.align	3
.LC40:
	.string	"several_hfa_4_doubles"
	.text
	.align	2
	.global	test_va_list_several_hfa_4_doubles
	.type	test_va_list_several_hfa_4_doubles, %function
test_va_list_several_hfa_4_doubles:
.LFB115:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:141: DECLARE_TEST (several_hfa_4_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7132
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC40	// tmp106,
	add	x0, x0, :lo12:.LC40	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC40	// tmp107,
	add	x1, x0, :lo12:.LC40	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7132
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L308		//,
	bl	__stack_chk_fail		//
.L308:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE115:
	.size	test_va_list_several_hfa_4_doubles, .-test_va_list_several_hfa_4_doubles
	.align	2
	.global	use_indirect_va_list_several_hfa_4_doubles
	.type	use_indirect_va_list_several_hfa_4_doubles, %function
use_indirect_va_list_several_hfa_4_doubles:
.LFB116:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:141: DECLARE_TEST (several_hfa_4_doubles);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC40	// tmp101,
	add	x0, x0, :lo12:.LC40	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC40	// tmp102,
	add	x1, x0, :lo12:.LC40	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE116:
	.size	use_indirect_va_list_several_hfa_4_doubles, .-use_indirect_va_list_several_hfa_4_doubles
	.align	2
	.global	test_indirect_va_list_several_hfa_4_doubles
	.type	test_indirect_va_list_several_hfa_4_doubles, %function
test_indirect_va_list_several_hfa_4_doubles:
.LFB117:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:141: DECLARE_TEST (several_hfa_4_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7139
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_hfa_4_doubles		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7139
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L313		//,
	bl	__stack_chk_fail		//
.L313:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE117:
	.size	test_indirect_va_list_several_hfa_4_doubles, .-test_indirect_va_list_several_hfa_4_doubles
	.section	.rodata
	.align	3
.LC41:
	.string	"many_hfa_4_doubles"
	.text
	.align	2
	.global	test_va_list_many_hfa_4_doubles
	.type	test_va_list_many_hfa_4_doubles, %function
test_va_list_many_hfa_4_doubles:
.LFB118:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:142: DECLARE_TEST (many_hfa_4_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7144
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC41	// tmp106,
	add	x0, x0, :lo12:.LC41	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC41	// tmp107,
	add	x1, x0, :lo12:.LC41	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7144
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L316		//,
	bl	__stack_chk_fail		//
.L316:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE118:
	.size	test_va_list_many_hfa_4_doubles, .-test_va_list_many_hfa_4_doubles
	.align	2
	.global	use_indirect_va_list_many_hfa_4_doubles
	.type	use_indirect_va_list_many_hfa_4_doubles, %function
use_indirect_va_list_many_hfa_4_doubles:
.LFB119:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:142: DECLARE_TEST (many_hfa_4_doubles);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC41	// tmp101,
	add	x0, x0, :lo12:.LC41	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC41	// tmp102,
	add	x1, x0, :lo12:.LC41	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE119:
	.size	use_indirect_va_list_many_hfa_4_doubles, .-use_indirect_va_list_many_hfa_4_doubles
	.align	2
	.global	test_indirect_va_list_many_hfa_4_doubles
	.type	test_indirect_va_list_many_hfa_4_doubles, %function
test_indirect_va_list_many_hfa_4_doubles:
.LFB120:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:142: DECLARE_TEST (many_hfa_4_doubles);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7151
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_hfa_4_doubles		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7151
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L321		//,
	bl	__stack_chk_fail		//
.L321:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE120:
	.size	test_indirect_va_list_many_hfa_4_doubles, .-test_indirect_va_list_many_hfa_4_doubles
	.section	.rodata
	.align	3
.LC42:
	.string	"few_hva_2_short_vector_8_bytes"
	.text
	.align	2
	.global	test_va_list_few_hva_2_short_vector_8_bytes
	.type	test_va_list_few_hva_2_short_vector_8_bytes, %function
test_va_list_few_hva_2_short_vector_8_bytes:
.LFB121:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:144: DECLARE_TEST (few_hva_2_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7156
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC42	// tmp106,
	add	x0, x0, :lo12:.LC42	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC42	// tmp107,
	add	x1, x0, :lo12:.LC42	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7156
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L324		//,
	bl	__stack_chk_fail		//
.L324:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE121:
	.size	test_va_list_few_hva_2_short_vector_8_bytes, .-test_va_list_few_hva_2_short_vector_8_bytes
	.align	2
	.global	use_indirect_va_list_few_hva_2_short_vector_8_bytes
	.type	use_indirect_va_list_few_hva_2_short_vector_8_bytes, %function
use_indirect_va_list_few_hva_2_short_vector_8_bytes:
.LFB122:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:144: DECLARE_TEST (few_hva_2_short_vector_8_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC42	// tmp101,
	add	x0, x0, :lo12:.LC42	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC42	// tmp102,
	add	x1, x0, :lo12:.LC42	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE122:
	.size	use_indirect_va_list_few_hva_2_short_vector_8_bytes, .-use_indirect_va_list_few_hva_2_short_vector_8_bytes
	.align	2
	.global	test_indirect_va_list_few_hva_2_short_vector_8_bytes
	.type	test_indirect_va_list_few_hva_2_short_vector_8_bytes, %function
test_indirect_va_list_few_hva_2_short_vector_8_bytes:
.LFB123:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:144: DECLARE_TEST (few_hva_2_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7163
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_hva_2_short_vector_8_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7163
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L329		//,
	bl	__stack_chk_fail		//
.L329:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE123:
	.size	test_indirect_va_list_few_hva_2_short_vector_8_bytes, .-test_indirect_va_list_few_hva_2_short_vector_8_bytes
	.section	.rodata
	.align	3
.LC43:
	.string	"several_hva_2_short_vector_8_bytes"
	.text
	.align	2
	.global	test_va_list_several_hva_2_short_vector_8_bytes
	.type	test_va_list_several_hva_2_short_vector_8_bytes, %function
test_va_list_several_hva_2_short_vector_8_bytes:
.LFB124:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:145: DECLARE_TEST (several_hva_2_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7168
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC43	// tmp106,
	add	x0, x0, :lo12:.LC43	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC43	// tmp107,
	add	x1, x0, :lo12:.LC43	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7168
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L332		//,
	bl	__stack_chk_fail		//
.L332:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE124:
	.size	test_va_list_several_hva_2_short_vector_8_bytes, .-test_va_list_several_hva_2_short_vector_8_bytes
	.align	2
	.global	use_indirect_va_list_several_hva_2_short_vector_8_bytes
	.type	use_indirect_va_list_several_hva_2_short_vector_8_bytes, %function
use_indirect_va_list_several_hva_2_short_vector_8_bytes:
.LFB125:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:145: DECLARE_TEST (several_hva_2_short_vector_8_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC43	// tmp101,
	add	x0, x0, :lo12:.LC43	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC43	// tmp102,
	add	x1, x0, :lo12:.LC43	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE125:
	.size	use_indirect_va_list_several_hva_2_short_vector_8_bytes, .-use_indirect_va_list_several_hva_2_short_vector_8_bytes
	.align	2
	.global	test_indirect_va_list_several_hva_2_short_vector_8_bytes
	.type	test_indirect_va_list_several_hva_2_short_vector_8_bytes, %function
test_indirect_va_list_several_hva_2_short_vector_8_bytes:
.LFB126:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:145: DECLARE_TEST (several_hva_2_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7175
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_hva_2_short_vector_8_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7175
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L337		//,
	bl	__stack_chk_fail		//
.L337:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE126:
	.size	test_indirect_va_list_several_hva_2_short_vector_8_bytes, .-test_indirect_va_list_several_hva_2_short_vector_8_bytes
	.section	.rodata
	.align	3
.LC44:
	.string	"many_hva_2_short_vector_8_bytes"
	.text
	.align	2
	.global	test_va_list_many_hva_2_short_vector_8_bytes
	.type	test_va_list_many_hva_2_short_vector_8_bytes, %function
test_va_list_many_hva_2_short_vector_8_bytes:
.LFB127:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:146: DECLARE_TEST (many_hva_2_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7180
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC44	// tmp106,
	add	x0, x0, :lo12:.LC44	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC44	// tmp107,
	add	x1, x0, :lo12:.LC44	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7180
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L340		//,
	bl	__stack_chk_fail		//
.L340:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE127:
	.size	test_va_list_many_hva_2_short_vector_8_bytes, .-test_va_list_many_hva_2_short_vector_8_bytes
	.align	2
	.global	use_indirect_va_list_many_hva_2_short_vector_8_bytes
	.type	use_indirect_va_list_many_hva_2_short_vector_8_bytes, %function
use_indirect_va_list_many_hva_2_short_vector_8_bytes:
.LFB128:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:146: DECLARE_TEST (many_hva_2_short_vector_8_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC44	// tmp101,
	add	x0, x0, :lo12:.LC44	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC44	// tmp102,
	add	x1, x0, :lo12:.LC44	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE128:
	.size	use_indirect_va_list_many_hva_2_short_vector_8_bytes, .-use_indirect_va_list_many_hva_2_short_vector_8_bytes
	.align	2
	.global	test_indirect_va_list_many_hva_2_short_vector_8_bytes
	.type	test_indirect_va_list_many_hva_2_short_vector_8_bytes, %function
test_indirect_va_list_many_hva_2_short_vector_8_bytes:
.LFB129:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:146: DECLARE_TEST (many_hva_2_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7187
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_hva_2_short_vector_8_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7187
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L345		//,
	bl	__stack_chk_fail		//
.L345:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE129:
	.size	test_indirect_va_list_many_hva_2_short_vector_8_bytes, .-test_indirect_va_list_many_hva_2_short_vector_8_bytes
	.section	.rodata
	.align	3
.LC45:
	.string	"few_hva_4_short_vector_8_bytes"
	.text
	.align	2
	.global	test_va_list_few_hva_4_short_vector_8_bytes
	.type	test_va_list_few_hva_4_short_vector_8_bytes, %function
test_va_list_few_hva_4_short_vector_8_bytes:
.LFB130:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:148: DECLARE_TEST (few_hva_4_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7192
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC45	// tmp106,
	add	x0, x0, :lo12:.LC45	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC45	// tmp107,
	add	x1, x0, :lo12:.LC45	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7192
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L348		//,
	bl	__stack_chk_fail		//
.L348:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE130:
	.size	test_va_list_few_hva_4_short_vector_8_bytes, .-test_va_list_few_hva_4_short_vector_8_bytes
	.align	2
	.global	use_indirect_va_list_few_hva_4_short_vector_8_bytes
	.type	use_indirect_va_list_few_hva_4_short_vector_8_bytes, %function
use_indirect_va_list_few_hva_4_short_vector_8_bytes:
.LFB131:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:148: DECLARE_TEST (few_hva_4_short_vector_8_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC45	// tmp101,
	add	x0, x0, :lo12:.LC45	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC45	// tmp102,
	add	x1, x0, :lo12:.LC45	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE131:
	.size	use_indirect_va_list_few_hva_4_short_vector_8_bytes, .-use_indirect_va_list_few_hva_4_short_vector_8_bytes
	.align	2
	.global	test_indirect_va_list_few_hva_4_short_vector_8_bytes
	.type	test_indirect_va_list_few_hva_4_short_vector_8_bytes, %function
test_indirect_va_list_few_hva_4_short_vector_8_bytes:
.LFB132:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:148: DECLARE_TEST (few_hva_4_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7199
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_hva_4_short_vector_8_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7199
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L353		//,
	bl	__stack_chk_fail		//
.L353:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE132:
	.size	test_indirect_va_list_few_hva_4_short_vector_8_bytes, .-test_indirect_va_list_few_hva_4_short_vector_8_bytes
	.section	.rodata
	.align	3
.LC46:
	.string	"several_hva_4_short_vector_8_bytes"
	.text
	.align	2
	.global	test_va_list_several_hva_4_short_vector_8_bytes
	.type	test_va_list_several_hva_4_short_vector_8_bytes, %function
test_va_list_several_hva_4_short_vector_8_bytes:
.LFB133:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:149: DECLARE_TEST (several_hva_4_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7204
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC46	// tmp106,
	add	x0, x0, :lo12:.LC46	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC46	// tmp107,
	add	x1, x0, :lo12:.LC46	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7204
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L356		//,
	bl	__stack_chk_fail		//
.L356:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE133:
	.size	test_va_list_several_hva_4_short_vector_8_bytes, .-test_va_list_several_hva_4_short_vector_8_bytes
	.align	2
	.global	use_indirect_va_list_several_hva_4_short_vector_8_bytes
	.type	use_indirect_va_list_several_hva_4_short_vector_8_bytes, %function
use_indirect_va_list_several_hva_4_short_vector_8_bytes:
.LFB134:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:149: DECLARE_TEST (several_hva_4_short_vector_8_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC46	// tmp101,
	add	x0, x0, :lo12:.LC46	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC46	// tmp102,
	add	x1, x0, :lo12:.LC46	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE134:
	.size	use_indirect_va_list_several_hva_4_short_vector_8_bytes, .-use_indirect_va_list_several_hva_4_short_vector_8_bytes
	.align	2
	.global	test_indirect_va_list_several_hva_4_short_vector_8_bytes
	.type	test_indirect_va_list_several_hva_4_short_vector_8_bytes, %function
test_indirect_va_list_several_hva_4_short_vector_8_bytes:
.LFB135:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:149: DECLARE_TEST (several_hva_4_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7211
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_hva_4_short_vector_8_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7211
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L361		//,
	bl	__stack_chk_fail		//
.L361:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE135:
	.size	test_indirect_va_list_several_hva_4_short_vector_8_bytes, .-test_indirect_va_list_several_hva_4_short_vector_8_bytes
	.section	.rodata
	.align	3
.LC47:
	.string	"many_hva_4_short_vector_8_bytes"
	.text
	.align	2
	.global	test_va_list_many_hva_4_short_vector_8_bytes
	.type	test_va_list_many_hva_4_short_vector_8_bytes, %function
test_va_list_many_hva_4_short_vector_8_bytes:
.LFB136:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:150: DECLARE_TEST (many_hva_4_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7216
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC47	// tmp106,
	add	x0, x0, :lo12:.LC47	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC47	// tmp107,
	add	x1, x0, :lo12:.LC47	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7216
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L364		//,
	bl	__stack_chk_fail		//
.L364:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE136:
	.size	test_va_list_many_hva_4_short_vector_8_bytes, .-test_va_list_many_hva_4_short_vector_8_bytes
	.align	2
	.global	use_indirect_va_list_many_hva_4_short_vector_8_bytes
	.type	use_indirect_va_list_many_hva_4_short_vector_8_bytes, %function
use_indirect_va_list_many_hva_4_short_vector_8_bytes:
.LFB137:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:150: DECLARE_TEST (many_hva_4_short_vector_8_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC47	// tmp101,
	add	x0, x0, :lo12:.LC47	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC47	// tmp102,
	add	x1, x0, :lo12:.LC47	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE137:
	.size	use_indirect_va_list_many_hva_4_short_vector_8_bytes, .-use_indirect_va_list_many_hva_4_short_vector_8_bytes
	.align	2
	.global	test_indirect_va_list_many_hva_4_short_vector_8_bytes
	.type	test_indirect_va_list_many_hva_4_short_vector_8_bytes, %function
test_indirect_va_list_many_hva_4_short_vector_8_bytes:
.LFB138:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:150: DECLARE_TEST (many_hva_4_short_vector_8_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7223
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_hva_4_short_vector_8_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7223
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L369		//,
	bl	__stack_chk_fail		//
.L369:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE138:
	.size	test_indirect_va_list_many_hva_4_short_vector_8_bytes, .-test_indirect_va_list_many_hva_4_short_vector_8_bytes
	.section	.rodata
	.align	3
.LC48:
	.string	"few_hva_2_short_vector_16_bytes"
	.text
	.align	2
	.global	test_va_list_few_hva_2_short_vector_16_bytes
	.type	test_va_list_few_hva_2_short_vector_16_bytes, %function
test_va_list_few_hva_2_short_vector_16_bytes:
.LFB139:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:152: DECLARE_TEST (few_hva_2_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7228
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC48	// tmp106,
	add	x0, x0, :lo12:.LC48	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC48	// tmp107,
	add	x1, x0, :lo12:.LC48	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7228
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L372		//,
	bl	__stack_chk_fail		//
.L372:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE139:
	.size	test_va_list_few_hva_2_short_vector_16_bytes, .-test_va_list_few_hva_2_short_vector_16_bytes
	.align	2
	.global	use_indirect_va_list_few_hva_2_short_vector_16_bytes
	.type	use_indirect_va_list_few_hva_2_short_vector_16_bytes, %function
use_indirect_va_list_few_hva_2_short_vector_16_bytes:
.LFB140:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:152: DECLARE_TEST (few_hva_2_short_vector_16_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC48	// tmp101,
	add	x0, x0, :lo12:.LC48	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC48	// tmp102,
	add	x1, x0, :lo12:.LC48	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE140:
	.size	use_indirect_va_list_few_hva_2_short_vector_16_bytes, .-use_indirect_va_list_few_hva_2_short_vector_16_bytes
	.align	2
	.global	test_indirect_va_list_few_hva_2_short_vector_16_bytes
	.type	test_indirect_va_list_few_hva_2_short_vector_16_bytes, %function
test_indirect_va_list_few_hva_2_short_vector_16_bytes:
.LFB141:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:152: DECLARE_TEST (few_hva_2_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7235
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_hva_2_short_vector_16_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7235
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L377		//,
	bl	__stack_chk_fail		//
.L377:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE141:
	.size	test_indirect_va_list_few_hva_2_short_vector_16_bytes, .-test_indirect_va_list_few_hva_2_short_vector_16_bytes
	.section	.rodata
	.align	3
.LC49:
	.string	"several_hva_2_short_vector_16_bytes"
	.text
	.align	2
	.global	test_va_list_several_hva_2_short_vector_16_bytes
	.type	test_va_list_several_hva_2_short_vector_16_bytes, %function
test_va_list_several_hva_2_short_vector_16_bytes:
.LFB142:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:153: DECLARE_TEST (several_hva_2_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7240
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC49	// tmp106,
	add	x0, x0, :lo12:.LC49	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC49	// tmp107,
	add	x1, x0, :lo12:.LC49	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7240
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L380		//,
	bl	__stack_chk_fail		//
.L380:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE142:
	.size	test_va_list_several_hva_2_short_vector_16_bytes, .-test_va_list_several_hva_2_short_vector_16_bytes
	.align	2
	.global	use_indirect_va_list_several_hva_2_short_vector_16_bytes
	.type	use_indirect_va_list_several_hva_2_short_vector_16_bytes, %function
use_indirect_va_list_several_hva_2_short_vector_16_bytes:
.LFB143:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:153: DECLARE_TEST (several_hva_2_short_vector_16_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC49	// tmp101,
	add	x0, x0, :lo12:.LC49	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC49	// tmp102,
	add	x1, x0, :lo12:.LC49	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE143:
	.size	use_indirect_va_list_several_hva_2_short_vector_16_bytes, .-use_indirect_va_list_several_hva_2_short_vector_16_bytes
	.align	2
	.global	test_indirect_va_list_several_hva_2_short_vector_16_bytes
	.type	test_indirect_va_list_several_hva_2_short_vector_16_bytes, %function
test_indirect_va_list_several_hva_2_short_vector_16_bytes:
.LFB144:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:153: DECLARE_TEST (several_hva_2_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7247
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_hva_2_short_vector_16_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7247
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L385		//,
	bl	__stack_chk_fail		//
.L385:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE144:
	.size	test_indirect_va_list_several_hva_2_short_vector_16_bytes, .-test_indirect_va_list_several_hva_2_short_vector_16_bytes
	.section	.rodata
	.align	3
.LC50:
	.string	"many_hva_2_short_vector_16_bytes"
	.text
	.align	2
	.global	test_va_list_many_hva_2_short_vector_16_bytes
	.type	test_va_list_many_hva_2_short_vector_16_bytes, %function
test_va_list_many_hva_2_short_vector_16_bytes:
.LFB145:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:154: DECLARE_TEST (many_hva_2_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7252
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC50	// tmp106,
	add	x0, x0, :lo12:.LC50	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC50	// tmp107,
	add	x1, x0, :lo12:.LC50	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7252
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L388		//,
	bl	__stack_chk_fail		//
.L388:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE145:
	.size	test_va_list_many_hva_2_short_vector_16_bytes, .-test_va_list_many_hva_2_short_vector_16_bytes
	.align	2
	.global	use_indirect_va_list_many_hva_2_short_vector_16_bytes
	.type	use_indirect_va_list_many_hva_2_short_vector_16_bytes, %function
use_indirect_va_list_many_hva_2_short_vector_16_bytes:
.LFB146:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:154: DECLARE_TEST (many_hva_2_short_vector_16_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC50	// tmp101,
	add	x0, x0, :lo12:.LC50	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC50	// tmp102,
	add	x1, x0, :lo12:.LC50	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE146:
	.size	use_indirect_va_list_many_hva_2_short_vector_16_bytes, .-use_indirect_va_list_many_hva_2_short_vector_16_bytes
	.align	2
	.global	test_indirect_va_list_many_hva_2_short_vector_16_bytes
	.type	test_indirect_va_list_many_hva_2_short_vector_16_bytes, %function
test_indirect_va_list_many_hva_2_short_vector_16_bytes:
.LFB147:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:154: DECLARE_TEST (many_hva_2_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7259
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_hva_2_short_vector_16_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7259
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L393		//,
	bl	__stack_chk_fail		//
.L393:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE147:
	.size	test_indirect_va_list_many_hva_2_short_vector_16_bytes, .-test_indirect_va_list_many_hva_2_short_vector_16_bytes
	.section	.rodata
	.align	3
.LC51:
	.string	"few_hva_4_short_vector_16_bytes"
	.text
	.align	2
	.global	test_va_list_few_hva_4_short_vector_16_bytes
	.type	test_va_list_few_hva_4_short_vector_16_bytes, %function
test_va_list_few_hva_4_short_vector_16_bytes:
.LFB148:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:156: DECLARE_TEST (few_hva_4_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7264
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC51	// tmp106,
	add	x0, x0, :lo12:.LC51	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC51	// tmp107,
	add	x1, x0, :lo12:.LC51	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7264
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L396		//,
	bl	__stack_chk_fail		//
.L396:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE148:
	.size	test_va_list_few_hva_4_short_vector_16_bytes, .-test_va_list_few_hva_4_short_vector_16_bytes
	.align	2
	.global	use_indirect_va_list_few_hva_4_short_vector_16_bytes
	.type	use_indirect_va_list_few_hva_4_short_vector_16_bytes, %function
use_indirect_va_list_few_hva_4_short_vector_16_bytes:
.LFB149:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:156: DECLARE_TEST (few_hva_4_short_vector_16_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC51	// tmp101,
	add	x0, x0, :lo12:.LC51	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC51	// tmp102,
	add	x1, x0, :lo12:.LC51	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE149:
	.size	use_indirect_va_list_few_hva_4_short_vector_16_bytes, .-use_indirect_va_list_few_hva_4_short_vector_16_bytes
	.align	2
	.global	test_indirect_va_list_few_hva_4_short_vector_16_bytes
	.type	test_indirect_va_list_few_hva_4_short_vector_16_bytes, %function
test_indirect_va_list_few_hva_4_short_vector_16_bytes:
.LFB150:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:156: DECLARE_TEST (few_hva_4_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7271
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_few_hva_4_short_vector_16_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7271
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L401		//,
	bl	__stack_chk_fail		//
.L401:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE150:
	.size	test_indirect_va_list_few_hva_4_short_vector_16_bytes, .-test_indirect_va_list_few_hva_4_short_vector_16_bytes
	.section	.rodata
	.align	3
.LC52:
	.string	"several_hva_4_short_vector_16_bytes"
	.text
	.align	2
	.global	test_va_list_several_hva_4_short_vector_16_bytes
	.type	test_va_list_several_hva_4_short_vector_16_bytes, %function
test_va_list_several_hva_4_short_vector_16_bytes:
.LFB151:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:157: DECLARE_TEST (several_hva_4_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7276
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC52	// tmp106,
	add	x0, x0, :lo12:.LC52	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC52	// tmp107,
	add	x1, x0, :lo12:.LC52	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7276
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L404		//,
	bl	__stack_chk_fail		//
.L404:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE151:
	.size	test_va_list_several_hva_4_short_vector_16_bytes, .-test_va_list_several_hva_4_short_vector_16_bytes
	.align	2
	.global	use_indirect_va_list_several_hva_4_short_vector_16_bytes
	.type	use_indirect_va_list_several_hva_4_short_vector_16_bytes, %function
use_indirect_va_list_several_hva_4_short_vector_16_bytes:
.LFB152:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:157: DECLARE_TEST (several_hva_4_short_vector_16_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC52	// tmp101,
	add	x0, x0, :lo12:.LC52	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC52	// tmp102,
	add	x1, x0, :lo12:.LC52	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE152:
	.size	use_indirect_va_list_several_hva_4_short_vector_16_bytes, .-use_indirect_va_list_several_hva_4_short_vector_16_bytes
	.align	2
	.global	test_indirect_va_list_several_hva_4_short_vector_16_bytes
	.type	test_indirect_va_list_several_hva_4_short_vector_16_bytes, %function
test_indirect_va_list_several_hva_4_short_vector_16_bytes:
.LFB153:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:157: DECLARE_TEST (several_hva_4_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7283
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_several_hva_4_short_vector_16_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7283
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L409		//,
	bl	__stack_chk_fail		//
.L409:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE153:
	.size	test_indirect_va_list_several_hva_4_short_vector_16_bytes, .-test_indirect_va_list_several_hva_4_short_vector_16_bytes
	.section	.rodata
	.align	3
.LC53:
	.string	"many_hva_4_short_vector_16_bytes"
	.text
	.align	2
	.global	test_va_list_many_hva_4_short_vector_16_bytes
	.type	test_va_list_many_hva_4_short_vector_16_bytes, %function
test_va_list_many_hva_4_short_vector_16_bytes:
.LFB154:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:158: DECLARE_TEST (many_hva_4_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7288
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC53	// tmp106,
	add	x0, x0, :lo12:.LC53	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC53	// tmp107,
	add	x1, x0, :lo12:.LC53	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7288
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L412		//,
	bl	__stack_chk_fail		//
.L412:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE154:
	.size	test_va_list_many_hva_4_short_vector_16_bytes, .-test_va_list_many_hva_4_short_vector_16_bytes
	.align	2
	.global	use_indirect_va_list_many_hva_4_short_vector_16_bytes
	.type	use_indirect_va_list_many_hva_4_short_vector_16_bytes, %function
use_indirect_va_list_many_hva_4_short_vector_16_bytes:
.LFB155:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:158: DECLARE_TEST (many_hva_4_short_vector_16_bytes);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC53	// tmp101,
	add	x0, x0, :lo12:.LC53	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC53	// tmp102,
	add	x1, x0, :lo12:.LC53	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE155:
	.size	use_indirect_va_list_many_hva_4_short_vector_16_bytes, .-use_indirect_va_list_many_hva_4_short_vector_16_bytes
	.align	2
	.global	test_indirect_va_list_many_hva_4_short_vector_16_bytes
	.type	test_indirect_va_list_many_hva_4_short_vector_16_bytes, %function
test_indirect_va_list_many_hva_4_short_vector_16_bytes:
.LFB156:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:158: DECLARE_TEST (many_hva_4_short_vector_16_bytes);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7295
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_many_hva_4_short_vector_16_bytes		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7295
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L417		//,
	bl	__stack_chk_fail		//
.L417:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE156:
	.size	test_indirect_va_list_many_hva_4_short_vector_16_bytes, .-test_indirect_va_list_many_hva_4_short_vector_16_bytes
	.section	.rodata
	.align	3
.LC54:
	.string	"ints_and_composites"
	.text
	.align	2
	.global	test_va_list_ints_and_composites
	.type	test_va_list_ints_and_composites, %function
test_va_list_ints_and_composites:
.LFB157:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:160: DECLARE_TEST (ints_and_composites);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7300
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC54	// tmp106,
	add	x0, x0, :lo12:.LC54	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC54	// tmp107,
	add	x1, x0, :lo12:.LC54	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7300
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L420		//,
	bl	__stack_chk_fail		//
.L420:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE157:
	.size	test_va_list_ints_and_composites, .-test_va_list_ints_and_composites
	.align	2
	.global	use_indirect_va_list_ints_and_composites
	.type	use_indirect_va_list_ints_and_composites, %function
use_indirect_va_list_ints_and_composites:
.LFB158:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:160: DECLARE_TEST (ints_and_composites);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC54	// tmp101,
	add	x0, x0, :lo12:.LC54	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC54	// tmp102,
	add	x1, x0, :lo12:.LC54	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE158:
	.size	use_indirect_va_list_ints_and_composites, .-use_indirect_va_list_ints_and_composites
	.align	2
	.global	test_indirect_va_list_ints_and_composites
	.type	test_indirect_va_list_ints_and_composites, %function
test_indirect_va_list_ints_and_composites:
.LFB159:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:160: DECLARE_TEST (ints_and_composites);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7307
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_ints_and_composites		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7307
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L425		//,
	bl	__stack_chk_fail		//
.L425:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE159:
	.size	test_indirect_va_list_ints_and_composites, .-test_indirect_va_list_ints_and_composites
	.section	.rodata
	.align	3
.LC55:
	.string	"ints_and_floats"
	.text
	.align	2
	.global	test_va_list_ints_and_floats
	.type	test_va_list_ints_and_floats, %function
test_va_list_ints_and_floats:
.LFB160:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:161: DECLARE_TEST (ints_and_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7312
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC55	// tmp106,
	add	x0, x0, :lo12:.LC55	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC55	// tmp107,
	add	x1, x0, :lo12:.LC55	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7312
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L428		//,
	bl	__stack_chk_fail		//
.L428:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE160:
	.size	test_va_list_ints_and_floats, .-test_va_list_ints_and_floats
	.align	2
	.global	use_indirect_va_list_ints_and_floats
	.type	use_indirect_va_list_ints_and_floats, %function
use_indirect_va_list_ints_and_floats:
.LFB161:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:161: DECLARE_TEST (ints_and_floats);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC55	// tmp101,
	add	x0, x0, :lo12:.LC55	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC55	// tmp102,
	add	x1, x0, :lo12:.LC55	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE161:
	.size	use_indirect_va_list_ints_and_floats, .-use_indirect_va_list_ints_and_floats
	.align	2
	.global	test_indirect_va_list_ints_and_floats
	.type	test_indirect_va_list_ints_and_floats, %function
test_indirect_va_list_ints_and_floats:
.LFB162:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:161: DECLARE_TEST (ints_and_floats);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7319
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_ints_and_floats		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7319
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L433		//,
	bl	__stack_chk_fail		//
.L433:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE162:
	.size	test_indirect_va_list_ints_and_floats, .-test_indirect_va_list_ints_and_floats
	.section	.rodata
	.align	3
.LC56:
	.string	"ints_floats_and_composites"
	.text
	.align	2
	.global	test_va_list_ints_floats_and_composites
	.type	test_va_list_ints_floats_and_composites, %function
test_va_list_ints_floats_and_composites:
.LFB163:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:162: DECLARE_TEST (ints_floats_and_composites);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp112,
	str	x1, [sp, 104]	// tmp112, D.7324
	mov	x1, 0	// tmp112
	add	x0, sp, 304	// tmp117,,
	str	x0, [sp, 72]	// tmp117, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	// tmp118,,
	str	x0, [sp, 80]	// tmp118, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	// tmp97,,
	str	x0, [sp, 88]	// tmp97, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	// tmp98,
	str	w0, [sp, 96]	// tmp98, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	// tmp99,
	str	w0, [sp, 100]	// tmp99, MEM[(struct  *)&argv].__vr_offs
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	ldr	x2, [sp, 56]	// tmp105, func
	mov	x1, x0	//, tmp104
	adrp	x0, .LC56	// tmp106,
	add	x0, x0, :lo12:.LC56	//, tmp106,
	blr	x2		// tmp105
	str	w0, [sp, 68]	//, retval
	ldr	w2, [sp, 68]	//, retval
	adrp	x0, .LC56	// tmp107,
	add	x1, x0, :lo12:.LC56	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 68]	// _8, retval
	mov	w1, w0	// <retval>, _8
	adrp	x0, :got:__stack_chk_guard	// tmp111,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp110, tmp111,
	ldr	x3, [sp, 104]	// tmp113, D.7324
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L436		//,
	bl	__stack_chk_fail		//
.L436:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE163:
	.size	test_va_list_ints_floats_and_composites, .-test_va_list_ints_floats_and_composites
	.align	2
	.global	use_indirect_va_list_ints_floats_and_composites
	.type	use_indirect_va_list_ints_floats_and_composites, %function
use_indirect_va_list_ints_floats_and_composites:
.LFB164:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 72]	// func, func
	mov	x19, x1	// tmp94,
// varargs-use-dll.c:162: DECLARE_TEST (ints_floats_and_composites);
	add	x0, sp, 32	// tmp95,,
	mov	x1, x19	// tmp96, tmp94
	ldp	q0, q1, [x1]	// tmp97, tmp98, argv
	stp	q0, q1, [x0]	// tmp97, tmp98,
	add	x0, sp, 32	// tmp99,,
	ldr	x2, [sp, 72]	// tmp100, func
	mov	x1, x0	//, tmp99
	adrp	x0, .LC56	// tmp101,
	add	x0, x0, :lo12:.LC56	//, tmp101,
	blr	x2		// tmp100
	str	w0, [sp, 92]	//, retval
	ldr	w2, [sp, 92]	//, retval
	adrp	x0, .LC56	// tmp102,
	add	x1, x0, :lo12:.LC56	//, tmp102,
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	printf		//
	ldr	w0, [sp, 92]	// _6, retval
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE164:
	.size	use_indirect_va_list_ints_floats_and_composites, .-use_indirect_va_list_ints_floats_and_composites
	.align	2
	.global	test_indirect_va_list_ints_floats_and_composites
	.type	test_indirect_va_list_ints_floats_and_composites, %function
test_indirect_va_list_ints_floats_and_composites:
.LFB165:
	.cfi_startproc
	stp	x29, x30, [sp, -304]!	//,,,
	.cfi_def_cfa_offset 304
	.cfi_offset 29, -304
	.cfi_offset 30, -296
	mov	x29, sp	//,
	str	x0, [sp, 56]	// func, func
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
// varargs-use-dll.c:162: DECLARE_TEST (ints_floats_and_composites);
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.7331
	mov	x1, 0	// tmp108
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
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, func
	bl	use_indirect_va_list_ints_floats_and_composites		//
	str	w0, [sp, 68]	//, retval
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.7331
	ldr	x2, [x0]	// tmp110,
	subs	x3, x3, x2	// tmp109, tmp110
	mov	x2, 0	// tmp110
	beq	.L441		//,
	bl	__stack_chk_fail		//
.L441:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 304	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE165:
	.size	test_indirect_va_list_ints_floats_and_composites, .-test_indirect_va_list_ints_floats_and_composites
	.global	a
	.data
	.align	3
	.type	a, %object
	.size	a, 80
a:
// a:
	.byte	1
	.zero	79
	.global	b
	.align	3
	.type	b, %object
	.size	b, 80
b:
// b:
	.zero	4
	.word	2
	.zero	72
	.global	c
	.section	.rodata
	.align	3
.LC57:
	.string	"3"
	.section	.data.rel.local,"aw"
	.align	3
	.type	c, %object
	.size	c, 80
c:
// c:
	.zero	8
	.xword	.LC57
	.zero	64
	.global	d
	.data
	.align	3
	.type	d, %object
	.size	d, 80
d:
// a:
	.byte	5
	.zero	79
	.global	e
	.align	3
	.type	e, %object
	.size	e, 80
e:
// b:
	.zero	4
	.word	8
	.zero	72
	.global	f
	.section	.rodata
	.align	3
.LC58:
	.string	"13"
	.section	.data.rel.local
	.align	3
	.type	f, %object
	.size	f, 80
f:
// c:
	.zero	8
	.xword	.LC58
	.zero	64
	.global	g
	.data
	.align	3
	.type	g, %object
	.size	g, 80
g:
// a:
	.byte	21
	.zero	79
	.global	h
	.align	3
	.type	h, %object
	.size	h, 80
h:
// b:
	.zero	4
	.word	34
	.zero	72
	.global	i
	.section	.rodata
	.align	3
.LC59:
	.string	"55"
	.section	.data.rel.local
	.align	3
	.type	i, %object
	.size	i, 80
i:
// c:
	.zero	8
	.xword	.LC59
	.zero	64
	.global	j
	.data
	.align	3
	.type	j, %object
	.size	j, 80
j:
// a:
	.byte	89
	.zero	79
	.global	k
	.align	3
	.type	k, %object
	.size	k, 80
k:
// b:
	.zero	4
	.word	144
	.zero	72
	.global	l
	.section	.rodata
	.align	3
.LC60:
	.string	"233"
	.section	.data.rel.local
	.align	3
	.type	l, %object
	.size	l, 80
l:
// c:
	.zero	8
	.xword	.LC60
	.zero	64
	.global	m
	.data
	.align	3
	.type	m, %object
	.size	m, 80
m:
// b:
	.zero	4
	.word	377
	.zero	72
	.global	n
	.align	3
	.type	n, %object
	.size	n, 80
n:
// b:
	.zero	4
	.word	610
	.zero	72
	.global	o
	.section	.rodata
	.align	3
.LC61:
	.string	"987"
	.section	.data.rel.local
	.align	3
	.type	o, %object
	.size	o, 80
o:
// c:
	.zero	8
	.xword	.LC61
	.zero	64
	.global	p
	.data
	.align	3
	.type	p, %object
	.size	p, 80
p:
// b:
	.zero	4
	.word	1597
	.zero	72
	.global	q
	.align	3
	.type	q, %object
	.size	q, 80
q:
// b:
	.zero	4
	.word	2584
	.zero	72
	.global	sv8_a
	.align	3
	.type	sv8_a, %object
	.size	sv8_a, 8
sv8_a:
// a:
	.word	1
	.zero	4
	.global	sv8_b
	.align	3
	.type	sv8_b, %object
	.size	sv8_b, 8
sv8_b:
// b:
	.zero	4
	.word	2
	.global	sv8_c
	.align	3
	.type	sv8_c, %object
	.size	sv8_c, 8
sv8_c:
// a:
	.word	3
	.zero	4
	.global	sv8_d
	.align	3
	.type	sv8_d, %object
	.size	sv8_d, 8
sv8_d:
// b:
	.zero	4
	.word	5
	.global	sv8_e
	.align	3
	.type	sv8_e, %object
	.size	sv8_e, 8
sv8_e:
// a:
	.word	8
	.zero	4
	.global	sv8_f
	.align	3
	.type	sv8_f, %object
	.size	sv8_f, 8
sv8_f:
// b:
	.zero	4
	.word	13
	.global	sv8_g
	.align	3
	.type	sv8_g, %object
	.size	sv8_g, 8
sv8_g:
// a:
	.word	21
	.zero	4
	.global	sv8_h
	.align	3
	.type	sv8_h, %object
	.size	sv8_h, 8
sv8_h:
// b:
	.zero	4
	.word	34
	.global	sv8_i
	.align	3
	.type	sv8_i, %object
	.size	sv8_i, 8
sv8_i:
// a:
	.word	55
	.zero	4
	.global	sv8_j
	.align	3
	.type	sv8_j, %object
	.size	sv8_j, 8
sv8_j:
// b:
	.zero	4
	.word	89
	.global	sv8_k
	.align	3
	.type	sv8_k, %object
	.size	sv8_k, 8
sv8_k:
// a:
	.word	144
	.zero	4
	.global	sv8_l
	.align	3
	.type	sv8_l, %object
	.size	sv8_l, 8
sv8_l:
// b:
	.zero	4
	.word	233
	.global	sv8_m
	.align	3
	.type	sv8_m, %object
	.size	sv8_m, 8
sv8_m:
// a:
	.word	377
	.zero	4
	.global	sv8_n
	.align	3
	.type	sv8_n, %object
	.size	sv8_n, 8
sv8_n:
// b:
	.zero	4
	.word	610
	.global	sv8_o
	.align	3
	.type	sv8_o, %object
	.size	sv8_o, 8
sv8_o:
// a:
	.word	987
	.zero	4
	.global	sv8_p
	.align	3
	.type	sv8_p, %object
	.size	sv8_p, 8
sv8_p:
// b:
	.zero	4
	.word	1597
	.global	sv8_q
	.align	3
	.type	sv8_q, %object
	.size	sv8_q, 8
sv8_q:
// a:
	.word	2584
	.zero	4
	.global	nsv12_a
	.align	3
	.type	nsv12_a, %object
	.size	nsv12_a, 12
nsv12_a:
// a:
	.word	1
	.zero	8
	.global	nsv12_b
	.align	3
	.type	nsv12_b, %object
	.size	nsv12_b, 12
nsv12_b:
// b:
	.zero	4
	.word	2
	.zero	4
	.global	nsv12_c
	.align	3
	.type	nsv12_c, %object
	.size	nsv12_c, 12
nsv12_c:
// c:
	.zero	8
	.word	3
	.global	nsv12_d
	.align	3
	.type	nsv12_d, %object
	.size	nsv12_d, 12
nsv12_d:
// a:
	.word	5
	.zero	8
	.global	nsv12_e
	.align	3
	.type	nsv12_e, %object
	.size	nsv12_e, 12
nsv12_e:
// b:
	.zero	4
	.word	8
	.zero	4
	.global	nsv12_f
	.align	3
	.type	nsv12_f, %object
	.size	nsv12_f, 12
nsv12_f:
// c:
	.zero	8
	.word	13
	.global	nsv12_g
	.align	3
	.type	nsv12_g, %object
	.size	nsv12_g, 12
nsv12_g:
// a:
	.word	21
	.zero	8
	.global	nsv12_h
	.align	3
	.type	nsv12_h, %object
	.size	nsv12_h, 12
nsv12_h:
// b:
	.zero	4
	.word	34
	.zero	4
	.global	nsv12_i
	.align	3
	.type	nsv12_i, %object
	.size	nsv12_i, 12
nsv12_i:
// c:
	.zero	8
	.word	55
	.global	nsv12_j
	.align	3
	.type	nsv12_j, %object
	.size	nsv12_j, 12
nsv12_j:
// a:
	.word	89
	.zero	8
	.global	nsv12_k
	.align	3
	.type	nsv12_k, %object
	.size	nsv12_k, 12
nsv12_k:
// b:
	.zero	4
	.word	144
	.zero	4
	.global	nsv12_l
	.align	3
	.type	nsv12_l, %object
	.size	nsv12_l, 12
nsv12_l:
// c:
	.zero	8
	.word	233
	.global	nsv12_m
	.align	3
	.type	nsv12_m, %object
	.size	nsv12_m, 12
nsv12_m:
// a:
	.word	377
	.zero	8
	.global	nsv12_n
	.align	3
	.type	nsv12_n, %object
	.size	nsv12_n, 12
nsv12_n:
// b:
	.zero	4
	.word	610
	.zero	4
	.global	nsv12_o
	.align	3
	.type	nsv12_o, %object
	.size	nsv12_o, 12
nsv12_o:
// c:
	.zero	8
	.word	987
	.global	nsv12_p
	.align	3
	.type	nsv12_p, %object
	.size	nsv12_p, 12
nsv12_p:
// a:
	.word	1597
	.zero	8
	.global	nsv12_q
	.align	3
	.type	nsv12_q, %object
	.size	nsv12_q, 12
nsv12_q:
// b:
	.zero	4
	.word	2584
	.zero	4
	.global	sv16_a
	.align	3
	.type	sv16_a, %object
	.size	sv16_a, 16
sv16_a:
// a:
	.word	1
	.zero	12
	.global	sv16_b
	.align	3
	.type	sv16_b, %object
	.size	sv16_b, 16
sv16_b:
// b:
	.zero	4
	.word	2
	.zero	8
	.global	sv16_c
	.align	3
	.type	sv16_c, %object
	.size	sv16_c, 16
sv16_c:
// c:
	.zero	8
	.word	3
	.zero	4
	.global	sv16_d
	.align	3
	.type	sv16_d, %object
	.size	sv16_d, 16
sv16_d:
// d:
	.zero	12
	.word	5
	.global	sv16_e
	.align	3
	.type	sv16_e, %object
	.size	sv16_e, 16
sv16_e:
// a:
	.word	8
	.zero	12
	.global	sv16_f
	.align	3
	.type	sv16_f, %object
	.size	sv16_f, 16
sv16_f:
// b:
	.zero	4
	.word	13
	.zero	8
	.global	sv16_g
	.align	3
	.type	sv16_g, %object
	.size	sv16_g, 16
sv16_g:
// c:
	.zero	8
	.word	21
	.zero	4
	.global	sv16_h
	.align	3
	.type	sv16_h, %object
	.size	sv16_h, 16
sv16_h:
// d:
	.zero	12
	.word	34
	.global	sv16_i
	.align	3
	.type	sv16_i, %object
	.size	sv16_i, 16
sv16_i:
// a:
	.word	55
	.zero	12
	.global	sv16_j
	.align	3
	.type	sv16_j, %object
	.size	sv16_j, 16
sv16_j:
// b:
	.zero	4
	.word	89
	.zero	8
	.global	sv16_k
	.align	3
	.type	sv16_k, %object
	.size	sv16_k, 16
sv16_k:
// c:
	.zero	8
	.word	144
	.zero	4
	.global	sv16_l
	.align	3
	.type	sv16_l, %object
	.size	sv16_l, 16
sv16_l:
// d:
	.zero	12
	.word	233
	.global	sv16_m
	.align	3
	.type	sv16_m, %object
	.size	sv16_m, 16
sv16_m:
// a:
	.word	377
	.zero	12
	.global	sv16_n
	.align	3
	.type	sv16_n, %object
	.size	sv16_n, 16
sv16_n:
// b:
	.zero	4
	.word	610
	.zero	8
	.global	sv16_o
	.align	3
	.type	sv16_o, %object
	.size	sv16_o, 16
sv16_o:
// c:
	.zero	8
	.word	987
	.zero	4
	.global	sv16_p
	.align	3
	.type	sv16_p, %object
	.size	sv16_p, 16
sv16_p:
// d:
	.zero	12
	.word	1597
	.global	sv16_q
	.align	3
	.type	sv16_q, %object
	.size	sv16_q, 16
sv16_q:
// a:
	.word	2584
	.zero	12
	.global	hfa2f_a
	.align	3
	.type	hfa2f_a, %object
	.size	hfa2f_a, 8
hfa2f_a:
// a:
	.word	1065353216
	.zero	4
	.global	hfa2f_b
	.align	3
	.type	hfa2f_b, %object
	.size	hfa2f_b, 8
hfa2f_b:
// b:
	.zero	4
	.word	1073741824
	.global	hfa2f_c
	.align	3
	.type	hfa2f_c, %object
	.size	hfa2f_c, 8
hfa2f_c:
// a:
	.word	1077936128
	.zero	4
	.global	hfa2f_d
	.align	3
	.type	hfa2f_d, %object
	.size	hfa2f_d, 8
hfa2f_d:
// b:
	.zero	4
	.word	1084227584
	.global	hfa2f_e
	.align	3
	.type	hfa2f_e, %object
	.size	hfa2f_e, 8
hfa2f_e:
// a:
	.word	1090519040
	.zero	4
	.global	hfa2f_f
	.align	3
	.type	hfa2f_f, %object
	.size	hfa2f_f, 8
hfa2f_f:
// b:
	.zero	4
	.word	1095761920
	.global	hfa2f_g
	.align	3
	.type	hfa2f_g, %object
	.size	hfa2f_g, 8
hfa2f_g:
// a:
	.word	1101529088
	.zero	4
	.global	hfa2f_h
	.align	3
	.type	hfa2f_h, %object
	.size	hfa2f_h, 8
hfa2f_h:
// b:
	.zero	4
	.word	1107820544
	.global	hfa2f_i
	.align	3
	.type	hfa2f_i, %object
	.size	hfa2f_i, 8
hfa2f_i:
// a:
	.word	1113325568
	.zero	4
	.global	hfa2f_j
	.align	3
	.type	hfa2f_j, %object
	.size	hfa2f_j, 8
hfa2f_j:
// b:
	.zero	4
	.word	1118961664
	.global	hfa2f_k
	.align	3
	.type	hfa2f_k, %object
	.size	hfa2f_k, 8
hfa2f_k:
// a:
	.word	1125122048
	.zero	4
	.global	hfa2f_l
	.align	3
	.type	hfa2f_l, %object
	.size	hfa2f_l, 8
hfa2f_l:
// b:
	.zero	4
	.word	1130954752
	.global	hfa2f_m
	.align	3
	.type	hfa2f_m, %object
	.size	hfa2f_m, 8
hfa2f_m:
// a:
	.word	1136427008
	.zero	4
	.global	hfa2f_n
	.align	3
	.type	hfa2f_n, %object
	.size	hfa2f_n, 8
hfa2f_n:
// b:
	.zero	4
	.word	1142456320
	.global	hfa2f_o
	.align	3
	.type	hfa2f_o, %object
	.size	hfa2f_o, 8
hfa2f_o:
// a:
	.word	1148633088
	.zero	4
	.global	hfa2f_p
	.align	3
	.type	hfa2f_p, %object
	.size	hfa2f_p, 8
hfa2f_p:
// b:
	.zero	4
	.word	1153933312
	.global	hfa2f_q
	.align	3
	.type	hfa2f_q, %object
	.size	hfa2f_q, 8
hfa2f_q:
// a:
	.word	1159823360
	.zero	4
	.global	hfa4f_a
	.align	3
	.type	hfa4f_a, %object
	.size	hfa4f_a, 16
hfa4f_a:
// a:
	.word	1065353216
	.zero	12
	.global	hfa4f_b
	.align	3
	.type	hfa4f_b, %object
	.size	hfa4f_b, 16
hfa4f_b:
// b:
	.zero	4
	.word	1073741824
	.zero	8
	.global	hfa4f_c
	.align	3
	.type	hfa4f_c, %object
	.size	hfa4f_c, 16
hfa4f_c:
// c:
	.zero	8
	.word	1077936128
	.zero	4
	.global	hfa4f_d
	.align	3
	.type	hfa4f_d, %object
	.size	hfa4f_d, 16
hfa4f_d:
// d:
	.zero	12
	.word	1084227584
	.global	hfa4f_e
	.align	3
	.type	hfa4f_e, %object
	.size	hfa4f_e, 16
hfa4f_e:
// a:
	.word	1090519040
	.zero	12
	.global	hfa4f_f
	.align	3
	.type	hfa4f_f, %object
	.size	hfa4f_f, 16
hfa4f_f:
// b:
	.zero	4
	.word	1095761920
	.zero	8
	.global	hfa4f_g
	.align	3
	.type	hfa4f_g, %object
	.size	hfa4f_g, 16
hfa4f_g:
// c:
	.zero	8
	.word	1101529088
	.zero	4
	.global	hfa4f_h
	.align	3
	.type	hfa4f_h, %object
	.size	hfa4f_h, 16
hfa4f_h:
// d:
	.zero	12
	.word	1107820544
	.global	hfa4f_i
	.align	3
	.type	hfa4f_i, %object
	.size	hfa4f_i, 16
hfa4f_i:
// a:
	.word	1113325568
	.zero	12
	.global	hfa4f_j
	.align	3
	.type	hfa4f_j, %object
	.size	hfa4f_j, 16
hfa4f_j:
// b:
	.zero	4
	.word	1118961664
	.zero	8
	.global	hfa4f_k
	.align	3
	.type	hfa4f_k, %object
	.size	hfa4f_k, 16
hfa4f_k:
// c:
	.zero	8
	.word	1125122048
	.zero	4
	.global	hfa4f_l
	.align	3
	.type	hfa4f_l, %object
	.size	hfa4f_l, 16
hfa4f_l:
// d:
	.zero	12
	.word	1130954752
	.global	hfa4f_m
	.align	3
	.type	hfa4f_m, %object
	.size	hfa4f_m, 16
hfa4f_m:
// a:
	.word	1136427008
	.zero	12
	.global	hfa4f_n
	.align	3
	.type	hfa4f_n, %object
	.size	hfa4f_n, 16
hfa4f_n:
// b:
	.zero	4
	.word	1142456320
	.zero	8
	.global	hfa4f_o
	.align	3
	.type	hfa4f_o, %object
	.size	hfa4f_o, 16
hfa4f_o:
// c:
	.zero	8
	.word	1148633088
	.zero	4
	.global	hfa4f_p
	.align	3
	.type	hfa4f_p, %object
	.size	hfa4f_p, 16
hfa4f_p:
// d:
	.zero	12
	.word	1153933312
	.global	hfa4f_q
	.align	3
	.type	hfa4f_q, %object
	.size	hfa4f_q, 16
hfa4f_q:
// a:
	.word	1159823360
	.zero	12
	.global	hfa2d_a
	.align	3
	.type	hfa2d_a, %object
	.size	hfa2d_a, 16
hfa2d_a:
// a:
	.word	0
	.word	1072693248
	.zero	8
	.global	hfa2d_b
	.align	3
	.type	hfa2d_b, %object
	.size	hfa2d_b, 16
hfa2d_b:
// b:
	.zero	8
	.word	0
	.word	1073741824
	.global	hfa2d_c
	.align	3
	.type	hfa2d_c, %object
	.size	hfa2d_c, 16
hfa2d_c:
// a:
	.word	0
	.word	1074266112
	.zero	8
	.global	hfa2d_d
	.align	3
	.type	hfa2d_d, %object
	.size	hfa2d_d, 16
hfa2d_d:
// b:
	.zero	8
	.word	0
	.word	1075052544
	.global	hfa2d_e
	.align	3
	.type	hfa2d_e, %object
	.size	hfa2d_e, 16
hfa2d_e:
// a:
	.word	0
	.word	1075838976
	.zero	8
	.global	hfa2d_f
	.align	3
	.type	hfa2d_f, %object
	.size	hfa2d_f, 16
hfa2d_f:
// b:
	.zero	8
	.word	0
	.word	1076494336
	.global	hfa2d_g
	.align	3
	.type	hfa2d_g, %object
	.size	hfa2d_g, 16
hfa2d_g:
// a:
	.word	0
	.word	1077215232
	.zero	8
	.global	hfa2d_h
	.align	3
	.type	hfa2d_h, %object
	.size	hfa2d_h, 16
hfa2d_h:
// b:
	.zero	8
	.word	0
	.word	1078001664
	.global	hfa2d_i
	.align	3
	.type	hfa2d_i, %object
	.size	hfa2d_i, 16
hfa2d_i:
// a:
	.word	0
	.word	1078689792
	.zero	8
	.global	hfa2d_j
	.align	3
	.type	hfa2d_j, %object
	.size	hfa2d_j, 16
hfa2d_j:
// b:
	.zero	8
	.word	0
	.word	1079394304
	.global	hfa2d_k
	.align	3
	.type	hfa2d_k, %object
	.size	hfa2d_k, 16
hfa2d_k:
// a:
	.word	0
	.word	1080164352
	.zero	8
	.global	hfa2d_l
	.align	3
	.type	hfa2d_l, %object
	.size	hfa2d_l, 16
hfa2d_l:
// b:
	.zero	8
	.word	0
	.word	1080893440
	.global	hfa2d_m
	.align	3
	.type	hfa2d_m, %object
	.size	hfa2d_m, 16
hfa2d_m:
// a:
	.word	0
	.word	1081577472
	.zero	8
	.global	hfa2d_n
	.align	3
	.type	hfa2d_n, %object
	.size	hfa2d_n, 16
hfa2d_n:
// b:
	.zero	8
	.word	0
	.word	1082331136
	.global	hfa2d_o
	.align	3
	.type	hfa2d_o, %object
	.size	hfa2d_o, 16
hfa2d_o:
// a:
	.word	0
	.word	1083103232
	.zero	8
	.global	hfa2d_p
	.align	3
	.type	hfa2d_p, %object
	.size	hfa2d_p, 16
hfa2d_p:
// b:
	.zero	8
	.word	0
	.word	1083765760
	.global	hfa2d_q
	.align	3
	.type	hfa2d_q, %object
	.size	hfa2d_q, 16
hfa2d_q:
// a:
	.word	0
	.word	1084502016
	.zero	8
	.global	hfa4d_a
	.align	3
	.type	hfa4d_a, %object
	.size	hfa4d_a, 32
hfa4d_a:
// a:
	.word	0
	.word	1072693248
	.zero	24
	.global	hfa4d_b
	.align	3
	.type	hfa4d_b, %object
	.size	hfa4d_b, 32
hfa4d_b:
// b:
	.zero	8
	.word	0
	.word	1073741824
	.zero	16
	.global	hfa4d_c
	.align	3
	.type	hfa4d_c, %object
	.size	hfa4d_c, 32
hfa4d_c:
// c:
	.zero	16
	.word	0
	.word	1074266112
	.zero	8
	.global	hfa4d_d
	.align	3
	.type	hfa4d_d, %object
	.size	hfa4d_d, 32
hfa4d_d:
// d:
	.zero	24
	.word	0
	.word	1075052544
	.global	hfa4d_e
	.align	3
	.type	hfa4d_e, %object
	.size	hfa4d_e, 32
hfa4d_e:
// a:
	.word	0
	.word	1075838976
	.zero	24
	.global	hfa4d_f
	.align	3
	.type	hfa4d_f, %object
	.size	hfa4d_f, 32
hfa4d_f:
// b:
	.zero	8
	.word	0
	.word	1076494336
	.zero	16
	.global	hfa4d_g
	.align	3
	.type	hfa4d_g, %object
	.size	hfa4d_g, 32
hfa4d_g:
// c:
	.zero	16
	.word	0
	.word	1077215232
	.zero	8
	.global	hfa4d_h
	.align	3
	.type	hfa4d_h, %object
	.size	hfa4d_h, 32
hfa4d_h:
// d:
	.zero	24
	.word	0
	.word	1078001664
	.global	hfa4d_i
	.align	3
	.type	hfa4d_i, %object
	.size	hfa4d_i, 32
hfa4d_i:
// a:
	.word	0
	.word	1078689792
	.zero	24
	.global	hfa4d_j
	.align	3
	.type	hfa4d_j, %object
	.size	hfa4d_j, 32
hfa4d_j:
// b:
	.zero	8
	.word	0
	.word	1079394304
	.zero	16
	.global	hfa4d_k
	.align	3
	.type	hfa4d_k, %object
	.size	hfa4d_k, 32
hfa4d_k:
// c:
	.zero	16
	.word	0
	.word	1080164352
	.zero	8
	.global	hfa4d_l
	.align	3
	.type	hfa4d_l, %object
	.size	hfa4d_l, 32
hfa4d_l:
// d:
	.zero	24
	.word	0
	.word	1080893440
	.global	hfa4d_m
	.align	3
	.type	hfa4d_m, %object
	.size	hfa4d_m, 32
hfa4d_m:
// a:
	.word	0
	.word	1081577472
	.zero	24
	.global	hfa4d_n
	.align	3
	.type	hfa4d_n, %object
	.size	hfa4d_n, 32
hfa4d_n:
// b:
	.zero	8
	.word	0
	.word	1082331136
	.zero	16
	.global	hfa4d_o
	.align	3
	.type	hfa4d_o, %object
	.size	hfa4d_o, 32
hfa4d_o:
// c:
	.zero	16
	.word	0
	.word	1083103232
	.zero	8
	.global	hfa4d_p
	.align	3
	.type	hfa4d_p, %object
	.size	hfa4d_p, 32
hfa4d_p:
// d:
	.zero	24
	.word	0
	.word	1083765760
	.global	hfa4d_q
	.align	3
	.type	hfa4d_q, %object
	.size	hfa4d_q, 32
hfa4d_q:
// a:
	.word	0
	.word	1084502016
	.zero	24
	.global	hva2sv8_a
	.align	3
	.type	hva2sv8_a, %object
	.size	hva2sv8_a, 16
hva2sv8_a:
// a:
// a:
	.word	1
	.zero	4
	.zero	8
	.global	hva2sv8_b
	.align	3
	.type	hva2sv8_b, %object
	.size	hva2sv8_b, 16
hva2sv8_b:
// b:
	.zero	8
// b:
	.zero	4
	.word	2
	.global	hva2sv8_c
	.align	3
	.type	hva2sv8_c, %object
	.size	hva2sv8_c, 16
hva2sv8_c:
// a:
// a:
	.word	3
	.zero	4
	.zero	8
	.global	hva2sv8_d
	.align	3
	.type	hva2sv8_d, %object
	.size	hva2sv8_d, 16
hva2sv8_d:
// b:
	.zero	8
// b:
	.zero	4
	.word	5
	.global	hva2sv8_e
	.align	3
	.type	hva2sv8_e, %object
	.size	hva2sv8_e, 16
hva2sv8_e:
// a:
// a:
	.word	8
	.zero	4
	.zero	8
	.global	hva2sv8_f
	.align	3
	.type	hva2sv8_f, %object
	.size	hva2sv8_f, 16
hva2sv8_f:
// b:
	.zero	8
// b:
	.zero	4
	.word	13
	.global	hva2sv8_g
	.align	3
	.type	hva2sv8_g, %object
	.size	hva2sv8_g, 16
hva2sv8_g:
// a:
// a:
	.word	21
	.zero	4
	.zero	8
	.global	hva2sv8_h
	.align	3
	.type	hva2sv8_h, %object
	.size	hva2sv8_h, 16
hva2sv8_h:
// b:
	.zero	8
// b:
	.zero	4
	.word	34
	.global	hva2sv8_i
	.align	3
	.type	hva2sv8_i, %object
	.size	hva2sv8_i, 16
hva2sv8_i:
// a:
// a:
	.word	55
	.zero	4
	.zero	8
	.global	hva2sv8_j
	.align	3
	.type	hva2sv8_j, %object
	.size	hva2sv8_j, 16
hva2sv8_j:
// b:
	.zero	8
// b:
	.zero	4
	.word	89
	.global	hva2sv8_k
	.align	3
	.type	hva2sv8_k, %object
	.size	hva2sv8_k, 16
hva2sv8_k:
// a:
// a:
	.word	144
	.zero	4
	.zero	8
	.global	hva2sv8_l
	.align	3
	.type	hva2sv8_l, %object
	.size	hva2sv8_l, 16
hva2sv8_l:
// b:
	.zero	8
// b:
	.zero	4
	.word	233
	.global	hva2sv8_m
	.align	3
	.type	hva2sv8_m, %object
	.size	hva2sv8_m, 16
hva2sv8_m:
// a:
// a:
	.word	377
	.zero	4
	.zero	8
	.global	hva2sv8_n
	.align	3
	.type	hva2sv8_n, %object
	.size	hva2sv8_n, 16
hva2sv8_n:
// b:
	.zero	8
// b:
	.zero	4
	.word	610
	.global	hva2sv8_o
	.align	3
	.type	hva2sv8_o, %object
	.size	hva2sv8_o, 16
hva2sv8_o:
// a:
// a:
	.word	987
	.zero	4
	.zero	8
	.global	hva2sv8_p
	.align	3
	.type	hva2sv8_p, %object
	.size	hva2sv8_p, 16
hva2sv8_p:
// b:
	.zero	8
// b:
	.zero	4
	.word	1597
	.global	hva2sv8_q
	.align	3
	.type	hva2sv8_q, %object
	.size	hva2sv8_q, 16
hva2sv8_q:
// a:
// a:
	.word	2584
	.zero	4
	.zero	8
	.global	hva4sv8_a
	.align	3
	.type	hva4sv8_a, %object
	.size	hva4sv8_a, 32
hva4sv8_a:
// a:
// a:
	.word	1
	.zero	4
	.zero	24
	.global	hva4sv8_b
	.align	3
	.type	hva4sv8_b, %object
	.size	hva4sv8_b, 32
hva4sv8_b:
// b:
	.zero	8
// b:
	.zero	4
	.word	2
	.zero	16
	.global	hva4sv8_c
	.align	3
	.type	hva4sv8_c, %object
	.size	hva4sv8_c, 32
hva4sv8_c:
// c:
	.zero	16
// a:
	.word	3
	.zero	4
	.zero	8
	.global	hva4sv8_d
	.align	3
	.type	hva4sv8_d, %object
	.size	hva4sv8_d, 32
hva4sv8_d:
// d:
	.zero	24
// b:
	.zero	4
	.word	5
	.global	hva4sv8_e
	.align	3
	.type	hva4sv8_e, %object
	.size	hva4sv8_e, 32
hva4sv8_e:
// a:
// a:
	.word	8
	.zero	4
	.zero	24
	.global	hva4sv8_f
	.align	3
	.type	hva4sv8_f, %object
	.size	hva4sv8_f, 32
hva4sv8_f:
// b:
	.zero	8
// b:
	.zero	4
	.word	13
	.zero	16
	.global	hva4sv8_g
	.align	3
	.type	hva4sv8_g, %object
	.size	hva4sv8_g, 32
hva4sv8_g:
// c:
	.zero	16
// a:
	.word	21
	.zero	4
	.zero	8
	.global	hva4sv8_h
	.align	3
	.type	hva4sv8_h, %object
	.size	hva4sv8_h, 32
hva4sv8_h:
// d:
	.zero	24
// b:
	.zero	4
	.word	34
	.global	hva4sv8_i
	.align	3
	.type	hva4sv8_i, %object
	.size	hva4sv8_i, 32
hva4sv8_i:
// a:
// a:
	.word	55
	.zero	4
	.zero	24
	.global	hva4sv8_j
	.align	3
	.type	hva4sv8_j, %object
	.size	hva4sv8_j, 32
hva4sv8_j:
// b:
	.zero	8
// b:
	.zero	4
	.word	89
	.zero	16
	.global	hva4sv8_k
	.align	3
	.type	hva4sv8_k, %object
	.size	hva4sv8_k, 32
hva4sv8_k:
// c:
	.zero	16
// a:
	.word	144
	.zero	4
	.zero	8
	.global	hva4sv8_l
	.align	3
	.type	hva4sv8_l, %object
	.size	hva4sv8_l, 32
hva4sv8_l:
// d:
	.zero	24
// b:
	.zero	4
	.word	233
	.global	hva4sv8_m
	.align	3
	.type	hva4sv8_m, %object
	.size	hva4sv8_m, 32
hva4sv8_m:
// a:
// a:
	.word	377
	.zero	4
	.zero	24
	.global	hva4sv8_n
	.align	3
	.type	hva4sv8_n, %object
	.size	hva4sv8_n, 32
hva4sv8_n:
// b:
	.zero	8
// b:
	.zero	4
	.word	610
	.zero	16
	.global	hva4sv8_o
	.align	3
	.type	hva4sv8_o, %object
	.size	hva4sv8_o, 32
hva4sv8_o:
// c:
	.zero	16
// a:
	.word	987
	.zero	4
	.zero	8
	.global	hva4sv8_p
	.align	3
	.type	hva4sv8_p, %object
	.size	hva4sv8_p, 32
hva4sv8_p:
// d:
	.zero	24
// b:
	.zero	4
	.word	1597
	.global	hva4sv8_q
	.align	3
	.type	hva4sv8_q, %object
	.size	hva4sv8_q, 32
hva4sv8_q:
// a:
// a:
	.word	2584
	.zero	4
	.zero	24
	.global	hva2sv16_a
	.align	3
	.type	hva2sv16_a, %object
	.size	hva2sv16_a, 32
hva2sv16_a:
// a:
// a:
	.word	1
	.zero	12
	.zero	16
	.global	hva2sv16_b
	.align	3
	.type	hva2sv16_b, %object
	.size	hva2sv16_b, 32
hva2sv16_b:
// b:
	.zero	16
// b:
	.zero	4
	.word	2
	.zero	8
	.global	hva2sv16_c
	.align	3
	.type	hva2sv16_c, %object
	.size	hva2sv16_c, 32
hva2sv16_c:
// a:
// a:
	.word	3
	.zero	12
	.zero	16
	.global	hva2sv16_d
	.align	3
	.type	hva2sv16_d, %object
	.size	hva2sv16_d, 32
hva2sv16_d:
// b:
	.zero	16
// b:
	.zero	4
	.word	5
	.zero	8
	.global	hva2sv16_e
	.align	3
	.type	hva2sv16_e, %object
	.size	hva2sv16_e, 32
hva2sv16_e:
// a:
// a:
	.word	8
	.zero	12
	.zero	16
	.global	hva2sv16_f
	.align	3
	.type	hva2sv16_f, %object
	.size	hva2sv16_f, 32
hva2sv16_f:
// b:
	.zero	16
// b:
	.zero	4
	.word	13
	.zero	8
	.global	hva2sv16_g
	.align	3
	.type	hva2sv16_g, %object
	.size	hva2sv16_g, 32
hva2sv16_g:
// a:
// a:
	.word	21
	.zero	12
	.zero	16
	.global	hva2sv16_h
	.align	3
	.type	hva2sv16_h, %object
	.size	hva2sv16_h, 32
hva2sv16_h:
// b:
	.zero	16
// b:
	.zero	4
	.word	34
	.zero	8
	.global	hva2sv16_i
	.align	3
	.type	hva2sv16_i, %object
	.size	hva2sv16_i, 32
hva2sv16_i:
// a:
// a:
	.word	55
	.zero	12
	.zero	16
	.global	hva2sv16_j
	.align	3
	.type	hva2sv16_j, %object
	.size	hva2sv16_j, 32
hva2sv16_j:
// b:
	.zero	16
// b:
	.zero	4
	.word	89
	.zero	8
	.global	hva2sv16_k
	.align	3
	.type	hva2sv16_k, %object
	.size	hva2sv16_k, 32
hva2sv16_k:
// a:
// a:
	.word	144
	.zero	12
	.zero	16
	.global	hva2sv16_l
	.align	3
	.type	hva2sv16_l, %object
	.size	hva2sv16_l, 32
hva2sv16_l:
// b:
	.zero	16
// b:
	.zero	4
	.word	233
	.zero	8
	.global	hva2sv16_m
	.align	3
	.type	hva2sv16_m, %object
	.size	hva2sv16_m, 32
hva2sv16_m:
// a:
// a:
	.word	377
	.zero	12
	.zero	16
	.global	hva2sv16_n
	.align	3
	.type	hva2sv16_n, %object
	.size	hva2sv16_n, 32
hva2sv16_n:
// b:
	.zero	16
// b:
	.zero	4
	.word	610
	.zero	8
	.global	hva2sv16_o
	.align	3
	.type	hva2sv16_o, %object
	.size	hva2sv16_o, 32
hva2sv16_o:
// a:
// a:
	.word	987
	.zero	12
	.zero	16
	.global	hva2sv16_p
	.align	3
	.type	hva2sv16_p, %object
	.size	hva2sv16_p, 32
hva2sv16_p:
// b:
	.zero	16
// b:
	.zero	4
	.word	1597
	.zero	8
	.global	hva2sv16_q
	.align	3
	.type	hva2sv16_q, %object
	.size	hva2sv16_q, 32
hva2sv16_q:
// a:
// a:
	.word	2584
	.zero	12
	.zero	16
	.global	hva4sv16_a
	.align	3
	.type	hva4sv16_a, %object
	.size	hva4sv16_a, 64
hva4sv16_a:
// a:
// a:
	.word	1
	.zero	12
	.zero	48
	.global	hva4sv16_b
	.align	3
	.type	hva4sv16_b, %object
	.size	hva4sv16_b, 64
hva4sv16_b:
// b:
	.zero	16
// b:
	.zero	4
	.word	2
	.zero	8
	.zero	32
	.global	hva4sv16_c
	.align	3
	.type	hva4sv16_c, %object
	.size	hva4sv16_c, 64
hva4sv16_c:
// c:
	.zero	32
// c:
	.zero	8
	.word	3
	.zero	4
	.zero	16
	.global	hva4sv16_d
	.align	3
	.type	hva4sv16_d, %object
	.size	hva4sv16_d, 64
hva4sv16_d:
// d:
	.zero	48
// d:
	.zero	12
	.word	5
	.global	hva4sv16_e
	.align	3
	.type	hva4sv16_e, %object
	.size	hva4sv16_e, 64
hva4sv16_e:
// a:
// a:
	.word	8
	.zero	12
	.zero	48
	.global	hva4sv16_f
	.align	3
	.type	hva4sv16_f, %object
	.size	hva4sv16_f, 64
hva4sv16_f:
// b:
	.zero	16
// b:
	.zero	4
	.word	13
	.zero	8
	.zero	32
	.global	hva4sv16_g
	.align	3
	.type	hva4sv16_g, %object
	.size	hva4sv16_g, 64
hva4sv16_g:
// c:
	.zero	32
// c:
	.zero	8
	.word	21
	.zero	4
	.zero	16
	.global	hva4sv16_h
	.align	3
	.type	hva4sv16_h, %object
	.size	hva4sv16_h, 64
hva4sv16_h:
// d:
	.zero	48
// d:
	.zero	12
	.word	34
	.global	hva4sv16_i
	.align	3
	.type	hva4sv16_i, %object
	.size	hva4sv16_i, 64
hva4sv16_i:
// a:
// a:
	.word	55
	.zero	12
	.zero	48
	.global	hva4sv16_j
	.align	3
	.type	hva4sv16_j, %object
	.size	hva4sv16_j, 64
hva4sv16_j:
// b:
	.zero	16
// b:
	.zero	4
	.word	89
	.zero	8
	.zero	32
	.global	hva4sv16_k
	.align	3
	.type	hva4sv16_k, %object
	.size	hva4sv16_k, 64
hva4sv16_k:
// c:
	.zero	32
// c:
	.zero	8
	.word	144
	.zero	4
	.zero	16
	.global	hva4sv16_l
	.align	3
	.type	hva4sv16_l, %object
	.size	hva4sv16_l, 64
hva4sv16_l:
// d:
	.zero	48
// d:
	.zero	12
	.word	233
	.global	hva4sv16_m
	.align	3
	.type	hva4sv16_m, %object
	.size	hva4sv16_m, 64
hva4sv16_m:
// a:
// a:
	.word	377
	.zero	12
	.zero	48
	.global	hva4sv16_n
	.align	3
	.type	hva4sv16_n, %object
	.size	hva4sv16_n, 64
hva4sv16_n:
// b:
	.zero	16
// b:
	.zero	4
	.word	610
	.zero	8
	.zero	32
	.global	hva4sv16_o
	.align	3
	.type	hva4sv16_o, %object
	.size	hva4sv16_o, 64
hva4sv16_o:
// c:
	.zero	32
// c:
	.zero	8
	.word	987
	.zero	4
	.zero	16
	.global	hva4sv16_p
	.align	3
	.type	hva4sv16_p, %object
	.size	hva4sv16_p, 64
hva4sv16_p:
// d:
	.zero	48
// d:
	.zero	12
	.word	1597
	.global	hva4sv16_q
	.align	3
	.type	hva4sv16_q, %object
	.size	hva4sv16_q, 64
hva4sv16_q:
// a:
// a:
	.word	2584
	.zero	12
	.zero	48
	.section	.rodata
	.align	3
.LC62:
	.ascii	"\tshort_vector_8_bytes size: %lu\n\tshort_vector_16_bytes si"
	.ascii	"ze: %lu\n\thfa_2_floats siz"
	.string	"e: %lu\n\thfa_4_floats size: %lu\n\thfa_2_doubles size: %lu\n\thfa_4_doubles size: %lu\n\thva_2_short_vector_8_bytes size: %lu\n\thva_4_short_vector_8_bytes size: %lu\n\thva_2_short_vector_16_bytes size: %lu\n\thva_4_short_vector_16_bytes size: %lu\n\tcomposite size: %lu\n"
	.align	3
.LC63:
	.string	"\tuse_va_args_%s result: %d\n"
	.align	3
.LC64:
	.string	"\t\ttest failed, expected: %d, actual: %d\n\n"
	.align	3
.LC65:
	.string	"\tfailures: %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB166:
	.cfi_startproc
	sub	sp, sp, #2656	//,,
	.cfi_def_cfa_offset 2656
	stp	x29, x30, [sp, 112]	//,,
	.cfi_offset 29, -2544
	.cfi_offset 30, -2536
	add	x29, sp, 112	//,,
	str	w0, [sp, 2476]	// argc, argc
	str	x1, [sp, 2464]	// argv, argv
// varargs-use-dll.c:384:   DEBUG ("\tshort_vector_8_bytes size: %lu\n"
	mov	x0, 80	// tmp94,
	str	x0, [sp, 24]	// tmp94,
	mov	x0, 64	// tmp95,
	str	x0, [sp, 16]	// tmp95,
	mov	x0, 32	// tmp96,
	str	x0, [sp, 8]	// tmp96,
	mov	x0, 32	// tmp97,
	str	x0, [sp]	// tmp97,
	mov	x7, 16	//,
	mov	x6, 32	//,
	mov	x5, 16	//,
	mov	x4, 16	//,
	mov	x3, 8	//,
	mov	x2, 16	//,
	mov	x1, 8	//,
	adrp	x0, .LC62	// tmp98,
	add	x0, x0, :lo12:.LC62	//, tmp98,
	bl	printf		//
// varargs-use-dll.c:405:   int failures = 0;
	str	wzr, [sp, 2492]	//, failures
// varargs-use-dll.c:407:   TEST (no_arguments, 165);
	adrp	x0, .LC0	// tmp99,
	add	x0, x0, :lo12:.LC0	//, tmp99,
	bl	use_va_args_no_arguments		//
	str	w0, [sp, 2496]	//, actual
	ldr	w2, [sp, 2496]	//, actual
	adrp	x0, .LC0	// tmp100,
	add	x1, x0, :lo12:.LC0	//, tmp100,
	adrp	x0, .LC63	// tmp101,
	add	x0, x0, :lo12:.LC63	//, tmp101,
	bl	printf		//
	ldr	w0, [sp, 2496]	// tmp102, actual
	cmp	w0, 165	// tmp102,
	beq	.L443		//,
// varargs-use-dll.c:407:   TEST (no_arguments, 165);
	ldr	w0, [sp, 2492]	// tmp104, failures
	add	w0, w0, 1	// tmp103, tmp104,
	str	w0, [sp, 2492]	// tmp103, failures
	ldr	w2, [sp, 2496]	//, actual
	mov	w1, 165	//,
	adrp	x0, .LC64	// tmp105,
	add	x0, x0, :lo12:.LC64	//, tmp105,
	bl	printf		//
.L443:
// varargs-use-dll.c:409:   TEST (few_longs, 142, 100L, 42L);
	mov	x2, 42	//,
	mov	x1, 100	//,
	adrp	x0, .LC3	// tmp106,
	add	x0, x0, :lo12:.LC3	//, tmp106,
	bl	use_va_args_few_longs		//
	str	w0, [sp, 2500]	//, actual
	ldr	w2, [sp, 2500]	//, actual
	adrp	x0, .LC3	// tmp107,
	add	x1, x0, :lo12:.LC3	//, tmp107,
	adrp	x0, .LC63	// tmp108,
	add	x0, x0, :lo12:.LC63	//, tmp108,
	bl	printf		//
	ldr	w0, [sp, 2500]	// tmp109, actual
	cmp	w0, 142	// tmp109,
	beq	.L444		//,
// varargs-use-dll.c:409:   TEST (few_longs, 142, 100L, 42L);
	ldr	w0, [sp, 2492]	// tmp111, failures
	add	w0, w0, 1	// tmp110, tmp111,
	str	w0, [sp, 2492]	// tmp110, failures
	ldr	w2, [sp, 2500]	//, actual
	mov	w1, 142	//,
	adrp	x0, .LC64	// tmp112,
	add	x0, x0, :lo12:.LC64	//, tmp112,
	bl	printf		//
.L444:
// varargs-use-dll.c:410:   TEST (several_longs, 142, 1L, 2L, 3L, 5L, 8L, 13L, 21L, 34L, 55L);
	mov	x0, 55	// tmp113,
	str	x0, [sp, 8]	// tmp113,
	mov	x0, 34	// tmp114,
	str	x0, [sp]	// tmp114,
	mov	x7, 21	//,
	mov	x6, 13	//,
	mov	x5, 8	//,
	mov	x4, 5	//,
	mov	x3, 3	//,
	mov	x2, 2	//,
	mov	x1, 1	//,
	adrp	x0, .LC4	// tmp115,
	add	x0, x0, :lo12:.LC4	//, tmp115,
	bl	use_va_args_several_longs		//
	str	w0, [sp, 2504]	//, actual
	ldr	w2, [sp, 2504]	//, actual
	adrp	x0, .LC4	// tmp116,
	add	x1, x0, :lo12:.LC4	//, tmp116,
	adrp	x0, .LC63	// tmp117,
	add	x0, x0, :lo12:.LC63	//, tmp117,
	bl	printf		//
	ldr	w0, [sp, 2504]	// tmp118, actual
	cmp	w0, 142	// tmp118,
	beq	.L445		//,
// varargs-use-dll.c:410:   TEST (several_longs, 142, 1L, 2L, 3L, 5L, 8L, 13L, 21L, 34L, 55L);
	ldr	w0, [sp, 2492]	// tmp120, failures
	add	w0, w0, 1	// tmp119, tmp120,
	str	w0, [sp, 2492]	// tmp119, failures
	ldr	w2, [sp, 2504]	//, actual
	mov	w1, 142	//,
	adrp	x0, .LC64	// tmp121,
	add	x0, x0, :lo12:.LC64	//, tmp121,
	bl	printf		//
.L445:
// varargs-use-dll.c:411:   TEST (many_longs, 6763, 1L, 2L, 3L, 5L, 8L, 13L, 21L, 34L, 55L, 89L, 144L,
	mov	x0, 2584	// tmp122,
	str	x0, [sp, 72]	// tmp122,
	mov	x0, 1597	// tmp123,
	str	x0, [sp, 64]	// tmp123,
	mov	x0, 987	// tmp124,
	str	x0, [sp, 56]	// tmp124,
	mov	x0, 610	// tmp125,
	str	x0, [sp, 48]	// tmp125,
	mov	x0, 377	// tmp126,
	str	x0, [sp, 40]	// tmp126,
	mov	x0, 233	// tmp127,
	str	x0, [sp, 32]	// tmp127,
	mov	x0, 144	// tmp128,
	str	x0, [sp, 24]	// tmp128,
	mov	x0, 89	// tmp129,
	str	x0, [sp, 16]	// tmp129,
	mov	x0, 55	// tmp130,
	str	x0, [sp, 8]	// tmp130,
	mov	x0, 34	// tmp131,
	str	x0, [sp]	// tmp131,
	mov	x7, 21	//,
	mov	x6, 13	//,
	mov	x5, 8	//,
	mov	x4, 5	//,
	mov	x3, 3	//,
	mov	x2, 2	//,
	mov	x1, 1	//,
	adrp	x0, .LC5	// tmp132,
	add	x0, x0, :lo12:.LC5	//, tmp132,
	bl	use_va_args_many_longs		//
	str	w0, [sp, 2508]	//, actual
	ldr	w2, [sp, 2508]	//, actual
	adrp	x0, .LC5	// tmp133,
	add	x1, x0, :lo12:.LC5	//, tmp133,
	adrp	x0, .LC63	// tmp134,
	add	x0, x0, :lo12:.LC63	//, tmp134,
	bl	printf		//
	ldr	w1, [sp, 2508]	// tmp135, actual
	mov	w0, 6763	// tmp136,
	cmp	w1, w0	// tmp135, tmp136
	beq	.L446		//,
// varargs-use-dll.c:411:   TEST (many_longs, 6763, 1L, 2L, 3L, 5L, 8L, 13L, 21L, 34L, 55L, 89L, 144L,
	ldr	w0, [sp, 2492]	// tmp138, failures
	add	w0, w0, 1	// tmp137, tmp138,
	str	w0, [sp, 2492]	// tmp137, failures
	ldr	w2, [sp, 2508]	//, actual
	mov	w1, 6763	//,
	adrp	x0, .LC64	// tmp139,
	add	x0, x0, :lo12:.LC64	//, tmp139,
	bl	printf		//
.L446:
// varargs-use-dll.c:414:   TEST (few_ints, 142, 100, 42);
	mov	w2, 42	//,
	mov	w1, 100	//,
	adrp	x0, .LC6	// tmp140,
	add	x0, x0, :lo12:.LC6	//, tmp140,
	bl	use_va_args_few_ints		//
	str	w0, [sp, 2512]	//, actual
	ldr	w2, [sp, 2512]	//, actual
	adrp	x0, .LC6	// tmp141,
	add	x1, x0, :lo12:.LC6	//, tmp141,
	adrp	x0, .LC63	// tmp142,
	add	x0, x0, :lo12:.LC63	//, tmp142,
	bl	printf		//
	ldr	w0, [sp, 2512]	// tmp143, actual
	cmp	w0, 142	// tmp143,
	beq	.L447		//,
// varargs-use-dll.c:414:   TEST (few_ints, 142, 100, 42);
	ldr	w0, [sp, 2492]	// tmp145, failures
	add	w0, w0, 1	// tmp144, tmp145,
	str	w0, [sp, 2492]	// tmp144, failures
	ldr	w2, [sp, 2512]	//, actual
	mov	w1, 142	//,
	adrp	x0, .LC64	// tmp146,
	add	x0, x0, :lo12:.LC64	//, tmp146,
	bl	printf		//
.L447:
// varargs-use-dll.c:415:   TEST (several_ints, 142, 1, 2, 3, 5, 8, 13, 21, 34, 55);
	mov	w0, 55	// tmp147,
	str	w0, [sp, 8]	// tmp147,
	mov	w0, 34	// tmp148,
	str	w0, [sp]	// tmp148,
	mov	w7, 21	//,
	mov	w6, 13	//,
	mov	w5, 8	//,
	mov	w4, 5	//,
	mov	w3, 3	//,
	mov	w2, 2	//,
	mov	w1, 1	//,
	adrp	x0, .LC7	// tmp149,
	add	x0, x0, :lo12:.LC7	//, tmp149,
	bl	use_va_args_several_ints		//
	str	w0, [sp, 2516]	//, actual
	ldr	w2, [sp, 2516]	//, actual
	adrp	x0, .LC7	// tmp150,
	add	x1, x0, :lo12:.LC7	//, tmp150,
	adrp	x0, .LC63	// tmp151,
	add	x0, x0, :lo12:.LC63	//, tmp151,
	bl	printf		//
	ldr	w0, [sp, 2516]	// tmp152, actual
	cmp	w0, 142	// tmp152,
	beq	.L448		//,
// varargs-use-dll.c:415:   TEST (several_ints, 142, 1, 2, 3, 5, 8, 13, 21, 34, 55);
	ldr	w0, [sp, 2492]	// tmp154, failures
	add	w0, w0, 1	// tmp153, tmp154,
	str	w0, [sp, 2492]	// tmp153, failures
	ldr	w2, [sp, 2516]	//, actual
	mov	w1, 142	//,
	adrp	x0, .LC64	// tmp155,
	add	x0, x0, :lo12:.LC64	//, tmp155,
	bl	printf		//
.L448:
// varargs-use-dll.c:416:   TEST (many_ints, 6763, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610,
	mov	w0, 2584	// tmp156,
	str	w0, [sp, 72]	// tmp156,
	mov	w0, 1597	// tmp157,
	str	w0, [sp, 64]	// tmp157,
	mov	w0, 987	// tmp158,
	str	w0, [sp, 56]	// tmp158,
	mov	w0, 610	// tmp159,
	str	w0, [sp, 48]	// tmp159,
	mov	w0, 377	// tmp160,
	str	w0, [sp, 40]	// tmp160,
	mov	w0, 233	// tmp161,
	str	w0, [sp, 32]	// tmp161,
	mov	w0, 144	// tmp162,
	str	w0, [sp, 24]	// tmp162,
	mov	w0, 89	// tmp163,
	str	w0, [sp, 16]	// tmp163,
	mov	w0, 55	// tmp164,
	str	w0, [sp, 8]	// tmp164,
	mov	w0, 34	// tmp165,
	str	w0, [sp]	// tmp165,
	mov	w7, 21	//,
	mov	w6, 13	//,
	mov	w5, 8	//,
	mov	w4, 5	//,
	mov	w3, 3	//,
	mov	w2, 2	//,
	mov	w1, 1	//,
	adrp	x0, .LC8	// tmp166,
	add	x0, x0, :lo12:.LC8	//, tmp166,
	bl	use_va_args_many_ints		//
	str	w0, [sp, 2520]	//, actual
	ldr	w2, [sp, 2520]	//, actual
	adrp	x0, .LC8	// tmp167,
	add	x1, x0, :lo12:.LC8	//, tmp167,
	adrp	x0, .LC63	// tmp168,
	add	x0, x0, :lo12:.LC63	//, tmp168,
	bl	printf		//
	ldr	w1, [sp, 2520]	// tmp169, actual
	mov	w0, 6763	// tmp170,
	cmp	w1, w0	// tmp169, tmp170
	beq	.L449		//,
// varargs-use-dll.c:416:   TEST (many_ints, 6763, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610,
	ldr	w0, [sp, 2492]	// tmp172, failures
	add	w0, w0, 1	// tmp171, tmp172,
	str	w0, [sp, 2492]	// tmp171, failures
	ldr	w2, [sp, 2520]	//, actual
	mov	w1, 6763	//,
	adrp	x0, .LC64	// tmp173,
	add	x0, x0, :lo12:.LC64	//, tmp173,
	bl	printf		//
.L449:
// varargs-use-dll.c:419:   TEST (few_doubles, 142, 100.0, 42.0);
	mov	x0, 4631107791820423168	// tmp1699,
	fmov	d1, x0	//, tmp1699
	mov	x0, 4636737291354636288	// tmp1700,
	fmov	d0, x0	//, tmp1700
	adrp	x0, .LC9	// tmp174,
	add	x0, x0, :lo12:.LC9	//, tmp174,
	bl	use_va_args_few_doubles		//
	str	w0, [sp, 2524]	//, actual
	ldr	w2, [sp, 2524]	//, actual
	adrp	x0, .LC9	// tmp175,
	add	x1, x0, :lo12:.LC9	//, tmp175,
	adrp	x0, .LC63	// tmp176,
	add	x0, x0, :lo12:.LC63	//, tmp176,
	bl	printf		//
	ldr	w0, [sp, 2524]	// tmp177, actual
	cmp	w0, 142	// tmp177,
	beq	.L450		//,
// varargs-use-dll.c:419:   TEST (few_doubles, 142, 100.0, 42.0);
	ldr	w0, [sp, 2492]	// tmp179, failures
	add	w0, w0, 1	// tmp178, tmp179,
	str	w0, [sp, 2492]	// tmp178, failures
	ldr	w2, [sp, 2524]	//, actual
	mov	w1, 142	//,
	adrp	x0, .LC64	// tmp180,
	add	x0, x0, :lo12:.LC64	//, tmp180,
	bl	printf		//
.L450:
// varargs-use-dll.c:420:   TEST (several_doubles, 142, 1.0, 2.0, 3.0, 5.0, 8.0, 13.0, 21.0, 34.0, 55.0);
	mov	x0, 140737488355328	// tmp1697,
	movk	x0, 0x404b, lsl 48	// tmp1697,,
	fmov	d0, x0	// tmp181, tmp1697
	str	d0, [sp]	// tmp181,
	mov	x0, 4629981891913580544	// tmp1698,
	fmov	d7, x0	//, tmp1698
	fmov	d6, 2.1e+1	//,
	fmov	d5, 1.3e+1	//,
	fmov	d4, 8.0e+0	//,
	fmov	d3, 5.0e+0	//,
	fmov	d2, 3.0e+0	//,
	fmov	d1, 2.0e+0	//,
	fmov	d0, 1.0e+0	//,
	adrp	x0, .LC10	// tmp182,
	add	x0, x0, :lo12:.LC10	//, tmp182,
	bl	use_va_args_several_doubles		//
	str	w0, [sp, 2528]	//, actual
	ldr	w2, [sp, 2528]	//, actual
	adrp	x0, .LC10	// tmp183,
	add	x1, x0, :lo12:.LC10	//, tmp183,
	adrp	x0, .LC63	// tmp184,
	add	x0, x0, :lo12:.LC63	//, tmp184,
	bl	printf		//
	ldr	w0, [sp, 2528]	// tmp185, actual
	cmp	w0, 142	// tmp185,
	beq	.L451		//,
// varargs-use-dll.c:420:   TEST (several_doubles, 142, 1.0, 2.0, 3.0, 5.0, 8.0, 13.0, 21.0, 34.0, 55.0);
	ldr	w0, [sp, 2492]	// tmp187, failures
	add	w0, w0, 1	// tmp186, tmp187,
	str	w0, [sp, 2492]	// tmp186, failures
	ldr	w2, [sp, 2528]	//, actual
	mov	w1, 142	//,
	adrp	x0, .LC64	// tmp188,
	add	x0, x0, :lo12:.LC64	//, tmp188,
	bl	printf		//
.L451:
// varargs-use-dll.c:421:   TEST (many_doubles, 6763, 1.0, 2.0, 3.0, 5.0, 8.0, 13.0, 21.0, 34.0, 55.0,
	mov	x0, 52776558133248	// tmp1687,
	movk	x0, 0x40a4, lsl 48	// tmp1687,,
	fmov	d0, x0	// tmp189, tmp1687
	str	d0, [sp, 64]	// tmp189,
	mov	x0, 268280837177344	// tmp1688,
	movk	x0, 0x4098, lsl 48	// tmp1688,,
	fmov	d0, x0	// tmp190, tmp1688
	str	d0, [sp, 56]	// tmp190,
	mov	x0, 237494511599616	// tmp1689,
	movk	x0, 0x408e, lsl 48	// tmp1689,,
	fmov	d0, x0	// tmp191, tmp1689
	str	d0, [sp, 48]	// tmp191,
	mov	x0, 17592186044416	// tmp1690,
	movk	x0, 0x4083, lsl 48	// tmp1690,,
	fmov	d0, x0	// tmp192, tmp1690
	str	d0, [sp, 40]	// tmp192,
	mov	x0, 158329674399744	// tmp1691,
	movk	x0, 0x4077, lsl 48	// tmp1691,,
	fmov	d0, x0	// tmp193, tmp1691
	str	d0, [sp, 32]	// tmp193,
	mov	x0, 35184372088832	// tmp1692,
	movk	x0, 0x406d, lsl 48	// tmp1692,,
	fmov	d0, x0	// tmp194, tmp1692
	str	d0, [sp, 24]	// tmp194,
	mov	x0, 4639270566145032192	// tmp1693,
	fmov	d0, x0	// tmp195, tmp1693
	str	d0, [sp, 16]	// tmp195,
	mov	x0, 70368744177664	// tmp1694,
	movk	x0, 0x4056, lsl 48	// tmp1694,,
	fmov	d0, x0	// tmp196, tmp1694
	str	d0, [sp, 8]	// tmp196,
	mov	x0, 140737488355328	// tmp1695,
	movk	x0, 0x404b, lsl 48	// tmp1695,,
	fmov	d0, x0	// tmp197, tmp1695
	str	d0, [sp]	// tmp197,
	mov	x0, 4629981891913580544	// tmp1696,
	fmov	d7, x0	//, tmp1696
	fmov	d6, 2.1e+1	//,
	fmov	d5, 1.3e+1	//,
	fmov	d4, 8.0e+0	//,
	fmov	d3, 5.0e+0	//,
	fmov	d2, 3.0e+0	//,
	fmov	d1, 2.0e+0	//,
	fmov	d0, 1.0e+0	//,
	adrp	x0, .LC11	// tmp198,
	add	x0, x0, :lo12:.LC11	//, tmp198,
	bl	use_va_args_many_doubles		//
	str	w0, [sp, 2532]	//, actual
	ldr	w2, [sp, 2532]	//, actual
	adrp	x0, .LC11	// tmp199,
	add	x1, x0, :lo12:.LC11	//, tmp199,
	adrp	x0, .LC63	// tmp200,
	add	x0, x0, :lo12:.LC63	//, tmp200,
	bl	printf		//
	ldr	w1, [sp, 2532]	// tmp201, actual
	mov	w0, 6763	// tmp202,
	cmp	w1, w0	// tmp201, tmp202
	beq	.L452		//,
// varargs-use-dll.c:421:   TEST (many_doubles, 6763, 1.0, 2.0, 3.0, 5.0, 8.0, 13.0, 21.0, 34.0, 55.0,
	ldr	w0, [sp, 2492]	// tmp204, failures
	add	w0, w0, 1	// tmp203, tmp204,
	str	w0, [sp, 2492]	// tmp203, failures
	ldr	w2, [sp, 2532]	//, actual
	mov	w1, 6763	//,
	adrp	x0, .LC64	// tmp205,
	add	x0, x0, :lo12:.LC64	//, tmp205,
	bl	printf		//
.L452:
// varargs-use-dll.c:424:   TEST (few_floats, 142, 100.0f, 42.0f);
	mov	x0, 4631107791820423168	// tmp1685,
	fmov	d1, x0	//, tmp1685
	mov	x0, 4636737291354636288	// tmp1686,
	fmov	d0, x0	//, tmp1686
	adrp	x0, .LC12	// tmp206,
	add	x0, x0, :lo12:.LC12	//, tmp206,
	bl	use_va_args_few_floats		//
	str	w0, [sp, 2536]	//, actual
	ldr	w2, [sp, 2536]	//, actual
	adrp	x0, .LC12	// tmp207,
	add	x1, x0, :lo12:.LC12	//, tmp207,
	adrp	x0, .LC63	// tmp208,
	add	x0, x0, :lo12:.LC63	//, tmp208,
	bl	printf		//
	ldr	w0, [sp, 2536]	// tmp209, actual
	cmp	w0, 142	// tmp209,
	beq	.L453		//,
// varargs-use-dll.c:424:   TEST (few_floats, 142, 100.0f, 42.0f);
	ldr	w0, [sp, 2492]	// tmp211, failures
	add	w0, w0, 1	// tmp210, tmp211,
	str	w0, [sp, 2492]	// tmp210, failures
	ldr	w2, [sp, 2536]	//, actual
	mov	w1, 142	//,
	adrp	x0, .LC64	// tmp212,
	add	x0, x0, :lo12:.LC64	//, tmp212,
	bl	printf		//
.L453:
// varargs-use-dll.c:425:   TEST (several_floats, 142, 1.0f, 2.0f, 3.0f, 5.0f, 8.0f, 13.0f, 21.0f, 34.0f,
	mov	x0, 140737488355328	// tmp1683,
	movk	x0, 0x404b, lsl 48	// tmp1683,,
	fmov	d0, x0	// tmp213, tmp1683
	str	d0, [sp]	// tmp213,
	mov	x0, 4629981891913580544	// tmp1684,
	fmov	d7, x0	//, tmp1684
	fmov	d6, 2.1e+1	//,
	fmov	d5, 1.3e+1	//,
	fmov	d4, 8.0e+0	//,
	fmov	d3, 5.0e+0	//,
	fmov	d2, 3.0e+0	//,
	fmov	d1, 2.0e+0	//,
	fmov	d0, 1.0e+0	//,
	adrp	x0, .LC13	// tmp214,
	add	x0, x0, :lo12:.LC13	//, tmp214,
	bl	use_va_args_several_floats		//
	str	w0, [sp, 2540]	//, actual
	ldr	w2, [sp, 2540]	//, actual
	adrp	x0, .LC13	// tmp215,
	add	x1, x0, :lo12:.LC13	//, tmp215,
	adrp	x0, .LC63	// tmp216,
	add	x0, x0, :lo12:.LC63	//, tmp216,
	bl	printf		//
	ldr	w0, [sp, 2540]	// tmp217, actual
	cmp	w0, 142	// tmp217,
	beq	.L454		//,
// varargs-use-dll.c:425:   TEST (several_floats, 142, 1.0f, 2.0f, 3.0f, 5.0f, 8.0f, 13.0f, 21.0f, 34.0f,
	ldr	w0, [sp, 2492]	// tmp219, failures
	add	w0, w0, 1	// tmp218, tmp219,
	str	w0, [sp, 2492]	// tmp218, failures
	ldr	w2, [sp, 2540]	//, actual
	mov	w1, 142	//,
	adrp	x0, .LC64	// tmp220,
	add	x0, x0, :lo12:.LC64	//, tmp220,
	bl	printf		//
.L454:
// varargs-use-dll.c:427:   TEST (many_floats, 6763, 1.0f, 2.0f, 3.0f, 5.0f, 8.0f, 13.0f, 21.0f, 34.0f,
	mov	x0, 52776558133248	// tmp1673,
	movk	x0, 0x40a4, lsl 48	// tmp1673,,
	fmov	d0, x0	// tmp221, tmp1673
	str	d0, [sp, 64]	// tmp221,
	mov	x0, 268280837177344	// tmp1674,
	movk	x0, 0x4098, lsl 48	// tmp1674,,
	fmov	d0, x0	// tmp222, tmp1674
	str	d0, [sp, 56]	// tmp222,
	mov	x0, 237494511599616	// tmp1675,
	movk	x0, 0x408e, lsl 48	// tmp1675,,
	fmov	d0, x0	// tmp223, tmp1675
	str	d0, [sp, 48]	// tmp223,
	mov	x0, 17592186044416	// tmp1676,
	movk	x0, 0x4083, lsl 48	// tmp1676,,
	fmov	d0, x0	// tmp224, tmp1676
	str	d0, [sp, 40]	// tmp224,
	mov	x0, 158329674399744	// tmp1677,
	movk	x0, 0x4077, lsl 48	// tmp1677,,
	fmov	d0, x0	// tmp225, tmp1677
	str	d0, [sp, 32]	// tmp225,
	mov	x0, 35184372088832	// tmp1678,
	movk	x0, 0x406d, lsl 48	// tmp1678,,
	fmov	d0, x0	// tmp226, tmp1678
	str	d0, [sp, 24]	// tmp226,
	mov	x0, 4639270566145032192	// tmp1679,
	fmov	d0, x0	// tmp227, tmp1679
	str	d0, [sp, 16]	// tmp227,
	mov	x0, 70368744177664	// tmp1680,
	movk	x0, 0x4056, lsl 48	// tmp1680,,
	fmov	d0, x0	// tmp228, tmp1680
	str	d0, [sp, 8]	// tmp228,
	mov	x0, 140737488355328	// tmp1681,
	movk	x0, 0x404b, lsl 48	// tmp1681,,
	fmov	d0, x0	// tmp229, tmp1681
	str	d0, [sp]	// tmp229,
	mov	x0, 4629981891913580544	// tmp1682,
	fmov	d7, x0	//, tmp1682
	fmov	d6, 2.1e+1	//,
	fmov	d5, 1.3e+1	//,
	fmov	d4, 8.0e+0	//,
	fmov	d3, 5.0e+0	//,
	fmov	d2, 3.0e+0	//,
	fmov	d1, 2.0e+0	//,
	fmov	d0, 1.0e+0	//,
	adrp	x0, .LC14	// tmp230,
	add	x0, x0, :lo12:.LC14	//, tmp230,
	bl	use_va_args_many_floats		//
	str	w0, [sp, 2544]	//, actual
	ldr	w2, [sp, 2544]	//, actual
	adrp	x0, .LC14	// tmp231,
	add	x1, x0, :lo12:.LC14	//, tmp231,
	adrp	x0, .LC63	// tmp232,
	add	x0, x0, :lo12:.LC63	//, tmp232,
	bl	printf		//
	ldr	w1, [sp, 2544]	// tmp233, actual
	mov	w0, 6763	// tmp234,
	cmp	w1, w0	// tmp233, tmp234
	beq	.L455		//,
// varargs-use-dll.c:427:   TEST (many_floats, 6763, 1.0f, 2.0f, 3.0f, 5.0f, 8.0f, 13.0f, 21.0f, 34.0f,
	ldr	w0, [sp, 2492]	// tmp236, failures
	add	w0, w0, 1	// tmp235, tmp236,
	str	w0, [sp, 2492]	// tmp235, failures
	ldr	w2, [sp, 2544]	//, actual
	mov	w1, 6763	//,
	adrp	x0, .LC64	// tmp237,
	add	x0, x0, :lo12:.LC64	//, tmp237,
	bl	printf		//
.L455:
// varargs-use-dll.c:431:   TEST (few_composites, 3, a, b);
	adrp	x0, a	// tmp239,
	add	x1, x0, :lo12:a	// tmp238, tmp239,
	add	x0, sp, 2384	// tmp240,,
	ldp	q0, q1, [x1]	// tmp242, tmp243, a
	stp	q0, q1, [x0]	// tmp242, tmp243,
	ldp	q0, q1, [x1, 32]	// tmp244, tmp245, a
	stp	q0, q1, [x0, 32]	// tmp244, tmp245,
	ldr	q0, [x1, 64]	// tmp246, a
	str	q0, [x0, 64]	// tmp246,
	adrp	x0, b	// tmp248,
	add	x1, x0, :lo12:b	// tmp247, tmp248,
	add	x0, sp, 2304	// tmp249,,
	ldp	q0, q1, [x1]	// tmp251, tmp252, b
	stp	q0, q1, [x0]	// tmp251, tmp252,
	ldp	q0, q1, [x1, 32]	// tmp253, tmp254, b
	stp	q0, q1, [x0, 32]	// tmp253, tmp254,
	ldr	q0, [x1, 64]	// tmp255, b
	str	q0, [x0, 64]	// tmp255,
	add	x1, sp, 2304	// tmp256,,
	add	x0, sp, 2384	// tmp257,,
	mov	x2, x1	//, tmp256
	mov	x1, x0	//, tmp257
	adrp	x0, .LC18	// tmp258,
	add	x0, x0, :lo12:.LC18	//, tmp258,
	bl	use_va_args_few_composites		//
	str	w0, [sp, 2548]	//, actual
	ldr	w2, [sp, 2548]	//, actual
	adrp	x0, .LC18	// tmp259,
	add	x1, x0, :lo12:.LC18	//, tmp259,
	adrp	x0, .LC63	// tmp260,
	add	x0, x0, :lo12:.LC63	//, tmp260,
	bl	printf		//
	ldr	w0, [sp, 2548]	// tmp261, actual
	cmp	w0, 3	// tmp261,
	beq	.L456		//,
// varargs-use-dll.c:431:   TEST (few_composites, 3, a, b);
	ldr	w0, [sp, 2492]	// tmp263, failures
	add	w0, w0, 1	// tmp262, tmp263,
	str	w0, [sp, 2492]	// tmp262, failures
	ldr	w2, [sp, 2548]	//, actual
	mov	w1, 3	//,
	adrp	x0, .LC64	// tmp264,
	add	x0, x0, :lo12:.LC64	//, tmp264,
	bl	printf		//
.L456:
// varargs-use-dll.c:432:   TEST (several_composites, 142, a, b, c, d, e, f, g, h, i);
	adrp	x0, a	// tmp266,
	add	x1, x0, :lo12:a	// tmp265, tmp266,
	add	x0, sp, 2304	// tmp267,,
	ldp	q0, q1, [x1]	// tmp269, tmp270, a
	stp	q0, q1, [x0]	// tmp269, tmp270,
	ldp	q0, q1, [x1, 32]	// tmp271, tmp272, a
	stp	q0, q1, [x0, 32]	// tmp271, tmp272,
	ldr	q0, [x1, 64]	// tmp273, a
	str	q0, [x0, 64]	// tmp273,
	adrp	x0, b	// tmp275,
	add	x1, x0, :lo12:b	// tmp274, tmp275,
	add	x0, sp, 2384	// tmp276,,
	ldp	q0, q1, [x1]	// tmp278, tmp279, b
	stp	q0, q1, [x0]	// tmp278, tmp279,
	ldp	q0, q1, [x1, 32]	// tmp280, tmp281, b
	stp	q0, q1, [x0, 32]	// tmp280, tmp281,
	ldr	q0, [x1, 64]	// tmp282, b
	str	q0, [x0, 64]	// tmp282,
	adrp	x0, c	// tmp284,
	add	x1, x0, :lo12:c	// tmp283, tmp284,
	add	x0, sp, 2224	// tmp285,,
	ldp	q0, q1, [x1]	// tmp287, tmp288, c
	stp	q0, q1, [x0]	// tmp287, tmp288,
	ldp	q0, q1, [x1, 32]	// tmp289, tmp290, c
	stp	q0, q1, [x0, 32]	// tmp289, tmp290,
	ldr	q0, [x1, 64]	// tmp291, c
	str	q0, [x0, 64]	// tmp291,
	adrp	x0, d	// tmp293,
	add	x1, x0, :lo12:d	// tmp292, tmp293,
	add	x0, sp, 2144	// tmp294,,
	ldp	q0, q1, [x1]	// tmp296, tmp297, d
	stp	q0, q1, [x0]	// tmp296, tmp297,
	ldp	q0, q1, [x1, 32]	// tmp298, tmp299, d
	stp	q0, q1, [x0, 32]	// tmp298, tmp299,
	ldr	q0, [x1, 64]	// tmp300, d
	str	q0, [x0, 64]	// tmp300,
	adrp	x0, e	// tmp302,
	add	x1, x0, :lo12:e	// tmp301, tmp302,
	add	x0, sp, 2064	// tmp303,,
	ldp	q0, q1, [x1]	// tmp305, tmp306, e
	stp	q0, q1, [x0]	// tmp305, tmp306,
	ldp	q0, q1, [x1, 32]	// tmp307, tmp308, e
	stp	q0, q1, [x0, 32]	// tmp307, tmp308,
	ldr	q0, [x1, 64]	// tmp309, e
	str	q0, [x0, 64]	// tmp309,
	adrp	x0, f	// tmp311,
	add	x1, x0, :lo12:f	// tmp310, tmp311,
	add	x0, sp, 1984	// tmp312,,
	ldp	q0, q1, [x1]	// tmp314, tmp315, f
	stp	q0, q1, [x0]	// tmp314, tmp315,
	ldp	q0, q1, [x1, 32]	// tmp316, tmp317, f
	stp	q0, q1, [x0, 32]	// tmp316, tmp317,
	ldr	q0, [x1, 64]	// tmp318, f
	str	q0, [x0, 64]	// tmp318,
	adrp	x0, g	// tmp320,
	add	x1, x0, :lo12:g	// tmp319, tmp320,
	add	x0, sp, 1904	// tmp321,,
	ldp	q0, q1, [x1]	// tmp323, tmp324, g
	stp	q0, q1, [x0]	// tmp323, tmp324,
	ldp	q0, q1, [x1, 32]	// tmp325, tmp326, g
	stp	q0, q1, [x0, 32]	// tmp325, tmp326,
	ldr	q0, [x1, 64]	// tmp327, g
	str	q0, [x0, 64]	// tmp327,
	adrp	x0, h	// tmp329,
	add	x1, x0, :lo12:h	// tmp328, tmp329,
	add	x0, sp, 1824	// tmp330,,
	ldp	q0, q1, [x1]	// tmp332, tmp333, h
	stp	q0, q1, [x0]	// tmp332, tmp333,
	ldp	q0, q1, [x1, 32]	// tmp334, tmp335, h
	stp	q0, q1, [x0, 32]	// tmp334, tmp335,
	ldr	q0, [x1, 64]	// tmp336, h
	str	q0, [x0, 64]	// tmp336,
	adrp	x0, i	// tmp338,
	add	x1, x0, :lo12:i	// tmp337, tmp338,
	add	x0, sp, 1744	// tmp339,,
	ldp	q0, q1, [x1]	// tmp341, tmp342, i
	stp	q0, q1, [x0]	// tmp341, tmp342,
	ldp	q0, q1, [x1, 32]	// tmp343, tmp344, i
	stp	q0, q1, [x0, 32]	// tmp343, tmp344,
	ldr	q0, [x1, 64]	// tmp345, i
	str	q0, [x0, 64]	// tmp345,
	add	x7, sp, 1904	// tmp346,,
	add	x6, sp, 1984	// tmp347,,
	add	x5, sp, 2064	// tmp348,,
	add	x4, sp, 2144	// tmp349,,
	add	x3, sp, 2224	// tmp350,,
	add	x2, sp, 2384	// tmp351,,
	add	x1, sp, 2304	// tmp352,,
	add	x0, sp, 1744	// tmp353,,
	str	x0, [sp, 8]	// tmp353,
	add	x0, sp, 1824	// tmp354,,
	str	x0, [sp]	// tmp354,
	adrp	x0, .LC19	// tmp355,
	add	x0, x0, :lo12:.LC19	//, tmp355,
	bl	use_va_args_several_composites		//
	str	w0, [sp, 2552]	//, actual
	ldr	w2, [sp, 2552]	//, actual
	adrp	x0, .LC19	// tmp356,
	add	x1, x0, :lo12:.LC19	//, tmp356,
	adrp	x0, .LC63	// tmp357,
	add	x0, x0, :lo12:.LC63	//, tmp357,
	bl	printf		//
	ldr	w0, [sp, 2552]	// tmp358, actual
	cmp	w0, 142	// tmp358,
	beq	.L457		//,
// varargs-use-dll.c:432:   TEST (several_composites, 142, a, b, c, d, e, f, g, h, i);
	ldr	w0, [sp, 2492]	// tmp360, failures
	add	w0, w0, 1	// tmp359, tmp360,
	str	w0, [sp, 2492]	// tmp359, failures
	ldr	w2, [sp, 2552]	//, actual
	mov	w1, 142	//,
	adrp	x0, .LC64	// tmp361,
	add	x0, x0, :lo12:.LC64	//, tmp361,
	bl	printf		//
.L457:
// varargs-use-dll.c:433:   TEST (many_composites, 6763, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p,
	adrp	x0, a	// tmp363,
	add	x1, x0, :lo12:a	// tmp362, tmp363,
	add	x0, sp, 2144	// tmp364,,
	ldp	q0, q1, [x1]	// tmp366, tmp367, a
	stp	q0, q1, [x0]	// tmp366, tmp367,
	ldp	q0, q1, [x1, 32]	// tmp368, tmp369, a
	stp	q0, q1, [x0, 32]	// tmp368, tmp369,
	ldr	q0, [x1, 64]	// tmp370, a
	str	q0, [x0, 64]	// tmp370,
	adrp	x0, b	// tmp372,
	add	x1, x0, :lo12:b	// tmp371, tmp372,
	add	x0, sp, 2064	// tmp373,,
	ldp	q0, q1, [x1]	// tmp375, tmp376, b
	stp	q0, q1, [x0]	// tmp375, tmp376,
	ldp	q0, q1, [x1, 32]	// tmp377, tmp378, b
	stp	q0, q1, [x0, 32]	// tmp377, tmp378,
	ldr	q0, [x1, 64]	// tmp379, b
	str	q0, [x0, 64]	// tmp379,
	adrp	x0, c	// tmp381,
	add	x1, x0, :lo12:c	// tmp380, tmp381,
	add	x0, sp, 1984	// tmp382,,
	ldp	q0, q1, [x1]	// tmp384, tmp385, c
	stp	q0, q1, [x0]	// tmp384, tmp385,
	ldp	q0, q1, [x1, 32]	// tmp386, tmp387, c
	stp	q0, q1, [x0, 32]	// tmp386, tmp387,
	ldr	q0, [x1, 64]	// tmp388, c
	str	q0, [x0, 64]	// tmp388,
	adrp	x0, d	// tmp390,
	add	x1, x0, :lo12:d	// tmp389, tmp390,
	add	x0, sp, 1904	// tmp391,,
	ldp	q0, q1, [x1]	// tmp393, tmp394, d
	stp	q0, q1, [x0]	// tmp393, tmp394,
	ldp	q0, q1, [x1, 32]	// tmp395, tmp396, d
	stp	q0, q1, [x0, 32]	// tmp395, tmp396,
	ldr	q0, [x1, 64]	// tmp397, d
	str	q0, [x0, 64]	// tmp397,
	adrp	x0, e	// tmp399,
	add	x1, x0, :lo12:e	// tmp398, tmp399,
	add	x0, sp, 1824	// tmp400,,
	ldp	q0, q1, [x1]	// tmp402, tmp403, e
	stp	q0, q1, [x0]	// tmp402, tmp403,
	ldp	q0, q1, [x1, 32]	// tmp404, tmp405, e
	stp	q0, q1, [x0, 32]	// tmp404, tmp405,
	ldr	q0, [x1, 64]	// tmp406, e
	str	q0, [x0, 64]	// tmp406,
	adrp	x0, f	// tmp408,
	add	x1, x0, :lo12:f	// tmp407, tmp408,
	add	x0, sp, 1744	// tmp409,,
	ldp	q0, q1, [x1]	// tmp411, tmp412, f
	stp	q0, q1, [x0]	// tmp411, tmp412,
	ldp	q0, q1, [x1, 32]	// tmp413, tmp414, f
	stp	q0, q1, [x0, 32]	// tmp413, tmp414,
	ldr	q0, [x1, 64]	// tmp415, f
	str	q0, [x0, 64]	// tmp415,
	adrp	x0, g	// tmp417,
	add	x1, x0, :lo12:g	// tmp416, tmp417,
	add	x0, sp, 2224	// tmp418,,
	ldp	q0, q1, [x1]	// tmp420, tmp421, g
	stp	q0, q1, [x0]	// tmp420, tmp421,
	ldp	q0, q1, [x1, 32]	// tmp422, tmp423, g
	stp	q0, q1, [x0, 32]	// tmp422, tmp423,
	ldr	q0, [x1, 64]	// tmp424, g
	str	q0, [x0, 64]	// tmp424,
	adrp	x0, h	// tmp426,
	add	x1, x0, :lo12:h	// tmp425, tmp426,
	add	x0, sp, 2304	// tmp427,,
	ldp	q0, q1, [x1]	// tmp429, tmp430, h
	stp	q0, q1, [x0]	// tmp429, tmp430,
	ldp	q0, q1, [x1, 32]	// tmp431, tmp432, h
	stp	q0, q1, [x0, 32]	// tmp431, tmp432,
	ldr	q0, [x1, 64]	// tmp433, h
	str	q0, [x0, 64]	// tmp433,
	adrp	x0, i	// tmp435,
	add	x1, x0, :lo12:i	// tmp434, tmp435,
	add	x0, sp, 2384	// tmp436,,
	ldp	q0, q1, [x1]	// tmp438, tmp439, i
	stp	q0, q1, [x0]	// tmp438, tmp439,
	ldp	q0, q1, [x1, 32]	// tmp440, tmp441, i
	stp	q0, q1, [x0, 32]	// tmp440, tmp441,
	ldr	q0, [x1, 64]	// tmp442, i
	str	q0, [x0, 64]	// tmp442,
	adrp	x0, j	// tmp444,
	add	x1, x0, :lo12:j	// tmp443, tmp444,
	add	x0, sp, 1664	// tmp445,,
	ldp	q0, q1, [x1]	// tmp447, tmp448, j
	stp	q0, q1, [x0]	// tmp447, tmp448,
	ldp	q0, q1, [x1, 32]	// tmp449, tmp450, j
	stp	q0, q1, [x0, 32]	// tmp449, tmp450,
	ldr	q0, [x1, 64]	// tmp451, j
	str	q0, [x0, 64]	// tmp451,
	adrp	x0, k	// tmp453,
	add	x1, x0, :lo12:k	// tmp452, tmp453,
	add	x0, sp, 1584	// tmp454,,
	ldp	q0, q1, [x1]	// tmp456, tmp457, k
	stp	q0, q1, [x0]	// tmp456, tmp457,
	ldp	q0, q1, [x1, 32]	// tmp458, tmp459, k
	stp	q0, q1, [x0, 32]	// tmp458, tmp459,
	ldr	q0, [x1, 64]	// tmp460, k
	str	q0, [x0, 64]	// tmp460,
	adrp	x0, l	// tmp462,
	add	x1, x0, :lo12:l	// tmp461, tmp462,
	add	x0, sp, 1504	// tmp463,,
	ldp	q0, q1, [x1]	// tmp465, tmp466, l
	stp	q0, q1, [x0]	// tmp465, tmp466,
	ldp	q0, q1, [x1, 32]	// tmp467, tmp468, l
	stp	q0, q1, [x0, 32]	// tmp467, tmp468,
	ldr	q0, [x1, 64]	// tmp469, l
	str	q0, [x0, 64]	// tmp469,
	adrp	x0, m	// tmp471,
	add	x1, x0, :lo12:m	// tmp470, tmp471,
	add	x0, sp, 1424	// tmp472,,
	ldp	q0, q1, [x1]	// tmp474, tmp475, m
	stp	q0, q1, [x0]	// tmp474, tmp475,
	ldp	q0, q1, [x1, 32]	// tmp476, tmp477, m
	stp	q0, q1, [x0, 32]	// tmp476, tmp477,
	ldr	q0, [x1, 64]	// tmp478, m
	str	q0, [x0, 64]	// tmp478,
	adrp	x0, n	// tmp480,
	add	x1, x0, :lo12:n	// tmp479, tmp480,
	add	x0, sp, 1344	// tmp481,,
	ldp	q0, q1, [x1]	// tmp483, tmp484, n
	stp	q0, q1, [x0]	// tmp483, tmp484,
	ldp	q0, q1, [x1, 32]	// tmp485, tmp486, n
	stp	q0, q1, [x0, 32]	// tmp485, tmp486,
	ldr	q0, [x1, 64]	// tmp487, n
	str	q0, [x0, 64]	// tmp487,
	adrp	x0, o	// tmp489,
	add	x1, x0, :lo12:o	// tmp488, tmp489,
	add	x0, sp, 1264	// tmp490,,
	ldp	q0, q1, [x1]	// tmp492, tmp493, o
	stp	q0, q1, [x0]	// tmp492, tmp493,
	ldp	q0, q1, [x1, 32]	// tmp494, tmp495, o
	stp	q0, q1, [x0, 32]	// tmp494, tmp495,
	ldr	q0, [x1, 64]	// tmp496, o
	str	q0, [x0, 64]	// tmp496,
	adrp	x0, p	// tmp498,
	add	x1, x0, :lo12:p	// tmp497, tmp498,
	add	x0, sp, 1184	// tmp499,,
	ldp	q0, q1, [x1]	// tmp501, tmp502, p
	stp	q0, q1, [x0]	// tmp501, tmp502,
	ldp	q0, q1, [x1, 32]	// tmp503, tmp504, p
	stp	q0, q1, [x0, 32]	// tmp503, tmp504,
	ldr	q0, [x1, 64]	// tmp505, p
	str	q0, [x0, 64]	// tmp505,
	adrp	x0, q	// tmp507,
	add	x1, x0, :lo12:q	// tmp506, tmp507,
	add	x0, sp, 1104	// tmp508,,
	ldp	q0, q1, [x1]	// tmp510, tmp511, q
	stp	q0, q1, [x0]	// tmp510, tmp511,
	ldp	q0, q1, [x1, 32]	// tmp512, tmp513, q
	stp	q0, q1, [x0, 32]	// tmp512, tmp513,
	ldr	q0, [x1, 64]	// tmp514, q
	str	q0, [x0, 64]	// tmp514,
	add	x7, sp, 2224	// tmp515,,
	add	x6, sp, 1744	// tmp516,,
	add	x5, sp, 1824	// tmp517,,
	add	x4, sp, 1904	// tmp518,,
	add	x3, sp, 1984	// tmp519,,
	add	x2, sp, 2064	// tmp520,,
	add	x1, sp, 2144	// tmp521,,
	add	x0, sp, 1104	// tmp522,,
	str	x0, [sp, 72]	// tmp522,
	add	x0, sp, 1184	// tmp523,,
	str	x0, [sp, 64]	// tmp523,
	add	x0, sp, 1264	// tmp524,,
	str	x0, [sp, 56]	// tmp524,
	add	x0, sp, 1344	// tmp525,,
	str	x0, [sp, 48]	// tmp525,
	add	x0, sp, 1424	// tmp526,,
	str	x0, [sp, 40]	// tmp526,
	add	x0, sp, 1504	// tmp527,,
	str	x0, [sp, 32]	// tmp527,
	add	x0, sp, 1584	// tmp528,,
	str	x0, [sp, 24]	// tmp528,
	add	x0, sp, 1664	// tmp529,,
	str	x0, [sp, 16]	// tmp529,
	add	x0, sp, 2384	// tmp530,,
	str	x0, [sp, 8]	// tmp530,
	add	x0, sp, 2304	// tmp531,,
	str	x0, [sp]	// tmp531,
	adrp	x0, .LC20	// tmp532,
	add	x0, x0, :lo12:.LC20	//, tmp532,
	bl	use_va_args_many_composites		//
	str	w0, [sp, 2556]	//, actual
	ldr	w2, [sp, 2556]	//, actual
	adrp	x0, .LC20	// tmp533,
	add	x1, x0, :lo12:.LC20	//, tmp533,
	adrp	x0, .LC63	// tmp534,
	add	x0, x0, :lo12:.LC63	//, tmp534,
	bl	printf		//
	ldr	w1, [sp, 2556]	// tmp535, actual
	mov	w0, 6763	// tmp536,
	cmp	w1, w0	// tmp535, tmp536
	beq	.L458		//,
// varargs-use-dll.c:433:   TEST (many_composites, 6763, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p,
	ldr	w0, [sp, 2492]	// tmp538, failures
	add	w0, w0, 1	// tmp537, tmp538,
	str	w0, [sp, 2492]	// tmp537, failures
	ldr	w2, [sp, 2556]	//, actual
	mov	w1, 6763	//,
	adrp	x0, .LC64	// tmp539,
	add	x0, x0, :lo12:.LC64	//, tmp539,
	bl	printf		//
.L458:
// varargs-use-dll.c:436:   TEST (few_short_vector_8_bytes, 3, sv8_a, sv8_b);
	adrp	x0, sv8_b	// tmp541,
	add	x1, x0, :lo12:sv8_b	// tmp540, tmp541,
	adrp	x0, sv8_a	// tmp543,
	add	x0, x0, :lo12:sv8_a	// tmp542, tmp543,
	ldr	x2, [x1]	//, sv8_b
	ldr	x1, [x0]	//, sv8_a
	adrp	x0, .LC21	// tmp544,
	add	x0, x0, :lo12:.LC21	//, tmp544,
	bl	use_va_args_few_short_vector_8_bytes		//
	str	w0, [sp, 2560]	//, actual
	ldr	w2, [sp, 2560]	//, actual
	adrp	x0, .LC21	// tmp545,
	add	x1, x0, :lo12:.LC21	//, tmp545,
	adrp	x0, .LC63	// tmp546,
	add	x0, x0, :lo12:.LC63	//, tmp546,
	bl	printf		//
	ldr	w0, [sp, 2560]	// tmp547, actual
	cmp	w0, 3	// tmp547,
	beq	.L459		//,
// varargs-use-dll.c:436:   TEST (few_short_vector_8_bytes, 3, sv8_a, sv8_b);
	ldr	w0, [sp, 2492]	// tmp549, failures
	add	w0, w0, 1	// tmp548, tmp549,
	str	w0, [sp, 2492]	// tmp548, failures
	ldr	w2, [sp, 2560]	//, actual
	mov	w1, 3	//,
	adrp	x0, .LC64	// tmp550,
	add	x0, x0, :lo12:.LC64	//, tmp550,
	bl	printf		//
.L459:
// varargs-use-dll.c:437:   TEST (several_short_vector_8_bytes, 142, sv8_a, sv8_b, sv8_c, sv8_d, sv8_e,
	adrp	x0, sv8_g	// tmp552,
	add	x6, x0, :lo12:sv8_g	// tmp551, tmp552,
	adrp	x0, sv8_f	// tmp554,
	add	x5, x0, :lo12:sv8_f	// tmp553, tmp554,
	adrp	x0, sv8_e	// tmp556,
	add	x4, x0, :lo12:sv8_e	// tmp555, tmp556,
	adrp	x0, sv8_d	// tmp558,
	add	x3, x0, :lo12:sv8_d	// tmp557, tmp558,
	adrp	x0, sv8_c	// tmp560,
	add	x2, x0, :lo12:sv8_c	// tmp559, tmp560,
	adrp	x0, sv8_b	// tmp562,
	add	x1, x0, :lo12:sv8_b	// tmp561, tmp562,
	adrp	x0, sv8_a	// tmp564,
	add	x0, x0, :lo12:sv8_a	// tmp563, tmp564,
	adrp	x7, sv8_i	// tmp566,
	add	x7, x7, :lo12:sv8_i	// tmp565, tmp566,
	ldr	x7, [x7]	// tmp567, sv8_i
	str	x7, [sp, 8]	// tmp567,
	adrp	x7, sv8_h	// tmp569,
	add	x7, x7, :lo12:sv8_h	// tmp568, tmp569,
	ldr	x7, [x7]	// tmp570, sv8_h
	str	x7, [sp]	// tmp570,
	ldr	x7, [x6]	//, sv8_g
	ldr	x6, [x5]	//, sv8_f
	ldr	x5, [x4]	//, sv8_e
	ldr	x4, [x3]	//, sv8_d
	ldr	x3, [x2]	//, sv8_c
	ldr	x2, [x1]	//, sv8_b
	ldr	x1, [x0]	//, sv8_a
	adrp	x0, .LC22	// tmp571,
	add	x0, x0, :lo12:.LC22	//, tmp571,
	bl	use_va_args_several_short_vector_8_bytes		//
	str	w0, [sp, 2564]	//, actual
	ldr	w2, [sp, 2564]	//, actual
	adrp	x0, .LC22	// tmp572,
	add	x1, x0, :lo12:.LC22	//, tmp572,
	adrp	x0, .LC63	// tmp573,
	add	x0, x0, :lo12:.LC63	//, tmp573,
	bl	printf		//
	ldr	w0, [sp, 2564]	// tmp574, actual
	cmp	w0, 142	// tmp574,
	beq	.L460		//,
// varargs-use-dll.c:437:   TEST (several_short_vector_8_bytes, 142, sv8_a, sv8_b, sv8_c, sv8_d, sv8_e,
	ldr	w0, [sp, 2492]	// tmp576, failures
	add	w0, w0, 1	// tmp575, tmp576,
	str	w0, [sp, 2492]	// tmp575, failures
	ldr	w2, [sp, 2564]	//, actual
	mov	w1, 142	//,
	adrp	x0, .LC64	// tmp577,
	add	x0, x0, :lo12:.LC64	//, tmp577,
	bl	printf		//
.L460:
// varargs-use-dll.c:439:   TEST (many_short_vector_8_bytes, 6763, sv8_a, sv8_b, sv8_c, sv8_d, sv8_e,
	adrp	x0, sv8_g	// tmp579,
	add	x6, x0, :lo12:sv8_g	// tmp578, tmp579,
	adrp	x0, sv8_f	// tmp581,
	add	x5, x0, :lo12:sv8_f	// tmp580, tmp581,
	adrp	x0, sv8_e	// tmp583,
	add	x4, x0, :lo12:sv8_e	// tmp582, tmp583,
	adrp	x0, sv8_d	// tmp585,
	add	x3, x0, :lo12:sv8_d	// tmp584, tmp585,
	adrp	x0, sv8_c	// tmp587,
	add	x2, x0, :lo12:sv8_c	// tmp586, tmp587,
	adrp	x0, sv8_b	// tmp589,
	add	x1, x0, :lo12:sv8_b	// tmp588, tmp589,
	adrp	x0, sv8_a	// tmp591,
	add	x0, x0, :lo12:sv8_a	// tmp590, tmp591,
	adrp	x7, sv8_q	// tmp593,
	add	x7, x7, :lo12:sv8_q	// tmp592, tmp593,
	ldr	x7, [x7]	// tmp594, sv8_q
	str	x7, [sp, 72]	// tmp594,
	adrp	x7, sv8_p	// tmp596,
	add	x7, x7, :lo12:sv8_p	// tmp595, tmp596,
	ldr	x7, [x7]	// tmp597, sv8_p
	str	x7, [sp, 64]	// tmp597,
	adrp	x7, sv8_o	// tmp599,
	add	x7, x7, :lo12:sv8_o	// tmp598, tmp599,
	ldr	x7, [x7]	// tmp600, sv8_o
	str	x7, [sp, 56]	// tmp600,
	adrp	x7, sv8_n	// tmp602,
	add	x7, x7, :lo12:sv8_n	// tmp601, tmp602,
	ldr	x7, [x7]	// tmp603, sv8_n
	str	x7, [sp, 48]	// tmp603,
	adrp	x7, sv8_m	// tmp605,
	add	x7, x7, :lo12:sv8_m	// tmp604, tmp605,
	ldr	x7, [x7]	// tmp606, sv8_m
	str	x7, [sp, 40]	// tmp606,
	adrp	x7, sv8_l	// tmp608,
	add	x7, x7, :lo12:sv8_l	// tmp607, tmp608,
	ldr	x7, [x7]	// tmp609, sv8_l
	str	x7, [sp, 32]	// tmp609,
	adrp	x7, sv8_k	// tmp611,
	add	x7, x7, :lo12:sv8_k	// tmp610, tmp611,
	ldr	x7, [x7]	// tmp612, sv8_k
	str	x7, [sp, 24]	// tmp612,
	adrp	x7, sv8_j	// tmp614,
	add	x7, x7, :lo12:sv8_j	// tmp613, tmp614,
	ldr	x7, [x7]	// tmp615, sv8_j
	str	x7, [sp, 16]	// tmp615,
	adrp	x7, sv8_i	// tmp617,
	add	x7, x7, :lo12:sv8_i	// tmp616, tmp617,
	ldr	x7, [x7]	// tmp618, sv8_i
	str	x7, [sp, 8]	// tmp618,
	adrp	x7, sv8_h	// tmp620,
	add	x7, x7, :lo12:sv8_h	// tmp619, tmp620,
	ldr	x7, [x7]	// tmp621, sv8_h
	str	x7, [sp]	// tmp621,
	ldr	x7, [x6]	//, sv8_g
	ldr	x6, [x5]	//, sv8_f
	ldr	x5, [x4]	//, sv8_e
	ldr	x4, [x3]	//, sv8_d
	ldr	x3, [x2]	//, sv8_c
	ldr	x2, [x1]	//, sv8_b
	ldr	x1, [x0]	//, sv8_a
	adrp	x0, .LC23	// tmp622,
	add	x0, x0, :lo12:.LC23	//, tmp622,
	bl	use_va_args_many_short_vector_8_bytes		//
	str	w0, [sp, 2568]	//, actual
	ldr	w2, [sp, 2568]	//, actual
	adrp	x0, .LC23	// tmp623,
	add	x1, x0, :lo12:.LC23	//, tmp623,
	adrp	x0, .LC63	// tmp624,
	add	x0, x0, :lo12:.LC63	//, tmp624,
	bl	printf		//
	ldr	w1, [sp, 2568]	// tmp625, actual
	mov	w0, 6763	// tmp626,
	cmp	w1, w0	// tmp625, tmp626
	beq	.L461		//,
// varargs-use-dll.c:439:   TEST (many_short_vector_8_bytes, 6763, sv8_a, sv8_b, sv8_c, sv8_d, sv8_e,
	ldr	w0, [sp, 2492]	// tmp628, failures
	add	w0, w0, 1	// tmp627, tmp628,
	str	w0, [sp, 2492]	// tmp627, failures
	ldr	w2, [sp, 2568]	//, actual
	mov	w1, 6763	//,
	adrp	x0, .LC64	// tmp629,
	add	x0, x0, :lo12:.LC64	//, tmp629,
	bl	printf		//
.L461:
// varargs-use-dll.c:443:   TEST (few_not_short_vector_12_bytes, 3, nsv12_a, nsv12_b);
	adrp	x0, nsv12_b	// tmp631,
	add	x0, x0, :lo12:nsv12_b	// tmp630, tmp631,
	ldr	x3, [x0]	// tmp632, nsv12_b
	ldr	w2, [x0, 8]	// tmp633, nsv12_b
	adrp	x0, nsv12_a	// tmp635,
	add	x0, x0, :lo12:nsv12_a	// tmp634, tmp635,
	ldr	x1, [x0]	// tmp636, nsv12_a
	ldr	w0, [x0, 8]	// tmp637, nsv12_a
	mov	x4, x2	//, tmp633
	mov	x2, x0	//, tmp637
	adrp	x0, .LC24	// tmp638,
	add	x0, x0, :lo12:.LC24	//, tmp638,
	bl	use_va_args_few_not_short_vector_12_bytes		//
	str	w0, [sp, 2572]	//, actual
	ldr	w2, [sp, 2572]	//, actual
	adrp	x0, .LC24	// tmp639,
	add	x1, x0, :lo12:.LC24	//, tmp639,
	adrp	x0, .LC63	// tmp640,
	add	x0, x0, :lo12:.LC63	//, tmp640,
	bl	printf		//
	ldr	w0, [sp, 2572]	// tmp641, actual
	cmp	w0, 3	// tmp641,
	beq	.L462		//,
// varargs-use-dll.c:443:   TEST (few_not_short_vector_12_bytes, 3, nsv12_a, nsv12_b);
	ldr	w0, [sp, 2492]	// tmp643, failures
	add	w0, w0, 1	// tmp642, tmp643,
	str	w0, [sp, 2492]	// tmp642, failures
	ldr	w2, [sp, 2572]	//, actual
	mov	w1, 3	//,
	adrp	x0, .LC64	// tmp644,
	add	x0, x0, :lo12:.LC64	//, tmp644,
	bl	printf		//
.L462:
// varargs-use-dll.c:450:   TEST (few_short_vector_16_bytes, 3, sv16_a, sv16_b);
	adrp	x0, sv16_b	// tmp646,
	add	x1, x0, :lo12:sv16_b	// tmp645, tmp646,
	adrp	x0, sv16_a	// tmp648,
	add	x0, x0, :lo12:sv16_a	// tmp647, tmp648,
	ldp	x3, x4, [x1]	//, sv16_b
	ldp	x1, x2, [x0]	//, sv16_a
	adrp	x0, .LC27	// tmp649,
	add	x0, x0, :lo12:.LC27	//, tmp649,
	bl	use_va_args_few_short_vector_16_bytes		//
	str	w0, [sp, 2576]	//, actual
	ldr	w2, [sp, 2576]	//, actual
	adrp	x0, .LC27	// tmp650,
	add	x1, x0, :lo12:.LC27	//, tmp650,
	adrp	x0, .LC63	// tmp651,
	add	x0, x0, :lo12:.LC63	//, tmp651,
	bl	printf		//
	ldr	w0, [sp, 2576]	// tmp652, actual
	cmp	w0, 3	// tmp652,
	beq	.L463		//,
// varargs-use-dll.c:450:   TEST (few_short_vector_16_bytes, 3, sv16_a, sv16_b);
	ldr	w0, [sp, 2492]	// tmp654, failures
	add	w0, w0, 1	// tmp653, tmp654,
	str	w0, [sp, 2492]	// tmp653, failures
	ldr	w2, [sp, 2576]	//, actual
	mov	w1, 3	//,
	adrp	x0, .LC64	// tmp655,
	add	x0, x0, :lo12:.LC64	//, tmp655,
	bl	printf		//
.L463:
// varargs-use-dll.c:457:   TEST (few_hfa_2_floats, 3, hfa2f_a, hfa2f_b);
	adrp	x0, hfa2f_b	// tmp657,
	add	x0, x0, :lo12:hfa2f_b	// tmp656, tmp657,
	ldr	s2, [x0]	// tmp658, hfa2f_b
	ldr	s3, [x0, 4]	// tmp659, hfa2f_b
	adrp	x0, hfa2f_a	// tmp661,
	add	x0, x0, :lo12:hfa2f_a	// tmp660, tmp661,
	ldr	s0, [x0]	// tmp662, hfa2f_a
	ldr	s1, [x0, 4]	// tmp663, hfa2f_a
	adrp	x0, .LC30	// tmp664,
	add	x0, x0, :lo12:.LC30	//, tmp664,
	bl	use_va_args_few_hfa_2_floats		//
	str	w0, [sp, 2580]	//, actual
	ldr	w2, [sp, 2580]	//, actual
	adrp	x0, .LC30	// tmp665,
	add	x1, x0, :lo12:.LC30	//, tmp665,
	adrp	x0, .LC63	// tmp666,
	add	x0, x0, :lo12:.LC63	//, tmp666,
	bl	printf		//
	ldr	w0, [sp, 2580]	// tmp667, actual
	cmp	w0, 3	// tmp667,
	beq	.L464		//,
// varargs-use-dll.c:457:   TEST (few_hfa_2_floats, 3, hfa2f_a, hfa2f_b);
	ldr	w0, [sp, 2492]	// tmp669, failures
	add	w0, w0, 1	// tmp668, tmp669,
	str	w0, [sp, 2492]	// tmp668, failures
	ldr	w2, [sp, 2580]	//, actual
	mov	w1, 3	//,
	adrp	x0, .LC64	// tmp670,
	add	x0, x0, :lo12:.LC64	//, tmp670,
	bl	printf		//
.L464:
// varargs-use-dll.c:458:   TEST (several_hfa_2_floats, 142, hfa2f_a, hfa2f_b, hfa2f_c, hfa2f_d, hfa2f_e,
	adrp	x0, hfa2f_d	// tmp672,
	add	x0, x0, :lo12:hfa2f_d	// tmp671, tmp672,
	ldr	s6, [x0]	// tmp673, hfa2f_d
	ldr	s7, [x0, 4]	// tmp674, hfa2f_d
	adrp	x0, hfa2f_c	// tmp676,
	add	x0, x0, :lo12:hfa2f_c	// tmp675, tmp676,
	ldr	s4, [x0]	// tmp677, hfa2f_c
	ldr	s5, [x0, 4]	// tmp678, hfa2f_c
	adrp	x0, hfa2f_b	// tmp680,
	add	x0, x0, :lo12:hfa2f_b	// tmp679, tmp680,
	ldr	s2, [x0]	// tmp681, hfa2f_b
	ldr	s3, [x0, 4]	// tmp682, hfa2f_b
	adrp	x0, hfa2f_a	// tmp684,
	add	x0, x0, :lo12:hfa2f_a	// tmp683, tmp684,
	ldr	s0, [x0]	// tmp685, hfa2f_a
	ldr	s1, [x0, 4]	// tmp686, hfa2f_a
	adrp	x0, hfa2f_i	// tmp688,
	add	x0, x0, :lo12:hfa2f_i	// tmp687, tmp688,
	ldr	x0, [x0]	// tmp689, hfa2f_i
	str	x0, [sp, 32]	// tmp689,
	adrp	x0, hfa2f_h	// tmp691,
	add	x0, x0, :lo12:hfa2f_h	// tmp690, tmp691,
	ldr	x0, [x0]	// tmp692, hfa2f_h
	str	x0, [sp, 24]	// tmp692,
	adrp	x0, hfa2f_g	// tmp694,
	add	x0, x0, :lo12:hfa2f_g	// tmp693, tmp694,
	ldr	x0, [x0]	// tmp695, hfa2f_g
	str	x0, [sp, 16]	// tmp695,
	adrp	x0, hfa2f_f	// tmp697,
	add	x0, x0, :lo12:hfa2f_f	// tmp696, tmp697,
	ldr	x0, [x0]	// tmp698, hfa2f_f
	str	x0, [sp, 8]	// tmp698,
	adrp	x0, hfa2f_e	// tmp700,
	add	x0, x0, :lo12:hfa2f_e	// tmp699, tmp700,
	ldr	x0, [x0]	// tmp701, hfa2f_e
	str	x0, [sp]	// tmp701,
	adrp	x0, .LC31	// tmp702,
	add	x0, x0, :lo12:.LC31	//, tmp702,
	bl	use_va_args_several_hfa_2_floats		//
	str	w0, [sp, 2584]	//, actual
	ldr	w2, [sp, 2584]	//, actual
	adrp	x0, .LC31	// tmp703,
	add	x1, x0, :lo12:.LC31	//, tmp703,
	adrp	x0, .LC63	// tmp704,
	add	x0, x0, :lo12:.LC63	//, tmp704,
	bl	printf		//
	ldr	w0, [sp, 2584]	// tmp705, actual
	cmp	w0, 142	// tmp705,
	beq	.L465		//,
// varargs-use-dll.c:458:   TEST (several_hfa_2_floats, 142, hfa2f_a, hfa2f_b, hfa2f_c, hfa2f_d, hfa2f_e,
	ldr	w0, [sp, 2492]	// tmp707, failures
	add	w0, w0, 1	// tmp706, tmp707,
	str	w0, [sp, 2492]	// tmp706, failures
	ldr	w2, [sp, 2584]	//, actual
	mov	w1, 142	//,
	adrp	x0, .LC64	// tmp708,
	add	x0, x0, :lo12:.LC64	//, tmp708,
	bl	printf		//
.L465:
// varargs-use-dll.c:460:   TEST (many_hfa_2_floats, 6763, hfa2f_a, hfa2f_b, hfa2f_c, hfa2f_d, hfa2f_e,
	adrp	x0, hfa2f_d	// tmp710,
	add	x0, x0, :lo12:hfa2f_d	// tmp709, tmp710,
	ldr	s6, [x0]	// tmp711, hfa2f_d
	ldr	s7, [x0, 4]	// tmp712, hfa2f_d
	adrp	x0, hfa2f_c	// tmp714,
	add	x0, x0, :lo12:hfa2f_c	// tmp713, tmp714,
	ldr	s4, [x0]	// tmp715, hfa2f_c
	ldr	s5, [x0, 4]	// tmp716, hfa2f_c
	adrp	x0, hfa2f_b	// tmp718,
	add	x0, x0, :lo12:hfa2f_b	// tmp717, tmp718,
	ldr	s2, [x0]	// tmp719, hfa2f_b
	ldr	s3, [x0, 4]	// tmp720, hfa2f_b
	adrp	x0, hfa2f_a	// tmp722,
	add	x0, x0, :lo12:hfa2f_a	// tmp721, tmp722,
	ldr	s0, [x0]	// tmp723, hfa2f_a
	ldr	s1, [x0, 4]	// tmp724, hfa2f_a
	adrp	x0, hfa2f_q	// tmp726,
	add	x0, x0, :lo12:hfa2f_q	// tmp725, tmp726,
	ldr	x0, [x0]	// tmp727, hfa2f_q
	str	x0, [sp, 96]	// tmp727,
	adrp	x0, hfa2f_p	// tmp729,
	add	x0, x0, :lo12:hfa2f_p	// tmp728, tmp729,
	ldr	x0, [x0]	// tmp730, hfa2f_p
	str	x0, [sp, 88]	// tmp730,
	adrp	x0, hfa2f_o	// tmp732,
	add	x0, x0, :lo12:hfa2f_o	// tmp731, tmp732,
	ldr	x0, [x0]	// tmp733, hfa2f_o
	str	x0, [sp, 80]	// tmp733,
	adrp	x0, hfa2f_n	// tmp735,
	add	x0, x0, :lo12:hfa2f_n	// tmp734, tmp735,
	ldr	x0, [x0]	// tmp736, hfa2f_n
	str	x0, [sp, 72]	// tmp736,
	adrp	x0, hfa2f_m	// tmp738,
	add	x0, x0, :lo12:hfa2f_m	// tmp737, tmp738,
	ldr	x0, [x0]	// tmp739, hfa2f_m
	str	x0, [sp, 64]	// tmp739,
	adrp	x0, hfa2f_l	// tmp741,
	add	x0, x0, :lo12:hfa2f_l	// tmp740, tmp741,
	ldr	x0, [x0]	// tmp742, hfa2f_l
	str	x0, [sp, 56]	// tmp742,
	adrp	x0, hfa2f_k	// tmp744,
	add	x0, x0, :lo12:hfa2f_k	// tmp743, tmp744,
	ldr	x0, [x0]	// tmp745, hfa2f_k
	str	x0, [sp, 48]	// tmp745,
	adrp	x0, hfa2f_j	// tmp747,
	add	x0, x0, :lo12:hfa2f_j	// tmp746, tmp747,
	ldr	x0, [x0]	// tmp748, hfa2f_j
	str	x0, [sp, 40]	// tmp748,
	adrp	x0, hfa2f_i	// tmp750,
	add	x0, x0, :lo12:hfa2f_i	// tmp749, tmp750,
	ldr	x0, [x0]	// tmp751, hfa2f_i
	str	x0, [sp, 32]	// tmp751,
	adrp	x0, hfa2f_h	// tmp753,
	add	x0, x0, :lo12:hfa2f_h	// tmp752, tmp753,
	ldr	x0, [x0]	// tmp754, hfa2f_h
	str	x0, [sp, 24]	// tmp754,
	adrp	x0, hfa2f_g	// tmp756,
	add	x0, x0, :lo12:hfa2f_g	// tmp755, tmp756,
	ldr	x0, [x0]	// tmp757, hfa2f_g
	str	x0, [sp, 16]	// tmp757,
	adrp	x0, hfa2f_f	// tmp759,
	add	x0, x0, :lo12:hfa2f_f	// tmp758, tmp759,
	ldr	x0, [x0]	// tmp760, hfa2f_f
	str	x0, [sp, 8]	// tmp760,
	adrp	x0, hfa2f_e	// tmp762,
	add	x0, x0, :lo12:hfa2f_e	// tmp761, tmp762,
	ldr	x0, [x0]	// tmp763, hfa2f_e
	str	x0, [sp]	// tmp763,
	adrp	x0, .LC32	// tmp764,
	add	x0, x0, :lo12:.LC32	//, tmp764,
	bl	use_va_args_many_hfa_2_floats		//
	str	w0, [sp, 2588]	//, actual
	ldr	w2, [sp, 2588]	//, actual
	adrp	x0, .LC32	// tmp765,
	add	x1, x0, :lo12:.LC32	//, tmp765,
	adrp	x0, .LC63	// tmp766,
	add	x0, x0, :lo12:.LC63	//, tmp766,
	bl	printf		//
	ldr	w1, [sp, 2588]	// tmp767, actual
	mov	w0, 6763	// tmp768,
	cmp	w1, w0	// tmp767, tmp768
	beq	.L466		//,
// varargs-use-dll.c:460:   TEST (many_hfa_2_floats, 6763, hfa2f_a, hfa2f_b, hfa2f_c, hfa2f_d, hfa2f_e,
	ldr	w0, [sp, 2492]	// tmp770, failures
	add	w0, w0, 1	// tmp769, tmp770,
	str	w0, [sp, 2492]	// tmp769, failures
	ldr	w2, [sp, 2588]	//, actual
	mov	w1, 6763	//,
	adrp	x0, .LC64	// tmp771,
	add	x0, x0, :lo12:.LC64	//, tmp771,
	bl	printf		//
.L466:
// varargs-use-dll.c:464:   TEST (few_hfa_4_floats, 3, hfa4f_a, hfa4f_b);
	adrp	x0, hfa4f_b	// tmp773,
	add	x0, x0, :lo12:hfa4f_b	// tmp772, tmp773,
	ldr	s4, [x0]	// tmp774, hfa4f_b
	ldr	s5, [x0, 4]	// tmp775, hfa4f_b
	ldr	s6, [x0, 8]	// tmp776, hfa4f_b
	ldr	s7, [x0, 12]	// tmp777, hfa4f_b
	adrp	x0, hfa4f_a	// tmp779,
	add	x0, x0, :lo12:hfa4f_a	// tmp778, tmp779,
	ldr	s0, [x0]	// tmp780, hfa4f_a
	ldr	s1, [x0, 4]	// tmp781, hfa4f_a
	ldr	s2, [x0, 8]	// tmp782, hfa4f_a
	ldr	s3, [x0, 12]	// tmp783, hfa4f_a
	adrp	x0, .LC33	// tmp784,
	add	x0, x0, :lo12:.LC33	//, tmp784,
	bl	use_va_args_few_hfa_4_floats		//
	str	w0, [sp, 2592]	//, actual
	ldr	w2, [sp, 2592]	//, actual
	adrp	x0, .LC33	// tmp785,
	add	x1, x0, :lo12:.LC33	//, tmp785,
	adrp	x0, .LC63	// tmp786,
	add	x0, x0, :lo12:.LC63	//, tmp786,
	bl	printf		//
	ldr	w0, [sp, 2592]	// tmp787, actual
	cmp	w0, 3	// tmp787,
	beq	.L467		//,
// varargs-use-dll.c:464:   TEST (few_hfa_4_floats, 3, hfa4f_a, hfa4f_b);
	ldr	w0, [sp, 2492]	// tmp789, failures
	add	w0, w0, 1	// tmp788, tmp789,
	str	w0, [sp, 2492]	// tmp788, failures
	ldr	w2, [sp, 2592]	//, actual
	mov	w1, 3	//,
	adrp	x0, .LC64	// tmp790,
	add	x0, x0, :lo12:.LC64	//, tmp790,
	bl	printf		//
.L467:
// varargs-use-dll.c:471:   TEST (few_hfa_2_doubles, 3, hfa2d_a, hfa2d_b);
	adrp	x0, hfa2d_b	// tmp792,
	add	x0, x0, :lo12:hfa2d_b	// tmp791, tmp792,
	ldr	d2, [x0]	// tmp793, hfa2d_b
	ldr	d3, [x0, 8]	// tmp794, hfa2d_b
	adrp	x0, hfa2d_a	// tmp796,
	add	x0, x0, :lo12:hfa2d_a	// tmp795, tmp796,
	ldr	d0, [x0]	// tmp797, hfa2d_a
	ldr	d1, [x0, 8]	// tmp798, hfa2d_a
	adrp	x0, .LC36	// tmp799,
	add	x0, x0, :lo12:.LC36	//, tmp799,
	bl	use_va_args_few_hfa_2_doubles		//
	str	w0, [sp, 2596]	//, actual
	ldr	w2, [sp, 2596]	//, actual
	adrp	x0, .LC36	// tmp800,
	add	x1, x0, :lo12:.LC36	//, tmp800,
	adrp	x0, .LC63	// tmp801,
	add	x0, x0, :lo12:.LC63	//, tmp801,
	bl	printf		//
	ldr	w0, [sp, 2596]	// tmp802, actual
	cmp	w0, 3	// tmp802,
	beq	.L468		//,
// varargs-use-dll.c:471:   TEST (few_hfa_2_doubles, 3, hfa2d_a, hfa2d_b);
	ldr	w0, [sp, 2492]	// tmp804, failures
	add	w0, w0, 1	// tmp803, tmp804,
	str	w0, [sp, 2492]	// tmp803, failures
	ldr	w2, [sp, 2596]	//, actual
	mov	w1, 3	//,
	adrp	x0, .LC64	// tmp805,
	add	x0, x0, :lo12:.LC64	//, tmp805,
	bl	printf		//
.L468:
// varargs-use-dll.c:478:   TEST (few_hfa_4_doubles, 3, hfa4d_a, hfa4d_b);
	adrp	x0, hfa4d_b	// tmp807,
	add	x0, x0, :lo12:hfa4d_b	// tmp806, tmp807,
	ldr	d4, [x0]	// tmp808, hfa4d_b
	ldr	d5, [x0, 8]	// tmp809, hfa4d_b
	ldr	d6, [x0, 16]	// tmp810, hfa4d_b
	ldr	d7, [x0, 24]	// tmp811, hfa4d_b
	adrp	x0, hfa4d_a	// tmp813,
	add	x0, x0, :lo12:hfa4d_a	// tmp812, tmp813,
	ldr	d0, [x0]	// tmp814, hfa4d_a
	ldr	d1, [x0, 8]	// tmp815, hfa4d_a
	ldr	d2, [x0, 16]	// tmp816, hfa4d_a
	ldr	d3, [x0, 24]	// tmp817, hfa4d_a
	adrp	x0, .LC39	// tmp818,
	add	x0, x0, :lo12:.LC39	//, tmp818,
	bl	use_va_args_few_hfa_4_doubles		//
	str	w0, [sp, 2600]	//, actual
	ldr	w2, [sp, 2600]	//, actual
	adrp	x0, .LC39	// tmp819,
	add	x1, x0, :lo12:.LC39	//, tmp819,
	adrp	x0, .LC63	// tmp820,
	add	x0, x0, :lo12:.LC63	//, tmp820,
	bl	printf		//
	ldr	w0, [sp, 2600]	// tmp821, actual
	cmp	w0, 3	// tmp821,
	beq	.L469		//,
// varargs-use-dll.c:478:   TEST (few_hfa_4_doubles, 3, hfa4d_a, hfa4d_b);
	ldr	w0, [sp, 2492]	// tmp823, failures
	add	w0, w0, 1	// tmp822, tmp823,
	str	w0, [sp, 2492]	// tmp822, failures
	ldr	w2, [sp, 2600]	//, actual
	mov	w1, 3	//,
	adrp	x0, .LC64	// tmp824,
	add	x0, x0, :lo12:.LC64	//, tmp824,
	bl	printf		//
.L469:
// varargs-use-dll.c:485:   TEST (few_hva_2_short_vector_8_bytes, 3, hva2sv8_a, hva2sv8_b);
	adrp	x0, hva2sv8_b	// tmp826,
	add	x1, x0, :lo12:hva2sv8_b	// tmp825, tmp826,
	adrp	x0, hva2sv8_a	// tmp828,
	add	x0, x0, :lo12:hva2sv8_a	// tmp827, tmp828,
	ldp	x3, x4, [x1]	//, hva2sv8_b
	ldp	x1, x2, [x0]	//, hva2sv8_a
	adrp	x0, .LC42	// tmp829,
	add	x0, x0, :lo12:.LC42	//, tmp829,
	bl	use_va_args_few_hva_2_short_vector_8_bytes		//
	str	w0, [sp, 2604]	//, actual
	ldr	w2, [sp, 2604]	//, actual
	adrp	x0, .LC42	// tmp830,
	add	x1, x0, :lo12:.LC42	//, tmp830,
	adrp	x0, .LC63	// tmp831,
	add	x0, x0, :lo12:.LC63	//, tmp831,
	bl	printf		//
	ldr	w0, [sp, 2604]	// tmp832, actual
	cmp	w0, 3	// tmp832,
	beq	.L470		//,
// varargs-use-dll.c:485:   TEST (few_hva_2_short_vector_8_bytes, 3, hva2sv8_a, hva2sv8_b);
	ldr	w0, [sp, 2492]	// tmp834, failures
	add	w0, w0, 1	// tmp833, tmp834,
	str	w0, [sp, 2492]	// tmp833, failures
	ldr	w2, [sp, 2604]	//, actual
	mov	w1, 3	//,
	adrp	x0, .LC64	// tmp835,
	add	x0, x0, :lo12:.LC64	//, tmp835,
	bl	printf		//
.L470:
// varargs-use-dll.c:494:   TEST (few_hva_4_short_vector_8_bytes, 3, hva4sv8_a, hva4sv8_b);
	adrp	x0, hva4sv8_a	// tmp837,
	add	x1, x0, :lo12:hva4sv8_a	// tmp836, tmp837,
	add	x0, sp, 2144	// tmp838,,
	ldp	q0, q1, [x1]	// tmp840, tmp841, hva4sv8_a
	stp	q0, q1, [x0]	// tmp840, tmp841,
	adrp	x0, hva4sv8_b	// tmp843,
	add	x1, x0, :lo12:hva4sv8_b	// tmp842, tmp843,
	add	x0, sp, 2176	// tmp844,,
	ldp	q0, q1, [x1]	// tmp846, tmp847, hva4sv8_b
	stp	q0, q1, [x0]	// tmp846, tmp847,
	add	x1, sp, 2176	// tmp848,,
	add	x0, sp, 2144	// tmp849,,
	mov	x2, x1	//, tmp848
	mov	x1, x0	//, tmp849
	adrp	x0, .LC45	// tmp850,
	add	x0, x0, :lo12:.LC45	//, tmp850,
	bl	use_va_args_few_hva_4_short_vector_8_bytes		//
	str	w0, [sp, 2608]	//, actual
	ldr	w2, [sp, 2608]	//, actual
	adrp	x0, .LC45	// tmp851,
	add	x1, x0, :lo12:.LC45	//, tmp851,
	adrp	x0, .LC63	// tmp852,
	add	x0, x0, :lo12:.LC63	//, tmp852,
	bl	printf		//
	ldr	w0, [sp, 2608]	// tmp853, actual
	cmp	w0, 3	// tmp853,
	beq	.L471		//,
// varargs-use-dll.c:494:   TEST (few_hva_4_short_vector_8_bytes, 3, hva4sv8_a, hva4sv8_b);
	ldr	w0, [sp, 2492]	// tmp855, failures
	add	w0, w0, 1	// tmp854, tmp855,
	str	w0, [sp, 2492]	// tmp854, failures
	ldr	w2, [sp, 2608]	//, actual
	mov	w1, 3	//,
	adrp	x0, .LC64	// tmp856,
	add	x0, x0, :lo12:.LC64	//, tmp856,
	bl	printf		//
.L471:
// varargs-use-dll.c:495:   TEST (several_hva_4_short_vector_8_bytes, 142, hva4sv8_a, hva4sv8_b,
	adrp	x0, hva4sv8_a	// tmp858,
	add	x1, x0, :lo12:hva4sv8_a	// tmp857, tmp858,
	add	x0, sp, 2144	// tmp859,,
	ldp	q0, q1, [x1]	// tmp861, tmp862, hva4sv8_a
	stp	q0, q1, [x0]	// tmp861, tmp862,
	adrp	x0, hva4sv8_b	// tmp864,
	add	x1, x0, :lo12:hva4sv8_b	// tmp863, tmp864,
	add	x0, sp, 2176	// tmp865,,
	ldp	q0, q1, [x1]	// tmp867, tmp868, hva4sv8_b
	stp	q0, q1, [x0]	// tmp867, tmp868,
	adrp	x0, hva4sv8_c	// tmp870,
	add	x1, x0, :lo12:hva4sv8_c	// tmp869, tmp870,
	add	x0, sp, 2064	// tmp871,,
	ldp	q0, q1, [x1]	// tmp873, tmp874, hva4sv8_c
	stp	q0, q1, [x0]	// tmp873, tmp874,
	adrp	x0, hva4sv8_d	// tmp876,
	add	x1, x0, :lo12:hva4sv8_d	// tmp875, tmp876,
	add	x0, sp, 2096	// tmp877,,
	ldp	q0, q1, [x1]	// tmp879, tmp880, hva4sv8_d
	stp	q0, q1, [x0]	// tmp879, tmp880,
	adrp	x0, hva4sv8_e	// tmp882,
	add	x1, x0, :lo12:hva4sv8_e	// tmp881, tmp882,
	add	x0, sp, 1984	// tmp883,,
	ldp	q0, q1, [x1]	// tmp885, tmp886, hva4sv8_e
	stp	q0, q1, [x0]	// tmp885, tmp886,
	adrp	x0, hva4sv8_f	// tmp888,
	add	x1, x0, :lo12:hva4sv8_f	// tmp887, tmp888,
	add	x0, sp, 2016	// tmp889,,
	ldp	q0, q1, [x1]	// tmp891, tmp892, hva4sv8_f
	stp	q0, q1, [x0]	// tmp891, tmp892,
	adrp	x0, hva4sv8_g	// tmp894,
	add	x1, x0, :lo12:hva4sv8_g	// tmp893, tmp894,
	add	x0, sp, 1904	// tmp895,,
	ldp	q0, q1, [x1]	// tmp897, tmp898, hva4sv8_g
	stp	q0, q1, [x0]	// tmp897, tmp898,
	adrp	x0, hva4sv8_h	// tmp900,
	add	x1, x0, :lo12:hva4sv8_h	// tmp899, tmp900,
	add	x0, sp, 1936	// tmp901,,
	ldp	q0, q1, [x1]	// tmp903, tmp904, hva4sv8_h
	stp	q0, q1, [x0]	// tmp903, tmp904,
	adrp	x0, hva4sv8_i	// tmp906,
	add	x1, x0, :lo12:hva4sv8_i	// tmp905, tmp906,
	add	x0, sp, 1824	// tmp907,,
	ldp	q0, q1, [x1]	// tmp909, tmp910, hva4sv8_i
	stp	q0, q1, [x0]	// tmp909, tmp910,
	add	x7, sp, 1904	// tmp911,,
	add	x6, sp, 2016	// tmp912,,
	add	x5, sp, 1984	// tmp913,,
	add	x4, sp, 2096	// tmp914,,
	add	x3, sp, 2064	// tmp915,,
	add	x2, sp, 2176	// tmp916,,
	add	x1, sp, 2144	// tmp917,,
	add	x0, sp, 1824	// tmp918,,
	str	x0, [sp, 8]	// tmp918,
	add	x0, sp, 1936	// tmp919,,
	str	x0, [sp]	// tmp919,
	adrp	x0, .LC46	// tmp920,
	add	x0, x0, :lo12:.LC46	//, tmp920,
	bl	use_va_args_several_hva_4_short_vector_8_bytes		//
	str	w0, [sp, 2612]	//, actual
	ldr	w2, [sp, 2612]	//, actual
	adrp	x0, .LC46	// tmp921,
	add	x1, x0, :lo12:.LC46	//, tmp921,
	adrp	x0, .LC63	// tmp922,
	add	x0, x0, :lo12:.LC63	//, tmp922,
	bl	printf		//
	ldr	w0, [sp, 2612]	// tmp923, actual
	cmp	w0, 142	// tmp923,
	beq	.L472		//,
// varargs-use-dll.c:495:   TEST (several_hva_4_short_vector_8_bytes, 142, hva4sv8_a, hva4sv8_b,
	ldr	w0, [sp, 2492]	// tmp925, failures
	add	w0, w0, 1	// tmp924, tmp925,
	str	w0, [sp, 2492]	// tmp924, failures
	ldr	w2, [sp, 2612]	//, actual
	mov	w1, 142	//,
	adrp	x0, .LC64	// tmp926,
	add	x0, x0, :lo12:.LC64	//, tmp926,
	bl	printf		//
.L472:
// varargs-use-dll.c:498:   TEST (many_hva_4_short_vector_8_bytes, 6763, hva4sv8_a, hva4sv8_b, hva4sv8_c,
	adrp	x0, hva4sv8_a	// tmp928,
	add	x1, x0, :lo12:hva4sv8_a	// tmp927, tmp928,
	add	x0, sp, 2144	// tmp929,,
	ldp	q0, q1, [x1]	// tmp931, tmp932, hva4sv8_a
	stp	q0, q1, [x0]	// tmp931, tmp932,
	adrp	x0, hva4sv8_b	// tmp934,
	add	x1, x0, :lo12:hva4sv8_b	// tmp933, tmp934,
	add	x0, sp, 2176	// tmp935,,
	ldp	q0, q1, [x1]	// tmp937, tmp938, hva4sv8_b
	stp	q0, q1, [x0]	// tmp937, tmp938,
	adrp	x0, hva4sv8_c	// tmp940,
	add	x1, x0, :lo12:hva4sv8_c	// tmp939, tmp940,
	add	x0, sp, 2064	// tmp941,,
	ldp	q0, q1, [x1]	// tmp943, tmp944, hva4sv8_c
	stp	q0, q1, [x0]	// tmp943, tmp944,
	adrp	x0, hva4sv8_d	// tmp946,
	add	x1, x0, :lo12:hva4sv8_d	// tmp945, tmp946,
	add	x0, sp, 2096	// tmp947,,
	ldp	q0, q1, [x1]	// tmp949, tmp950, hva4sv8_d
	stp	q0, q1, [x0]	// tmp949, tmp950,
	adrp	x0, hva4sv8_e	// tmp952,
	add	x1, x0, :lo12:hva4sv8_e	// tmp951, tmp952,
	add	x0, sp, 1984	// tmp953,,
	ldp	q0, q1, [x1]	// tmp955, tmp956, hva4sv8_e
	stp	q0, q1, [x0]	// tmp955, tmp956,
	adrp	x0, hva4sv8_f	// tmp958,
	add	x1, x0, :lo12:hva4sv8_f	// tmp957, tmp958,
	add	x0, sp, 2016	// tmp959,,
	ldp	q0, q1, [x1]	// tmp961, tmp962, hva4sv8_f
	stp	q0, q1, [x0]	// tmp961, tmp962,
	adrp	x0, hva4sv8_g	// tmp964,
	add	x1, x0, :lo12:hva4sv8_g	// tmp963, tmp964,
	add	x0, sp, 1904	// tmp965,,
	ldp	q0, q1, [x1]	// tmp967, tmp968, hva4sv8_g
	stp	q0, q1, [x0]	// tmp967, tmp968,
	adrp	x0, hva4sv8_h	// tmp970,
	add	x1, x0, :lo12:hva4sv8_h	// tmp969, tmp970,
	add	x0, sp, 1936	// tmp971,,
	ldp	q0, q1, [x1]	// tmp973, tmp974, hva4sv8_h
	stp	q0, q1, [x0]	// tmp973, tmp974,
	adrp	x0, hva4sv8_i	// tmp976,
	add	x1, x0, :lo12:hva4sv8_i	// tmp975, tmp976,
	add	x0, sp, 1824	// tmp977,,
	ldp	q0, q1, [x1]	// tmp979, tmp980, hva4sv8_i
	stp	q0, q1, [x0]	// tmp979, tmp980,
	adrp	x0, hva4sv8_j	// tmp982,
	add	x1, x0, :lo12:hva4sv8_j	// tmp981, tmp982,
	add	x0, sp, 1856	// tmp983,,
	ldp	q0, q1, [x1]	// tmp985, tmp986, hva4sv8_j
	stp	q0, q1, [x0]	// tmp985, tmp986,
	adrp	x0, hva4sv8_k	// tmp988,
	add	x1, x0, :lo12:hva4sv8_k	// tmp987, tmp988,
	add	x0, sp, 1744	// tmp989,,
	ldp	q0, q1, [x1]	// tmp991, tmp992, hva4sv8_k
	stp	q0, q1, [x0]	// tmp991, tmp992,
	adrp	x0, hva4sv8_l	// tmp994,
	add	x1, x0, :lo12:hva4sv8_l	// tmp993, tmp994,
	add	x0, sp, 1776	// tmp995,,
	ldp	q0, q1, [x1]	// tmp997, tmp998, hva4sv8_l
	stp	q0, q1, [x0]	// tmp997, tmp998,
	adrp	x0, hva4sv8_m	// tmp1000,
	add	x1, x0, :lo12:hva4sv8_m	// tmp999, tmp1000,
	add	x0, sp, 2224	// tmp1001,,
	ldp	q0, q1, [x1]	// tmp1003, tmp1004, hva4sv8_m
	stp	q0, q1, [x0]	// tmp1003, tmp1004,
	adrp	x0, hva4sv8_n	// tmp1006,
	add	x1, x0, :lo12:hva4sv8_n	// tmp1005, tmp1006,
	add	x0, sp, 2256	// tmp1007,,
	ldp	q0, q1, [x1]	// tmp1009, tmp1010, hva4sv8_n
	stp	q0, q1, [x0]	// tmp1009, tmp1010,
	adrp	x0, hva4sv8_o	// tmp1012,
	add	x1, x0, :lo12:hva4sv8_o	// tmp1011, tmp1012,
	add	x0, sp, 2304	// tmp1013,,
	ldp	q0, q1, [x1]	// tmp1015, tmp1016, hva4sv8_o
	stp	q0, q1, [x0]	// tmp1015, tmp1016,
	adrp	x0, hva4sv8_p	// tmp1018,
	add	x1, x0, :lo12:hva4sv8_p	// tmp1017, tmp1018,
	add	x0, sp, 2336	// tmp1019,,
	ldp	q0, q1, [x1]	// tmp1021, tmp1022, hva4sv8_p
	stp	q0, q1, [x0]	// tmp1021, tmp1022,
	adrp	x0, hva4sv8_q	// tmp1024,
	add	x1, x0, :lo12:hva4sv8_q	// tmp1023, tmp1024,
	add	x0, sp, 2384	// tmp1025,,
	ldp	q0, q1, [x1]	// tmp1027, tmp1028, hva4sv8_q
	stp	q0, q1, [x0]	// tmp1027, tmp1028,
	add	x7, sp, 1904	// tmp1029,,
	add	x6, sp, 2016	// tmp1030,,
	add	x5, sp, 1984	// tmp1031,,
	add	x4, sp, 2096	// tmp1032,,
	add	x3, sp, 2064	// tmp1033,,
	add	x2, sp, 2176	// tmp1034,,
	add	x1, sp, 2144	// tmp1035,,
	add	x0, sp, 2384	// tmp1036,,
	str	x0, [sp, 72]	// tmp1036,
	add	x0, sp, 2336	// tmp1037,,
	str	x0, [sp, 64]	// tmp1037,
	add	x0, sp, 2304	// tmp1038,,
	str	x0, [sp, 56]	// tmp1038,
	add	x0, sp, 2256	// tmp1039,,
	str	x0, [sp, 48]	// tmp1039,
	add	x0, sp, 2224	// tmp1040,,
	str	x0, [sp, 40]	// tmp1040,
	add	x0, sp, 1776	// tmp1041,,
	str	x0, [sp, 32]	// tmp1041,
	add	x0, sp, 1744	// tmp1042,,
	str	x0, [sp, 24]	// tmp1042,
	add	x0, sp, 1856	// tmp1043,,
	str	x0, [sp, 16]	// tmp1043,
	add	x0, sp, 1824	// tmp1044,,
	str	x0, [sp, 8]	// tmp1044,
	add	x0, sp, 1936	// tmp1045,,
	str	x0, [sp]	// tmp1045,
	adrp	x0, .LC47	// tmp1046,
	add	x0, x0, :lo12:.LC47	//, tmp1046,
	bl	use_va_args_many_hva_4_short_vector_8_bytes		//
	str	w0, [sp, 2616]	//, actual
	ldr	w2, [sp, 2616]	//, actual
	adrp	x0, .LC47	// tmp1047,
	add	x1, x0, :lo12:.LC47	//, tmp1047,
	adrp	x0, .LC63	// tmp1048,
	add	x0, x0, :lo12:.LC63	//, tmp1048,
	bl	printf		//
	ldr	w1, [sp, 2616]	// tmp1049, actual
	mov	w0, 6763	// tmp1050,
	cmp	w1, w0	// tmp1049, tmp1050
	beq	.L473		//,
// varargs-use-dll.c:498:   TEST (many_hva_4_short_vector_8_bytes, 6763, hva4sv8_a, hva4sv8_b, hva4sv8_c,
	ldr	w0, [sp, 2492]	// tmp1052, failures
	add	w0, w0, 1	// tmp1051, tmp1052,
	str	w0, [sp, 2492]	// tmp1051, failures
	ldr	w2, [sp, 2616]	//, actual
	mov	w1, 6763	//,
	adrp	x0, .LC64	// tmp1053,
	add	x0, x0, :lo12:.LC64	//, tmp1053,
	bl	printf		//
.L473:
// varargs-use-dll.c:503:   TEST (few_hva_2_short_vector_16_bytes, 3, hva2sv16_a, hva2sv16_b);
	adrp	x0, hva2sv16_a	// tmp1055,
	add	x1, x0, :lo12:hva2sv16_a	// tmp1054, tmp1055,
	add	x0, sp, 2144	// tmp1056,,
	ldp	q0, q1, [x1]	// tmp1058, tmp1059, hva2sv16_a
	stp	q0, q1, [x0]	// tmp1058, tmp1059,
	adrp	x0, hva2sv16_b	// tmp1061,
	add	x1, x0, :lo12:hva2sv16_b	// tmp1060, tmp1061,
	add	x0, sp, 2176	// tmp1062,,
	ldp	q0, q1, [x1]	// tmp1064, tmp1065, hva2sv16_b
	stp	q0, q1, [x0]	// tmp1064, tmp1065,
	add	x1, sp, 2176	// tmp1066,,
	add	x0, sp, 2144	// tmp1067,,
	mov	x2, x1	//, tmp1066
	mov	x1, x0	//, tmp1067
	adrp	x0, .LC48	// tmp1068,
	add	x0, x0, :lo12:.LC48	//, tmp1068,
	bl	use_va_args_few_hva_2_short_vector_16_bytes		//
	str	w0, [sp, 2620]	//, actual
	ldr	w2, [sp, 2620]	//, actual
	adrp	x0, .LC48	// tmp1069,
	add	x1, x0, :lo12:.LC48	//, tmp1069,
	adrp	x0, .LC63	// tmp1070,
	add	x0, x0, :lo12:.LC63	//, tmp1070,
	bl	printf		//
	ldr	w0, [sp, 2620]	// tmp1071, actual
	cmp	w0, 3	// tmp1071,
	beq	.L474		//,
// varargs-use-dll.c:503:   TEST (few_hva_2_short_vector_16_bytes, 3, hva2sv16_a, hva2sv16_b);
	ldr	w0, [sp, 2492]	// tmp1073, failures
	add	w0, w0, 1	// tmp1072, tmp1073,
	str	w0, [sp, 2492]	// tmp1072, failures
	ldr	w2, [sp, 2620]	//, actual
	mov	w1, 3	//,
	adrp	x0, .LC64	// tmp1074,
	add	x0, x0, :lo12:.LC64	//, tmp1074,
	bl	printf		//
.L474:
// varargs-use-dll.c:504:   TEST (several_hva_2_short_vector_16_bytes, 142, hva2sv16_a, hva2sv16_b,
	adrp	x0, hva2sv16_a	// tmp1076,
	add	x1, x0, :lo12:hva2sv16_a	// tmp1075, tmp1076,
	add	x0, sp, 2144	// tmp1077,,
	ldp	q0, q1, [x1]	// tmp1079, tmp1080, hva2sv16_a
	stp	q0, q1, [x0]	// tmp1079, tmp1080,
	adrp	x0, hva2sv16_b	// tmp1082,
	add	x1, x0, :lo12:hva2sv16_b	// tmp1081, tmp1082,
	add	x0, sp, 2176	// tmp1083,,
	ldp	q0, q1, [x1]	// tmp1085, tmp1086, hva2sv16_b
	stp	q0, q1, [x0]	// tmp1085, tmp1086,
	adrp	x0, hva2sv16_c	// tmp1088,
	add	x1, x0, :lo12:hva2sv16_c	// tmp1087, tmp1088,
	add	x0, sp, 2064	// tmp1089,,
	ldp	q0, q1, [x1]	// tmp1091, tmp1092, hva2sv16_c
	stp	q0, q1, [x0]	// tmp1091, tmp1092,
	adrp	x0, hva2sv16_d	// tmp1094,
	add	x1, x0, :lo12:hva2sv16_d	// tmp1093, tmp1094,
	add	x0, sp, 2096	// tmp1095,,
	ldp	q0, q1, [x1]	// tmp1097, tmp1098, hva2sv16_d
	stp	q0, q1, [x0]	// tmp1097, tmp1098,
	adrp	x0, hva2sv16_e	// tmp1100,
	add	x1, x0, :lo12:hva2sv16_e	// tmp1099, tmp1100,
	add	x0, sp, 1984	// tmp1101,,
	ldp	q0, q1, [x1]	// tmp1103, tmp1104, hva2sv16_e
	stp	q0, q1, [x0]	// tmp1103, tmp1104,
	adrp	x0, hva2sv16_f	// tmp1106,
	add	x1, x0, :lo12:hva2sv16_f	// tmp1105, tmp1106,
	add	x0, sp, 2016	// tmp1107,,
	ldp	q0, q1, [x1]	// tmp1109, tmp1110, hva2sv16_f
	stp	q0, q1, [x0]	// tmp1109, tmp1110,
	adrp	x0, hva2sv16_g	// tmp1112,
	add	x1, x0, :lo12:hva2sv16_g	// tmp1111, tmp1112,
	add	x0, sp, 1904	// tmp1113,,
	ldp	q0, q1, [x1]	// tmp1115, tmp1116, hva2sv16_g
	stp	q0, q1, [x0]	// tmp1115, tmp1116,
	adrp	x0, hva2sv16_h	// tmp1118,
	add	x1, x0, :lo12:hva2sv16_h	// tmp1117, tmp1118,
	add	x0, sp, 1936	// tmp1119,,
	ldp	q0, q1, [x1]	// tmp1121, tmp1122, hva2sv16_h
	stp	q0, q1, [x0]	// tmp1121, tmp1122,
	adrp	x0, hva2sv16_i	// tmp1124,
	add	x1, x0, :lo12:hva2sv16_i	// tmp1123, tmp1124,
	add	x0, sp, 1824	// tmp1125,,
	ldp	q0, q1, [x1]	// tmp1127, tmp1128, hva2sv16_i
	stp	q0, q1, [x0]	// tmp1127, tmp1128,
	add	x7, sp, 1904	// tmp1129,,
	add	x6, sp, 2016	// tmp1130,,
	add	x5, sp, 1984	// tmp1131,,
	add	x4, sp, 2096	// tmp1132,,
	add	x3, sp, 2064	// tmp1133,,
	add	x2, sp, 2176	// tmp1134,,
	add	x1, sp, 2144	// tmp1135,,
	add	x0, sp, 1824	// tmp1136,,
	str	x0, [sp, 8]	// tmp1136,
	add	x0, sp, 1936	// tmp1137,,
	str	x0, [sp]	// tmp1137,
	adrp	x0, .LC49	// tmp1138,
	add	x0, x0, :lo12:.LC49	//, tmp1138,
	bl	use_va_args_several_hva_2_short_vector_16_bytes		//
	str	w0, [sp, 2624]	//, actual
	ldr	w2, [sp, 2624]	//, actual
	adrp	x0, .LC49	// tmp1139,
	add	x1, x0, :lo12:.LC49	//, tmp1139,
	adrp	x0, .LC63	// tmp1140,
	add	x0, x0, :lo12:.LC63	//, tmp1140,
	bl	printf		//
	ldr	w0, [sp, 2624]	// tmp1141, actual
	cmp	w0, 142	// tmp1141,
	beq	.L475		//,
// varargs-use-dll.c:504:   TEST (several_hva_2_short_vector_16_bytes, 142, hva2sv16_a, hva2sv16_b,
	ldr	w0, [sp, 2492]	// tmp1143, failures
	add	w0, w0, 1	// tmp1142, tmp1143,
	str	w0, [sp, 2492]	// tmp1142, failures
	ldr	w2, [sp, 2624]	//, actual
	mov	w1, 142	//,
	adrp	x0, .LC64	// tmp1144,
	add	x0, x0, :lo12:.LC64	//, tmp1144,
	bl	printf		//
.L475:
// varargs-use-dll.c:507:   TEST (many_hva_2_short_vector_16_bytes, 6763, hva2sv16_a, hva2sv16_b,
	adrp	x0, hva2sv16_a	// tmp1146,
	add	x1, x0, :lo12:hva2sv16_a	// tmp1145, tmp1146,
	add	x0, sp, 2144	// tmp1147,,
	ldp	q0, q1, [x1]	// tmp1149, tmp1150, hva2sv16_a
	stp	q0, q1, [x0]	// tmp1149, tmp1150,
	adrp	x0, hva2sv16_b	// tmp1152,
	add	x1, x0, :lo12:hva2sv16_b	// tmp1151, tmp1152,
	add	x0, sp, 2176	// tmp1153,,
	ldp	q0, q1, [x1]	// tmp1155, tmp1156, hva2sv16_b
	stp	q0, q1, [x0]	// tmp1155, tmp1156,
	adrp	x0, hva2sv16_c	// tmp1158,
	add	x1, x0, :lo12:hva2sv16_c	// tmp1157, tmp1158,
	add	x0, sp, 2064	// tmp1159,,
	ldp	q0, q1, [x1]	// tmp1161, tmp1162, hva2sv16_c
	stp	q0, q1, [x0]	// tmp1161, tmp1162,
	adrp	x0, hva2sv16_d	// tmp1164,
	add	x1, x0, :lo12:hva2sv16_d	// tmp1163, tmp1164,
	add	x0, sp, 2096	// tmp1165,,
	ldp	q0, q1, [x1]	// tmp1167, tmp1168, hva2sv16_d
	stp	q0, q1, [x0]	// tmp1167, tmp1168,
	adrp	x0, hva2sv16_e	// tmp1170,
	add	x1, x0, :lo12:hva2sv16_e	// tmp1169, tmp1170,
	add	x0, sp, 1984	// tmp1171,,
	ldp	q0, q1, [x1]	// tmp1173, tmp1174, hva2sv16_e
	stp	q0, q1, [x0]	// tmp1173, tmp1174,
	adrp	x0, hva2sv16_f	// tmp1176,
	add	x1, x0, :lo12:hva2sv16_f	// tmp1175, tmp1176,
	add	x0, sp, 2016	// tmp1177,,
	ldp	q0, q1, [x1]	// tmp1179, tmp1180, hva2sv16_f
	stp	q0, q1, [x0]	// tmp1179, tmp1180,
	adrp	x0, hva2sv16_g	// tmp1182,
	add	x1, x0, :lo12:hva2sv16_g	// tmp1181, tmp1182,
	add	x0, sp, 1904	// tmp1183,,
	ldp	q0, q1, [x1]	// tmp1185, tmp1186, hva2sv16_g
	stp	q0, q1, [x0]	// tmp1185, tmp1186,
	adrp	x0, hva2sv16_h	// tmp1188,
	add	x1, x0, :lo12:hva2sv16_h	// tmp1187, tmp1188,
	add	x0, sp, 1936	// tmp1189,,
	ldp	q0, q1, [x1]	// tmp1191, tmp1192, hva2sv16_h
	stp	q0, q1, [x0]	// tmp1191, tmp1192,
	adrp	x0, hva2sv16_i	// tmp1194,
	add	x1, x0, :lo12:hva2sv16_i	// tmp1193, tmp1194,
	add	x0, sp, 1824	// tmp1195,,
	ldp	q0, q1, [x1]	// tmp1197, tmp1198, hva2sv16_i
	stp	q0, q1, [x0]	// tmp1197, tmp1198,
	adrp	x0, hva2sv16_j	// tmp1200,
	add	x1, x0, :lo12:hva2sv16_j	// tmp1199, tmp1200,
	add	x0, sp, 1856	// tmp1201,,
	ldp	q0, q1, [x1]	// tmp1203, tmp1204, hva2sv16_j
	stp	q0, q1, [x0]	// tmp1203, tmp1204,
	adrp	x0, hva2sv16_k	// tmp1206,
	add	x1, x0, :lo12:hva2sv16_k	// tmp1205, tmp1206,
	add	x0, sp, 1744	// tmp1207,,
	ldp	q0, q1, [x1]	// tmp1209, tmp1210, hva2sv16_k
	stp	q0, q1, [x0]	// tmp1209, tmp1210,
	adrp	x0, hva2sv16_l	// tmp1212,
	add	x1, x0, :lo12:hva2sv16_l	// tmp1211, tmp1212,
	add	x0, sp, 1776	// tmp1213,,
	ldp	q0, q1, [x1]	// tmp1215, tmp1216, hva2sv16_l
	stp	q0, q1, [x0]	// tmp1215, tmp1216,
	adrp	x0, hva2sv16_m	// tmp1218,
	add	x1, x0, :lo12:hva2sv16_m	// tmp1217, tmp1218,
	add	x0, sp, 2224	// tmp1219,,
	ldp	q0, q1, [x1]	// tmp1221, tmp1222, hva2sv16_m
	stp	q0, q1, [x0]	// tmp1221, tmp1222,
	adrp	x0, hva2sv16_n	// tmp1224,
	add	x1, x0, :lo12:hva2sv16_n	// tmp1223, tmp1224,
	add	x0, sp, 2256	// tmp1225,,
	ldp	q0, q1, [x1]	// tmp1227, tmp1228, hva2sv16_n
	stp	q0, q1, [x0]	// tmp1227, tmp1228,
	adrp	x0, hva2sv16_o	// tmp1230,
	add	x1, x0, :lo12:hva2sv16_o	// tmp1229, tmp1230,
	add	x0, sp, 2304	// tmp1231,,
	ldp	q0, q1, [x1]	// tmp1233, tmp1234, hva2sv16_o
	stp	q0, q1, [x0]	// tmp1233, tmp1234,
	adrp	x0, hva2sv16_p	// tmp1236,
	add	x1, x0, :lo12:hva2sv16_p	// tmp1235, tmp1236,
	add	x0, sp, 2336	// tmp1237,,
	ldp	q0, q1, [x1]	// tmp1239, tmp1240, hva2sv16_p
	stp	q0, q1, [x0]	// tmp1239, tmp1240,
	adrp	x0, hva2sv16_q	// tmp1242,
	add	x1, x0, :lo12:hva2sv16_q	// tmp1241, tmp1242,
	add	x0, sp, 2384	// tmp1243,,
	ldp	q0, q1, [x1]	// tmp1245, tmp1246, hva2sv16_q
	stp	q0, q1, [x0]	// tmp1245, tmp1246,
	add	x7, sp, 1904	// tmp1247,,
	add	x6, sp, 2016	// tmp1248,,
	add	x5, sp, 1984	// tmp1249,,
	add	x4, sp, 2096	// tmp1250,,
	add	x3, sp, 2064	// tmp1251,,
	add	x2, sp, 2176	// tmp1252,,
	add	x1, sp, 2144	// tmp1253,,
	add	x0, sp, 2384	// tmp1254,,
	str	x0, [sp, 72]	// tmp1254,
	add	x0, sp, 2336	// tmp1255,,
	str	x0, [sp, 64]	// tmp1255,
	add	x0, sp, 2304	// tmp1256,,
	str	x0, [sp, 56]	// tmp1256,
	add	x0, sp, 2256	// tmp1257,,
	str	x0, [sp, 48]	// tmp1257,
	add	x0, sp, 2224	// tmp1258,,
	str	x0, [sp, 40]	// tmp1258,
	add	x0, sp, 1776	// tmp1259,,
	str	x0, [sp, 32]	// tmp1259,
	add	x0, sp, 1744	// tmp1260,,
	str	x0, [sp, 24]	// tmp1260,
	add	x0, sp, 1856	// tmp1261,,
	str	x0, [sp, 16]	// tmp1261,
	add	x0, sp, 1824	// tmp1262,,
	str	x0, [sp, 8]	// tmp1262,
	add	x0, sp, 1936	// tmp1263,,
	str	x0, [sp]	// tmp1263,
	adrp	x0, .LC50	// tmp1264,
	add	x0, x0, :lo12:.LC50	//, tmp1264,
	bl	use_va_args_many_hva_2_short_vector_16_bytes		//
	str	w0, [sp, 2628]	//, actual
	ldr	w2, [sp, 2628]	//, actual
	adrp	x0, .LC50	// tmp1265,
	add	x1, x0, :lo12:.LC50	//, tmp1265,
	adrp	x0, .LC63	// tmp1266,
	add	x0, x0, :lo12:.LC63	//, tmp1266,
	bl	printf		//
	ldr	w1, [sp, 2628]	// tmp1267, actual
	mov	w0, 6763	// tmp1268,
	cmp	w1, w0	// tmp1267, tmp1268
	beq	.L476		//,
// varargs-use-dll.c:507:   TEST (many_hva_2_short_vector_16_bytes, 6763, hva2sv16_a, hva2sv16_b,
	ldr	w0, [sp, 2492]	// tmp1270, failures
	add	w0, w0, 1	// tmp1269, tmp1270,
	str	w0, [sp, 2492]	// tmp1269, failures
	ldr	w2, [sp, 2628]	//, actual
	mov	w1, 6763	//,
	adrp	x0, .LC64	// tmp1271,
	add	x0, x0, :lo12:.LC64	//, tmp1271,
	bl	printf		//
.L476:
// varargs-use-dll.c:512:   TEST (few_hva_4_short_vector_16_bytes, 3, hva4sv16_a, hva4sv16_b);
	adrp	x0, hva4sv16_a	// tmp1273,
	add	x1, x0, :lo12:hva4sv16_a	// tmp1272, tmp1273,
	add	x0, sp, 1664	// tmp1274,,
	ldp	q0, q1, [x1]	// tmp1276, tmp1277, hva4sv16_a
	stp	q0, q1, [x0]	// tmp1276, tmp1277,
	ldp	q0, q1, [x1, 32]	// tmp1278, tmp1279, hva4sv16_a
	stp	q0, q1, [x0, 32]	// tmp1278, tmp1279,
	adrp	x0, hva4sv16_b	// tmp1281,
	add	x1, x0, :lo12:hva4sv16_b	// tmp1280, tmp1281,
	add	x0, sp, 1584	// tmp1282,,
	ldp	q0, q1, [x1]	// tmp1284, tmp1285, hva4sv16_b
	stp	q0, q1, [x0]	// tmp1284, tmp1285,
	ldp	q0, q1, [x1, 32]	// tmp1286, tmp1287, hva4sv16_b
	stp	q0, q1, [x0, 32]	// tmp1286, tmp1287,
	add	x1, sp, 1584	// tmp1288,,
	add	x0, sp, 1664	// tmp1289,,
	mov	x2, x1	//, tmp1288
	mov	x1, x0	//, tmp1289
	adrp	x0, .LC51	// tmp1290,
	add	x0, x0, :lo12:.LC51	//, tmp1290,
	bl	use_va_args_few_hva_4_short_vector_16_bytes		//
	str	w0, [sp, 2632]	//, actual
	ldr	w2, [sp, 2632]	//, actual
	adrp	x0, .LC51	// tmp1291,
	add	x1, x0, :lo12:.LC51	//, tmp1291,
	adrp	x0, .LC63	// tmp1292,
	add	x0, x0, :lo12:.LC63	//, tmp1292,
	bl	printf		//
	ldr	w0, [sp, 2632]	// tmp1293, actual
	cmp	w0, 3	// tmp1293,
	beq	.L477		//,
// varargs-use-dll.c:512:   TEST (few_hva_4_short_vector_16_bytes, 3, hva4sv16_a, hva4sv16_b);
	ldr	w0, [sp, 2492]	// tmp1295, failures
	add	w0, w0, 1	// tmp1294, tmp1295,
	str	w0, [sp, 2492]	// tmp1294, failures
	ldr	w2, [sp, 2632]	//, actual
	mov	w1, 3	//,
	adrp	x0, .LC64	// tmp1296,
	add	x0, x0, :lo12:.LC64	//, tmp1296,
	bl	printf		//
.L477:
// varargs-use-dll.c:513:   TEST (several_hva_4_short_vector_16_bytes, 142, hva4sv16_a, hva4sv16_b,
	adrp	x0, hva4sv16_a	// tmp1298,
	add	x1, x0, :lo12:hva4sv16_a	// tmp1297, tmp1298,
	add	x0, sp, 1664	// tmp1299,,
	ldp	q0, q1, [x1]	// tmp1301, tmp1302, hva4sv16_a
	stp	q0, q1, [x0]	// tmp1301, tmp1302,
	ldp	q0, q1, [x1, 32]	// tmp1303, tmp1304, hva4sv16_a
	stp	q0, q1, [x0, 32]	// tmp1303, tmp1304,
	adrp	x0, hva4sv16_b	// tmp1306,
	add	x1, x0, :lo12:hva4sv16_b	// tmp1305, tmp1306,
	add	x0, sp, 1584	// tmp1307,,
	ldp	q0, q1, [x1]	// tmp1309, tmp1310, hva4sv16_b
	stp	q0, q1, [x0]	// tmp1309, tmp1310,
	ldp	q0, q1, [x1, 32]	// tmp1311, tmp1312, hva4sv16_b
	stp	q0, q1, [x0, 32]	// tmp1311, tmp1312,
	adrp	x0, hva4sv16_c	// tmp1314,
	add	x1, x0, :lo12:hva4sv16_c	// tmp1313, tmp1314,
	add	x0, sp, 1504	// tmp1315,,
	ldp	q0, q1, [x1]	// tmp1317, tmp1318, hva4sv16_c
	stp	q0, q1, [x0]	// tmp1317, tmp1318,
	ldp	q0, q1, [x1, 32]	// tmp1319, tmp1320, hva4sv16_c
	stp	q0, q1, [x0, 32]	// tmp1319, tmp1320,
	adrp	x0, hva4sv16_d	// tmp1322,
	add	x1, x0, :lo12:hva4sv16_d	// tmp1321, tmp1322,
	add	x0, sp, 1424	// tmp1323,,
	ldp	q0, q1, [x1]	// tmp1325, tmp1326, hva4sv16_d
	stp	q0, q1, [x0]	// tmp1325, tmp1326,
	ldp	q0, q1, [x1, 32]	// tmp1327, tmp1328, hva4sv16_d
	stp	q0, q1, [x0, 32]	// tmp1327, tmp1328,
	adrp	x0, hva4sv16_e	// tmp1330,
	add	x1, x0, :lo12:hva4sv16_e	// tmp1329, tmp1330,
	add	x0, sp, 1344	// tmp1331,,
	ldp	q0, q1, [x1]	// tmp1333, tmp1334, hva4sv16_e
	stp	q0, q1, [x0]	// tmp1333, tmp1334,
	ldp	q0, q1, [x1, 32]	// tmp1335, tmp1336, hva4sv16_e
	stp	q0, q1, [x0, 32]	// tmp1335, tmp1336,
	adrp	x0, hva4sv16_f	// tmp1338,
	add	x1, x0, :lo12:hva4sv16_f	// tmp1337, tmp1338,
	add	x0, sp, 1264	// tmp1339,,
	ldp	q0, q1, [x1]	// tmp1341, tmp1342, hva4sv16_f
	stp	q0, q1, [x0]	// tmp1341, tmp1342,
	ldp	q0, q1, [x1, 32]	// tmp1343, tmp1344, hva4sv16_f
	stp	q0, q1, [x0, 32]	// tmp1343, tmp1344,
	adrp	x0, hva4sv16_g	// tmp1346,
	add	x1, x0, :lo12:hva4sv16_g	// tmp1345, tmp1346,
	add	x0, sp, 1184	// tmp1347,,
	ldp	q0, q1, [x1]	// tmp1349, tmp1350, hva4sv16_g
	stp	q0, q1, [x0]	// tmp1349, tmp1350,
	ldp	q0, q1, [x1, 32]	// tmp1351, tmp1352, hva4sv16_g
	stp	q0, q1, [x0, 32]	// tmp1351, tmp1352,
	adrp	x0, hva4sv16_h	// tmp1354,
	add	x1, x0, :lo12:hva4sv16_h	// tmp1353, tmp1354,
	add	x0, sp, 1104	// tmp1355,,
	ldp	q0, q1, [x1]	// tmp1357, tmp1358, hva4sv16_h
	stp	q0, q1, [x0]	// tmp1357, tmp1358,
	ldp	q0, q1, [x1, 32]	// tmp1359, tmp1360, hva4sv16_h
	stp	q0, q1, [x0, 32]	// tmp1359, tmp1360,
	adrp	x0, hva4sv16_i	// tmp1362,
	add	x1, x0, :lo12:hva4sv16_i	// tmp1361, tmp1362,
	add	x0, sp, 1040	// tmp1363,,
	ldp	q0, q1, [x1]	// tmp1365, tmp1366, hva4sv16_i
	stp	q0, q1, [x0]	// tmp1365, tmp1366,
	ldp	q0, q1, [x1, 32]	// tmp1367, tmp1368, hva4sv16_i
	stp	q0, q1, [x0, 32]	// tmp1367, tmp1368,
	add	x7, sp, 1184	// tmp1369,,
	add	x6, sp, 1264	// tmp1370,,
	add	x5, sp, 1344	// tmp1371,,
	add	x4, sp, 1424	// tmp1372,,
	add	x3, sp, 1504	// tmp1373,,
	add	x2, sp, 1584	// tmp1374,,
	add	x1, sp, 1664	// tmp1375,,
	add	x0, sp, 1040	// tmp1376,,
	str	x0, [sp, 8]	// tmp1376,
	add	x0, sp, 1104	// tmp1377,,
	str	x0, [sp]	// tmp1377,
	adrp	x0, .LC52	// tmp1378,
	add	x0, x0, :lo12:.LC52	//, tmp1378,
	bl	use_va_args_several_hva_4_short_vector_16_bytes		//
	str	w0, [sp, 2636]	//, actual
	ldr	w2, [sp, 2636]	//, actual
	adrp	x0, .LC52	// tmp1379,
	add	x1, x0, :lo12:.LC52	//, tmp1379,
	adrp	x0, .LC63	// tmp1380,
	add	x0, x0, :lo12:.LC63	//, tmp1380,
	bl	printf		//
	ldr	w0, [sp, 2636]	// tmp1381, actual
	cmp	w0, 142	// tmp1381,
	beq	.L478		//,
// varargs-use-dll.c:513:   TEST (several_hva_4_short_vector_16_bytes, 142, hva4sv16_a, hva4sv16_b,
	ldr	w0, [sp, 2492]	// tmp1383, failures
	add	w0, w0, 1	// tmp1382, tmp1383,
	str	w0, [sp, 2492]	// tmp1382, failures
	ldr	w2, [sp, 2636]	//, actual
	mov	w1, 142	//,
	adrp	x0, .LC64	// tmp1384,
	add	x0, x0, :lo12:.LC64	//, tmp1384,
	bl	printf		//
.L478:
// varargs-use-dll.c:516:   TEST (many_hva_4_short_vector_16_bytes, 6763, hva4sv16_a, hva4sv16_b,
	adrp	x0, hva4sv16_a	// tmp1386,
	add	x1, x0, :lo12:hva4sv16_a	// tmp1385, tmp1386,
	add	x0, sp, 1664	// tmp1387,,
	ldp	q0, q1, [x1]	// tmp1389, tmp1390, hva4sv16_a
	stp	q0, q1, [x0]	// tmp1389, tmp1390,
	ldp	q0, q1, [x1, 32]	// tmp1391, tmp1392, hva4sv16_a
	stp	q0, q1, [x0, 32]	// tmp1391, tmp1392,
	adrp	x0, hva4sv16_b	// tmp1394,
	add	x1, x0, :lo12:hva4sv16_b	// tmp1393, tmp1394,
	add	x0, sp, 1584	// tmp1395,,
	ldp	q0, q1, [x1]	// tmp1397, tmp1398, hva4sv16_b
	stp	q0, q1, [x0]	// tmp1397, tmp1398,
	ldp	q0, q1, [x1, 32]	// tmp1399, tmp1400, hva4sv16_b
	stp	q0, q1, [x0, 32]	// tmp1399, tmp1400,
	adrp	x0, hva4sv16_c	// tmp1402,
	add	x1, x0, :lo12:hva4sv16_c	// tmp1401, tmp1402,
	add	x0, sp, 1504	// tmp1403,,
	ldp	q0, q1, [x1]	// tmp1405, tmp1406, hva4sv16_c
	stp	q0, q1, [x0]	// tmp1405, tmp1406,
	ldp	q0, q1, [x1, 32]	// tmp1407, tmp1408, hva4sv16_c
	stp	q0, q1, [x0, 32]	// tmp1407, tmp1408,
	adrp	x0, hva4sv16_d	// tmp1410,
	add	x1, x0, :lo12:hva4sv16_d	// tmp1409, tmp1410,
	add	x0, sp, 1424	// tmp1411,,
	ldp	q0, q1, [x1]	// tmp1413, tmp1414, hva4sv16_d
	stp	q0, q1, [x0]	// tmp1413, tmp1414,
	ldp	q0, q1, [x1, 32]	// tmp1415, tmp1416, hva4sv16_d
	stp	q0, q1, [x0, 32]	// tmp1415, tmp1416,
	adrp	x0, hva4sv16_e	// tmp1418,
	add	x1, x0, :lo12:hva4sv16_e	// tmp1417, tmp1418,
	add	x0, sp, 1344	// tmp1419,,
	ldp	q0, q1, [x1]	// tmp1421, tmp1422, hva4sv16_e
	stp	q0, q1, [x0]	// tmp1421, tmp1422,
	ldp	q0, q1, [x1, 32]	// tmp1423, tmp1424, hva4sv16_e
	stp	q0, q1, [x0, 32]	// tmp1423, tmp1424,
	adrp	x0, hva4sv16_f	// tmp1426,
	add	x1, x0, :lo12:hva4sv16_f	// tmp1425, tmp1426,
	add	x0, sp, 1264	// tmp1427,,
	ldp	q0, q1, [x1]	// tmp1429, tmp1430, hva4sv16_f
	stp	q0, q1, [x0]	// tmp1429, tmp1430,
	ldp	q0, q1, [x1, 32]	// tmp1431, tmp1432, hva4sv16_f
	stp	q0, q1, [x0, 32]	// tmp1431, tmp1432,
	adrp	x0, hva4sv16_g	// tmp1434,
	add	x1, x0, :lo12:hva4sv16_g	// tmp1433, tmp1434,
	add	x0, sp, 1184	// tmp1435,,
	ldp	q0, q1, [x1]	// tmp1437, tmp1438, hva4sv16_g
	stp	q0, q1, [x0]	// tmp1437, tmp1438,
	ldp	q0, q1, [x1, 32]	// tmp1439, tmp1440, hva4sv16_g
	stp	q0, q1, [x0, 32]	// tmp1439, tmp1440,
	adrp	x0, hva4sv16_h	// tmp1442,
	add	x1, x0, :lo12:hva4sv16_h	// tmp1441, tmp1442,
	add	x0, sp, 1104	// tmp1443,,
	ldp	q0, q1, [x1]	// tmp1445, tmp1446, hva4sv16_h
	stp	q0, q1, [x0]	// tmp1445, tmp1446,
	ldp	q0, q1, [x1, 32]	// tmp1447, tmp1448, hva4sv16_h
	stp	q0, q1, [x0, 32]	// tmp1447, tmp1448,
	adrp	x0, hva4sv16_i	// tmp1450,
	add	x1, x0, :lo12:hva4sv16_i	// tmp1449, tmp1450,
	add	x0, sp, 1040	// tmp1451,,
	ldp	q0, q1, [x1]	// tmp1453, tmp1454, hva4sv16_i
	stp	q0, q1, [x0]	// tmp1453, tmp1454,
	ldp	q0, q1, [x1, 32]	// tmp1455, tmp1456, hva4sv16_i
	stp	q0, q1, [x0, 32]	// tmp1455, tmp1456,
	adrp	x0, hva4sv16_j	// tmp1458,
	add	x1, x0, :lo12:hva4sv16_j	// tmp1457, tmp1458,
	add	x0, sp, 976	// tmp1459,,
	ldp	q0, q1, [x1]	// tmp1461, tmp1462, hva4sv16_j
	stp	q0, q1, [x0]	// tmp1461, tmp1462,
	ldp	q0, q1, [x1, 32]	// tmp1463, tmp1464, hva4sv16_j
	stp	q0, q1, [x0, 32]	// tmp1463, tmp1464,
	adrp	x0, hva4sv16_k	// tmp1466,
	add	x1, x0, :lo12:hva4sv16_k	// tmp1465, tmp1466,
	add	x0, sp, 912	// tmp1467,,
	ldp	q0, q1, [x1]	// tmp1469, tmp1470, hva4sv16_k
	stp	q0, q1, [x0]	// tmp1469, tmp1470,
	ldp	q0, q1, [x1, 32]	// tmp1471, tmp1472, hva4sv16_k
	stp	q0, q1, [x0, 32]	// tmp1471, tmp1472,
	adrp	x0, hva4sv16_l	// tmp1474,
	add	x1, x0, :lo12:hva4sv16_l	// tmp1473, tmp1474,
	add	x0, sp, 848	// tmp1475,,
	ldp	q0, q1, [x1]	// tmp1477, tmp1478, hva4sv16_l
	stp	q0, q1, [x0]	// tmp1477, tmp1478,
	ldp	q0, q1, [x1, 32]	// tmp1479, tmp1480, hva4sv16_l
	stp	q0, q1, [x0, 32]	// tmp1479, tmp1480,
	adrp	x0, hva4sv16_m	// tmp1482,
	add	x1, x0, :lo12:hva4sv16_m	// tmp1481, tmp1482,
	add	x0, sp, 784	// tmp1483,,
	ldp	q0, q1, [x1]	// tmp1485, tmp1486, hva4sv16_m
	stp	q0, q1, [x0]	// tmp1485, tmp1486,
	ldp	q0, q1, [x1, 32]	// tmp1487, tmp1488, hva4sv16_m
	stp	q0, q1, [x0, 32]	// tmp1487, tmp1488,
	adrp	x0, hva4sv16_n	// tmp1490,
	add	x1, x0, :lo12:hva4sv16_n	// tmp1489, tmp1490,
	add	x0, sp, 720	// tmp1491,,
	ldp	q0, q1, [x1]	// tmp1493, tmp1494, hva4sv16_n
	stp	q0, q1, [x0]	// tmp1493, tmp1494,
	ldp	q0, q1, [x1, 32]	// tmp1495, tmp1496, hva4sv16_n
	stp	q0, q1, [x0, 32]	// tmp1495, tmp1496,
	adrp	x0, hva4sv16_o	// tmp1498,
	add	x1, x0, :lo12:hva4sv16_o	// tmp1497, tmp1498,
	add	x0, sp, 656	// tmp1499,,
	ldp	q0, q1, [x1]	// tmp1501, tmp1502, hva4sv16_o
	stp	q0, q1, [x0]	// tmp1501, tmp1502,
	ldp	q0, q1, [x1, 32]	// tmp1503, tmp1504, hva4sv16_o
	stp	q0, q1, [x0, 32]	// tmp1503, tmp1504,
	adrp	x0, hva4sv16_p	// tmp1506,
	add	x1, x0, :lo12:hva4sv16_p	// tmp1505, tmp1506,
	add	x0, sp, 592	// tmp1507,,
	ldp	q0, q1, [x1]	// tmp1509, tmp1510, hva4sv16_p
	stp	q0, q1, [x0]	// tmp1509, tmp1510,
	ldp	q0, q1, [x1, 32]	// tmp1511, tmp1512, hva4sv16_p
	stp	q0, q1, [x0, 32]	// tmp1511, tmp1512,
	adrp	x0, hva4sv16_q	// tmp1514,
	add	x1, x0, :lo12:hva4sv16_q	// tmp1513, tmp1514,
	add	x0, sp, 528	// tmp1515,,
	ldp	q0, q1, [x1]	// tmp1517, tmp1518, hva4sv16_q
	stp	q0, q1, [x0]	// tmp1517, tmp1518,
	ldp	q0, q1, [x1, 32]	// tmp1519, tmp1520, hva4sv16_q
	stp	q0, q1, [x0, 32]	// tmp1519, tmp1520,
	add	x7, sp, 1184	// tmp1521,,
	add	x6, sp, 1264	// tmp1522,,
	add	x5, sp, 1344	// tmp1523,,
	add	x4, sp, 1424	// tmp1524,,
	add	x3, sp, 1504	// tmp1525,,
	add	x2, sp, 1584	// tmp1526,,
	add	x1, sp, 1664	// tmp1527,,
	add	x0, sp, 528	// tmp1528,,
	str	x0, [sp, 72]	// tmp1528,
	add	x0, sp, 592	// tmp1529,,
	str	x0, [sp, 64]	// tmp1529,
	add	x0, sp, 656	// tmp1530,,
	str	x0, [sp, 56]	// tmp1530,
	add	x0, sp, 720	// tmp1531,,
	str	x0, [sp, 48]	// tmp1531,
	add	x0, sp, 784	// tmp1532,,
	str	x0, [sp, 40]	// tmp1532,
	add	x0, sp, 848	// tmp1533,,
	str	x0, [sp, 32]	// tmp1533,
	add	x0, sp, 912	// tmp1534,,
	str	x0, [sp, 24]	// tmp1534,
	add	x0, sp, 976	// tmp1535,,
	str	x0, [sp, 16]	// tmp1535,
	add	x0, sp, 1040	// tmp1536,,
	str	x0, [sp, 8]	// tmp1536,
	add	x0, sp, 1104	// tmp1537,,
	str	x0, [sp]	// tmp1537,
	adrp	x0, .LC53	// tmp1538,
	add	x0, x0, :lo12:.LC53	//, tmp1538,
	bl	use_va_args_many_hva_4_short_vector_16_bytes		//
	str	w0, [sp, 2640]	//, actual
	ldr	w2, [sp, 2640]	//, actual
	adrp	x0, .LC53	// tmp1539,
	add	x1, x0, :lo12:.LC53	//, tmp1539,
	adrp	x0, .LC63	// tmp1540,
	add	x0, x0, :lo12:.LC63	//, tmp1540,
	bl	printf		//
	ldr	w1, [sp, 2640]	// tmp1541, actual
	mov	w0, 6763	// tmp1542,
	cmp	w1, w0	// tmp1541, tmp1542
	beq	.L479		//,
// varargs-use-dll.c:516:   TEST (many_hva_4_short_vector_16_bytes, 6763, hva4sv16_a, hva4sv16_b,
	ldr	w0, [sp, 2492]	// tmp1544, failures
	add	w0, w0, 1	// tmp1543, tmp1544,
	str	w0, [sp, 2492]	// tmp1543, failures
	ldr	w2, [sp, 2640]	//, actual
	mov	w1, 6763	//,
	adrp	x0, .LC64	// tmp1545,
	add	x0, x0, :lo12:.LC64	//, tmp1545,
	bl	printf		//
.L479:
// varargs-use-dll.c:521:   TEST (ints_and_composites, 6763, 1, 2L, c, 5, 8L, f, 21, 34L, i, 89, 144L, l,
	adrp	x0, c	// tmp1547,
	add	x1, x0, :lo12:c	// tmp1546, tmp1547,
	add	x0, sp, 448	// tmp1548,,
	ldp	q0, q1, [x1]	// tmp1550, tmp1551, c
	stp	q0, q1, [x0]	// tmp1550, tmp1551,
	ldp	q0, q1, [x1, 32]	// tmp1552, tmp1553, c
	stp	q0, q1, [x0, 32]	// tmp1552, tmp1553,
	ldr	q0, [x1, 64]	// tmp1554, c
	str	q0, [x0, 64]	// tmp1554,
	adrp	x0, f	// tmp1556,
	add	x1, x0, :lo12:f	// tmp1555, tmp1556,
	add	x0, sp, 368	// tmp1557,,
	ldp	q0, q1, [x1]	// tmp1559, tmp1560, f
	stp	q0, q1, [x0]	// tmp1559, tmp1560,
	ldp	q0, q1, [x1, 32]	// tmp1561, tmp1562, f
	stp	q0, q1, [x0, 32]	// tmp1561, tmp1562,
	ldr	q0, [x1, 64]	// tmp1563, f
	str	q0, [x0, 64]	// tmp1563,
	adrp	x0, i	// tmp1565,
	add	x1, x0, :lo12:i	// tmp1564, tmp1565,
	add	x0, sp, 288	// tmp1566,,
	ldp	q0, q1, [x1]	// tmp1568, tmp1569, i
	stp	q0, q1, [x0]	// tmp1568, tmp1569,
	ldp	q0, q1, [x1, 32]	// tmp1570, tmp1571, i
	stp	q0, q1, [x0, 32]	// tmp1570, tmp1571,
	ldr	q0, [x1, 64]	// tmp1572, i
	str	q0, [x0, 64]	// tmp1572,
	adrp	x0, l	// tmp1574,
	add	x1, x0, :lo12:l	// tmp1573, tmp1574,
	add	x0, sp, 208	// tmp1575,,
	ldp	q0, q1, [x1]	// tmp1577, tmp1578, l
	stp	q0, q1, [x0]	// tmp1577, tmp1578,
	ldp	q0, q1, [x1, 32]	// tmp1579, tmp1580, l
	stp	q0, q1, [x0, 32]	// tmp1579, tmp1580,
	ldr	q0, [x1, 64]	// tmp1581, l
	str	q0, [x0, 64]	// tmp1581,
	adrp	x0, o	// tmp1583,
	add	x1, x0, :lo12:o	// tmp1582, tmp1583,
	add	x0, sp, 128	// tmp1584,,
	ldp	q0, q1, [x1]	// tmp1586, tmp1587, o
	stp	q0, q1, [x0]	// tmp1586, tmp1587,
	ldp	q0, q1, [x1, 32]	// tmp1588, tmp1589, o
	stp	q0, q1, [x0, 32]	// tmp1588, tmp1589,
	ldr	q0, [x1, 64]	// tmp1590, o
	str	q0, [x0, 64]	// tmp1590,
	add	x2, sp, 368	// tmp1591,,
	add	x1, sp, 448	// tmp1592,,
	mov	x0, 2584	// tmp1593,
	str	x0, [sp, 72]	// tmp1593,
	mov	w0, 1597	// tmp1594,
	str	w0, [sp, 64]	// tmp1594,
	add	x0, sp, 128	// tmp1595,,
	str	x0, [sp, 56]	// tmp1595,
	mov	x0, 610	// tmp1596,
	str	x0, [sp, 48]	// tmp1596,
	mov	w0, 377	// tmp1597,
	str	w0, [sp, 40]	// tmp1597,
	add	x0, sp, 208	// tmp1598,,
	str	x0, [sp, 32]	// tmp1598,
	mov	x0, 144	// tmp1599,
	str	x0, [sp, 24]	// tmp1599,
	mov	w0, 89	// tmp1600,
	str	w0, [sp, 16]	// tmp1600,
	add	x0, sp, 288	// tmp1601,,
	str	x0, [sp, 8]	// tmp1601,
	mov	x0, 34	// tmp1602,
	str	x0, [sp]	// tmp1602,
	mov	w7, 21	//,
	mov	x6, x2	//, tmp1591
	mov	x5, 8	//,
	mov	w4, 5	//,
	mov	x3, x1	//, tmp1592
	mov	x2, 2	//,
	mov	w1, 1	//,
	adrp	x0, .LC54	// tmp1603,
	add	x0, x0, :lo12:.LC54	//, tmp1603,
	bl	use_va_args_ints_and_composites		//
	str	w0, [sp, 2644]	//, actual
	ldr	w2, [sp, 2644]	//, actual
	adrp	x0, .LC54	// tmp1604,
	add	x1, x0, :lo12:.LC54	//, tmp1604,
	adrp	x0, .LC63	// tmp1605,
	add	x0, x0, :lo12:.LC63	//, tmp1605,
	bl	printf		//
	ldr	w1, [sp, 2644]	// tmp1606, actual
	mov	w0, 6763	// tmp1607,
	cmp	w1, w0	// tmp1606, tmp1607
	beq	.L480		//,
// varargs-use-dll.c:521:   TEST (ints_and_composites, 6763, 1, 2L, c, 5, 8L, f, 21, 34L, i, 89, 144L, l,
	ldr	w0, [sp, 2492]	// tmp1609, failures
	add	w0, w0, 1	// tmp1608, tmp1609,
	str	w0, [sp, 2492]	// tmp1608, failures
	ldr	w2, [sp, 2644]	//, actual
	mov	w1, 6763	//,
	adrp	x0, .LC64	// tmp1610,
	add	x0, x0, :lo12:.LC64	//, tmp1610,
	bl	printf		//
.L480:
// varargs-use-dll.c:523:   TEST (ints_and_floats, 6763, 1, 2L, 3.0f, 5.0, 8, 13L, 21.0f, 34.0, 55, 89L,
	mov	w0, 2584	// tmp1611,
	str	w0, [sp, 8]	// tmp1611,
	mov	x0, 610	// tmp1612,
	str	x0, [sp]	// tmp1612,
	mov	x0, 268280837177344	// tmp1668,
	movk	x0, 0x4098, lsl 48	// tmp1668,,
	fmov	d7, x0	//, tmp1668
	mov	x0, 237494511599616	// tmp1669,
	movk	x0, 0x408e, lsl 48	// tmp1669,,
	fmov	d6, x0	//, tmp1669
	mov	w7, 377	//,
	mov	x0, 35184372088832	// tmp1670,
	movk	x0, 0x406d, lsl 48	// tmp1670,,
	fmov	d5, x0	//, tmp1670
	mov	x0, 4639270566145032192	// tmp1671,
	fmov	d4, x0	//, tmp1671
	mov	x6, 89	//,
	mov	w5, 55	//,
	mov	x0, 4629981891913580544	// tmp1672,
	fmov	d3, x0	//, tmp1672
	fmov	d2, 2.1e+1	//,
	mov	x4, 13	//,
	mov	w3, 8	//,
	fmov	d1, 5.0e+0	//,
	fmov	d0, 3.0e+0	//,
	mov	x2, 2	//,
	mov	w1, 1	//,
	adrp	x0, .LC55	// tmp1613,
	add	x0, x0, :lo12:.LC55	//, tmp1613,
	bl	use_va_args_ints_and_floats		//
	str	w0, [sp, 2648]	//, actual
	ldr	w2, [sp, 2648]	//, actual
	adrp	x0, .LC55	// tmp1614,
	add	x1, x0, :lo12:.LC55	//, tmp1614,
	adrp	x0, .LC63	// tmp1615,
	add	x0, x0, :lo12:.LC63	//, tmp1615,
	bl	printf		//
	ldr	w1, [sp, 2648]	// tmp1616, actual
	mov	w0, 6763	// tmp1617,
	cmp	w1, w0	// tmp1616, tmp1617
	beq	.L481		//,
// varargs-use-dll.c:523:   TEST (ints_and_floats, 6763, 1, 2L, 3.0f, 5.0, 8, 13L, 21.0f, 34.0, 55, 89L,
	ldr	w0, [sp, 2492]	// tmp1619, failures
	add	w0, w0, 1	// tmp1618, tmp1619,
	str	w0, [sp, 2492]	// tmp1618, failures
	ldr	w2, [sp, 2648]	//, actual
	mov	w1, 6763	//,
	adrp	x0, .LC64	// tmp1620,
	add	x0, x0, :lo12:.LC64	//, tmp1620,
	bl	printf		//
.L481:
// varargs-use-dll.c:525:   TEST (ints_floats_and_composites, 6763, 1, 2L, 3.0f, 5.0, e, 13, 21L, 34.0f,
	adrp	x0, e	// tmp1622,
	add	x1, x0, :lo12:e	// tmp1621, tmp1622,
	add	x0, sp, 448	// tmp1623,,
	ldp	q0, q1, [x1]	// tmp1625, tmp1626, e
	stp	q0, q1, [x0]	// tmp1625, tmp1626,
	ldp	q0, q1, [x1, 32]	// tmp1627, tmp1628, e
	stp	q0, q1, [x0, 32]	// tmp1627, tmp1628,
	ldr	q0, [x1, 64]	// tmp1629, e
	str	q0, [x0, 64]	// tmp1629,
	adrp	x0, j	// tmp1631,
	add	x1, x0, :lo12:j	// tmp1630, tmp1631,
	add	x0, sp, 368	// tmp1632,,
	ldp	q0, q1, [x1]	// tmp1634, tmp1635, j
	stp	q0, q1, [x0]	// tmp1634, tmp1635,
	ldp	q0, q1, [x1, 32]	// tmp1636, tmp1637, j
	stp	q0, q1, [x0, 32]	// tmp1636, tmp1637,
	ldr	q0, [x1, 64]	// tmp1638, j
	str	q0, [x0, 64]	// tmp1638,
	adrp	x0, o	// tmp1640,
	add	x1, x0, :lo12:o	// tmp1639, tmp1640,
	add	x0, sp, 288	// tmp1641,,
	ldp	q0, q1, [x1]	// tmp1643, tmp1644, o
	stp	q0, q1, [x0]	// tmp1643, tmp1644,
	ldp	q0, q1, [x1, 32]	// tmp1645, tmp1646, o
	stp	q0, q1, [x0, 32]	// tmp1645, tmp1646,
	ldr	q0, [x1, 64]	// tmp1647, o
	str	q0, [x0, 64]	// tmp1647,
	add	x2, sp, 368	// tmp1648,,
	add	x1, sp, 448	// tmp1649,,
	mov	x0, 2584	// tmp1650,
	str	x0, [sp, 24]	// tmp1650,
	mov	w0, 1597	// tmp1651,
	str	w0, [sp, 16]	// tmp1651,
	add	x0, sp, 288	// tmp1652,,
	str	x0, [sp, 8]	// tmp1652,
	mov	x0, 233	// tmp1653,
	str	x0, [sp]	// tmp1653,
	mov	x0, 17592186044416	// tmp1664,
	movk	x0, 0x4083, lsl 48	// tmp1664,,
	fmov	d5, x0	//, tmp1664
	mov	x0, 158329674399744	// tmp1665,
	movk	x0, 0x4077, lsl 48	// tmp1665,,
	fmov	d4, x0	//, tmp1665
	mov	w7, 144	//,
	mov	x6, x2	//, tmp1648
	mov	x0, 140737488355328	// tmp1666,
	movk	x0, 0x404b, lsl 48	// tmp1666,,
	fmov	d3, x0	//, tmp1666
	mov	x0, 4629981891913580544	// tmp1667,
	fmov	d2, x0	//, tmp1667
	mov	x5, 21	//,
	mov	w4, 13	//,
	mov	x3, x1	//, tmp1649
	fmov	d1, 5.0e+0	//,
	fmov	d0, 3.0e+0	//,
	mov	x2, 2	//,
	mov	w1, 1	//,
	adrp	x0, .LC56	// tmp1654,
	add	x0, x0, :lo12:.LC56	//, tmp1654,
	bl	use_va_args_ints_floats_and_composites		//
	str	w0, [sp, 2652]	//, actual
	ldr	w2, [sp, 2652]	//, actual
	adrp	x0, .LC56	// tmp1655,
	add	x1, x0, :lo12:.LC56	//, tmp1655,
	adrp	x0, .LC63	// tmp1656,
	add	x0, x0, :lo12:.LC63	//, tmp1656,
	bl	printf		//
	ldr	w1, [sp, 2652]	// tmp1657, actual
	mov	w0, 6763	// tmp1658,
	cmp	w1, w0	// tmp1657, tmp1658
	beq	.L482		//,
// varargs-use-dll.c:525:   TEST (ints_floats_and_composites, 6763, 1, 2L, 3.0f, 5.0, e, 13, 21L, 34.0f,
	ldr	w0, [sp, 2492]	// tmp1660, failures
	add	w0, w0, 1	// tmp1659, tmp1660,
	str	w0, [sp, 2492]	// tmp1659, failures
	ldr	w2, [sp, 2652]	//, actual
	mov	w1, 6763	//,
	adrp	x0, .LC64	// tmp1661,
	add	x0, x0, :lo12:.LC64	//, tmp1661,
	bl	printf		//
.L482:
// varargs-use-dll.c:528:   DEBUG ("\tfailures: %d\n", failures);
	ldr	w1, [sp, 2492]	//, failures
	adrp	x0, .LC65	// tmp1662,
	add	x0, x0, :lo12:.LC65	//, tmp1662,
	bl	printf		//
// varargs-use-dll.c:530:   return failures;
	ldr	w0, [sp, 2492]	// _285, failures
// varargs-use-dll.c:531: }
	ldp	x29, x30, [sp, 112]	//,,
	add	sp, sp, 2656	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE166:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
