	.arch armv8-a
;# GNU C17 (GCC) version 15.0.0 20241105 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
;# options passed: -march=armv8-a -mtune=cortex-a53 -O0
	.text
	.align	2
	.global	test_va_list
	.def	test_va_list;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list
test_va_list:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3856]	;#,
	stp	x29, x30, [sp, -240]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 184]	;#,
	str	x2, [sp, 192]	;#,
	str	x3, [sp, 200]	;#,
	str	x4, [sp, 208]	;#,
	str	x5, [sp, 216]	;#,
	str	x6, [sp, 224]	;#,
	str	x7, [sp, 232]	;#,
	str	q0, [sp, 48]	;#,
	str	q1, [sp, 64]	;#,
	str	q2, [sp, 80]	;#,
	str	q3, [sp, 96]	;#,
	str	q4, [sp, 112]	;#,
	str	q5, [sp, 128]	;#,
	str	q6, [sp, 144]	;#,
	str	q7, [sp, 160]	;#,
;# valist-use-dll.c:17:   va_start(argv, format);
	add	x0, sp, 240	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(void * *)&argv]
;# valist-use-dll.c:18:   int retval = use_va_list(format, argv);
	ldr	x0, [sp, 32]	;# argv.0_1, argv
	mov	x1, x0	;#, argv.0_1
	ldr	x0, [sp, 24]	;#, format
	bl	use_va_list		;#
	str	w0, [sp, 44]	;#, retval
;# valist-use-dll.c:20:   return retval;
	ldr	w0, [sp, 44]	;# _8, retval
;# valist-use-dll.c:21: }
	ldp	x29, x30, [sp], 240	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC0:
	.ascii "%d\12\0"
	.text
	.align	2
	.global	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4064]	;#,
	stp	x29, x30, [sp, -32]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	w0, [sp, 28]	;# argc, argc
	str	x1, [sp, 16]	;# argv, argv
;# valist-use-dll.c:24: {  
	bl	__main		;#
;# valist-use-dll.c:25:   return test_va_list("%d\n", 100, 42);
	mov	w2, 42	;#,
	mov	w1, 100	;#,
	adrp	x0, .LC0	;# tmp103,
	add	x0, x0, :lo12:.LC0	;#, tmp103,
	bl	test_va_list		;#
;# valist-use-dll.c:26: }
	ldp	x29, x30, [sp], 32	;#,,,
	ret	
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	use_va_list;	.scl	2;	.type	32;	.endef
