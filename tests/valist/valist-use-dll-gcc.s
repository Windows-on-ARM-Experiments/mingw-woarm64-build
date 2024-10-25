	.arch armv8-a
;# GNU C17 (GCC) version 15.0.0 20241016 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed: -march=armv8-a -mtune=cortex-a53 -O0
	.text
	.align	2
	.global	test_va_list
	.def	test_va_list;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list
test_va_list:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3792]	;#,
	stp	x29, x30, [sp, -304]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 56]	;# format, format
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
;# valist-use-dll.c:17:   va_start(argv, format);
	add	x0, sp, 304	;# tmp114,,
	str	x0, [sp, 72]	;# tmp114, MEM[(struct  *)&argv].__stack
	add	x0, sp, 304	;# tmp115,,
	str	x0, [sp, 80]	;# tmp115, MEM[(struct  *)&argv].__gr_top
	add	x0, sp, 240	;# tmp104,,
	str	x0, [sp, 88]	;# tmp104, MEM[(struct  *)&argv].__vr_top
	mov	w0, -56	;# tmp105,
	str	w0, [sp, 96]	;# tmp105, MEM[(struct  *)&argv].__gr_offs
	mov	w0, -128	;# tmp106,
	str	w0, [sp, 100]	;# tmp106, MEM[(struct  *)&argv].__vr_offs
;# valist-use-dll.c:18:   int retval = use_va_list(format, argv);
	add	x0, sp, 16	;# tmp107,,
	add	x1, sp, 72	;# tmp108,,
	ldr	q30, [x1]	;# tmp109, argv
	ldr	q31, [x1, 16]	;# tmp110, argv
	str	q30, [x0]	;# tmp109,
	str	q31, [x0, 16]	;# tmp110,
	add	x0, sp, 16	;# tmp111,,
	mov	x1, x0	;#, tmp111
	ldr	x0, [sp, 56]	;#, format
	bl	use_va_list		;#
	str	w0, [sp, 108]	;#, retval
;# valist-use-dll.c:20:   return retval;
	ldr	w0, [sp, 108]	;# _7, retval
;# valist-use-dll.c:21: }
	ldp	x29, x30, [sp], 304	;#,,,
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
