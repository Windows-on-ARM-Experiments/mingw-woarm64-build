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
// valist-use-dll.c:15: {
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp94, tmp95,
	ldr	x1, [x0]	// tmp108,
	str	x1, [sp, 104]	// tmp108, D.3866
	mov	x1, 0	// tmp108
// valist-use-dll.c:17:   va_start(argv, format);
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
// valist-use-dll.c:18:   int retval = use_va_list(format, argv);
	add	x0, sp, 16	// tmp100,,
	add	x1, sp, 72	// tmp101,,
	ldp	q0, q1, [x1]	// tmp102, tmp103, argv
	stp	q0, q1, [x0]	// tmp102, tmp103,
	add	x0, sp, 16	// tmp104,,
	mov	x1, x0	//, tmp104
	ldr	x0, [sp, 56]	//, format
	bl	use_va_list		//
	str	w0, [sp, 68]	//, retval
// valist-use-dll.c:20:   return retval;
	ldr	w0, [sp, 68]	// _7, retval
	mov	w1, w0	// <retval>, _7
// valist-use-dll.c:21: }
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x3, [sp, 104]	// tmp109, D.3866
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
	.section	.rodata
	.align	3
.LC0:
	.string	"%d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	w0, [sp, 28]	// argc, argc
	str	x1, [sp, 16]	// argv, argv
// valist-use-dll.c:25:   return test_va_list("%d\n", 100, 42);
	mov	w2, 42	//,
	mov	w1, 100	//,
	adrp	x0, .LC0	// tmp94,
	add	x0, x0, :lo12:.LC0	//, tmp94,
	bl	test_va_list		//
// valist-use-dll.c:26: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
