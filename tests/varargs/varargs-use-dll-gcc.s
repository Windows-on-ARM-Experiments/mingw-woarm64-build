	.arch armv8-a
;# GNU C23 (GCC) version 15.0.1 20250131 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed: -march=armv8-a -mtune=cortex-a53 -O0
	.text
	.align	2
	.global	__chkstk
	.def	__chkstk;	.scl	2;	.type	32;	.endef
	.seh_proc	__chkstk
__chkstk:
	.seh_endprologue
;# varargs-use-dll.c:9: }
	nop	
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC0:
	.ascii "no_arguments\0"
	.align	3
.LC1:
	.ascii "\11use_va_list_%s, result: %d\12\0"
	.text
	.align	2
	.global	test_va_list_no_arguments
	.def	test_va_list_no_arguments;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_no_arguments
test_va_list_no_arguments:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:90: DECLARE_TEST (no_arguments);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.0_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.0_1
	adrp	x0, .LC0	;# tmp107,
	add	x0, x0, :lo12:.LC0	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC0	;# tmp108,
	add	x1, x0, :lo12:.LC0	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC2:
	.ascii "\11use_va_list_%s_indirect, result: %d\12\0"
	.text
	.align	2
	.global	use_indirect_va_list_no_arguments
	.def	use_indirect_va_list_no_arguments;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_no_arguments
use_indirect_va_list_no_arguments:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:90: DECLARE_TEST (no_arguments);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC0	;# tmp104,
	add	x0, x0, :lo12:.LC0	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC0	;# tmp105,
	add	x1, x0, :lo12:.LC0	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_no_arguments
	.def	test_indirect_va_list_no_arguments;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_no_arguments
test_indirect_va_list_no_arguments:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:90: DECLARE_TEST (no_arguments);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.1_1, argv
	mov	x1, x0	;#, argv.1_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_no_arguments		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC3:
	.ascii "few_longs\0"
	.text
	.align	2
	.global	test_va_list_few_longs
	.def	test_va_list_few_longs;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_longs
test_va_list_few_longs:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:92: DECLARE_TEST (few_longs);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.2_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.2_1
	adrp	x0, .LC3	;# tmp107,
	add	x0, x0, :lo12:.LC3	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC3	;# tmp108,
	add	x1, x0, :lo12:.LC3	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_longs
	.def	use_indirect_va_list_few_longs;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_longs
use_indirect_va_list_few_longs:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:92: DECLARE_TEST (few_longs);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC3	;# tmp104,
	add	x0, x0, :lo12:.LC3	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC3	;# tmp105,
	add	x1, x0, :lo12:.LC3	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_longs
	.def	test_indirect_va_list_few_longs;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_longs
test_indirect_va_list_few_longs:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:92: DECLARE_TEST (few_longs);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.3_1, argv
	mov	x1, x0	;#, argv.3_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_longs		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC4:
	.ascii "several_longs\0"
	.text
	.align	2
	.global	test_va_list_several_longs
	.def	test_va_list_several_longs;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_longs
test_va_list_several_longs:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:93: DECLARE_TEST (several_longs);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.4_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.4_1
	adrp	x0, .LC4	;# tmp107,
	add	x0, x0, :lo12:.LC4	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC4	;# tmp108,
	add	x1, x0, :lo12:.LC4	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_longs
	.def	use_indirect_va_list_several_longs;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_longs
use_indirect_va_list_several_longs:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:93: DECLARE_TEST (several_longs);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC4	;# tmp104,
	add	x0, x0, :lo12:.LC4	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC4	;# tmp105,
	add	x1, x0, :lo12:.LC4	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_longs
	.def	test_indirect_va_list_several_longs;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_longs
test_indirect_va_list_several_longs:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:93: DECLARE_TEST (several_longs);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.5_1, argv
	mov	x1, x0	;#, argv.5_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_longs		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC5:
	.ascii "many_longs\0"
	.text
	.align	2
	.global	test_va_list_many_longs
	.def	test_va_list_many_longs;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_longs
test_va_list_many_longs:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:94: DECLARE_TEST (many_longs);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.6_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.6_1
	adrp	x0, .LC5	;# tmp107,
	add	x0, x0, :lo12:.LC5	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC5	;# tmp108,
	add	x1, x0, :lo12:.LC5	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_longs
	.def	use_indirect_va_list_many_longs;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_longs
use_indirect_va_list_many_longs:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:94: DECLARE_TEST (many_longs);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC5	;# tmp104,
	add	x0, x0, :lo12:.LC5	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC5	;# tmp105,
	add	x1, x0, :lo12:.LC5	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_longs
	.def	test_indirect_va_list_many_longs;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_longs
test_indirect_va_list_many_longs:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:94: DECLARE_TEST (many_longs);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.7_1, argv
	mov	x1, x0	;#, argv.7_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_longs		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC6:
	.ascii "few_ints\0"
	.text
	.align	2
	.global	test_va_list_few_ints
	.def	test_va_list_few_ints;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_ints
test_va_list_few_ints:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:96: DECLARE_TEST (few_ints);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.8_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.8_1
	adrp	x0, .LC6	;# tmp107,
	add	x0, x0, :lo12:.LC6	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC6	;# tmp108,
	add	x1, x0, :lo12:.LC6	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_ints
	.def	use_indirect_va_list_few_ints;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_ints
use_indirect_va_list_few_ints:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:96: DECLARE_TEST (few_ints);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC6	;# tmp104,
	add	x0, x0, :lo12:.LC6	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC6	;# tmp105,
	add	x1, x0, :lo12:.LC6	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_ints
	.def	test_indirect_va_list_few_ints;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_ints
test_indirect_va_list_few_ints:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:96: DECLARE_TEST (few_ints);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.9_1, argv
	mov	x1, x0	;#, argv.9_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_ints		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC7:
	.ascii "several_ints\0"
	.text
	.align	2
	.global	test_va_list_several_ints
	.def	test_va_list_several_ints;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_ints
test_va_list_several_ints:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:97: DECLARE_TEST (several_ints);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.10_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.10_1
	adrp	x0, .LC7	;# tmp107,
	add	x0, x0, :lo12:.LC7	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC7	;# tmp108,
	add	x1, x0, :lo12:.LC7	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_ints
	.def	use_indirect_va_list_several_ints;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_ints
use_indirect_va_list_several_ints:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:97: DECLARE_TEST (several_ints);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC7	;# tmp104,
	add	x0, x0, :lo12:.LC7	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC7	;# tmp105,
	add	x1, x0, :lo12:.LC7	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_ints
	.def	test_indirect_va_list_several_ints;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_ints
test_indirect_va_list_several_ints:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:97: DECLARE_TEST (several_ints);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.11_1, argv
	mov	x1, x0	;#, argv.11_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_ints		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC8:
	.ascii "many_ints\0"
	.text
	.align	2
	.global	test_va_list_many_ints
	.def	test_va_list_many_ints;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_ints
test_va_list_many_ints:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:98: DECLARE_TEST (many_ints);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.12_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.12_1
	adrp	x0, .LC8	;# tmp107,
	add	x0, x0, :lo12:.LC8	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC8	;# tmp108,
	add	x1, x0, :lo12:.LC8	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_ints
	.def	use_indirect_va_list_many_ints;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_ints
use_indirect_va_list_many_ints:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:98: DECLARE_TEST (many_ints);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC8	;# tmp104,
	add	x0, x0, :lo12:.LC8	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC8	;# tmp105,
	add	x1, x0, :lo12:.LC8	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_ints
	.def	test_indirect_va_list_many_ints;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_ints
test_indirect_va_list_many_ints:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:98: DECLARE_TEST (many_ints);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.13_1, argv
	mov	x1, x0	;#, argv.13_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_ints		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC9:
	.ascii "few_doubles\0"
	.text
	.align	2
	.global	test_va_list_few_doubles
	.def	test_va_list_few_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_doubles
test_va_list_few_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:100: DECLARE_TEST (few_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.14_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.14_1
	adrp	x0, .LC9	;# tmp107,
	add	x0, x0, :lo12:.LC9	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC9	;# tmp108,
	add	x1, x0, :lo12:.LC9	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_doubles
	.def	use_indirect_va_list_few_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_doubles
use_indirect_va_list_few_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:100: DECLARE_TEST (few_doubles);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC9	;# tmp104,
	add	x0, x0, :lo12:.LC9	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC9	;# tmp105,
	add	x1, x0, :lo12:.LC9	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_doubles
	.def	test_indirect_va_list_few_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_doubles
test_indirect_va_list_few_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:100: DECLARE_TEST (few_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.15_1, argv
	mov	x1, x0	;#, argv.15_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_doubles		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC10:
	.ascii "several_doubles\0"
	.text
	.align	2
	.global	test_va_list_several_doubles
	.def	test_va_list_several_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_doubles
test_va_list_several_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:101: DECLARE_TEST (several_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.16_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.16_1
	adrp	x0, .LC10	;# tmp107,
	add	x0, x0, :lo12:.LC10	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC10	;# tmp108,
	add	x1, x0, :lo12:.LC10	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_doubles
	.def	use_indirect_va_list_several_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_doubles
use_indirect_va_list_several_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:101: DECLARE_TEST (several_doubles);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC10	;# tmp104,
	add	x0, x0, :lo12:.LC10	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC10	;# tmp105,
	add	x1, x0, :lo12:.LC10	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_doubles
	.def	test_indirect_va_list_several_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_doubles
test_indirect_va_list_several_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:101: DECLARE_TEST (several_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.17_1, argv
	mov	x1, x0	;#, argv.17_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_doubles		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC11:
	.ascii "many_doubles\0"
	.text
	.align	2
	.global	test_va_list_many_doubles
	.def	test_va_list_many_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_doubles
test_va_list_many_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:102: DECLARE_TEST (many_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.18_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.18_1
	adrp	x0, .LC11	;# tmp107,
	add	x0, x0, :lo12:.LC11	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC11	;# tmp108,
	add	x1, x0, :lo12:.LC11	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_doubles
	.def	use_indirect_va_list_many_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_doubles
use_indirect_va_list_many_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:102: DECLARE_TEST (many_doubles);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC11	;# tmp104,
	add	x0, x0, :lo12:.LC11	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC11	;# tmp105,
	add	x1, x0, :lo12:.LC11	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_doubles
	.def	test_indirect_va_list_many_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_doubles
test_indirect_va_list_many_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:102: DECLARE_TEST (many_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.19_1, argv
	mov	x1, x0	;#, argv.19_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_doubles		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC12:
	.ascii "few_floats\0"
	.text
	.align	2
	.global	test_va_list_few_floats
	.def	test_va_list_few_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_floats
test_va_list_few_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:104: DECLARE_TEST (few_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.20_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.20_1
	adrp	x0, .LC12	;# tmp107,
	add	x0, x0, :lo12:.LC12	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC12	;# tmp108,
	add	x1, x0, :lo12:.LC12	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_floats
	.def	use_indirect_va_list_few_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_floats
use_indirect_va_list_few_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:104: DECLARE_TEST (few_floats);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC12	;# tmp104,
	add	x0, x0, :lo12:.LC12	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC12	;# tmp105,
	add	x1, x0, :lo12:.LC12	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_floats
	.def	test_indirect_va_list_few_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_floats
test_indirect_va_list_few_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:104: DECLARE_TEST (few_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.21_1, argv
	mov	x1, x0	;#, argv.21_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_floats		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC13:
	.ascii "several_floats\0"
	.text
	.align	2
	.global	test_va_list_several_floats
	.def	test_va_list_several_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_floats
test_va_list_several_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:105: DECLARE_TEST (several_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.22_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.22_1
	adrp	x0, .LC13	;# tmp107,
	add	x0, x0, :lo12:.LC13	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC13	;# tmp108,
	add	x1, x0, :lo12:.LC13	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_floats
	.def	use_indirect_va_list_several_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_floats
use_indirect_va_list_several_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:105: DECLARE_TEST (several_floats);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC13	;# tmp104,
	add	x0, x0, :lo12:.LC13	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC13	;# tmp105,
	add	x1, x0, :lo12:.LC13	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_floats
	.def	test_indirect_va_list_several_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_floats
test_indirect_va_list_several_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:105: DECLARE_TEST (several_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.23_1, argv
	mov	x1, x0	;#, argv.23_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_floats		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC14:
	.ascii "many_floats\0"
	.text
	.align	2
	.global	test_va_list_many_floats
	.def	test_va_list_many_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_floats
test_va_list_many_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:106: DECLARE_TEST (many_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.24_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.24_1
	adrp	x0, .LC14	;# tmp107,
	add	x0, x0, :lo12:.LC14	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC14	;# tmp108,
	add	x1, x0, :lo12:.LC14	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_floats
	.def	use_indirect_va_list_many_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_floats
use_indirect_va_list_many_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:106: DECLARE_TEST (many_floats);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC14	;# tmp104,
	add	x0, x0, :lo12:.LC14	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC14	;# tmp105,
	add	x1, x0, :lo12:.LC14	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_floats
	.def	test_indirect_va_list_many_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_floats
test_indirect_va_list_many_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:106: DECLARE_TEST (many_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.25_1, argv
	mov	x1, x0	;#, argv.25_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_floats		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC15:
	.ascii "few_strings\0"
	.text
	.align	2
	.global	test_va_list_few_strings
	.def	test_va_list_few_strings;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_strings
test_va_list_few_strings:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:108: DECLARE_TEST (few_strings);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.26_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.26_1
	adrp	x0, .LC15	;# tmp107,
	add	x0, x0, :lo12:.LC15	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC15	;# tmp108,
	add	x1, x0, :lo12:.LC15	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_strings
	.def	use_indirect_va_list_few_strings;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_strings
use_indirect_va_list_few_strings:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:108: DECLARE_TEST (few_strings);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC15	;# tmp104,
	add	x0, x0, :lo12:.LC15	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC15	;# tmp105,
	add	x1, x0, :lo12:.LC15	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_strings
	.def	test_indirect_va_list_few_strings;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_strings
test_indirect_va_list_few_strings:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:108: DECLARE_TEST (few_strings);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.27_1, argv
	mov	x1, x0	;#, argv.27_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_strings		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC16:
	.ascii "several_strings\0"
	.text
	.align	2
	.global	test_va_list_several_strings
	.def	test_va_list_several_strings;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_strings
test_va_list_several_strings:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:109: DECLARE_TEST (several_strings);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.28_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.28_1
	adrp	x0, .LC16	;# tmp107,
	add	x0, x0, :lo12:.LC16	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC16	;# tmp108,
	add	x1, x0, :lo12:.LC16	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_strings
	.def	use_indirect_va_list_several_strings;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_strings
use_indirect_va_list_several_strings:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:109: DECLARE_TEST (several_strings);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC16	;# tmp104,
	add	x0, x0, :lo12:.LC16	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC16	;# tmp105,
	add	x1, x0, :lo12:.LC16	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_strings
	.def	test_indirect_va_list_several_strings;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_strings
test_indirect_va_list_several_strings:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:109: DECLARE_TEST (several_strings);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.29_1, argv
	mov	x1, x0	;#, argv.29_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_strings		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC17:
	.ascii "many_strings\0"
	.text
	.align	2
	.global	test_va_list_many_strings
	.def	test_va_list_many_strings;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_strings
test_va_list_many_strings:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:110: DECLARE_TEST (many_strings);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.30_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.30_1
	adrp	x0, .LC17	;# tmp107,
	add	x0, x0, :lo12:.LC17	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC17	;# tmp108,
	add	x1, x0, :lo12:.LC17	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_strings
	.def	use_indirect_va_list_many_strings;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_strings
use_indirect_va_list_many_strings:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:110: DECLARE_TEST (many_strings);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC17	;# tmp104,
	add	x0, x0, :lo12:.LC17	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC17	;# tmp105,
	add	x1, x0, :lo12:.LC17	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_strings
	.def	test_indirect_va_list_many_strings;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_strings
test_indirect_va_list_many_strings:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:110: DECLARE_TEST (many_strings);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.31_1, argv
	mov	x1, x0	;#, argv.31_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_strings		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC18:
	.ascii "few_composites\0"
	.text
	.align	2
	.global	test_va_list_few_composites
	.def	test_va_list_few_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_composites
test_va_list_few_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:112: DECLARE_TEST (few_composites);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.32_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.32_1
	adrp	x0, .LC18	;# tmp107,
	add	x0, x0, :lo12:.LC18	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC18	;# tmp108,
	add	x1, x0, :lo12:.LC18	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_composites
	.def	use_indirect_va_list_few_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_composites
use_indirect_va_list_few_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:112: DECLARE_TEST (few_composites);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC18	;# tmp104,
	add	x0, x0, :lo12:.LC18	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC18	;# tmp105,
	add	x1, x0, :lo12:.LC18	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_composites
	.def	test_indirect_va_list_few_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_composites
test_indirect_va_list_few_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:112: DECLARE_TEST (few_composites);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.33_1, argv
	mov	x1, x0	;#, argv.33_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_composites		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC19:
	.ascii "several_composites\0"
	.text
	.align	2
	.global	test_va_list_several_composites
	.def	test_va_list_several_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_composites
test_va_list_several_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:113: DECLARE_TEST (several_composites);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.34_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.34_1
	adrp	x0, .LC19	;# tmp107,
	add	x0, x0, :lo12:.LC19	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC19	;# tmp108,
	add	x1, x0, :lo12:.LC19	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_composites
	.def	use_indirect_va_list_several_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_composites
use_indirect_va_list_several_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:113: DECLARE_TEST (several_composites);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC19	;# tmp104,
	add	x0, x0, :lo12:.LC19	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC19	;# tmp105,
	add	x1, x0, :lo12:.LC19	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_composites
	.def	test_indirect_va_list_several_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_composites
test_indirect_va_list_several_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:113: DECLARE_TEST (several_composites);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.35_1, argv
	mov	x1, x0	;#, argv.35_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_composites		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC20:
	.ascii "many_composites\0"
	.text
	.align	2
	.global	test_va_list_many_composites
	.def	test_va_list_many_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_composites
test_va_list_many_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:114: DECLARE_TEST (many_composites);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.36_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.36_1
	adrp	x0, .LC20	;# tmp107,
	add	x0, x0, :lo12:.LC20	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC20	;# tmp108,
	add	x1, x0, :lo12:.LC20	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_composites
	.def	use_indirect_va_list_many_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_composites
use_indirect_va_list_many_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:114: DECLARE_TEST (many_composites);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC20	;# tmp104,
	add	x0, x0, :lo12:.LC20	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC20	;# tmp105,
	add	x1, x0, :lo12:.LC20	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_composites
	.def	test_indirect_va_list_many_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_composites
test_indirect_va_list_many_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:114: DECLARE_TEST (many_composites);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.37_1, argv
	mov	x1, x0	;#, argv.37_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_composites		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC21:
	.ascii "few_short_vector_8_bytes\0"
	.text
	.align	2
	.global	test_va_list_few_short_vector_8_bytes
	.def	test_va_list_few_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_short_vector_8_bytes
test_va_list_few_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:116: DECLARE_TEST (few_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.38_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.38_1
	adrp	x0, .LC21	;# tmp107,
	add	x0, x0, :lo12:.LC21	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC21	;# tmp108,
	add	x1, x0, :lo12:.LC21	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_short_vector_8_bytes
	.def	use_indirect_va_list_few_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_short_vector_8_bytes
use_indirect_va_list_few_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:116: DECLARE_TEST (few_short_vector_8_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC21	;# tmp104,
	add	x0, x0, :lo12:.LC21	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC21	;# tmp105,
	add	x1, x0, :lo12:.LC21	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_short_vector_8_bytes
	.def	test_indirect_va_list_few_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_short_vector_8_bytes
test_indirect_va_list_few_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:116: DECLARE_TEST (few_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.39_1, argv
	mov	x1, x0	;#, argv.39_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_short_vector_8_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC22:
	.ascii "several_short_vector_8_bytes\0"
	.text
	.align	2
	.global	test_va_list_several_short_vector_8_bytes
	.def	test_va_list_several_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_short_vector_8_bytes
test_va_list_several_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:117: DECLARE_TEST (several_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.40_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.40_1
	adrp	x0, .LC22	;# tmp107,
	add	x0, x0, :lo12:.LC22	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC22	;# tmp108,
	add	x1, x0, :lo12:.LC22	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_short_vector_8_bytes
	.def	use_indirect_va_list_several_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_short_vector_8_bytes
use_indirect_va_list_several_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:117: DECLARE_TEST (several_short_vector_8_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC22	;# tmp104,
	add	x0, x0, :lo12:.LC22	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC22	;# tmp105,
	add	x1, x0, :lo12:.LC22	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_short_vector_8_bytes
	.def	test_indirect_va_list_several_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_short_vector_8_bytes
test_indirect_va_list_several_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:117: DECLARE_TEST (several_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.41_1, argv
	mov	x1, x0	;#, argv.41_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_short_vector_8_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC23:
	.ascii "many_short_vector_8_bytes\0"
	.text
	.align	2
	.global	test_va_list_many_short_vector_8_bytes
	.def	test_va_list_many_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_short_vector_8_bytes
test_va_list_many_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:118: DECLARE_TEST (many_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.42_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.42_1
	adrp	x0, .LC23	;# tmp107,
	add	x0, x0, :lo12:.LC23	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC23	;# tmp108,
	add	x1, x0, :lo12:.LC23	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_short_vector_8_bytes
	.def	use_indirect_va_list_many_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_short_vector_8_bytes
use_indirect_va_list_many_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:118: DECLARE_TEST (many_short_vector_8_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC23	;# tmp104,
	add	x0, x0, :lo12:.LC23	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC23	;# tmp105,
	add	x1, x0, :lo12:.LC23	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_short_vector_8_bytes
	.def	test_indirect_va_list_many_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_short_vector_8_bytes
test_indirect_va_list_many_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:118: DECLARE_TEST (many_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.43_1, argv
	mov	x1, x0	;#, argv.43_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_short_vector_8_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC24:
	.ascii "few_not_short_vector_12_bytes\0"
	.text
	.align	2
	.global	test_va_list_few_not_short_vector_12_bytes
	.def	test_va_list_few_not_short_vector_12_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_not_short_vector_12_bytes
test_va_list_few_not_short_vector_12_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:120: DECLARE_TEST (few_not_short_vector_12_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.44_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.44_1
	adrp	x0, .LC24	;# tmp107,
	add	x0, x0, :lo12:.LC24	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC24	;# tmp108,
	add	x1, x0, :lo12:.LC24	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_not_short_vector_12_bytes
	.def	use_indirect_va_list_few_not_short_vector_12_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_not_short_vector_12_bytes
use_indirect_va_list_few_not_short_vector_12_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:120: DECLARE_TEST (few_not_short_vector_12_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC24	;# tmp104,
	add	x0, x0, :lo12:.LC24	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC24	;# tmp105,
	add	x1, x0, :lo12:.LC24	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_not_short_vector_12_bytes
	.def	test_indirect_va_list_few_not_short_vector_12_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_not_short_vector_12_bytes
test_indirect_va_list_few_not_short_vector_12_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:120: DECLARE_TEST (few_not_short_vector_12_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.45_1, argv
	mov	x1, x0	;#, argv.45_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_not_short_vector_12_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC25:
	.ascii "several_not_short_vector_12_bytes\0"
	.text
	.align	2
	.global	test_va_list_several_not_short_vector_12_bytes
	.def	test_va_list_several_not_short_vector_12_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_not_short_vector_12_bytes
test_va_list_several_not_short_vector_12_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:121: DECLARE_TEST (several_not_short_vector_12_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.46_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.46_1
	adrp	x0, .LC25	;# tmp107,
	add	x0, x0, :lo12:.LC25	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC25	;# tmp108,
	add	x1, x0, :lo12:.LC25	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_not_short_vector_12_bytes
	.def	use_indirect_va_list_several_not_short_vector_12_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_not_short_vector_12_bytes
use_indirect_va_list_several_not_short_vector_12_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:121: DECLARE_TEST (several_not_short_vector_12_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC25	;# tmp104,
	add	x0, x0, :lo12:.LC25	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC25	;# tmp105,
	add	x1, x0, :lo12:.LC25	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_not_short_vector_12_bytes
	.def	test_indirect_va_list_several_not_short_vector_12_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_not_short_vector_12_bytes
test_indirect_va_list_several_not_short_vector_12_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:121: DECLARE_TEST (several_not_short_vector_12_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.47_1, argv
	mov	x1, x0	;#, argv.47_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_not_short_vector_12_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC26:
	.ascii "many_not_short_vector_12_bytes\0"
	.text
	.align	2
	.global	test_va_list_many_not_short_vector_12_bytes
	.def	test_va_list_many_not_short_vector_12_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_not_short_vector_12_bytes
test_va_list_many_not_short_vector_12_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:122: DECLARE_TEST (many_not_short_vector_12_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.48_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.48_1
	adrp	x0, .LC26	;# tmp107,
	add	x0, x0, :lo12:.LC26	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC26	;# tmp108,
	add	x1, x0, :lo12:.LC26	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_not_short_vector_12_bytes
	.def	use_indirect_va_list_many_not_short_vector_12_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_not_short_vector_12_bytes
use_indirect_va_list_many_not_short_vector_12_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:122: DECLARE_TEST (many_not_short_vector_12_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC26	;# tmp104,
	add	x0, x0, :lo12:.LC26	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC26	;# tmp105,
	add	x1, x0, :lo12:.LC26	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_not_short_vector_12_bytes
	.def	test_indirect_va_list_many_not_short_vector_12_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_not_short_vector_12_bytes
test_indirect_va_list_many_not_short_vector_12_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:122: DECLARE_TEST (many_not_short_vector_12_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.49_1, argv
	mov	x1, x0	;#, argv.49_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_not_short_vector_12_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC27:
	.ascii "few_short_vector_16_bytes\0"
	.text
	.align	2
	.global	test_va_list_few_short_vector_16_bytes
	.def	test_va_list_few_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_short_vector_16_bytes
test_va_list_few_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:124: DECLARE_TEST (few_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.50_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.50_1
	adrp	x0, .LC27	;# tmp107,
	add	x0, x0, :lo12:.LC27	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC27	;# tmp108,
	add	x1, x0, :lo12:.LC27	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_short_vector_16_bytes
	.def	use_indirect_va_list_few_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_short_vector_16_bytes
use_indirect_va_list_few_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:124: DECLARE_TEST (few_short_vector_16_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC27	;# tmp104,
	add	x0, x0, :lo12:.LC27	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC27	;# tmp105,
	add	x1, x0, :lo12:.LC27	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_short_vector_16_bytes
	.def	test_indirect_va_list_few_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_short_vector_16_bytes
test_indirect_va_list_few_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:124: DECLARE_TEST (few_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.51_1, argv
	mov	x1, x0	;#, argv.51_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_short_vector_16_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC28:
	.ascii "several_short_vector_16_bytes\0"
	.text
	.align	2
	.global	test_va_list_several_short_vector_16_bytes
	.def	test_va_list_several_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_short_vector_16_bytes
test_va_list_several_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:125: DECLARE_TEST (several_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.52_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.52_1
	adrp	x0, .LC28	;# tmp107,
	add	x0, x0, :lo12:.LC28	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC28	;# tmp108,
	add	x1, x0, :lo12:.LC28	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_short_vector_16_bytes
	.def	use_indirect_va_list_several_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_short_vector_16_bytes
use_indirect_va_list_several_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:125: DECLARE_TEST (several_short_vector_16_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC28	;# tmp104,
	add	x0, x0, :lo12:.LC28	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC28	;# tmp105,
	add	x1, x0, :lo12:.LC28	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_short_vector_16_bytes
	.def	test_indirect_va_list_several_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_short_vector_16_bytes
test_indirect_va_list_several_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:125: DECLARE_TEST (several_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.53_1, argv
	mov	x1, x0	;#, argv.53_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_short_vector_16_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC29:
	.ascii "many_short_vector_16_bytes\0"
	.text
	.align	2
	.global	test_va_list_many_short_vector_16_bytes
	.def	test_va_list_many_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_short_vector_16_bytes
test_va_list_many_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:126: DECLARE_TEST (many_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.54_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.54_1
	adrp	x0, .LC29	;# tmp107,
	add	x0, x0, :lo12:.LC29	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC29	;# tmp108,
	add	x1, x0, :lo12:.LC29	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_short_vector_16_bytes
	.def	use_indirect_va_list_many_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_short_vector_16_bytes
use_indirect_va_list_many_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:126: DECLARE_TEST (many_short_vector_16_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC29	;# tmp104,
	add	x0, x0, :lo12:.LC29	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC29	;# tmp105,
	add	x1, x0, :lo12:.LC29	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_short_vector_16_bytes
	.def	test_indirect_va_list_many_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_short_vector_16_bytes
test_indirect_va_list_many_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:126: DECLARE_TEST (many_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.55_1, argv
	mov	x1, x0	;#, argv.55_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_short_vector_16_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC30:
	.ascii "few_hfa_2_floats\0"
	.text
	.align	2
	.global	test_va_list_few_hfa_2_floats
	.def	test_va_list_few_hfa_2_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_hfa_2_floats
test_va_list_few_hfa_2_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:128: DECLARE_TEST (few_hfa_2_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.56_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.56_1
	adrp	x0, .LC30	;# tmp107,
	add	x0, x0, :lo12:.LC30	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC30	;# tmp108,
	add	x1, x0, :lo12:.LC30	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_hfa_2_floats
	.def	use_indirect_va_list_few_hfa_2_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_hfa_2_floats
use_indirect_va_list_few_hfa_2_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:128: DECLARE_TEST (few_hfa_2_floats);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC30	;# tmp104,
	add	x0, x0, :lo12:.LC30	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC30	;# tmp105,
	add	x1, x0, :lo12:.LC30	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_hfa_2_floats
	.def	test_indirect_va_list_few_hfa_2_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_hfa_2_floats
test_indirect_va_list_few_hfa_2_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:128: DECLARE_TEST (few_hfa_2_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.57_1, argv
	mov	x1, x0	;#, argv.57_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_hfa_2_floats		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC31:
	.ascii "several_hfa_2_floats\0"
	.text
	.align	2
	.global	test_va_list_several_hfa_2_floats
	.def	test_va_list_several_hfa_2_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_hfa_2_floats
test_va_list_several_hfa_2_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:129: DECLARE_TEST (several_hfa_2_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.58_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.58_1
	adrp	x0, .LC31	;# tmp107,
	add	x0, x0, :lo12:.LC31	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC31	;# tmp108,
	add	x1, x0, :lo12:.LC31	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_hfa_2_floats
	.def	use_indirect_va_list_several_hfa_2_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_hfa_2_floats
use_indirect_va_list_several_hfa_2_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:129: DECLARE_TEST (several_hfa_2_floats);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC31	;# tmp104,
	add	x0, x0, :lo12:.LC31	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC31	;# tmp105,
	add	x1, x0, :lo12:.LC31	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_hfa_2_floats
	.def	test_indirect_va_list_several_hfa_2_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_hfa_2_floats
test_indirect_va_list_several_hfa_2_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:129: DECLARE_TEST (several_hfa_2_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.59_1, argv
	mov	x1, x0	;#, argv.59_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_hfa_2_floats		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC32:
	.ascii "many_hfa_2_floats\0"
	.text
	.align	2
	.global	test_va_list_many_hfa_2_floats
	.def	test_va_list_many_hfa_2_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_hfa_2_floats
test_va_list_many_hfa_2_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:130: DECLARE_TEST (many_hfa_2_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.60_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.60_1
	adrp	x0, .LC32	;# tmp107,
	add	x0, x0, :lo12:.LC32	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC32	;# tmp108,
	add	x1, x0, :lo12:.LC32	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_hfa_2_floats
	.def	use_indirect_va_list_many_hfa_2_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_hfa_2_floats
use_indirect_va_list_many_hfa_2_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:130: DECLARE_TEST (many_hfa_2_floats);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC32	;# tmp104,
	add	x0, x0, :lo12:.LC32	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC32	;# tmp105,
	add	x1, x0, :lo12:.LC32	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_hfa_2_floats
	.def	test_indirect_va_list_many_hfa_2_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_hfa_2_floats
test_indirect_va_list_many_hfa_2_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:130: DECLARE_TEST (many_hfa_2_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.61_1, argv
	mov	x1, x0	;#, argv.61_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_hfa_2_floats		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC33:
	.ascii "few_hfa_4_floats\0"
	.text
	.align	2
	.global	test_va_list_few_hfa_4_floats
	.def	test_va_list_few_hfa_4_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_hfa_4_floats
test_va_list_few_hfa_4_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:132: DECLARE_TEST (few_hfa_4_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.62_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.62_1
	adrp	x0, .LC33	;# tmp107,
	add	x0, x0, :lo12:.LC33	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC33	;# tmp108,
	add	x1, x0, :lo12:.LC33	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_hfa_4_floats
	.def	use_indirect_va_list_few_hfa_4_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_hfa_4_floats
use_indirect_va_list_few_hfa_4_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:132: DECLARE_TEST (few_hfa_4_floats);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC33	;# tmp104,
	add	x0, x0, :lo12:.LC33	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC33	;# tmp105,
	add	x1, x0, :lo12:.LC33	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_hfa_4_floats
	.def	test_indirect_va_list_few_hfa_4_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_hfa_4_floats
test_indirect_va_list_few_hfa_4_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:132: DECLARE_TEST (few_hfa_4_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.63_1, argv
	mov	x1, x0	;#, argv.63_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_hfa_4_floats		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC34:
	.ascii "several_hfa_4_floats\0"
	.text
	.align	2
	.global	test_va_list_several_hfa_4_floats
	.def	test_va_list_several_hfa_4_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_hfa_4_floats
test_va_list_several_hfa_4_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:133: DECLARE_TEST (several_hfa_4_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.64_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.64_1
	adrp	x0, .LC34	;# tmp107,
	add	x0, x0, :lo12:.LC34	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC34	;# tmp108,
	add	x1, x0, :lo12:.LC34	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_hfa_4_floats
	.def	use_indirect_va_list_several_hfa_4_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_hfa_4_floats
use_indirect_va_list_several_hfa_4_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:133: DECLARE_TEST (several_hfa_4_floats);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC34	;# tmp104,
	add	x0, x0, :lo12:.LC34	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC34	;# tmp105,
	add	x1, x0, :lo12:.LC34	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_hfa_4_floats
	.def	test_indirect_va_list_several_hfa_4_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_hfa_4_floats
test_indirect_va_list_several_hfa_4_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:133: DECLARE_TEST (several_hfa_4_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.65_1, argv
	mov	x1, x0	;#, argv.65_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_hfa_4_floats		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC35:
	.ascii "many_hfa_4_floats\0"
	.text
	.align	2
	.global	test_va_list_many_hfa_4_floats
	.def	test_va_list_many_hfa_4_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_hfa_4_floats
test_va_list_many_hfa_4_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:134: DECLARE_TEST (many_hfa_4_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.66_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.66_1
	adrp	x0, .LC35	;# tmp107,
	add	x0, x0, :lo12:.LC35	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC35	;# tmp108,
	add	x1, x0, :lo12:.LC35	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_hfa_4_floats
	.def	use_indirect_va_list_many_hfa_4_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_hfa_4_floats
use_indirect_va_list_many_hfa_4_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:134: DECLARE_TEST (many_hfa_4_floats);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC35	;# tmp104,
	add	x0, x0, :lo12:.LC35	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC35	;# tmp105,
	add	x1, x0, :lo12:.LC35	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_hfa_4_floats
	.def	test_indirect_va_list_many_hfa_4_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_hfa_4_floats
test_indirect_va_list_many_hfa_4_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:134: DECLARE_TEST (many_hfa_4_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.67_1, argv
	mov	x1, x0	;#, argv.67_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_hfa_4_floats		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC36:
	.ascii "few_hfa_2_doubles\0"
	.text
	.align	2
	.global	test_va_list_few_hfa_2_doubles
	.def	test_va_list_few_hfa_2_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_hfa_2_doubles
test_va_list_few_hfa_2_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:136: DECLARE_TEST (few_hfa_2_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.68_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.68_1
	adrp	x0, .LC36	;# tmp107,
	add	x0, x0, :lo12:.LC36	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC36	;# tmp108,
	add	x1, x0, :lo12:.LC36	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_hfa_2_doubles
	.def	use_indirect_va_list_few_hfa_2_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_hfa_2_doubles
use_indirect_va_list_few_hfa_2_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:136: DECLARE_TEST (few_hfa_2_doubles);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC36	;# tmp104,
	add	x0, x0, :lo12:.LC36	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC36	;# tmp105,
	add	x1, x0, :lo12:.LC36	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_hfa_2_doubles
	.def	test_indirect_va_list_few_hfa_2_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_hfa_2_doubles
test_indirect_va_list_few_hfa_2_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:136: DECLARE_TEST (few_hfa_2_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.69_1, argv
	mov	x1, x0	;#, argv.69_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_hfa_2_doubles		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC37:
	.ascii "several_hfa_2_doubles\0"
	.text
	.align	2
	.global	test_va_list_several_hfa_2_doubles
	.def	test_va_list_several_hfa_2_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_hfa_2_doubles
test_va_list_several_hfa_2_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:137: DECLARE_TEST (several_hfa_2_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.70_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.70_1
	adrp	x0, .LC37	;# tmp107,
	add	x0, x0, :lo12:.LC37	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC37	;# tmp108,
	add	x1, x0, :lo12:.LC37	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_hfa_2_doubles
	.def	use_indirect_va_list_several_hfa_2_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_hfa_2_doubles
use_indirect_va_list_several_hfa_2_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:137: DECLARE_TEST (several_hfa_2_doubles);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC37	;# tmp104,
	add	x0, x0, :lo12:.LC37	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC37	;# tmp105,
	add	x1, x0, :lo12:.LC37	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_hfa_2_doubles
	.def	test_indirect_va_list_several_hfa_2_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_hfa_2_doubles
test_indirect_va_list_several_hfa_2_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:137: DECLARE_TEST (several_hfa_2_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.71_1, argv
	mov	x1, x0	;#, argv.71_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_hfa_2_doubles		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC38:
	.ascii "many_hfa_2_doubles\0"
	.text
	.align	2
	.global	test_va_list_many_hfa_2_doubles
	.def	test_va_list_many_hfa_2_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_hfa_2_doubles
test_va_list_many_hfa_2_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:138: DECLARE_TEST (many_hfa_2_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.72_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.72_1
	adrp	x0, .LC38	;# tmp107,
	add	x0, x0, :lo12:.LC38	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC38	;# tmp108,
	add	x1, x0, :lo12:.LC38	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_hfa_2_doubles
	.def	use_indirect_va_list_many_hfa_2_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_hfa_2_doubles
use_indirect_va_list_many_hfa_2_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:138: DECLARE_TEST (many_hfa_2_doubles);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC38	;# tmp104,
	add	x0, x0, :lo12:.LC38	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC38	;# tmp105,
	add	x1, x0, :lo12:.LC38	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_hfa_2_doubles
	.def	test_indirect_va_list_many_hfa_2_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_hfa_2_doubles
test_indirect_va_list_many_hfa_2_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:138: DECLARE_TEST (many_hfa_2_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.73_1, argv
	mov	x1, x0	;#, argv.73_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_hfa_2_doubles		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC39:
	.ascii "few_hfa_4_doubles\0"
	.text
	.align	2
	.global	test_va_list_few_hfa_4_doubles
	.def	test_va_list_few_hfa_4_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_hfa_4_doubles
test_va_list_few_hfa_4_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:140: DECLARE_TEST (few_hfa_4_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.74_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.74_1
	adrp	x0, .LC39	;# tmp107,
	add	x0, x0, :lo12:.LC39	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC39	;# tmp108,
	add	x1, x0, :lo12:.LC39	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_hfa_4_doubles
	.def	use_indirect_va_list_few_hfa_4_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_hfa_4_doubles
use_indirect_va_list_few_hfa_4_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:140: DECLARE_TEST (few_hfa_4_doubles);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC39	;# tmp104,
	add	x0, x0, :lo12:.LC39	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC39	;# tmp105,
	add	x1, x0, :lo12:.LC39	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_hfa_4_doubles
	.def	test_indirect_va_list_few_hfa_4_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_hfa_4_doubles
test_indirect_va_list_few_hfa_4_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:140: DECLARE_TEST (few_hfa_4_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.75_1, argv
	mov	x1, x0	;#, argv.75_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_hfa_4_doubles		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC40:
	.ascii "several_hfa_4_doubles\0"
	.text
	.align	2
	.global	test_va_list_several_hfa_4_doubles
	.def	test_va_list_several_hfa_4_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_hfa_4_doubles
test_va_list_several_hfa_4_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:141: DECLARE_TEST (several_hfa_4_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.76_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.76_1
	adrp	x0, .LC40	;# tmp107,
	add	x0, x0, :lo12:.LC40	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC40	;# tmp108,
	add	x1, x0, :lo12:.LC40	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_hfa_4_doubles
	.def	use_indirect_va_list_several_hfa_4_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_hfa_4_doubles
use_indirect_va_list_several_hfa_4_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:141: DECLARE_TEST (several_hfa_4_doubles);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC40	;# tmp104,
	add	x0, x0, :lo12:.LC40	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC40	;# tmp105,
	add	x1, x0, :lo12:.LC40	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_hfa_4_doubles
	.def	test_indirect_va_list_several_hfa_4_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_hfa_4_doubles
test_indirect_va_list_several_hfa_4_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:141: DECLARE_TEST (several_hfa_4_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.77_1, argv
	mov	x1, x0	;#, argv.77_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_hfa_4_doubles		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC41:
	.ascii "many_hfa_4_doubles\0"
	.text
	.align	2
	.global	test_va_list_many_hfa_4_doubles
	.def	test_va_list_many_hfa_4_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_hfa_4_doubles
test_va_list_many_hfa_4_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:142: DECLARE_TEST (many_hfa_4_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.78_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.78_1
	adrp	x0, .LC41	;# tmp107,
	add	x0, x0, :lo12:.LC41	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC41	;# tmp108,
	add	x1, x0, :lo12:.LC41	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_hfa_4_doubles
	.def	use_indirect_va_list_many_hfa_4_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_hfa_4_doubles
use_indirect_va_list_many_hfa_4_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:142: DECLARE_TEST (many_hfa_4_doubles);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC41	;# tmp104,
	add	x0, x0, :lo12:.LC41	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC41	;# tmp105,
	add	x1, x0, :lo12:.LC41	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_hfa_4_doubles
	.def	test_indirect_va_list_many_hfa_4_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_hfa_4_doubles
test_indirect_va_list_many_hfa_4_doubles:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:142: DECLARE_TEST (many_hfa_4_doubles);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.79_1, argv
	mov	x1, x0	;#, argv.79_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_hfa_4_doubles		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC42:
	.ascii "few_hva_2_short_vector_8_bytes\0"
	.text
	.align	2
	.global	test_va_list_few_hva_2_short_vector_8_bytes
	.def	test_va_list_few_hva_2_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_hva_2_short_vector_8_bytes
test_va_list_few_hva_2_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:144: DECLARE_TEST (few_hva_2_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.80_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.80_1
	adrp	x0, .LC42	;# tmp107,
	add	x0, x0, :lo12:.LC42	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC42	;# tmp108,
	add	x1, x0, :lo12:.LC42	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_hva_2_short_vector_8_bytes
	.def	use_indirect_va_list_few_hva_2_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_hva_2_short_vector_8_bytes
use_indirect_va_list_few_hva_2_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:144: DECLARE_TEST (few_hva_2_short_vector_8_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC42	;# tmp104,
	add	x0, x0, :lo12:.LC42	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC42	;# tmp105,
	add	x1, x0, :lo12:.LC42	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_hva_2_short_vector_8_bytes
	.def	test_indirect_va_list_few_hva_2_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_hva_2_short_vector_8_bytes
test_indirect_va_list_few_hva_2_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:144: DECLARE_TEST (few_hva_2_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.81_1, argv
	mov	x1, x0	;#, argv.81_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_hva_2_short_vector_8_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC43:
	.ascii "several_hva_2_short_vector_8_bytes\0"
	.text
	.align	2
	.global	test_va_list_several_hva_2_short_vector_8_bytes
	.def	test_va_list_several_hva_2_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_hva_2_short_vector_8_bytes
test_va_list_several_hva_2_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:145: DECLARE_TEST (several_hva_2_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.82_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.82_1
	adrp	x0, .LC43	;# tmp107,
	add	x0, x0, :lo12:.LC43	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC43	;# tmp108,
	add	x1, x0, :lo12:.LC43	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_hva_2_short_vector_8_bytes
	.def	use_indirect_va_list_several_hva_2_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_hva_2_short_vector_8_bytes
use_indirect_va_list_several_hva_2_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:145: DECLARE_TEST (several_hva_2_short_vector_8_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC43	;# tmp104,
	add	x0, x0, :lo12:.LC43	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC43	;# tmp105,
	add	x1, x0, :lo12:.LC43	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_hva_2_short_vector_8_bytes
	.def	test_indirect_va_list_several_hva_2_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_hva_2_short_vector_8_bytes
test_indirect_va_list_several_hva_2_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:145: DECLARE_TEST (several_hva_2_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.83_1, argv
	mov	x1, x0	;#, argv.83_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_hva_2_short_vector_8_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC44:
	.ascii "many_hva_2_short_vector_8_bytes\0"
	.text
	.align	2
	.global	test_va_list_many_hva_2_short_vector_8_bytes
	.def	test_va_list_many_hva_2_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_hva_2_short_vector_8_bytes
test_va_list_many_hva_2_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:146: DECLARE_TEST (many_hva_2_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.84_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.84_1
	adrp	x0, .LC44	;# tmp107,
	add	x0, x0, :lo12:.LC44	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC44	;# tmp108,
	add	x1, x0, :lo12:.LC44	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_hva_2_short_vector_8_bytes
	.def	use_indirect_va_list_many_hva_2_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_hva_2_short_vector_8_bytes
use_indirect_va_list_many_hva_2_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:146: DECLARE_TEST (many_hva_2_short_vector_8_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC44	;# tmp104,
	add	x0, x0, :lo12:.LC44	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC44	;# tmp105,
	add	x1, x0, :lo12:.LC44	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_hva_2_short_vector_8_bytes
	.def	test_indirect_va_list_many_hva_2_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_hva_2_short_vector_8_bytes
test_indirect_va_list_many_hva_2_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:146: DECLARE_TEST (many_hva_2_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.85_1, argv
	mov	x1, x0	;#, argv.85_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_hva_2_short_vector_8_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC45:
	.ascii "few_hva_4_short_vector_8_bytes\0"
	.text
	.align	2
	.global	test_va_list_few_hva_4_short_vector_8_bytes
	.def	test_va_list_few_hva_4_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_hva_4_short_vector_8_bytes
test_va_list_few_hva_4_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:148: DECLARE_TEST (few_hva_4_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.86_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.86_1
	adrp	x0, .LC45	;# tmp107,
	add	x0, x0, :lo12:.LC45	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC45	;# tmp108,
	add	x1, x0, :lo12:.LC45	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_hva_4_short_vector_8_bytes
	.def	use_indirect_va_list_few_hva_4_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_hva_4_short_vector_8_bytes
use_indirect_va_list_few_hva_4_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:148: DECLARE_TEST (few_hva_4_short_vector_8_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC45	;# tmp104,
	add	x0, x0, :lo12:.LC45	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC45	;# tmp105,
	add	x1, x0, :lo12:.LC45	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_hva_4_short_vector_8_bytes
	.def	test_indirect_va_list_few_hva_4_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_hva_4_short_vector_8_bytes
test_indirect_va_list_few_hva_4_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:148: DECLARE_TEST (few_hva_4_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.87_1, argv
	mov	x1, x0	;#, argv.87_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_hva_4_short_vector_8_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC46:
	.ascii "several_hva_4_short_vector_8_bytes\0"
	.text
	.align	2
	.global	test_va_list_several_hva_4_short_vector_8_bytes
	.def	test_va_list_several_hva_4_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_hva_4_short_vector_8_bytes
test_va_list_several_hva_4_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:149: DECLARE_TEST (several_hva_4_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.88_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.88_1
	adrp	x0, .LC46	;# tmp107,
	add	x0, x0, :lo12:.LC46	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC46	;# tmp108,
	add	x1, x0, :lo12:.LC46	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_hva_4_short_vector_8_bytes
	.def	use_indirect_va_list_several_hva_4_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_hva_4_short_vector_8_bytes
use_indirect_va_list_several_hva_4_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:149: DECLARE_TEST (several_hva_4_short_vector_8_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC46	;# tmp104,
	add	x0, x0, :lo12:.LC46	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC46	;# tmp105,
	add	x1, x0, :lo12:.LC46	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_hva_4_short_vector_8_bytes
	.def	test_indirect_va_list_several_hva_4_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_hva_4_short_vector_8_bytes
test_indirect_va_list_several_hva_4_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:149: DECLARE_TEST (several_hva_4_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.89_1, argv
	mov	x1, x0	;#, argv.89_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_hva_4_short_vector_8_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC47:
	.ascii "many_hva_4_short_vector_8_bytes\0"
	.text
	.align	2
	.global	test_va_list_many_hva_4_short_vector_8_bytes
	.def	test_va_list_many_hva_4_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_hva_4_short_vector_8_bytes
test_va_list_many_hva_4_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:150: DECLARE_TEST (many_hva_4_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.90_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.90_1
	adrp	x0, .LC47	;# tmp107,
	add	x0, x0, :lo12:.LC47	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC47	;# tmp108,
	add	x1, x0, :lo12:.LC47	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_hva_4_short_vector_8_bytes
	.def	use_indirect_va_list_many_hva_4_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_hva_4_short_vector_8_bytes
use_indirect_va_list_many_hva_4_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:150: DECLARE_TEST (many_hva_4_short_vector_8_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC47	;# tmp104,
	add	x0, x0, :lo12:.LC47	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC47	;# tmp105,
	add	x1, x0, :lo12:.LC47	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_hva_4_short_vector_8_bytes
	.def	test_indirect_va_list_many_hva_4_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_hva_4_short_vector_8_bytes
test_indirect_va_list_many_hva_4_short_vector_8_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:150: DECLARE_TEST (many_hva_4_short_vector_8_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.91_1, argv
	mov	x1, x0	;#, argv.91_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_hva_4_short_vector_8_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC48:
	.ascii "few_hva_2_short_vector_16_bytes\0"
	.text
	.align	2
	.global	test_va_list_few_hva_2_short_vector_16_bytes
	.def	test_va_list_few_hva_2_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_hva_2_short_vector_16_bytes
test_va_list_few_hva_2_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:152: DECLARE_TEST (few_hva_2_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.92_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.92_1
	adrp	x0, .LC48	;# tmp107,
	add	x0, x0, :lo12:.LC48	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC48	;# tmp108,
	add	x1, x0, :lo12:.LC48	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_hva_2_short_vector_16_bytes
	.def	use_indirect_va_list_few_hva_2_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_hva_2_short_vector_16_bytes
use_indirect_va_list_few_hva_2_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:152: DECLARE_TEST (few_hva_2_short_vector_16_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC48	;# tmp104,
	add	x0, x0, :lo12:.LC48	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC48	;# tmp105,
	add	x1, x0, :lo12:.LC48	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_hva_2_short_vector_16_bytes
	.def	test_indirect_va_list_few_hva_2_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_hva_2_short_vector_16_bytes
test_indirect_va_list_few_hva_2_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:152: DECLARE_TEST (few_hva_2_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.93_1, argv
	mov	x1, x0	;#, argv.93_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_hva_2_short_vector_16_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC49:
	.ascii "several_hva_2_short_vector_16_bytes\0"
	.text
	.align	2
	.global	test_va_list_several_hva_2_short_vector_16_bytes
	.def	test_va_list_several_hva_2_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_hva_2_short_vector_16_bytes
test_va_list_several_hva_2_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:153: DECLARE_TEST (several_hva_2_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.94_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.94_1
	adrp	x0, .LC49	;# tmp107,
	add	x0, x0, :lo12:.LC49	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC49	;# tmp108,
	add	x1, x0, :lo12:.LC49	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_hva_2_short_vector_16_bytes
	.def	use_indirect_va_list_several_hva_2_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_hva_2_short_vector_16_bytes
use_indirect_va_list_several_hva_2_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:153: DECLARE_TEST (several_hva_2_short_vector_16_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC49	;# tmp104,
	add	x0, x0, :lo12:.LC49	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC49	;# tmp105,
	add	x1, x0, :lo12:.LC49	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_hva_2_short_vector_16_bytes
	.def	test_indirect_va_list_several_hva_2_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_hva_2_short_vector_16_bytes
test_indirect_va_list_several_hva_2_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:153: DECLARE_TEST (several_hva_2_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.95_1, argv
	mov	x1, x0	;#, argv.95_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_hva_2_short_vector_16_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC50:
	.ascii "many_hva_2_short_vector_16_bytes\0"
	.text
	.align	2
	.global	test_va_list_many_hva_2_short_vector_16_bytes
	.def	test_va_list_many_hva_2_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_hva_2_short_vector_16_bytes
test_va_list_many_hva_2_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:154: DECLARE_TEST (many_hva_2_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.96_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.96_1
	adrp	x0, .LC50	;# tmp107,
	add	x0, x0, :lo12:.LC50	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC50	;# tmp108,
	add	x1, x0, :lo12:.LC50	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_hva_2_short_vector_16_bytes
	.def	use_indirect_va_list_many_hva_2_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_hva_2_short_vector_16_bytes
use_indirect_va_list_many_hva_2_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:154: DECLARE_TEST (many_hva_2_short_vector_16_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC50	;# tmp104,
	add	x0, x0, :lo12:.LC50	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC50	;# tmp105,
	add	x1, x0, :lo12:.LC50	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_hva_2_short_vector_16_bytes
	.def	test_indirect_va_list_many_hva_2_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_hva_2_short_vector_16_bytes
test_indirect_va_list_many_hva_2_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:154: DECLARE_TEST (many_hva_2_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.97_1, argv
	mov	x1, x0	;#, argv.97_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_hva_2_short_vector_16_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC51:
	.ascii "few_hva_4_short_vector_16_bytes\0"
	.text
	.align	2
	.global	test_va_list_few_hva_4_short_vector_16_bytes
	.def	test_va_list_few_hva_4_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_few_hva_4_short_vector_16_bytes
test_va_list_few_hva_4_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:156: DECLARE_TEST (few_hva_4_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.98_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.98_1
	adrp	x0, .LC51	;# tmp107,
	add	x0, x0, :lo12:.LC51	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC51	;# tmp108,
	add	x1, x0, :lo12:.LC51	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_few_hva_4_short_vector_16_bytes
	.def	use_indirect_va_list_few_hva_4_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_few_hva_4_short_vector_16_bytes
use_indirect_va_list_few_hva_4_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:156: DECLARE_TEST (few_hva_4_short_vector_16_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC51	;# tmp104,
	add	x0, x0, :lo12:.LC51	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC51	;# tmp105,
	add	x1, x0, :lo12:.LC51	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_few_hva_4_short_vector_16_bytes
	.def	test_indirect_va_list_few_hva_4_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_few_hva_4_short_vector_16_bytes
test_indirect_va_list_few_hva_4_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:156: DECLARE_TEST (few_hva_4_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.99_1, argv
	mov	x1, x0	;#, argv.99_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_few_hva_4_short_vector_16_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC52:
	.ascii "several_hva_4_short_vector_16_bytes\0"
	.text
	.align	2
	.global	test_va_list_several_hva_4_short_vector_16_bytes
	.def	test_va_list_several_hva_4_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_several_hva_4_short_vector_16_bytes
test_va_list_several_hva_4_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:157: DECLARE_TEST (several_hva_4_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.100_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.100_1
	adrp	x0, .LC52	;# tmp107,
	add	x0, x0, :lo12:.LC52	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC52	;# tmp108,
	add	x1, x0, :lo12:.LC52	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_several_hva_4_short_vector_16_bytes
	.def	use_indirect_va_list_several_hva_4_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_several_hva_4_short_vector_16_bytes
use_indirect_va_list_several_hva_4_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:157: DECLARE_TEST (several_hva_4_short_vector_16_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC52	;# tmp104,
	add	x0, x0, :lo12:.LC52	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC52	;# tmp105,
	add	x1, x0, :lo12:.LC52	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_several_hva_4_short_vector_16_bytes
	.def	test_indirect_va_list_several_hva_4_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_several_hva_4_short_vector_16_bytes
test_indirect_va_list_several_hva_4_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:157: DECLARE_TEST (several_hva_4_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.101_1, argv
	mov	x1, x0	;#, argv.101_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_several_hva_4_short_vector_16_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC53:
	.ascii "many_hva_4_short_vector_16_bytes\0"
	.text
	.align	2
	.global	test_va_list_many_hva_4_short_vector_16_bytes
	.def	test_va_list_many_hva_4_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_many_hva_4_short_vector_16_bytes
test_va_list_many_hva_4_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:158: DECLARE_TEST (many_hva_4_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.102_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.102_1
	adrp	x0, .LC53	;# tmp107,
	add	x0, x0, :lo12:.LC53	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC53	;# tmp108,
	add	x1, x0, :lo12:.LC53	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_many_hva_4_short_vector_16_bytes
	.def	use_indirect_va_list_many_hva_4_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_many_hva_4_short_vector_16_bytes
use_indirect_va_list_many_hva_4_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:158: DECLARE_TEST (many_hva_4_short_vector_16_bytes);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC53	;# tmp104,
	add	x0, x0, :lo12:.LC53	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC53	;# tmp105,
	add	x1, x0, :lo12:.LC53	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_many_hva_4_short_vector_16_bytes
	.def	test_indirect_va_list_many_hva_4_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_many_hva_4_short_vector_16_bytes
test_indirect_va_list_many_hva_4_short_vector_16_bytes:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:158: DECLARE_TEST (many_hva_4_short_vector_16_bytes);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.103_1, argv
	mov	x1, x0	;#, argv.103_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_many_hva_4_short_vector_16_bytes		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC54:
	.ascii "ints_and_composites\0"
	.text
	.align	2
	.global	test_va_list_ints_and_composites
	.def	test_va_list_ints_and_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_ints_and_composites
test_va_list_ints_and_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:160: DECLARE_TEST (ints_and_composites);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.104_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.104_1
	adrp	x0, .LC54	;# tmp107,
	add	x0, x0, :lo12:.LC54	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC54	;# tmp108,
	add	x1, x0, :lo12:.LC54	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_ints_and_composites
	.def	use_indirect_va_list_ints_and_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_ints_and_composites
use_indirect_va_list_ints_and_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:160: DECLARE_TEST (ints_and_composites);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC54	;# tmp104,
	add	x0, x0, :lo12:.LC54	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC54	;# tmp105,
	add	x1, x0, :lo12:.LC54	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_ints_and_composites
	.def	test_indirect_va_list_ints_and_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_ints_and_composites
test_indirect_va_list_ints_and_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:160: DECLARE_TEST (ints_and_composites);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.105_1, argv
	mov	x1, x0	;#, argv.105_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_ints_and_composites		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC55:
	.ascii "ints_and_floats\0"
	.text
	.align	2
	.global	test_va_list_ints_and_floats
	.def	test_va_list_ints_and_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_ints_and_floats
test_va_list_ints_and_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:161: DECLARE_TEST (ints_and_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.106_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.106_1
	adrp	x0, .LC55	;# tmp107,
	add	x0, x0, :lo12:.LC55	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC55	;# tmp108,
	add	x1, x0, :lo12:.LC55	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_ints_and_floats
	.def	use_indirect_va_list_ints_and_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_ints_and_floats
use_indirect_va_list_ints_and_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:161: DECLARE_TEST (ints_and_floats);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC55	;# tmp104,
	add	x0, x0, :lo12:.LC55	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC55	;# tmp105,
	add	x1, x0, :lo12:.LC55	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_ints_and_floats
	.def	test_indirect_va_list_ints_and_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_ints_and_floats
test_indirect_va_list_ints_and_floats:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:161: DECLARE_TEST (ints_and_floats);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.107_1, argv
	mov	x1, x0	;#, argv.107_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_ints_and_floats		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC56:
	.ascii "ints_floats_and_composites\0"
	.text
	.align	2
	.global	test_va_list_ints_floats_and_composites
	.def	test_va_list_ints_floats_and_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list_ints_floats_and_composites
test_va_list_ints_floats_and_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:162: DECLARE_TEST (ints_floats_and_composites);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.108_1, argv
	ldr	x2, [sp, 24]	;# tmp106, func
	mov	x1, x0	;#, argv.108_1
	adrp	x0, .LC56	;# tmp107,
	add	x0, x0, :lo12:.LC56	;#, tmp107,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC56	;# tmp108,
	add	x1, x0, :lo12:.LC56	;#, tmp108,
	adrp	x0, .LC1	;# tmp109,
	add	x0, x0, :lo12:.LC1	;#, tmp109,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _9, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list_ints_floats_and_composites
	.def	use_indirect_va_list_ints_floats_and_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list_ints_floats_and_composites
use_indirect_va_list_ints_floats_and_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 16]	;# argv, argv
;# varargs-use-dll.c:162: DECLARE_TEST (ints_floats_and_composites);
	ldr	x2, [sp, 24]	;# tmp103, func
	ldr	x1, [sp, 16]	;#, argv
	adrp	x0, .LC56	;# tmp104,
	add	x0, x0, :lo12:.LC56	;#, tmp104,
	blr	x2		;# tmp103
	str	w0, [sp, 44]	;#, retval
	ldr	w2, [sp, 44]	;#, retval
	adrp	x0, .LC56	;# tmp105,
	add	x1, x0, :lo12:.LC56	;#, tmp105,
	adrp	x0, .LC2	;# tmp106,
	add	x0, x0, :lo12:.LC2	;#, tmp106,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 44]	;# _7, retval
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list_ints_floats_and_composites
	.def	test_indirect_va_list_ints_floats_and_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list_ints_floats_and_composites
test_indirect_va_list_ints_floats_and_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# func, func
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-use-dll.c:162: DECLARE_TEST (ints_floats_and_composites);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
	ldr	x0, [sp, 32]	;# argv.109_1, argv
	mov	x1, x0	;#, argv.109_1
	ldr	x0, [sp, 24]	;#, func
	bl	use_indirect_va_list_ints_floats_and_composites		;#
	str	w0, [sp, 44]	;#, retval
	ldr	w0, [sp, 44]	;# _8, retval
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.global	a
	.data
	.align	3
	.def	a;	.scl	2;	.type	0;	.endef
a:
;# a:
	.byte	1
	.space	63  // skip
	.global	b
	.align	3
	.def	b;	.scl	2;	.type	0;	.endef
b:
;# b:
	.space	4  // skip
	.word	2
	.space	56  // skip
	.global	c
	.section	.rdata,"dr"
	.align	3
.LC57:
	.ascii "3\0"
	.data
	.align	3
	.def	c;	.scl	2;	.type	0;	.endef
c:
;# c:
	.space	8  // skip
	.xword	.LC57
	.space	48  // skip
	.global	d
	.align	3
	.def	d;	.scl	2;	.type	0;	.endef
d:
;# a:
	.byte	5
	.space	63  // skip
	.global	e
	.align	3
	.def	e;	.scl	2;	.type	0;	.endef
e:
;# b:
	.space	4  // skip
	.word	8
	.space	56  // skip
	.global	f
	.section	.rdata,"dr"
	.align	3
.LC58:
	.ascii "13\0"
	.data
	.align	3
	.def	f;	.scl	2;	.type	0;	.endef
f:
;# c:
	.space	8  // skip
	.xword	.LC58
	.space	48  // skip
	.global	g
	.align	3
	.def	g;	.scl	2;	.type	0;	.endef
g:
;# a:
	.byte	21
	.space	63  // skip
	.global	h
	.align	3
	.def	h;	.scl	2;	.type	0;	.endef
h:
;# b:
	.space	4  // skip
	.word	34
	.space	56  // skip
	.global	i
	.section	.rdata,"dr"
	.align	3
.LC59:
	.ascii "55\0"
	.data
	.align	3
	.def	i;	.scl	2;	.type	0;	.endef
i:
;# c:
	.space	8  // skip
	.xword	.LC59
	.space	48  // skip
	.global	j
	.align	3
	.def	j;	.scl	2;	.type	0;	.endef
j:
;# a:
	.byte	89
	.space	63  // skip
	.global	k
	.align	3
	.def	k;	.scl	2;	.type	0;	.endef
k:
;# b:
	.space	4  // skip
	.word	144
	.space	56  // skip
	.global	l
	.section	.rdata,"dr"
	.align	3
.LC60:
	.ascii "233\0"
	.data
	.align	3
	.def	l;	.scl	2;	.type	0;	.endef
l:
;# c:
	.space	8  // skip
	.xword	.LC60
	.space	48  // skip
	.global	m
	.align	3
	.def	m;	.scl	2;	.type	0;	.endef
m:
;# b:
	.space	4  // skip
	.word	377
	.space	56  // skip
	.global	n
	.align	3
	.def	n;	.scl	2;	.type	0;	.endef
n:
;# b:
	.space	4  // skip
	.word	610
	.space	56  // skip
	.global	o
	.section	.rdata,"dr"
	.align	3
.LC61:
	.ascii "987\0"
	.data
	.align	3
	.def	o;	.scl	2;	.type	0;	.endef
o:
;# c:
	.space	8  // skip
	.xword	.LC61
	.space	48  // skip
	.global	p
	.align	3
	.def	p;	.scl	2;	.type	0;	.endef
p:
;# b:
	.space	4  // skip
	.word	1597
	.space	56  // skip
	.global	q
	.align	3
	.def	q;	.scl	2;	.type	0;	.endef
q:
;# b:
	.space	4  // skip
	.word	2584
	.space	56  // skip
	.global	sv8_a
	.align	3
	.def	sv8_a;	.scl	2;	.type	0;	.endef
sv8_a:
;# a:
	.word	1
	.space	4  // skip
	.global	sv8_b
	.align	3
	.def	sv8_b;	.scl	2;	.type	0;	.endef
sv8_b:
;# b:
	.space	4  // skip
	.word	2
	.global	sv8_c
	.align	3
	.def	sv8_c;	.scl	2;	.type	0;	.endef
sv8_c:
;# a:
	.word	3
	.space	4  // skip
	.global	sv8_d
	.align	3
	.def	sv8_d;	.scl	2;	.type	0;	.endef
sv8_d:
;# b:
	.space	4  // skip
	.word	5
	.global	sv8_e
	.align	3
	.def	sv8_e;	.scl	2;	.type	0;	.endef
sv8_e:
;# a:
	.word	8
	.space	4  // skip
	.global	sv8_f
	.align	3
	.def	sv8_f;	.scl	2;	.type	0;	.endef
sv8_f:
;# b:
	.space	4  // skip
	.word	13
	.global	sv8_g
	.align	3
	.def	sv8_g;	.scl	2;	.type	0;	.endef
sv8_g:
;# a:
	.word	21
	.space	4  // skip
	.global	sv8_h
	.align	3
	.def	sv8_h;	.scl	2;	.type	0;	.endef
sv8_h:
;# b:
	.space	4  // skip
	.word	34
	.global	sv8_i
	.align	3
	.def	sv8_i;	.scl	2;	.type	0;	.endef
sv8_i:
;# a:
	.word	55
	.space	4  // skip
	.global	sv8_j
	.align	3
	.def	sv8_j;	.scl	2;	.type	0;	.endef
sv8_j:
;# b:
	.space	4  // skip
	.word	89
	.global	sv8_k
	.align	3
	.def	sv8_k;	.scl	2;	.type	0;	.endef
sv8_k:
;# a:
	.word	144
	.space	4  // skip
	.global	sv8_l
	.align	3
	.def	sv8_l;	.scl	2;	.type	0;	.endef
sv8_l:
;# b:
	.space	4  // skip
	.word	233
	.global	sv8_m
	.align	3
	.def	sv8_m;	.scl	2;	.type	0;	.endef
sv8_m:
;# a:
	.word	377
	.space	4  // skip
	.global	sv8_n
	.align	3
	.def	sv8_n;	.scl	2;	.type	0;	.endef
sv8_n:
;# b:
	.space	4  // skip
	.word	610
	.global	sv8_o
	.align	3
	.def	sv8_o;	.scl	2;	.type	0;	.endef
sv8_o:
;# a:
	.word	987
	.space	4  // skip
	.global	sv8_p
	.align	3
	.def	sv8_p;	.scl	2;	.type	0;	.endef
sv8_p:
;# b:
	.space	4  // skip
	.word	1597
	.global	sv8_q
	.align	3
	.def	sv8_q;	.scl	2;	.type	0;	.endef
sv8_q:
;# a:
	.word	2584
	.space	4  // skip
	.global	nsv12_a
	.align	3
	.def	nsv12_a;	.scl	2;	.type	0;	.endef
nsv12_a:
;# a:
	.word	1
	.space	8  // skip
	.global	nsv12_b
	.align	3
	.def	nsv12_b;	.scl	2;	.type	0;	.endef
nsv12_b:
;# b:
	.space	4  // skip
	.word	2
	.space	4  // skip
	.global	nsv12_c
	.align	3
	.def	nsv12_c;	.scl	2;	.type	0;	.endef
nsv12_c:
;# c:
	.space	8  // skip
	.word	3
	.global	nsv12_d
	.align	3
	.def	nsv12_d;	.scl	2;	.type	0;	.endef
nsv12_d:
;# a:
	.word	5
	.space	8  // skip
	.global	nsv12_e
	.align	3
	.def	nsv12_e;	.scl	2;	.type	0;	.endef
nsv12_e:
;# b:
	.space	4  // skip
	.word	8
	.space	4  // skip
	.global	nsv12_f
	.align	3
	.def	nsv12_f;	.scl	2;	.type	0;	.endef
nsv12_f:
;# c:
	.space	8  // skip
	.word	13
	.global	nsv12_g
	.align	3
	.def	nsv12_g;	.scl	2;	.type	0;	.endef
nsv12_g:
;# a:
	.word	21
	.space	8  // skip
	.global	nsv12_h
	.align	3
	.def	nsv12_h;	.scl	2;	.type	0;	.endef
nsv12_h:
;# b:
	.space	4  // skip
	.word	34
	.space	4  // skip
	.global	nsv12_i
	.align	3
	.def	nsv12_i;	.scl	2;	.type	0;	.endef
nsv12_i:
;# c:
	.space	8  // skip
	.word	55
	.global	nsv12_j
	.align	3
	.def	nsv12_j;	.scl	2;	.type	0;	.endef
nsv12_j:
;# a:
	.word	89
	.space	8  // skip
	.global	nsv12_k
	.align	3
	.def	nsv12_k;	.scl	2;	.type	0;	.endef
nsv12_k:
;# b:
	.space	4  // skip
	.word	144
	.space	4  // skip
	.global	nsv12_l
	.align	3
	.def	nsv12_l;	.scl	2;	.type	0;	.endef
nsv12_l:
;# c:
	.space	8  // skip
	.word	233
	.global	nsv12_m
	.align	3
	.def	nsv12_m;	.scl	2;	.type	0;	.endef
nsv12_m:
;# a:
	.word	377
	.space	8  // skip
	.global	nsv12_n
	.align	3
	.def	nsv12_n;	.scl	2;	.type	0;	.endef
nsv12_n:
;# b:
	.space	4  // skip
	.word	610
	.space	4  // skip
	.global	nsv12_o
	.align	3
	.def	nsv12_o;	.scl	2;	.type	0;	.endef
nsv12_o:
;# c:
	.space	8  // skip
	.word	987
	.global	nsv12_p
	.align	3
	.def	nsv12_p;	.scl	2;	.type	0;	.endef
nsv12_p:
;# a:
	.word	1597
	.space	8  // skip
	.global	nsv12_q
	.align	3
	.def	nsv12_q;	.scl	2;	.type	0;	.endef
nsv12_q:
;# b:
	.space	4  // skip
	.word	2584
	.space	4  // skip
	.global	sv16_a
	.align	3
	.def	sv16_a;	.scl	2;	.type	0;	.endef
sv16_a:
;# a:
	.word	1
	.space	12  // skip
	.global	sv16_b
	.align	3
	.def	sv16_b;	.scl	2;	.type	0;	.endef
sv16_b:
;# b:
	.space	4  // skip
	.word	2
	.space	8  // skip
	.global	sv16_c
	.align	3
	.def	sv16_c;	.scl	2;	.type	0;	.endef
sv16_c:
;# c:
	.space	8  // skip
	.word	3
	.space	4  // skip
	.global	sv16_d
	.align	3
	.def	sv16_d;	.scl	2;	.type	0;	.endef
sv16_d:
;# d:
	.space	12  // skip
	.word	5
	.global	sv16_e
	.align	3
	.def	sv16_e;	.scl	2;	.type	0;	.endef
sv16_e:
;# a:
	.word	8
	.space	12  // skip
	.global	sv16_f
	.align	3
	.def	sv16_f;	.scl	2;	.type	0;	.endef
sv16_f:
;# b:
	.space	4  // skip
	.word	13
	.space	8  // skip
	.global	sv16_g
	.align	3
	.def	sv16_g;	.scl	2;	.type	0;	.endef
sv16_g:
;# c:
	.space	8  // skip
	.word	21
	.space	4  // skip
	.global	sv16_h
	.align	3
	.def	sv16_h;	.scl	2;	.type	0;	.endef
sv16_h:
;# d:
	.space	12  // skip
	.word	34
	.global	sv16_i
	.align	3
	.def	sv16_i;	.scl	2;	.type	0;	.endef
sv16_i:
;# a:
	.word	55
	.space	12  // skip
	.global	sv16_j
	.align	3
	.def	sv16_j;	.scl	2;	.type	0;	.endef
sv16_j:
;# b:
	.space	4  // skip
	.word	89
	.space	8  // skip
	.global	sv16_k
	.align	3
	.def	sv16_k;	.scl	2;	.type	0;	.endef
sv16_k:
;# c:
	.space	8  // skip
	.word	144
	.space	4  // skip
	.global	sv16_l
	.align	3
	.def	sv16_l;	.scl	2;	.type	0;	.endef
sv16_l:
;# d:
	.space	12  // skip
	.word	233
	.global	sv16_m
	.align	3
	.def	sv16_m;	.scl	2;	.type	0;	.endef
sv16_m:
;# a:
	.word	377
	.space	12  // skip
	.global	sv16_n
	.align	3
	.def	sv16_n;	.scl	2;	.type	0;	.endef
sv16_n:
;# b:
	.space	4  // skip
	.word	610
	.space	8  // skip
	.global	sv16_o
	.align	3
	.def	sv16_o;	.scl	2;	.type	0;	.endef
sv16_o:
;# c:
	.space	8  // skip
	.word	987
	.space	4  // skip
	.global	sv16_p
	.align	3
	.def	sv16_p;	.scl	2;	.type	0;	.endef
sv16_p:
;# d:
	.space	12  // skip
	.word	1597
	.global	sv16_q
	.align	3
	.def	sv16_q;	.scl	2;	.type	0;	.endef
sv16_q:
;# a:
	.word	2584
	.space	12  // skip
	.global	hfa2f_a
	.align	3
	.def	hfa2f_a;	.scl	2;	.type	0;	.endef
hfa2f_a:
;# a:
	.word	1065353216
	.space	4  // skip
	.global	hfa2f_b
	.align	3
	.def	hfa2f_b;	.scl	2;	.type	0;	.endef
hfa2f_b:
;# b:
	.space	4  // skip
	.word	1073741824
	.global	hfa2f_c
	.align	3
	.def	hfa2f_c;	.scl	2;	.type	0;	.endef
hfa2f_c:
;# a:
	.word	1077936128
	.space	4  // skip
	.global	hfa2f_d
	.align	3
	.def	hfa2f_d;	.scl	2;	.type	0;	.endef
hfa2f_d:
;# b:
	.space	4  // skip
	.word	1084227584
	.global	hfa2f_e
	.align	3
	.def	hfa2f_e;	.scl	2;	.type	0;	.endef
hfa2f_e:
;# a:
	.word	1090519040
	.space	4  // skip
	.global	hfa2f_f
	.align	3
	.def	hfa2f_f;	.scl	2;	.type	0;	.endef
hfa2f_f:
;# b:
	.space	4  // skip
	.word	1095761920
	.global	hfa2f_g
	.align	3
	.def	hfa2f_g;	.scl	2;	.type	0;	.endef
hfa2f_g:
;# a:
	.word	1101529088
	.space	4  // skip
	.global	hfa2f_h
	.align	3
	.def	hfa2f_h;	.scl	2;	.type	0;	.endef
hfa2f_h:
;# b:
	.space	4  // skip
	.word	1107820544
	.global	hfa2f_i
	.align	3
	.def	hfa2f_i;	.scl	2;	.type	0;	.endef
hfa2f_i:
;# a:
	.word	1113325568
	.space	4  // skip
	.global	hfa2f_j
	.align	3
	.def	hfa2f_j;	.scl	2;	.type	0;	.endef
hfa2f_j:
;# b:
	.space	4  // skip
	.word	1118961664
	.global	hfa2f_k
	.align	3
	.def	hfa2f_k;	.scl	2;	.type	0;	.endef
hfa2f_k:
;# a:
	.word	1125122048
	.space	4  // skip
	.global	hfa2f_l
	.align	3
	.def	hfa2f_l;	.scl	2;	.type	0;	.endef
hfa2f_l:
;# b:
	.space	4  // skip
	.word	1130954752
	.global	hfa2f_m
	.align	3
	.def	hfa2f_m;	.scl	2;	.type	0;	.endef
hfa2f_m:
;# a:
	.word	1136427008
	.space	4  // skip
	.global	hfa2f_n
	.align	3
	.def	hfa2f_n;	.scl	2;	.type	0;	.endef
hfa2f_n:
;# b:
	.space	4  // skip
	.word	1142456320
	.global	hfa2f_o
	.align	3
	.def	hfa2f_o;	.scl	2;	.type	0;	.endef
hfa2f_o:
;# a:
	.word	1148633088
	.space	4  // skip
	.global	hfa2f_p
	.align	3
	.def	hfa2f_p;	.scl	2;	.type	0;	.endef
hfa2f_p:
;# b:
	.space	4  // skip
	.word	1153933312
	.global	hfa2f_q
	.align	3
	.def	hfa2f_q;	.scl	2;	.type	0;	.endef
hfa2f_q:
;# a:
	.word	1159823360
	.space	4  // skip
	.global	hfa4f_a
	.align	3
	.def	hfa4f_a;	.scl	2;	.type	0;	.endef
hfa4f_a:
;# a:
	.word	1065353216
	.space	12  // skip
	.global	hfa4f_b
	.align	3
	.def	hfa4f_b;	.scl	2;	.type	0;	.endef
hfa4f_b:
;# b:
	.space	4  // skip
	.word	1073741824
	.space	8  // skip
	.global	hfa4f_c
	.align	3
	.def	hfa4f_c;	.scl	2;	.type	0;	.endef
hfa4f_c:
;# c:
	.space	8  // skip
	.word	1077936128
	.space	4  // skip
	.global	hfa4f_d
	.align	3
	.def	hfa4f_d;	.scl	2;	.type	0;	.endef
hfa4f_d:
;# d:
	.space	12  // skip
	.word	1084227584
	.global	hfa4f_e
	.align	3
	.def	hfa4f_e;	.scl	2;	.type	0;	.endef
hfa4f_e:
;# a:
	.word	1090519040
	.space	12  // skip
	.global	hfa4f_f
	.align	3
	.def	hfa4f_f;	.scl	2;	.type	0;	.endef
hfa4f_f:
;# b:
	.space	4  // skip
	.word	1095761920
	.space	8  // skip
	.global	hfa4f_g
	.align	3
	.def	hfa4f_g;	.scl	2;	.type	0;	.endef
hfa4f_g:
;# c:
	.space	8  // skip
	.word	1101529088
	.space	4  // skip
	.global	hfa4f_h
	.align	3
	.def	hfa4f_h;	.scl	2;	.type	0;	.endef
hfa4f_h:
;# d:
	.space	12  // skip
	.word	1107820544
	.global	hfa4f_i
	.align	3
	.def	hfa4f_i;	.scl	2;	.type	0;	.endef
hfa4f_i:
;# a:
	.word	1113325568
	.space	12  // skip
	.global	hfa4f_j
	.align	3
	.def	hfa4f_j;	.scl	2;	.type	0;	.endef
hfa4f_j:
;# b:
	.space	4  // skip
	.word	1118961664
	.space	8  // skip
	.global	hfa4f_k
	.align	3
	.def	hfa4f_k;	.scl	2;	.type	0;	.endef
hfa4f_k:
;# c:
	.space	8  // skip
	.word	1125122048
	.space	4  // skip
	.global	hfa4f_l
	.align	3
	.def	hfa4f_l;	.scl	2;	.type	0;	.endef
hfa4f_l:
;# d:
	.space	12  // skip
	.word	1130954752
	.global	hfa4f_m
	.align	3
	.def	hfa4f_m;	.scl	2;	.type	0;	.endef
hfa4f_m:
;# a:
	.word	1136427008
	.space	12  // skip
	.global	hfa4f_n
	.align	3
	.def	hfa4f_n;	.scl	2;	.type	0;	.endef
hfa4f_n:
;# b:
	.space	4  // skip
	.word	1142456320
	.space	8  // skip
	.global	hfa4f_o
	.align	3
	.def	hfa4f_o;	.scl	2;	.type	0;	.endef
hfa4f_o:
;# c:
	.space	8  // skip
	.word	1148633088
	.space	4  // skip
	.global	hfa4f_p
	.align	3
	.def	hfa4f_p;	.scl	2;	.type	0;	.endef
hfa4f_p:
;# d:
	.space	12  // skip
	.word	1153933312
	.global	hfa4f_q
	.align	3
	.def	hfa4f_q;	.scl	2;	.type	0;	.endef
hfa4f_q:
;# a:
	.word	1159823360
	.space	12  // skip
	.global	hfa2d_a
	.align	3
	.def	hfa2d_a;	.scl	2;	.type	0;	.endef
hfa2d_a:
;# a:
	.word	0
	.word	1072693248
	.space	8  // skip
	.global	hfa2d_b
	.align	3
	.def	hfa2d_b;	.scl	2;	.type	0;	.endef
hfa2d_b:
;# b:
	.space	8  // skip
	.word	0
	.word	1073741824
	.global	hfa2d_c
	.align	3
	.def	hfa2d_c;	.scl	2;	.type	0;	.endef
hfa2d_c:
;# a:
	.word	0
	.word	1074266112
	.space	8  // skip
	.global	hfa2d_d
	.align	3
	.def	hfa2d_d;	.scl	2;	.type	0;	.endef
hfa2d_d:
;# b:
	.space	8  // skip
	.word	0
	.word	1075052544
	.global	hfa2d_e
	.align	3
	.def	hfa2d_e;	.scl	2;	.type	0;	.endef
hfa2d_e:
;# a:
	.word	0
	.word	1075838976
	.space	8  // skip
	.global	hfa2d_f
	.align	3
	.def	hfa2d_f;	.scl	2;	.type	0;	.endef
hfa2d_f:
;# b:
	.space	8  // skip
	.word	0
	.word	1076494336
	.global	hfa2d_g
	.align	3
	.def	hfa2d_g;	.scl	2;	.type	0;	.endef
hfa2d_g:
;# a:
	.word	0
	.word	1077215232
	.space	8  // skip
	.global	hfa2d_h
	.align	3
	.def	hfa2d_h;	.scl	2;	.type	0;	.endef
hfa2d_h:
;# b:
	.space	8  // skip
	.word	0
	.word	1078001664
	.global	hfa2d_i
	.align	3
	.def	hfa2d_i;	.scl	2;	.type	0;	.endef
hfa2d_i:
;# a:
	.word	0
	.word	1078689792
	.space	8  // skip
	.global	hfa2d_j
	.align	3
	.def	hfa2d_j;	.scl	2;	.type	0;	.endef
hfa2d_j:
;# b:
	.space	8  // skip
	.word	0
	.word	1079394304
	.global	hfa2d_k
	.align	3
	.def	hfa2d_k;	.scl	2;	.type	0;	.endef
hfa2d_k:
;# a:
	.word	0
	.word	1080164352
	.space	8  // skip
	.global	hfa2d_l
	.align	3
	.def	hfa2d_l;	.scl	2;	.type	0;	.endef
hfa2d_l:
;# b:
	.space	8  // skip
	.word	0
	.word	1080893440
	.global	hfa2d_m
	.align	3
	.def	hfa2d_m;	.scl	2;	.type	0;	.endef
hfa2d_m:
;# a:
	.word	0
	.word	1081577472
	.space	8  // skip
	.global	hfa2d_n
	.align	3
	.def	hfa2d_n;	.scl	2;	.type	0;	.endef
hfa2d_n:
;# b:
	.space	8  // skip
	.word	0
	.word	1082331136
	.global	hfa2d_o
	.align	3
	.def	hfa2d_o;	.scl	2;	.type	0;	.endef
hfa2d_o:
;# a:
	.word	0
	.word	1083103232
	.space	8  // skip
	.global	hfa2d_p
	.align	3
	.def	hfa2d_p;	.scl	2;	.type	0;	.endef
hfa2d_p:
;# b:
	.space	8  // skip
	.word	0
	.word	1083765760
	.global	hfa2d_q
	.align	3
	.def	hfa2d_q;	.scl	2;	.type	0;	.endef
hfa2d_q:
;# a:
	.word	0
	.word	1084502016
	.space	8  // skip
	.global	hfa4d_a
	.align	3
	.def	hfa4d_a;	.scl	2;	.type	0;	.endef
hfa4d_a:
;# a:
	.word	0
	.word	1072693248
	.space	24  // skip
	.global	hfa4d_b
	.align	3
	.def	hfa4d_b;	.scl	2;	.type	0;	.endef
hfa4d_b:
;# b:
	.space	8  // skip
	.word	0
	.word	1073741824
	.space	16  // skip
	.global	hfa4d_c
	.align	3
	.def	hfa4d_c;	.scl	2;	.type	0;	.endef
hfa4d_c:
;# c:
	.space	16  // skip
	.word	0
	.word	1074266112
	.space	8  // skip
	.global	hfa4d_d
	.align	3
	.def	hfa4d_d;	.scl	2;	.type	0;	.endef
hfa4d_d:
;# d:
	.space	24  // skip
	.word	0
	.word	1075052544
	.global	hfa4d_e
	.align	3
	.def	hfa4d_e;	.scl	2;	.type	0;	.endef
hfa4d_e:
;# a:
	.word	0
	.word	1075838976
	.space	24  // skip
	.global	hfa4d_f
	.align	3
	.def	hfa4d_f;	.scl	2;	.type	0;	.endef
hfa4d_f:
;# b:
	.space	8  // skip
	.word	0
	.word	1076494336
	.space	16  // skip
	.global	hfa4d_g
	.align	3
	.def	hfa4d_g;	.scl	2;	.type	0;	.endef
hfa4d_g:
;# c:
	.space	16  // skip
	.word	0
	.word	1077215232
	.space	8  // skip
	.global	hfa4d_h
	.align	3
	.def	hfa4d_h;	.scl	2;	.type	0;	.endef
hfa4d_h:
;# d:
	.space	24  // skip
	.word	0
	.word	1078001664
	.global	hfa4d_i
	.align	3
	.def	hfa4d_i;	.scl	2;	.type	0;	.endef
hfa4d_i:
;# a:
	.word	0
	.word	1078689792
	.space	24  // skip
	.global	hfa4d_j
	.align	3
	.def	hfa4d_j;	.scl	2;	.type	0;	.endef
hfa4d_j:
;# b:
	.space	8  // skip
	.word	0
	.word	1079394304
	.space	16  // skip
	.global	hfa4d_k
	.align	3
	.def	hfa4d_k;	.scl	2;	.type	0;	.endef
hfa4d_k:
;# c:
	.space	16  // skip
	.word	0
	.word	1080164352
	.space	8  // skip
	.global	hfa4d_l
	.align	3
	.def	hfa4d_l;	.scl	2;	.type	0;	.endef
hfa4d_l:
;# d:
	.space	24  // skip
	.word	0
	.word	1080893440
	.global	hfa4d_m
	.align	3
	.def	hfa4d_m;	.scl	2;	.type	0;	.endef
hfa4d_m:
;# a:
	.word	0
	.word	1081577472
	.space	24  // skip
	.global	hfa4d_n
	.align	3
	.def	hfa4d_n;	.scl	2;	.type	0;	.endef
hfa4d_n:
;# b:
	.space	8  // skip
	.word	0
	.word	1082331136
	.space	16  // skip
	.global	hfa4d_o
	.align	3
	.def	hfa4d_o;	.scl	2;	.type	0;	.endef
hfa4d_o:
;# c:
	.space	16  // skip
	.word	0
	.word	1083103232
	.space	8  // skip
	.global	hfa4d_p
	.align	3
	.def	hfa4d_p;	.scl	2;	.type	0;	.endef
hfa4d_p:
;# d:
	.space	24  // skip
	.word	0
	.word	1083765760
	.global	hfa4d_q
	.align	3
	.def	hfa4d_q;	.scl	2;	.type	0;	.endef
hfa4d_q:
;# a:
	.word	0
	.word	1084502016
	.space	24  // skip
	.global	hva2sv8_a
	.align	3
	.def	hva2sv8_a;	.scl	2;	.type	0;	.endef
hva2sv8_a:
;# a:
;# a:
	.word	1
	.space	4  // skip
	.space	8  // skip
	.global	hva2sv8_b
	.align	3
	.def	hva2sv8_b;	.scl	2;	.type	0;	.endef
hva2sv8_b:
;# b:
	.space	8  // skip
;# b:
	.space	4  // skip
	.word	2
	.global	hva2sv8_c
	.align	3
	.def	hva2sv8_c;	.scl	2;	.type	0;	.endef
hva2sv8_c:
;# a:
;# a:
	.word	3
	.space	4  // skip
	.space	8  // skip
	.global	hva2sv8_d
	.align	3
	.def	hva2sv8_d;	.scl	2;	.type	0;	.endef
hva2sv8_d:
;# b:
	.space	8  // skip
;# b:
	.space	4  // skip
	.word	5
	.global	hva2sv8_e
	.align	3
	.def	hva2sv8_e;	.scl	2;	.type	0;	.endef
hva2sv8_e:
;# a:
;# a:
	.word	8
	.space	4  // skip
	.space	8  // skip
	.global	hva2sv8_f
	.align	3
	.def	hva2sv8_f;	.scl	2;	.type	0;	.endef
hva2sv8_f:
;# b:
	.space	8  // skip
;# b:
	.space	4  // skip
	.word	13
	.global	hva2sv8_g
	.align	3
	.def	hva2sv8_g;	.scl	2;	.type	0;	.endef
hva2sv8_g:
;# a:
;# a:
	.word	21
	.space	4  // skip
	.space	8  // skip
	.global	hva2sv8_h
	.align	3
	.def	hva2sv8_h;	.scl	2;	.type	0;	.endef
hva2sv8_h:
;# b:
	.space	8  // skip
;# b:
	.space	4  // skip
	.word	34
	.global	hva2sv8_i
	.align	3
	.def	hva2sv8_i;	.scl	2;	.type	0;	.endef
hva2sv8_i:
;# a:
;# a:
	.word	55
	.space	4  // skip
	.space	8  // skip
	.global	hva2sv8_j
	.align	3
	.def	hva2sv8_j;	.scl	2;	.type	0;	.endef
hva2sv8_j:
;# b:
	.space	8  // skip
;# b:
	.space	4  // skip
	.word	89
	.global	hva2sv8_k
	.align	3
	.def	hva2sv8_k;	.scl	2;	.type	0;	.endef
hva2sv8_k:
;# a:
;# a:
	.word	144
	.space	4  // skip
	.space	8  // skip
	.global	hva2sv8_l
	.align	3
	.def	hva2sv8_l;	.scl	2;	.type	0;	.endef
hva2sv8_l:
;# b:
	.space	8  // skip
;# b:
	.space	4  // skip
	.word	233
	.global	hva2sv8_m
	.align	3
	.def	hva2sv8_m;	.scl	2;	.type	0;	.endef
hva2sv8_m:
;# a:
;# a:
	.word	377
	.space	4  // skip
	.space	8  // skip
	.global	hva2sv8_n
	.align	3
	.def	hva2sv8_n;	.scl	2;	.type	0;	.endef
hva2sv8_n:
;# b:
	.space	8  // skip
;# b:
	.space	4  // skip
	.word	610
	.global	hva2sv8_o
	.align	3
	.def	hva2sv8_o;	.scl	2;	.type	0;	.endef
hva2sv8_o:
;# a:
;# a:
	.word	987
	.space	4  // skip
	.space	8  // skip
	.global	hva2sv8_p
	.align	3
	.def	hva2sv8_p;	.scl	2;	.type	0;	.endef
hva2sv8_p:
;# b:
	.space	8  // skip
;# b:
	.space	4  // skip
	.word	1597
	.global	hva2sv8_q
	.align	3
	.def	hva2sv8_q;	.scl	2;	.type	0;	.endef
hva2sv8_q:
;# a:
;# a:
	.word	2584
	.space	4  // skip
	.space	8  // skip
	.global	hva4sv8_a
	.align	3
	.def	hva4sv8_a;	.scl	2;	.type	0;	.endef
hva4sv8_a:
;# a:
;# a:
	.word	1
	.space	4  // skip
	.space	24  // skip
	.global	hva4sv8_b
	.align	3
	.def	hva4sv8_b;	.scl	2;	.type	0;	.endef
hva4sv8_b:
;# b:
	.space	8  // skip
;# b:
	.space	4  // skip
	.word	2
	.space	16  // skip
	.global	hva4sv8_c
	.align	3
	.def	hva4sv8_c;	.scl	2;	.type	0;	.endef
hva4sv8_c:
;# c:
	.space	16  // skip
;# a:
	.word	3
	.space	4  // skip
	.space	8  // skip
	.global	hva4sv8_d
	.align	3
	.def	hva4sv8_d;	.scl	2;	.type	0;	.endef
hva4sv8_d:
;# d:
	.space	24  // skip
;# b:
	.space	4  // skip
	.word	5
	.global	hva4sv8_e
	.align	3
	.def	hva4sv8_e;	.scl	2;	.type	0;	.endef
hva4sv8_e:
;# a:
;# a:
	.word	8
	.space	4  // skip
	.space	24  // skip
	.global	hva4sv8_f
	.align	3
	.def	hva4sv8_f;	.scl	2;	.type	0;	.endef
hva4sv8_f:
;# b:
	.space	8  // skip
;# b:
	.space	4  // skip
	.word	13
	.space	16  // skip
	.global	hva4sv8_g
	.align	3
	.def	hva4sv8_g;	.scl	2;	.type	0;	.endef
hva4sv8_g:
;# c:
	.space	16  // skip
;# a:
	.word	21
	.space	4  // skip
	.space	8  // skip
	.global	hva4sv8_h
	.align	3
	.def	hva4sv8_h;	.scl	2;	.type	0;	.endef
hva4sv8_h:
;# d:
	.space	24  // skip
;# b:
	.space	4  // skip
	.word	34
	.global	hva4sv8_i
	.align	3
	.def	hva4sv8_i;	.scl	2;	.type	0;	.endef
hva4sv8_i:
;# a:
;# a:
	.word	55
	.space	4  // skip
	.space	24  // skip
	.global	hva4sv8_j
	.align	3
	.def	hva4sv8_j;	.scl	2;	.type	0;	.endef
hva4sv8_j:
;# b:
	.space	8  // skip
;# b:
	.space	4  // skip
	.word	89
	.space	16  // skip
	.global	hva4sv8_k
	.align	3
	.def	hva4sv8_k;	.scl	2;	.type	0;	.endef
hva4sv8_k:
;# c:
	.space	16  // skip
;# a:
	.word	144
	.space	4  // skip
	.space	8  // skip
	.global	hva4sv8_l
	.align	3
	.def	hva4sv8_l;	.scl	2;	.type	0;	.endef
hva4sv8_l:
;# d:
	.space	24  // skip
;# b:
	.space	4  // skip
	.word	233
	.global	hva4sv8_m
	.align	3
	.def	hva4sv8_m;	.scl	2;	.type	0;	.endef
hva4sv8_m:
;# a:
;# a:
	.word	377
	.space	4  // skip
	.space	24  // skip
	.global	hva4sv8_n
	.align	3
	.def	hva4sv8_n;	.scl	2;	.type	0;	.endef
hva4sv8_n:
;# b:
	.space	8  // skip
;# b:
	.space	4  // skip
	.word	610
	.space	16  // skip
	.global	hva4sv8_o
	.align	3
	.def	hva4sv8_o;	.scl	2;	.type	0;	.endef
hva4sv8_o:
;# c:
	.space	16  // skip
;# a:
	.word	987
	.space	4  // skip
	.space	8  // skip
	.global	hva4sv8_p
	.align	3
	.def	hva4sv8_p;	.scl	2;	.type	0;	.endef
hva4sv8_p:
;# d:
	.space	24  // skip
;# b:
	.space	4  // skip
	.word	1597
	.global	hva4sv8_q
	.align	3
	.def	hva4sv8_q;	.scl	2;	.type	0;	.endef
hva4sv8_q:
;# a:
;# a:
	.word	2584
	.space	4  // skip
	.space	24  // skip
	.global	hva2sv16_a
	.align	3
	.def	hva2sv16_a;	.scl	2;	.type	0;	.endef
hva2sv16_a:
;# a:
;# a:
	.word	1
	.space	12  // skip
	.space	16  // skip
	.global	hva2sv16_b
	.align	3
	.def	hva2sv16_b;	.scl	2;	.type	0;	.endef
hva2sv16_b:
;# b:
	.space	16  // skip
;# b:
	.space	4  // skip
	.word	2
	.space	8  // skip
	.global	hva2sv16_c
	.align	3
	.def	hva2sv16_c;	.scl	2;	.type	0;	.endef
hva2sv16_c:
;# a:
;# a:
	.word	3
	.space	12  // skip
	.space	16  // skip
	.global	hva2sv16_d
	.align	3
	.def	hva2sv16_d;	.scl	2;	.type	0;	.endef
hva2sv16_d:
;# b:
	.space	16  // skip
;# b:
	.space	4  // skip
	.word	5
	.space	8  // skip
	.global	hva2sv16_e
	.align	3
	.def	hva2sv16_e;	.scl	2;	.type	0;	.endef
hva2sv16_e:
;# a:
;# a:
	.word	8
	.space	12  // skip
	.space	16  // skip
	.global	hva2sv16_f
	.align	3
	.def	hva2sv16_f;	.scl	2;	.type	0;	.endef
hva2sv16_f:
;# b:
	.space	16  // skip
;# b:
	.space	4  // skip
	.word	13
	.space	8  // skip
	.global	hva2sv16_g
	.align	3
	.def	hva2sv16_g;	.scl	2;	.type	0;	.endef
hva2sv16_g:
;# a:
;# a:
	.word	21
	.space	12  // skip
	.space	16  // skip
	.global	hva2sv16_h
	.align	3
	.def	hva2sv16_h;	.scl	2;	.type	0;	.endef
hva2sv16_h:
;# b:
	.space	16  // skip
;# b:
	.space	4  // skip
	.word	34
	.space	8  // skip
	.global	hva2sv16_i
	.align	3
	.def	hva2sv16_i;	.scl	2;	.type	0;	.endef
hva2sv16_i:
;# a:
;# a:
	.word	55
	.space	12  // skip
	.space	16  // skip
	.global	hva2sv16_j
	.align	3
	.def	hva2sv16_j;	.scl	2;	.type	0;	.endef
hva2sv16_j:
;# b:
	.space	16  // skip
;# b:
	.space	4  // skip
	.word	89
	.space	8  // skip
	.global	hva2sv16_k
	.align	3
	.def	hva2sv16_k;	.scl	2;	.type	0;	.endef
hva2sv16_k:
;# a:
;# a:
	.word	144
	.space	12  // skip
	.space	16  // skip
	.global	hva2sv16_l
	.align	3
	.def	hva2sv16_l;	.scl	2;	.type	0;	.endef
hva2sv16_l:
;# b:
	.space	16  // skip
;# b:
	.space	4  // skip
	.word	233
	.space	8  // skip
	.global	hva2sv16_m
	.align	3
	.def	hva2sv16_m;	.scl	2;	.type	0;	.endef
hva2sv16_m:
;# a:
;# a:
	.word	377
	.space	12  // skip
	.space	16  // skip
	.global	hva2sv16_n
	.align	3
	.def	hva2sv16_n;	.scl	2;	.type	0;	.endef
hva2sv16_n:
;# b:
	.space	16  // skip
;# b:
	.space	4  // skip
	.word	610
	.space	8  // skip
	.global	hva2sv16_o
	.align	3
	.def	hva2sv16_o;	.scl	2;	.type	0;	.endef
hva2sv16_o:
;# a:
;# a:
	.word	987
	.space	12  // skip
	.space	16  // skip
	.global	hva2sv16_p
	.align	3
	.def	hva2sv16_p;	.scl	2;	.type	0;	.endef
hva2sv16_p:
;# b:
	.space	16  // skip
;# b:
	.space	4  // skip
	.word	1597
	.space	8  // skip
	.global	hva2sv16_q
	.align	3
	.def	hva2sv16_q;	.scl	2;	.type	0;	.endef
hva2sv16_q:
;# a:
;# a:
	.word	2584
	.space	12  // skip
	.space	16  // skip
	.global	hva4sv16_a
	.align	3
	.def	hva4sv16_a;	.scl	2;	.type	0;	.endef
hva4sv16_a:
;# a:
;# a:
	.word	1
	.space	12  // skip
	.space	48  // skip
	.global	hva4sv16_b
	.align	3
	.def	hva4sv16_b;	.scl	2;	.type	0;	.endef
hva4sv16_b:
;# b:
	.space	16  // skip
;# b:
	.space	4  // skip
	.word	2
	.space	8  // skip
	.space	32  // skip
	.global	hva4sv16_c
	.align	3
	.def	hva4sv16_c;	.scl	2;	.type	0;	.endef
hva4sv16_c:
;# c:
	.space	32  // skip
;# c:
	.space	8  // skip
	.word	3
	.space	4  // skip
	.space	16  // skip
	.global	hva4sv16_d
	.align	3
	.def	hva4sv16_d;	.scl	2;	.type	0;	.endef
hva4sv16_d:
;# d:
	.space	48  // skip
;# d:
	.space	12  // skip
	.word	5
	.global	hva4sv16_e
	.align	3
	.def	hva4sv16_e;	.scl	2;	.type	0;	.endef
hva4sv16_e:
;# a:
;# a:
	.word	8
	.space	12  // skip
	.space	48  // skip
	.global	hva4sv16_f
	.align	3
	.def	hva4sv16_f;	.scl	2;	.type	0;	.endef
hva4sv16_f:
;# b:
	.space	16  // skip
;# b:
	.space	4  // skip
	.word	13
	.space	8  // skip
	.space	32  // skip
	.global	hva4sv16_g
	.align	3
	.def	hva4sv16_g;	.scl	2;	.type	0;	.endef
hva4sv16_g:
;# c:
	.space	32  // skip
;# c:
	.space	8  // skip
	.word	21
	.space	4  // skip
	.space	16  // skip
	.global	hva4sv16_h
	.align	3
	.def	hva4sv16_h;	.scl	2;	.type	0;	.endef
hva4sv16_h:
;# d:
	.space	48  // skip
;# d:
	.space	12  // skip
	.word	34
	.global	hva4sv16_i
	.align	3
	.def	hva4sv16_i;	.scl	2;	.type	0;	.endef
hva4sv16_i:
;# a:
;# a:
	.word	55
	.space	12  // skip
	.space	48  // skip
	.global	hva4sv16_j
	.align	3
	.def	hva4sv16_j;	.scl	2;	.type	0;	.endef
hva4sv16_j:
;# b:
	.space	16  // skip
;# b:
	.space	4  // skip
	.word	89
	.space	8  // skip
	.space	32  // skip
	.global	hva4sv16_k
	.align	3
	.def	hva4sv16_k;	.scl	2;	.type	0;	.endef
hva4sv16_k:
;# c:
	.space	32  // skip
;# c:
	.space	8  // skip
	.word	144
	.space	4  // skip
	.space	16  // skip
	.global	hva4sv16_l
	.align	3
	.def	hva4sv16_l;	.scl	2;	.type	0;	.endef
hva4sv16_l:
;# d:
	.space	48  // skip
;# d:
	.space	12  // skip
	.word	233
	.global	hva4sv16_m
	.align	3
	.def	hva4sv16_m;	.scl	2;	.type	0;	.endef
hva4sv16_m:
;# a:
;# a:
	.word	377
	.space	12  // skip
	.space	48  // skip
	.global	hva4sv16_n
	.align	3
	.def	hva4sv16_n;	.scl	2;	.type	0;	.endef
hva4sv16_n:
;# b:
	.space	16  // skip
;# b:
	.space	4  // skip
	.word	610
	.space	8  // skip
	.space	32  // skip
	.global	hva4sv16_o
	.align	3
	.def	hva4sv16_o;	.scl	2;	.type	0;	.endef
hva4sv16_o:
;# c:
	.space	32  // skip
;# c:
	.space	8  // skip
	.word	987
	.space	4  // skip
	.space	16  // skip
	.global	hva4sv16_p
	.align	3
	.def	hva4sv16_p;	.scl	2;	.type	0;	.endef
hva4sv16_p:
;# d:
	.space	48  // skip
;# d:
	.space	12  // skip
	.word	1597
	.global	hva4sv16_q
	.align	3
	.def	hva4sv16_q;	.scl	2;	.type	0;	.endef
hva4sv16_q:
;# a:
;# a:
	.word	2584
	.space	12  // skip
	.space	48  // skip
	.section	.rdata,"dr"
	.align	3
.LC62:
	.ascii "\11short_vector_8_bytes size: %lu\12\11short_vector_16_bytes size: %lu\12\11hfa_2_floats size: %lu\12\11hfa_4_floats size: %lu\12\11hfa_2_doubles size: %lu\12\11hfa_4_doubles size: %lu\12\11hva_2_short_vector_8_bytes size: %lu\12\11hva_4_short_vector_8_bytes size: %lu\12\11hva_2_short_vector_16_bytes size: %lu\12\11hva_4_short_vector_16_bytes size: %lu\12\11composite size: %lu\12\0"
	.align	3
.LC63:
	.ascii "\11use_va_args_%s result: %d\12\0"
	.align	3
.LC64:
	.ascii "\11\11test failed, expected: %d, actual: %d\12\12\0"
	.align	3
.LC65:
	.ascii "\11failures: %d\12\0"
	.text
	.align	2
	.global	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 1664]	;#,
	sub	sp, sp, #1920	;#,,
	stp	x29, x30, [sp]	;#,,
	mov	x29, sp	;#,
	sub	sp, sp, #512	;#,,
	.seh_endprologue
	str	w0, [sp, 2204]	;# argc, argc
	str	x1, [sp, 2192]	;# argv, argv
;# varargs-use-dll.c:383: {
	bl	__main		;#
;# varargs-use-dll.c:384:   DEBUG ("\tshort_vector_8_bytes size: %lu\n"
	mov	x0, 64	;# tmp103,
	str	x0, [sp, 24]	;# tmp103,
	mov	x0, 64	;# tmp104,
	str	x0, [sp, 16]	;# tmp104,
	mov	x0, 32	;# tmp105,
	str	x0, [sp, 8]	;# tmp105,
	mov	x0, 32	;# tmp106,
	str	x0, [sp]	;# tmp106,
	mov	x7, 16	;#,
	mov	x6, 32	;#,
	mov	x5, 16	;#,
	mov	x4, 16	;#,
	mov	x3, 8	;#,
	mov	x2, 16	;#,
	mov	x1, 8	;#,
	adrp	x0, .LC62	;# tmp107,
	add	x0, x0, :lo12:.LC62	;#, tmp107,
	bl	__mingw_printf		;#
;# varargs-use-dll.c:405:   int failures = 0;
	str	wzr, [sp, 2428]	;#, failures
;# varargs-use-dll.c:407:   TEST (no_arguments, 165);
	adrp	x0, .LC0	;# tmp108,
	add	x0, x0, :lo12:.LC0	;#, tmp108,
	adrp	x1, __imp_use_va_args_no_arguments	;# tmp111,
	add	x1, x1, :lo12:__imp_use_va_args_no_arguments	;# tmp110, tmp111,
	ldr	x1, [x1]	;# tmp109,
	blr	x1		;# tmp109
	str	w0, [sp, 2424]	;#, actual
	ldr	w2, [sp, 2424]	;#, actual
	adrp	x0, .LC0	;# tmp112,
	add	x1, x0, :lo12:.LC0	;#, tmp112,
	adrp	x0, .LC63	;# tmp113,
	add	x0, x0, :lo12:.LC63	;#, tmp113,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2424]	;# tmp114, actual
	cmp	w0, 165	;# tmp114,
	beq	.L333		;#,
	ldr	w0, [sp, 2428]	;# tmp116, failures
	add	w0, w0, 1	;# failures_111, tmp116,
	str	w0, [sp, 2428]	;# failures_111, failures
	ldr	w2, [sp, 2424]	;#, actual
	mov	w1, 165	;#,
	adrp	x0, .LC64	;# tmp117,
	add	x0, x0, :lo12:.LC64	;#, tmp117,
	bl	__mingw_printf		;#
.L333:
;# varargs-use-dll.c:409:   TEST (few_longs, 142, 100L, 42L);
	mov	w2, 42	;#,
	mov	w1, 100	;#,
	adrp	x0, .LC3	;# tmp118,
	add	x0, x0, :lo12:.LC3	;#, tmp118,
	adrp	x3, __imp_use_va_args_few_longs	;# tmp121,
	add	x3, x3, :lo12:__imp_use_va_args_few_longs	;# tmp120, tmp121,
	ldr	x3, [x3]	;# tmp119,
	blr	x3		;# tmp119
	str	w0, [sp, 2420]	;#, actual
	ldr	w2, [sp, 2420]	;#, actual
	adrp	x0, .LC3	;# tmp122,
	add	x1, x0, :lo12:.LC3	;#, tmp122,
	adrp	x0, .LC63	;# tmp123,
	add	x0, x0, :lo12:.LC63	;#, tmp123,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2420]	;# tmp124, actual
	cmp	w0, 142	;# tmp124,
	beq	.L334		;#,
	ldr	w0, [sp, 2428]	;# tmp126, failures
	add	w0, w0, 1	;# failures_116, tmp126,
	str	w0, [sp, 2428]	;# failures_116, failures
	ldr	w2, [sp, 2420]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp127,
	add	x0, x0, :lo12:.LC64	;#, tmp127,
	bl	__mingw_printf		;#
.L334:
;# varargs-use-dll.c:410:   TEST (several_longs, 142, 1L, 2L, 3L, 5L, 8L, 13L, 21L, 34L, 55L);
	mov	w0, 55	;# tmp128,
	str	w0, [sp, 8]	;# tmp128,
	mov	w0, 34	;# tmp129,
	str	w0, [sp]	;# tmp129,
	mov	w7, 21	;#,
	mov	w6, 13	;#,
	mov	w5, 8	;#,
	mov	w4, 5	;#,
	mov	w3, 3	;#,
	mov	w2, 2	;#,
	mov	w1, 1	;#,
	adrp	x0, .LC4	;# tmp130,
	add	x0, x0, :lo12:.LC4	;#, tmp130,
	adrp	x8, __imp_use_va_args_several_longs	;# tmp133,
	add	x8, x8, :lo12:__imp_use_va_args_several_longs	;# tmp132, tmp133,
	ldr	x8, [x8]	;# tmp131,
	blr	x8		;# tmp131
	str	w0, [sp, 2416]	;#, actual
	ldr	w2, [sp, 2416]	;#, actual
	adrp	x0, .LC4	;# tmp134,
	add	x1, x0, :lo12:.LC4	;#, tmp134,
	adrp	x0, .LC63	;# tmp135,
	add	x0, x0, :lo12:.LC63	;#, tmp135,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2416]	;# tmp136, actual
	cmp	w0, 142	;# tmp136,
	beq	.L335		;#,
	ldr	w0, [sp, 2428]	;# tmp138, failures
	add	w0, w0, 1	;# failures_121, tmp138,
	str	w0, [sp, 2428]	;# failures_121, failures
	ldr	w2, [sp, 2416]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp139,
	add	x0, x0, :lo12:.LC64	;#, tmp139,
	bl	__mingw_printf		;#
.L335:
;# varargs-use-dll.c:411:   TEST (many_longs, 6763, 1L, 2L, 3L, 5L, 8L, 13L, 21L, 34L, 55L, 89L, 144L,
	mov	w0, 2584	;# tmp140,
	str	w0, [sp, 72]	;# tmp140,
	mov	w0, 1597	;# tmp141,
	str	w0, [sp, 64]	;# tmp141,
	mov	w0, 987	;# tmp142,
	str	w0, [sp, 56]	;# tmp142,
	mov	w0, 610	;# tmp143,
	str	w0, [sp, 48]	;# tmp143,
	mov	w0, 377	;# tmp144,
	str	w0, [sp, 40]	;# tmp144,
	mov	w0, 233	;# tmp145,
	str	w0, [sp, 32]	;# tmp145,
	mov	w0, 144	;# tmp146,
	str	w0, [sp, 24]	;# tmp146,
	mov	w0, 89	;# tmp147,
	str	w0, [sp, 16]	;# tmp147,
	mov	w0, 55	;# tmp148,
	str	w0, [sp, 8]	;# tmp148,
	mov	w0, 34	;# tmp149,
	str	w0, [sp]	;# tmp149,
	mov	w7, 21	;#,
	mov	w6, 13	;#,
	mov	w5, 8	;#,
	mov	w4, 5	;#,
	mov	w3, 3	;#,
	mov	w2, 2	;#,
	mov	w1, 1	;#,
	adrp	x0, .LC5	;# tmp150,
	add	x0, x0, :lo12:.LC5	;#, tmp150,
	adrp	x8, __imp_use_va_args_many_longs	;# tmp153,
	add	x8, x8, :lo12:__imp_use_va_args_many_longs	;# tmp152, tmp153,
	ldr	x8, [x8]	;# tmp151,
	blr	x8		;# tmp151
	str	w0, [sp, 2412]	;#, actual
	ldr	w2, [sp, 2412]	;#, actual
	adrp	x0, .LC5	;# tmp154,
	add	x1, x0, :lo12:.LC5	;#, tmp154,
	adrp	x0, .LC63	;# tmp155,
	add	x0, x0, :lo12:.LC63	;#, tmp155,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2412]	;# tmp156, actual
	mov	w0, 6763	;# tmp157,
	cmp	w1, w0	;# tmp156, tmp157
	beq	.L336		;#,
	ldr	w0, [sp, 2428]	;# tmp159, failures
	add	w0, w0, 1	;# failures_126, tmp159,
	str	w0, [sp, 2428]	;# failures_126, failures
	ldr	w2, [sp, 2412]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp160,
	add	x0, x0, :lo12:.LC64	;#, tmp160,
	bl	__mingw_printf		;#
.L336:
;# varargs-use-dll.c:414:   TEST (few_ints, 142, 100, 42);
	mov	w2, 42	;#,
	mov	w1, 100	;#,
	adrp	x0, .LC6	;# tmp161,
	add	x0, x0, :lo12:.LC6	;#, tmp161,
	adrp	x3, __imp_use_va_args_few_ints	;# tmp164,
	add	x3, x3, :lo12:__imp_use_va_args_few_ints	;# tmp163, tmp164,
	ldr	x3, [x3]	;# tmp162,
	blr	x3		;# tmp162
	str	w0, [sp, 2408]	;#, actual
	ldr	w2, [sp, 2408]	;#, actual
	adrp	x0, .LC6	;# tmp165,
	add	x1, x0, :lo12:.LC6	;#, tmp165,
	adrp	x0, .LC63	;# tmp166,
	add	x0, x0, :lo12:.LC63	;#, tmp166,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2408]	;# tmp167, actual
	cmp	w0, 142	;# tmp167,
	beq	.L337		;#,
	ldr	w0, [sp, 2428]	;# tmp169, failures
	add	w0, w0, 1	;# failures_131, tmp169,
	str	w0, [sp, 2428]	;# failures_131, failures
	ldr	w2, [sp, 2408]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp170,
	add	x0, x0, :lo12:.LC64	;#, tmp170,
	bl	__mingw_printf		;#
.L337:
;# varargs-use-dll.c:415:   TEST (several_ints, 142, 1, 2, 3, 5, 8, 13, 21, 34, 55);
	mov	w0, 55	;# tmp171,
	str	w0, [sp, 8]	;# tmp171,
	mov	w0, 34	;# tmp172,
	str	w0, [sp]	;# tmp172,
	mov	w7, 21	;#,
	mov	w6, 13	;#,
	mov	w5, 8	;#,
	mov	w4, 5	;#,
	mov	w3, 3	;#,
	mov	w2, 2	;#,
	mov	w1, 1	;#,
	adrp	x0, .LC7	;# tmp173,
	add	x0, x0, :lo12:.LC7	;#, tmp173,
	adrp	x8, __imp_use_va_args_several_ints	;# tmp176,
	add	x8, x8, :lo12:__imp_use_va_args_several_ints	;# tmp175, tmp176,
	ldr	x8, [x8]	;# tmp174,
	blr	x8		;# tmp174
	str	w0, [sp, 2404]	;#, actual
	ldr	w2, [sp, 2404]	;#, actual
	adrp	x0, .LC7	;# tmp177,
	add	x1, x0, :lo12:.LC7	;#, tmp177,
	adrp	x0, .LC63	;# tmp178,
	add	x0, x0, :lo12:.LC63	;#, tmp178,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2404]	;# tmp179, actual
	cmp	w0, 142	;# tmp179,
	beq	.L338		;#,
	ldr	w0, [sp, 2428]	;# tmp181, failures
	add	w0, w0, 1	;# failures_136, tmp181,
	str	w0, [sp, 2428]	;# failures_136, failures
	ldr	w2, [sp, 2404]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp182,
	add	x0, x0, :lo12:.LC64	;#, tmp182,
	bl	__mingw_printf		;#
.L338:
;# varargs-use-dll.c:416:   TEST (many_ints, 6763, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610,
	mov	w0, 2584	;# tmp183,
	str	w0, [sp, 72]	;# tmp183,
	mov	w0, 1597	;# tmp184,
	str	w0, [sp, 64]	;# tmp184,
	mov	w0, 987	;# tmp185,
	str	w0, [sp, 56]	;# tmp185,
	mov	w0, 610	;# tmp186,
	str	w0, [sp, 48]	;# tmp186,
	mov	w0, 377	;# tmp187,
	str	w0, [sp, 40]	;# tmp187,
	mov	w0, 233	;# tmp188,
	str	w0, [sp, 32]	;# tmp188,
	mov	w0, 144	;# tmp189,
	str	w0, [sp, 24]	;# tmp189,
	mov	w0, 89	;# tmp190,
	str	w0, [sp, 16]	;# tmp190,
	mov	w0, 55	;# tmp191,
	str	w0, [sp, 8]	;# tmp191,
	mov	w0, 34	;# tmp192,
	str	w0, [sp]	;# tmp192,
	mov	w7, 21	;#,
	mov	w6, 13	;#,
	mov	w5, 8	;#,
	mov	w4, 5	;#,
	mov	w3, 3	;#,
	mov	w2, 2	;#,
	mov	w1, 1	;#,
	adrp	x0, .LC8	;# tmp193,
	add	x0, x0, :lo12:.LC8	;#, tmp193,
	adrp	x8, __imp_use_va_args_many_ints	;# tmp196,
	add	x8, x8, :lo12:__imp_use_va_args_many_ints	;# tmp195, tmp196,
	ldr	x8, [x8]	;# tmp194,
	blr	x8		;# tmp194
	str	w0, [sp, 2400]	;#, actual
	ldr	w2, [sp, 2400]	;#, actual
	adrp	x0, .LC8	;# tmp197,
	add	x1, x0, :lo12:.LC8	;#, tmp197,
	adrp	x0, .LC63	;# tmp198,
	add	x0, x0, :lo12:.LC63	;#, tmp198,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2400]	;# tmp199, actual
	mov	w0, 6763	;# tmp200,
	cmp	w1, w0	;# tmp199, tmp200
	beq	.L339		;#,
	ldr	w0, [sp, 2428]	;# tmp202, failures
	add	w0, w0, 1	;# failures_141, tmp202,
	str	w0, [sp, 2428]	;# failures_141, failures
	ldr	w2, [sp, 2400]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp203,
	add	x0, x0, :lo12:.LC64	;#, tmp203,
	bl	__mingw_printf		;#
.L339:
;# varargs-use-dll.c:419:   TEST (few_doubles, 142, 100.0, 42.0);
	mov	x0, 4631107791820423168	;# tmp204,
	mov	x2, x0	;#, tmp204
	mov	x0, 4636737291354636288	;# tmp205,
	mov	x1, x0	;#, tmp205
	adrp	x0, .LC9	;# tmp206,
	add	x0, x0, :lo12:.LC9	;#, tmp206,
	adrp	x3, __imp_use_va_args_few_doubles	;# tmp209,
	add	x3, x3, :lo12:__imp_use_va_args_few_doubles	;# tmp208, tmp209,
	ldr	x3, [x3]	;# tmp207,
	blr	x3		;# tmp207
	str	w0, [sp, 2396]	;#, actual
	ldr	w2, [sp, 2396]	;#, actual
	adrp	x0, .LC9	;# tmp210,
	add	x1, x0, :lo12:.LC9	;#, tmp210,
	adrp	x0, .LC63	;# tmp211,
	add	x0, x0, :lo12:.LC63	;#, tmp211,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2396]	;# tmp212, actual
	cmp	w0, 142	;# tmp212,
	beq	.L340		;#,
	ldr	w0, [sp, 2428]	;# tmp214, failures
	add	w0, w0, 1	;# failures_146, tmp214,
	str	w0, [sp, 2428]	;# failures_146, failures
	ldr	w2, [sp, 2396]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp215,
	add	x0, x0, :lo12:.LC64	;#, tmp215,
	bl	__mingw_printf		;#
.L340:
;# varargs-use-dll.c:420:   TEST (several_doubles, 142, 1.0, 2.0, 3.0, 5.0, 8.0, 13.0, 21.0, 34.0, 55.0);
	mov	x0, 140737488355328	;# tmp217,
	movk	x0, 0x404b, lsl 48	;# tmp217,,
	fmov	d31, x0	;# tmp216, tmp217
	str	d31, [sp, 8]	;# tmp216,
	mov	x0, 4629981891913580544	;# tmp219,
	fmov	d31, x0	;# tmp218, tmp219
	str	d31, [sp]	;# tmp218,
	fmov	d31, 2.1e+1	;# tmp2517,
	fmov	x7, d31	;#, tmp2517
	fmov	d31, 1.3e+1	;# tmp2518,
	fmov	x6, d31	;#, tmp2518
	fmov	d31, 8.0e+0	;# tmp2519,
	fmov	x5, d31	;#, tmp2519
	fmov	d31, 5.0e+0	;# tmp2520,
	fmov	x4, d31	;#, tmp2520
	fmov	d31, 3.0e+0	;# tmp2521,
	fmov	x3, d31	;#, tmp2521
	fmov	d31, 2.0e+0	;# tmp2522,
	fmov	x2, d31	;#, tmp2522
	fmov	d31, 1.0e+0	;# tmp2523,
	fmov	x1, d31	;#, tmp2523
	adrp	x0, .LC10	;# tmp220,
	add	x0, x0, :lo12:.LC10	;#, tmp220,
	adrp	x8, __imp_use_va_args_several_doubles	;# tmp223,
	add	x8, x8, :lo12:__imp_use_va_args_several_doubles	;# tmp222, tmp223,
	ldr	x8, [x8]	;# tmp221,
	blr	x8		;# tmp221
	str	w0, [sp, 2392]	;#, actual
	ldr	w2, [sp, 2392]	;#, actual
	adrp	x0, .LC10	;# tmp224,
	add	x1, x0, :lo12:.LC10	;#, tmp224,
	adrp	x0, .LC63	;# tmp225,
	add	x0, x0, :lo12:.LC63	;#, tmp225,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2392]	;# tmp226, actual
	cmp	w0, 142	;# tmp226,
	beq	.L341		;#,
	ldr	w0, [sp, 2428]	;# tmp228, failures
	add	w0, w0, 1	;# failures_151, tmp228,
	str	w0, [sp, 2428]	;# failures_151, failures
	ldr	w2, [sp, 2392]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp229,
	add	x0, x0, :lo12:.LC64	;#, tmp229,
	bl	__mingw_printf		;#
.L341:
;# varargs-use-dll.c:421:   TEST (many_doubles, 6763, 1.0, 2.0, 3.0, 5.0, 8.0, 13.0, 21.0, 34.0, 55.0,
	mov	x0, 52776558133248	;# tmp231,
	movk	x0, 0x40a4, lsl 48	;# tmp231,,
	fmov	d31, x0	;# tmp230, tmp231
	str	d31, [sp, 72]	;# tmp230,
	mov	x0, 268280837177344	;# tmp233,
	movk	x0, 0x4098, lsl 48	;# tmp233,,
	fmov	d31, x0	;# tmp232, tmp233
	str	d31, [sp, 64]	;# tmp232,
	mov	x0, 237494511599616	;# tmp235,
	movk	x0, 0x408e, lsl 48	;# tmp235,,
	fmov	d31, x0	;# tmp234, tmp235
	str	d31, [sp, 56]	;# tmp234,
	mov	x0, 17592186044416	;# tmp237,
	movk	x0, 0x4083, lsl 48	;# tmp237,,
	fmov	d31, x0	;# tmp236, tmp237
	str	d31, [sp, 48]	;# tmp236,
	mov	x0, 158329674399744	;# tmp239,
	movk	x0, 0x4077, lsl 48	;# tmp239,,
	fmov	d31, x0	;# tmp238, tmp239
	str	d31, [sp, 40]	;# tmp238,
	mov	x0, 35184372088832	;# tmp241,
	movk	x0, 0x406d, lsl 48	;# tmp241,,
	fmov	d31, x0	;# tmp240, tmp241
	str	d31, [sp, 32]	;# tmp240,
	mov	x0, 4639270566145032192	;# tmp243,
	fmov	d31, x0	;# tmp242, tmp243
	str	d31, [sp, 24]	;# tmp242,
	mov	x0, 70368744177664	;# tmp245,
	movk	x0, 0x4056, lsl 48	;# tmp245,,
	fmov	d31, x0	;# tmp244, tmp245
	str	d31, [sp, 16]	;# tmp244,
	mov	x0, 140737488355328	;# tmp247,
	movk	x0, 0x404b, lsl 48	;# tmp247,,
	fmov	d31, x0	;# tmp246, tmp247
	str	d31, [sp, 8]	;# tmp246,
	mov	x0, 4629981891913580544	;# tmp249,
	fmov	d31, x0	;# tmp248, tmp249
	str	d31, [sp]	;# tmp248,
	fmov	d31, 2.1e+1	;# tmp2524,
	fmov	x7, d31	;#, tmp2524
	fmov	d31, 1.3e+1	;# tmp2525,
	fmov	x6, d31	;#, tmp2525
	fmov	d31, 8.0e+0	;# tmp2526,
	fmov	x5, d31	;#, tmp2526
	fmov	d31, 5.0e+0	;# tmp2527,
	fmov	x4, d31	;#, tmp2527
	fmov	d31, 3.0e+0	;# tmp2528,
	fmov	x3, d31	;#, tmp2528
	fmov	d31, 2.0e+0	;# tmp2529,
	fmov	x2, d31	;#, tmp2529
	fmov	d31, 1.0e+0	;# tmp2530,
	fmov	x1, d31	;#, tmp2530
	adrp	x0, .LC11	;# tmp250,
	add	x0, x0, :lo12:.LC11	;#, tmp250,
	adrp	x8, __imp_use_va_args_many_doubles	;# tmp253,
	add	x8, x8, :lo12:__imp_use_va_args_many_doubles	;# tmp252, tmp253,
	ldr	x8, [x8]	;# tmp251,
	blr	x8		;# tmp251
	str	w0, [sp, 2388]	;#, actual
	ldr	w2, [sp, 2388]	;#, actual
	adrp	x0, .LC11	;# tmp254,
	add	x1, x0, :lo12:.LC11	;#, tmp254,
	adrp	x0, .LC63	;# tmp255,
	add	x0, x0, :lo12:.LC63	;#, tmp255,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2388]	;# tmp256, actual
	mov	w0, 6763	;# tmp257,
	cmp	w1, w0	;# tmp256, tmp257
	beq	.L342		;#,
	ldr	w0, [sp, 2428]	;# tmp259, failures
	add	w0, w0, 1	;# failures_156, tmp259,
	str	w0, [sp, 2428]	;# failures_156, failures
	ldr	w2, [sp, 2388]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp260,
	add	x0, x0, :lo12:.LC64	;#, tmp260,
	bl	__mingw_printf		;#
.L342:
;# varargs-use-dll.c:424:   TEST (few_floats, 142, 100.0f, 42.0f);
	mov	x0, 4631107791820423168	;# tmp261,
	mov	x2, x0	;#, tmp261
	mov	x0, 4636737291354636288	;# tmp262,
	mov	x1, x0	;#, tmp262
	adrp	x0, .LC12	;# tmp263,
	add	x0, x0, :lo12:.LC12	;#, tmp263,
	adrp	x3, __imp_use_va_args_few_floats	;# tmp266,
	add	x3, x3, :lo12:__imp_use_va_args_few_floats	;# tmp265, tmp266,
	ldr	x3, [x3]	;# tmp264,
	blr	x3		;# tmp264
	str	w0, [sp, 2384]	;#, actual
	ldr	w2, [sp, 2384]	;#, actual
	adrp	x0, .LC12	;# tmp267,
	add	x1, x0, :lo12:.LC12	;#, tmp267,
	adrp	x0, .LC63	;# tmp268,
	add	x0, x0, :lo12:.LC63	;#, tmp268,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2384]	;# tmp269, actual
	cmp	w0, 142	;# tmp269,
	beq	.L343		;#,
	ldr	w0, [sp, 2428]	;# tmp271, failures
	add	w0, w0, 1	;# failures_161, tmp271,
	str	w0, [sp, 2428]	;# failures_161, failures
	ldr	w2, [sp, 2384]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp272,
	add	x0, x0, :lo12:.LC64	;#, tmp272,
	bl	__mingw_printf		;#
.L343:
;# varargs-use-dll.c:425:   TEST (several_floats, 142, 1.0f, 2.0f, 3.0f, 5.0f, 8.0f, 13.0f, 21.0f, 34.0f,
	mov	x0, 140737488355328	;# tmp274,
	movk	x0, 0x404b, lsl 48	;# tmp274,,
	fmov	d31, x0	;# tmp273, tmp274
	str	d31, [sp, 8]	;# tmp273,
	mov	x0, 4629981891913580544	;# tmp276,
	fmov	d31, x0	;# tmp275, tmp276
	str	d31, [sp]	;# tmp275,
	fmov	d31, 2.1e+1	;# tmp2531,
	fmov	x7, d31	;#, tmp2531
	fmov	d31, 1.3e+1	;# tmp2532,
	fmov	x6, d31	;#, tmp2532
	fmov	d31, 8.0e+0	;# tmp2533,
	fmov	x5, d31	;#, tmp2533
	fmov	d31, 5.0e+0	;# tmp2534,
	fmov	x4, d31	;#, tmp2534
	fmov	d31, 3.0e+0	;# tmp2535,
	fmov	x3, d31	;#, tmp2535
	fmov	d31, 2.0e+0	;# tmp2536,
	fmov	x2, d31	;#, tmp2536
	fmov	d31, 1.0e+0	;# tmp2537,
	fmov	x1, d31	;#, tmp2537
	adrp	x0, .LC13	;# tmp277,
	add	x0, x0, :lo12:.LC13	;#, tmp277,
	adrp	x8, __imp_use_va_args_several_floats	;# tmp280,
	add	x8, x8, :lo12:__imp_use_va_args_several_floats	;# tmp279, tmp280,
	ldr	x8, [x8]	;# tmp278,
	blr	x8		;# tmp278
	str	w0, [sp, 2380]	;#, actual
	ldr	w2, [sp, 2380]	;#, actual
	adrp	x0, .LC13	;# tmp281,
	add	x1, x0, :lo12:.LC13	;#, tmp281,
	adrp	x0, .LC63	;# tmp282,
	add	x0, x0, :lo12:.LC63	;#, tmp282,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2380]	;# tmp283, actual
	cmp	w0, 142	;# tmp283,
	beq	.L344		;#,
	ldr	w0, [sp, 2428]	;# tmp285, failures
	add	w0, w0, 1	;# failures_166, tmp285,
	str	w0, [sp, 2428]	;# failures_166, failures
	ldr	w2, [sp, 2380]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp286,
	add	x0, x0, :lo12:.LC64	;#, tmp286,
	bl	__mingw_printf		;#
.L344:
;# varargs-use-dll.c:427:   TEST (many_floats, 6763, 1.0f, 2.0f, 3.0f, 5.0f, 8.0f, 13.0f, 21.0f, 34.0f,
	mov	x0, 52776558133248	;# tmp288,
	movk	x0, 0x40a4, lsl 48	;# tmp288,,
	fmov	d31, x0	;# tmp287, tmp288
	str	d31, [sp, 72]	;# tmp287,
	mov	x0, 268280837177344	;# tmp290,
	movk	x0, 0x4098, lsl 48	;# tmp290,,
	fmov	d31, x0	;# tmp289, tmp290
	str	d31, [sp, 64]	;# tmp289,
	mov	x0, 237494511599616	;# tmp292,
	movk	x0, 0x408e, lsl 48	;# tmp292,,
	fmov	d31, x0	;# tmp291, tmp292
	str	d31, [sp, 56]	;# tmp291,
	mov	x0, 17592186044416	;# tmp294,
	movk	x0, 0x4083, lsl 48	;# tmp294,,
	fmov	d31, x0	;# tmp293, tmp294
	str	d31, [sp, 48]	;# tmp293,
	mov	x0, 158329674399744	;# tmp296,
	movk	x0, 0x4077, lsl 48	;# tmp296,,
	fmov	d31, x0	;# tmp295, tmp296
	str	d31, [sp, 40]	;# tmp295,
	mov	x0, 35184372088832	;# tmp298,
	movk	x0, 0x406d, lsl 48	;# tmp298,,
	fmov	d31, x0	;# tmp297, tmp298
	str	d31, [sp, 32]	;# tmp297,
	mov	x0, 4639270566145032192	;# tmp300,
	fmov	d31, x0	;# tmp299, tmp300
	str	d31, [sp, 24]	;# tmp299,
	mov	x0, 70368744177664	;# tmp302,
	movk	x0, 0x4056, lsl 48	;# tmp302,,
	fmov	d31, x0	;# tmp301, tmp302
	str	d31, [sp, 16]	;# tmp301,
	mov	x0, 140737488355328	;# tmp304,
	movk	x0, 0x404b, lsl 48	;# tmp304,,
	fmov	d31, x0	;# tmp303, tmp304
	str	d31, [sp, 8]	;# tmp303,
	mov	x0, 4629981891913580544	;# tmp306,
	fmov	d31, x0	;# tmp305, tmp306
	str	d31, [sp]	;# tmp305,
	fmov	d31, 2.1e+1	;# tmp2538,
	fmov	x7, d31	;#, tmp2538
	fmov	d31, 1.3e+1	;# tmp2539,
	fmov	x6, d31	;#, tmp2539
	fmov	d31, 8.0e+0	;# tmp2540,
	fmov	x5, d31	;#, tmp2540
	fmov	d31, 5.0e+0	;# tmp2541,
	fmov	x4, d31	;#, tmp2541
	fmov	d31, 3.0e+0	;# tmp2542,
	fmov	x3, d31	;#, tmp2542
	fmov	d31, 2.0e+0	;# tmp2543,
	fmov	x2, d31	;#, tmp2543
	fmov	d31, 1.0e+0	;# tmp2544,
	fmov	x1, d31	;#, tmp2544
	adrp	x0, .LC14	;# tmp307,
	add	x0, x0, :lo12:.LC14	;#, tmp307,
	adrp	x8, __imp_use_va_args_many_floats	;# tmp310,
	add	x8, x8, :lo12:__imp_use_va_args_many_floats	;# tmp309, tmp310,
	ldr	x8, [x8]	;# tmp308,
	blr	x8		;# tmp308
	str	w0, [sp, 2376]	;#, actual
	ldr	w2, [sp, 2376]	;#, actual
	adrp	x0, .LC14	;# tmp311,
	add	x1, x0, :lo12:.LC14	;#, tmp311,
	adrp	x0, .LC63	;# tmp312,
	add	x0, x0, :lo12:.LC63	;#, tmp312,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2376]	;# tmp313, actual
	mov	w0, 6763	;# tmp314,
	cmp	w1, w0	;# tmp313, tmp314
	beq	.L345		;#,
	ldr	w0, [sp, 2428]	;# tmp316, failures
	add	w0, w0, 1	;# failures_171, tmp316,
	str	w0, [sp, 2428]	;# failures_171, failures
	ldr	w2, [sp, 2376]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp317,
	add	x0, x0, :lo12:.LC64	;#, tmp317,
	bl	__mingw_printf		;#
.L345:
;# varargs-use-dll.c:431:   TEST (few_composites, 3, a, b);
	adrp	x0, a	;# tmp319,
	add	x1, x0, :lo12:a	;# tmp318, tmp319,
	add	x0, sp, 2128	;# tmp320,,
	ldr	q28, [x1]	;# tmp322, a
	ldr	q29, [x1, 16]	;# tmp323, a
	ldr	q30, [x1, 32]	;# tmp324, a
	ldr	q31, [x1, 48]	;# tmp325, a
	str	q28, [x0]	;# tmp322,
	str	q29, [x0, 16]	;# tmp323,
	str	q30, [x0, 32]	;# tmp324,
	str	q31, [x0, 48]	;# tmp325,
	adrp	x0, b	;# tmp327,
	add	x1, x0, :lo12:b	;# tmp326, tmp327,
	add	x0, sp, 2064	;# tmp328,,
	ldr	q28, [x1]	;# tmp330, b
	ldr	q29, [x1, 16]	;# tmp331, b
	ldr	q30, [x1, 32]	;# tmp332, b
	ldr	q31, [x1, 48]	;# tmp333, b
	str	q28, [x0]	;# tmp330,
	str	q29, [x0, 16]	;# tmp331,
	str	q30, [x0, 32]	;# tmp332,
	str	q31, [x0, 48]	;# tmp333,
	add	x1, sp, 2064	;# tmp334,,
	add	x0, sp, 2128	;# tmp335,,
	mov	x2, x1	;#, tmp334
	mov	x1, x0	;#, tmp335
	adrp	x0, .LC18	;# tmp336,
	add	x0, x0, :lo12:.LC18	;#, tmp336,
	adrp	x3, __imp_use_va_args_few_composites	;# tmp339,
	add	x3, x3, :lo12:__imp_use_va_args_few_composites	;# tmp338, tmp339,
	ldr	x3, [x3]	;# tmp337,
	blr	x3		;# tmp337
	str	w0, [sp, 2372]	;#, actual
	ldr	w2, [sp, 2372]	;#, actual
	adrp	x0, .LC18	;# tmp340,
	add	x1, x0, :lo12:.LC18	;#, tmp340,
	adrp	x0, .LC63	;# tmp341,
	add	x0, x0, :lo12:.LC63	;#, tmp341,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2372]	;# tmp342, actual
	cmp	w0, 3	;# tmp342,
	beq	.L346		;#,
	ldr	w0, [sp, 2428]	;# tmp344, failures
	add	w0, w0, 1	;# failures_176, tmp344,
	str	w0, [sp, 2428]	;# failures_176, failures
	ldr	w2, [sp, 2372]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp345,
	add	x0, x0, :lo12:.LC64	;#, tmp345,
	bl	__mingw_printf		;#
.L346:
;# varargs-use-dll.c:432:   TEST (several_composites, 142, a, b, c, d, e, f, g, h, i);
	adrp	x0, a	;# tmp347,
	add	x1, x0, :lo12:a	;# tmp346, tmp347,
	add	x0, sp, 2064	;# tmp348,,
	ldr	q28, [x1]	;# tmp350, a
	ldr	q29, [x1, 16]	;# tmp351, a
	ldr	q30, [x1, 32]	;# tmp352, a
	ldr	q31, [x1, 48]	;# tmp353, a
	str	q28, [x0]	;# tmp350,
	str	q29, [x0, 16]	;# tmp351,
	str	q30, [x0, 32]	;# tmp352,
	str	q31, [x0, 48]	;# tmp353,
	adrp	x0, b	;# tmp355,
	add	x1, x0, :lo12:b	;# tmp354, tmp355,
	add	x0, sp, 2128	;# tmp356,,
	ldr	q28, [x1]	;# tmp358, b
	ldr	q29, [x1, 16]	;# tmp359, b
	ldr	q30, [x1, 32]	;# tmp360, b
	ldr	q31, [x1, 48]	;# tmp361, b
	str	q28, [x0]	;# tmp358,
	str	q29, [x0, 16]	;# tmp359,
	str	q30, [x0, 32]	;# tmp360,
	str	q31, [x0, 48]	;# tmp361,
	adrp	x0, c	;# tmp363,
	add	x1, x0, :lo12:c	;# tmp362, tmp363,
	add	x0, sp, 2000	;# tmp364,,
	ldr	q28, [x1]	;# tmp366, c
	ldr	q29, [x1, 16]	;# tmp367, c
	ldr	q30, [x1, 32]	;# tmp368, c
	ldr	q31, [x1, 48]	;# tmp369, c
	str	q28, [x0]	;# tmp366,
	str	q29, [x0, 16]	;# tmp367,
	str	q30, [x0, 32]	;# tmp368,
	str	q31, [x0, 48]	;# tmp369,
	adrp	x0, d	;# tmp371,
	add	x1, x0, :lo12:d	;# tmp370, tmp371,
	add	x0, sp, 1936	;# tmp372,,
	ldr	q28, [x1]	;# tmp374, d
	ldr	q29, [x1, 16]	;# tmp375, d
	ldr	q30, [x1, 32]	;# tmp376, d
	ldr	q31, [x1, 48]	;# tmp377, d
	str	q28, [x0]	;# tmp374,
	str	q29, [x0, 16]	;# tmp375,
	str	q30, [x0, 32]	;# tmp376,
	str	q31, [x0, 48]	;# tmp377,
	adrp	x0, e	;# tmp379,
	add	x1, x0, :lo12:e	;# tmp378, tmp379,
	add	x0, sp, 1872	;# tmp380,,
	ldr	q28, [x1]	;# tmp382, e
	ldr	q29, [x1, 16]	;# tmp383, e
	ldr	q30, [x1, 32]	;# tmp384, e
	ldr	q31, [x1, 48]	;# tmp385, e
	str	q28, [x0]	;# tmp382,
	str	q29, [x0, 16]	;# tmp383,
	str	q30, [x0, 32]	;# tmp384,
	str	q31, [x0, 48]	;# tmp385,
	adrp	x0, f	;# tmp387,
	add	x1, x0, :lo12:f	;# tmp386, tmp387,
	add	x0, sp, 1808	;# tmp388,,
	ldr	q28, [x1]	;# tmp390, f
	ldr	q29, [x1, 16]	;# tmp391, f
	ldr	q30, [x1, 32]	;# tmp392, f
	ldr	q31, [x1, 48]	;# tmp393, f
	str	q28, [x0]	;# tmp390,
	str	q29, [x0, 16]	;# tmp391,
	str	q30, [x0, 32]	;# tmp392,
	str	q31, [x0, 48]	;# tmp393,
	adrp	x0, g	;# tmp395,
	add	x1, x0, :lo12:g	;# tmp394, tmp395,
	add	x0, sp, 1744	;# tmp396,,
	ldr	q28, [x1]	;# tmp398, g
	ldr	q29, [x1, 16]	;# tmp399, g
	ldr	q30, [x1, 32]	;# tmp400, g
	ldr	q31, [x1, 48]	;# tmp401, g
	str	q28, [x0]	;# tmp398,
	str	q29, [x0, 16]	;# tmp399,
	str	q30, [x0, 32]	;# tmp400,
	str	q31, [x0, 48]	;# tmp401,
	adrp	x0, h	;# tmp403,
	add	x1, x0, :lo12:h	;# tmp402, tmp403,
	add	x0, sp, 1680	;# tmp404,,
	ldr	q28, [x1]	;# tmp406, h
	ldr	q29, [x1, 16]	;# tmp407, h
	ldr	q30, [x1, 32]	;# tmp408, h
	ldr	q31, [x1, 48]	;# tmp409, h
	str	q28, [x0]	;# tmp406,
	str	q29, [x0, 16]	;# tmp407,
	str	q30, [x0, 32]	;# tmp408,
	str	q31, [x0, 48]	;# tmp409,
	adrp	x0, i	;# tmp411,
	add	x1, x0, :lo12:i	;# tmp410, tmp411,
	add	x0, sp, 1616	;# tmp412,,
	ldr	q28, [x1]	;# tmp414, i
	ldr	q29, [x1, 16]	;# tmp415, i
	ldr	q30, [x1, 32]	;# tmp416, i
	ldr	q31, [x1, 48]	;# tmp417, i
	str	q28, [x0]	;# tmp414,
	str	q29, [x0, 16]	;# tmp415,
	str	q30, [x0, 32]	;# tmp416,
	str	q31, [x0, 48]	;# tmp417,
	add	x7, sp, 1744	;# tmp418,,
	add	x6, sp, 1808	;# tmp419,,
	add	x5, sp, 1872	;# tmp420,,
	add	x4, sp, 1936	;# tmp421,,
	add	x3, sp, 2000	;# tmp422,,
	add	x2, sp, 2128	;# tmp423,,
	add	x1, sp, 2064	;# tmp424,,
	add	x0, sp, 1616	;# tmp425,,
	str	x0, [sp, 8]	;# tmp425,
	add	x0, sp, 1680	;# tmp426,,
	str	x0, [sp]	;# tmp426,
	adrp	x0, .LC19	;# tmp427,
	add	x0, x0, :lo12:.LC19	;#, tmp427,
	adrp	x8, __imp_use_va_args_several_composites	;# tmp430,
	add	x8, x8, :lo12:__imp_use_va_args_several_composites	;# tmp429, tmp430,
	ldr	x8, [x8]	;# tmp428,
	blr	x8		;# tmp428
	str	w0, [sp, 2368]	;#, actual
	ldr	w2, [sp, 2368]	;#, actual
	adrp	x0, .LC19	;# tmp431,
	add	x1, x0, :lo12:.LC19	;#, tmp431,
	adrp	x0, .LC63	;# tmp432,
	add	x0, x0, :lo12:.LC63	;#, tmp432,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2368]	;# tmp433, actual
	cmp	w0, 142	;# tmp433,
	beq	.L347		;#,
	ldr	w0, [sp, 2428]	;# tmp435, failures
	add	w0, w0, 1	;# failures_181, tmp435,
	str	w0, [sp, 2428]	;# failures_181, failures
	ldr	w2, [sp, 2368]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp436,
	add	x0, x0, :lo12:.LC64	;#, tmp436,
	bl	__mingw_printf		;#
.L347:
;# varargs-use-dll.c:433:   TEST (many_composites, 6763, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p,
	adrp	x0, a	;# tmp438,
	add	x1, x0, :lo12:a	;# tmp437, tmp438,
	add	x0, sp, 1936	;# tmp439,,
	ldr	q28, [x1]	;# tmp441, a
	ldr	q29, [x1, 16]	;# tmp442, a
	ldr	q30, [x1, 32]	;# tmp443, a
	ldr	q31, [x1, 48]	;# tmp444, a
	str	q28, [x0]	;# tmp441,
	str	q29, [x0, 16]	;# tmp442,
	str	q30, [x0, 32]	;# tmp443,
	str	q31, [x0, 48]	;# tmp444,
	adrp	x0, b	;# tmp446,
	add	x1, x0, :lo12:b	;# tmp445, tmp446,
	add	x0, sp, 1872	;# tmp447,,
	ldr	q28, [x1]	;# tmp449, b
	ldr	q29, [x1, 16]	;# tmp450, b
	ldr	q30, [x1, 32]	;# tmp451, b
	ldr	q31, [x1, 48]	;# tmp452, b
	str	q28, [x0]	;# tmp449,
	str	q29, [x0, 16]	;# tmp450,
	str	q30, [x0, 32]	;# tmp451,
	str	q31, [x0, 48]	;# tmp452,
	adrp	x0, c	;# tmp454,
	add	x1, x0, :lo12:c	;# tmp453, tmp454,
	add	x0, sp, 1808	;# tmp455,,
	ldr	q28, [x1]	;# tmp457, c
	ldr	q29, [x1, 16]	;# tmp458, c
	ldr	q30, [x1, 32]	;# tmp459, c
	ldr	q31, [x1, 48]	;# tmp460, c
	str	q28, [x0]	;# tmp457,
	str	q29, [x0, 16]	;# tmp458,
	str	q30, [x0, 32]	;# tmp459,
	str	q31, [x0, 48]	;# tmp460,
	adrp	x0, d	;# tmp462,
	add	x1, x0, :lo12:d	;# tmp461, tmp462,
	add	x0, sp, 1744	;# tmp463,,
	ldr	q28, [x1]	;# tmp465, d
	ldr	q29, [x1, 16]	;# tmp466, d
	ldr	q30, [x1, 32]	;# tmp467, d
	ldr	q31, [x1, 48]	;# tmp468, d
	str	q28, [x0]	;# tmp465,
	str	q29, [x0, 16]	;# tmp466,
	str	q30, [x0, 32]	;# tmp467,
	str	q31, [x0, 48]	;# tmp468,
	adrp	x0, e	;# tmp470,
	add	x1, x0, :lo12:e	;# tmp469, tmp470,
	add	x0, sp, 1680	;# tmp471,,
	ldr	q28, [x1]	;# tmp473, e
	ldr	q29, [x1, 16]	;# tmp474, e
	ldr	q30, [x1, 32]	;# tmp475, e
	ldr	q31, [x1, 48]	;# tmp476, e
	str	q28, [x0]	;# tmp473,
	str	q29, [x0, 16]	;# tmp474,
	str	q30, [x0, 32]	;# tmp475,
	str	q31, [x0, 48]	;# tmp476,
	adrp	x0, f	;# tmp478,
	add	x1, x0, :lo12:f	;# tmp477, tmp478,
	add	x0, sp, 1616	;# tmp479,,
	ldr	q28, [x1]	;# tmp481, f
	ldr	q29, [x1, 16]	;# tmp482, f
	ldr	q30, [x1, 32]	;# tmp483, f
	ldr	q31, [x1, 48]	;# tmp484, f
	str	q28, [x0]	;# tmp481,
	str	q29, [x0, 16]	;# tmp482,
	str	q30, [x0, 32]	;# tmp483,
	str	q31, [x0, 48]	;# tmp484,
	adrp	x0, g	;# tmp486,
	add	x1, x0, :lo12:g	;# tmp485, tmp486,
	add	x0, sp, 2000	;# tmp487,,
	ldr	q28, [x1]	;# tmp489, g
	ldr	q29, [x1, 16]	;# tmp490, g
	ldr	q30, [x1, 32]	;# tmp491, g
	ldr	q31, [x1, 48]	;# tmp492, g
	str	q28, [x0]	;# tmp489,
	str	q29, [x0, 16]	;# tmp490,
	str	q30, [x0, 32]	;# tmp491,
	str	q31, [x0, 48]	;# tmp492,
	adrp	x0, h	;# tmp494,
	add	x1, x0, :lo12:h	;# tmp493, tmp494,
	add	x0, sp, 2064	;# tmp495,,
	ldr	q28, [x1]	;# tmp497, h
	ldr	q29, [x1, 16]	;# tmp498, h
	ldr	q30, [x1, 32]	;# tmp499, h
	ldr	q31, [x1, 48]	;# tmp500, h
	str	q28, [x0]	;# tmp497,
	str	q29, [x0, 16]	;# tmp498,
	str	q30, [x0, 32]	;# tmp499,
	str	q31, [x0, 48]	;# tmp500,
	adrp	x0, i	;# tmp502,
	add	x1, x0, :lo12:i	;# tmp501, tmp502,
	add	x0, sp, 2128	;# tmp503,,
	ldr	q28, [x1]	;# tmp505, i
	ldr	q29, [x1, 16]	;# tmp506, i
	ldr	q30, [x1, 32]	;# tmp507, i
	ldr	q31, [x1, 48]	;# tmp508, i
	str	q28, [x0]	;# tmp505,
	str	q29, [x0, 16]	;# tmp506,
	str	q30, [x0, 32]	;# tmp507,
	str	q31, [x0, 48]	;# tmp508,
	adrp	x0, j	;# tmp510,
	add	x1, x0, :lo12:j	;# tmp509, tmp510,
	add	x0, sp, 1552	;# tmp511,,
	ldr	q28, [x1]	;# tmp513, j
	ldr	q29, [x1, 16]	;# tmp514, j
	ldr	q30, [x1, 32]	;# tmp515, j
	ldr	q31, [x1, 48]	;# tmp516, j
	str	q28, [x0]	;# tmp513,
	str	q29, [x0, 16]	;# tmp514,
	str	q30, [x0, 32]	;# tmp515,
	str	q31, [x0, 48]	;# tmp516,
	adrp	x0, k	;# tmp518,
	add	x1, x0, :lo12:k	;# tmp517, tmp518,
	add	x0, sp, 1488	;# tmp519,,
	ldr	q28, [x1]	;# tmp521, k
	ldr	q29, [x1, 16]	;# tmp522, k
	ldr	q30, [x1, 32]	;# tmp523, k
	ldr	q31, [x1, 48]	;# tmp524, k
	str	q28, [x0]	;# tmp521,
	str	q29, [x0, 16]	;# tmp522,
	str	q30, [x0, 32]	;# tmp523,
	str	q31, [x0, 48]	;# tmp524,
	adrp	x0, l	;# tmp526,
	add	x1, x0, :lo12:l	;# tmp525, tmp526,
	add	x0, sp, 1424	;# tmp527,,
	ldr	q28, [x1]	;# tmp529, l
	ldr	q29, [x1, 16]	;# tmp530, l
	ldr	q30, [x1, 32]	;# tmp531, l
	ldr	q31, [x1, 48]	;# tmp532, l
	str	q28, [x0]	;# tmp529,
	str	q29, [x0, 16]	;# tmp530,
	str	q30, [x0, 32]	;# tmp531,
	str	q31, [x0, 48]	;# tmp532,
	adrp	x0, m	;# tmp534,
	add	x1, x0, :lo12:m	;# tmp533, tmp534,
	add	x0, sp, 1360	;# tmp535,,
	ldr	q28, [x1]	;# tmp537, m
	ldr	q29, [x1, 16]	;# tmp538, m
	ldr	q30, [x1, 32]	;# tmp539, m
	ldr	q31, [x1, 48]	;# tmp540, m
	str	q28, [x0]	;# tmp537,
	str	q29, [x0, 16]	;# tmp538,
	str	q30, [x0, 32]	;# tmp539,
	str	q31, [x0, 48]	;# tmp540,
	adrp	x0, n	;# tmp542,
	add	x1, x0, :lo12:n	;# tmp541, tmp542,
	add	x0, sp, 1296	;# tmp543,,
	ldr	q28, [x1]	;# tmp545, n
	ldr	q29, [x1, 16]	;# tmp546, n
	ldr	q30, [x1, 32]	;# tmp547, n
	ldr	q31, [x1, 48]	;# tmp548, n
	str	q28, [x0]	;# tmp545,
	str	q29, [x0, 16]	;# tmp546,
	str	q30, [x0, 32]	;# tmp547,
	str	q31, [x0, 48]	;# tmp548,
	adrp	x0, o	;# tmp550,
	add	x1, x0, :lo12:o	;# tmp549, tmp550,
	add	x0, sp, 1232	;# tmp551,,
	ldr	q28, [x1]	;# tmp553, o
	ldr	q29, [x1, 16]	;# tmp554, o
	ldr	q30, [x1, 32]	;# tmp555, o
	ldr	q31, [x1, 48]	;# tmp556, o
	str	q28, [x0]	;# tmp553,
	str	q29, [x0, 16]	;# tmp554,
	str	q30, [x0, 32]	;# tmp555,
	str	q31, [x0, 48]	;# tmp556,
	adrp	x0, p	;# tmp558,
	add	x1, x0, :lo12:p	;# tmp557, tmp558,
	add	x0, sp, 1168	;# tmp559,,
	ldr	q28, [x1]	;# tmp561, p
	ldr	q29, [x1, 16]	;# tmp562, p
	ldr	q30, [x1, 32]	;# tmp563, p
	ldr	q31, [x1, 48]	;# tmp564, p
	str	q28, [x0]	;# tmp561,
	str	q29, [x0, 16]	;# tmp562,
	str	q30, [x0, 32]	;# tmp563,
	str	q31, [x0, 48]	;# tmp564,
	adrp	x0, q	;# tmp566,
	add	x1, x0, :lo12:q	;# tmp565, tmp566,
	add	x0, sp, 1104	;# tmp567,,
	ldr	q28, [x1]	;# tmp569, q
	ldr	q29, [x1, 16]	;# tmp570, q
	ldr	q30, [x1, 32]	;# tmp571, q
	ldr	q31, [x1, 48]	;# tmp572, q
	str	q28, [x0]	;# tmp569,
	str	q29, [x0, 16]	;# tmp570,
	str	q30, [x0, 32]	;# tmp571,
	str	q31, [x0, 48]	;# tmp572,
	add	x7, sp, 2000	;# tmp573,,
	add	x6, sp, 1616	;# tmp574,,
	add	x5, sp, 1680	;# tmp575,,
	add	x4, sp, 1744	;# tmp576,,
	add	x3, sp, 1808	;# tmp577,,
	add	x2, sp, 1872	;# tmp578,,
	add	x1, sp, 1936	;# tmp579,,
	add	x0, sp, 1104	;# tmp580,,
	str	x0, [sp, 72]	;# tmp580,
	add	x0, sp, 1168	;# tmp581,,
	str	x0, [sp, 64]	;# tmp581,
	add	x0, sp, 1232	;# tmp582,,
	str	x0, [sp, 56]	;# tmp582,
	add	x0, sp, 1296	;# tmp583,,
	str	x0, [sp, 48]	;# tmp583,
	add	x0, sp, 1360	;# tmp584,,
	str	x0, [sp, 40]	;# tmp584,
	add	x0, sp, 1424	;# tmp585,,
	str	x0, [sp, 32]	;# tmp585,
	add	x0, sp, 1488	;# tmp586,,
	str	x0, [sp, 24]	;# tmp586,
	add	x0, sp, 1552	;# tmp587,,
	str	x0, [sp, 16]	;# tmp587,
	add	x0, sp, 2128	;# tmp588,,
	str	x0, [sp, 8]	;# tmp588,
	add	x0, sp, 2064	;# tmp589,,
	str	x0, [sp]	;# tmp589,
	adrp	x0, .LC20	;# tmp590,
	add	x0, x0, :lo12:.LC20	;#, tmp590,
	adrp	x8, __imp_use_va_args_many_composites	;# tmp593,
	add	x8, x8, :lo12:__imp_use_va_args_many_composites	;# tmp592, tmp593,
	ldr	x8, [x8]	;# tmp591,
	blr	x8		;# tmp591
	str	w0, [sp, 2364]	;#, actual
	ldr	w2, [sp, 2364]	;#, actual
	adrp	x0, .LC20	;# tmp594,
	add	x1, x0, :lo12:.LC20	;#, tmp594,
	adrp	x0, .LC63	;# tmp595,
	add	x0, x0, :lo12:.LC63	;#, tmp595,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2364]	;# tmp596, actual
	mov	w0, 6763	;# tmp597,
	cmp	w1, w0	;# tmp596, tmp597
	beq	.L348		;#,
	ldr	w0, [sp, 2428]	;# tmp599, failures
	add	w0, w0, 1	;# failures_186, tmp599,
	str	w0, [sp, 2428]	;# failures_186, failures
	ldr	w2, [sp, 2364]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp600,
	add	x0, x0, :lo12:.LC64	;#, tmp600,
	bl	__mingw_printf		;#
.L348:
;# varargs-use-dll.c:436:   TEST (few_short_vector_8_bytes, 3, sv8_a, sv8_b);
	adrp	x0, sv8_b	;# tmp602,
	add	x1, x0, :lo12:sv8_b	;# tmp601, tmp602,
	adrp	x0, sv8_a	;# tmp604,
	add	x0, x0, :lo12:sv8_a	;# tmp603, tmp604,
	ldr	x2, [x1]	;#, sv8_b
	ldr	x1, [x0]	;#, sv8_a
	adrp	x0, .LC21	;# tmp605,
	add	x0, x0, :lo12:.LC21	;#, tmp605,
	adrp	x3, __imp_use_va_args_few_short_vector_8_bytes	;# tmp608,
	add	x3, x3, :lo12:__imp_use_va_args_few_short_vector_8_bytes	;# tmp607, tmp608,
	ldr	x3, [x3]	;# tmp606,
	blr	x3		;# tmp606
	str	w0, [sp, 2360]	;#, actual
	ldr	w2, [sp, 2360]	;#, actual
	adrp	x0, .LC21	;# tmp609,
	add	x1, x0, :lo12:.LC21	;#, tmp609,
	adrp	x0, .LC63	;# tmp610,
	add	x0, x0, :lo12:.LC63	;#, tmp610,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2360]	;# tmp611, actual
	cmp	w0, 3	;# tmp611,
	beq	.L349		;#,
	ldr	w0, [sp, 2428]	;# tmp613, failures
	add	w0, w0, 1	;# failures_191, tmp613,
	str	w0, [sp, 2428]	;# failures_191, failures
	ldr	w2, [sp, 2360]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp614,
	add	x0, x0, :lo12:.LC64	;#, tmp614,
	bl	__mingw_printf		;#
.L349:
;# varargs-use-dll.c:437:   TEST (several_short_vector_8_bytes, 142, sv8_a, sv8_b, sv8_c, sv8_d, sv8_e,
	adrp	x0, sv8_g	;# tmp616,
	add	x6, x0, :lo12:sv8_g	;# tmp615, tmp616,
	adrp	x0, sv8_f	;# tmp618,
	add	x5, x0, :lo12:sv8_f	;# tmp617, tmp618,
	adrp	x0, sv8_e	;# tmp620,
	add	x4, x0, :lo12:sv8_e	;# tmp619, tmp620,
	adrp	x0, sv8_d	;# tmp622,
	add	x3, x0, :lo12:sv8_d	;# tmp621, tmp622,
	adrp	x0, sv8_c	;# tmp624,
	add	x2, x0, :lo12:sv8_c	;# tmp623, tmp624,
	adrp	x0, sv8_b	;# tmp626,
	add	x1, x0, :lo12:sv8_b	;# tmp625, tmp626,
	adrp	x0, sv8_a	;# tmp628,
	add	x0, x0, :lo12:sv8_a	;# tmp627, tmp628,
	adrp	x7, sv8_i	;# tmp630,
	add	x7, x7, :lo12:sv8_i	;# tmp629, tmp630,
	ldr	x7, [x7]	;# tmp631, sv8_i
	str	x7, [sp, 8]	;# tmp631,
	adrp	x7, sv8_h	;# tmp633,
	add	x7, x7, :lo12:sv8_h	;# tmp632, tmp633,
	ldr	x7, [x7]	;# tmp634, sv8_h
	str	x7, [sp]	;# tmp634,
	ldr	x7, [x6]	;#, sv8_g
	ldr	x6, [x5]	;#, sv8_f
	ldr	x5, [x4]	;#, sv8_e
	ldr	x4, [x3]	;#, sv8_d
	ldr	x3, [x2]	;#, sv8_c
	ldr	x2, [x1]	;#, sv8_b
	ldr	x1, [x0]	;#, sv8_a
	adrp	x0, .LC22	;# tmp635,
	add	x0, x0, :lo12:.LC22	;#, tmp635,
	adrp	x8, __imp_use_va_args_several_short_vector_8_bytes	;# tmp638,
	add	x8, x8, :lo12:__imp_use_va_args_several_short_vector_8_bytes	;# tmp637, tmp638,
	ldr	x8, [x8]	;# tmp636,
	blr	x8		;# tmp636
	str	w0, [sp, 2356]	;#, actual
	ldr	w2, [sp, 2356]	;#, actual
	adrp	x0, .LC22	;# tmp639,
	add	x1, x0, :lo12:.LC22	;#, tmp639,
	adrp	x0, .LC63	;# tmp640,
	add	x0, x0, :lo12:.LC63	;#, tmp640,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2356]	;# tmp641, actual
	cmp	w0, 142	;# tmp641,
	beq	.L350		;#,
	ldr	w0, [sp, 2428]	;# tmp643, failures
	add	w0, w0, 1	;# failures_196, tmp643,
	str	w0, [sp, 2428]	;# failures_196, failures
	ldr	w2, [sp, 2356]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp644,
	add	x0, x0, :lo12:.LC64	;#, tmp644,
	bl	__mingw_printf		;#
.L350:
;# varargs-use-dll.c:439:   TEST (many_short_vector_8_bytes, 6763, sv8_a, sv8_b, sv8_c, sv8_d, sv8_e,
	adrp	x0, sv8_g	;# tmp646,
	add	x6, x0, :lo12:sv8_g	;# tmp645, tmp646,
	adrp	x0, sv8_f	;# tmp648,
	add	x5, x0, :lo12:sv8_f	;# tmp647, tmp648,
	adrp	x0, sv8_e	;# tmp650,
	add	x4, x0, :lo12:sv8_e	;# tmp649, tmp650,
	adrp	x0, sv8_d	;# tmp652,
	add	x3, x0, :lo12:sv8_d	;# tmp651, tmp652,
	adrp	x0, sv8_c	;# tmp654,
	add	x2, x0, :lo12:sv8_c	;# tmp653, tmp654,
	adrp	x0, sv8_b	;# tmp656,
	add	x1, x0, :lo12:sv8_b	;# tmp655, tmp656,
	adrp	x0, sv8_a	;# tmp658,
	add	x0, x0, :lo12:sv8_a	;# tmp657, tmp658,
	adrp	x7, sv8_q	;# tmp660,
	add	x7, x7, :lo12:sv8_q	;# tmp659, tmp660,
	ldr	x7, [x7]	;# tmp661, sv8_q
	str	x7, [sp, 72]	;# tmp661,
	adrp	x7, sv8_p	;# tmp663,
	add	x7, x7, :lo12:sv8_p	;# tmp662, tmp663,
	ldr	x7, [x7]	;# tmp664, sv8_p
	str	x7, [sp, 64]	;# tmp664,
	adrp	x7, sv8_o	;# tmp666,
	add	x7, x7, :lo12:sv8_o	;# tmp665, tmp666,
	ldr	x7, [x7]	;# tmp667, sv8_o
	str	x7, [sp, 56]	;# tmp667,
	adrp	x7, sv8_n	;# tmp669,
	add	x7, x7, :lo12:sv8_n	;# tmp668, tmp669,
	ldr	x7, [x7]	;# tmp670, sv8_n
	str	x7, [sp, 48]	;# tmp670,
	adrp	x7, sv8_m	;# tmp672,
	add	x7, x7, :lo12:sv8_m	;# tmp671, tmp672,
	ldr	x7, [x7]	;# tmp673, sv8_m
	str	x7, [sp, 40]	;# tmp673,
	adrp	x7, sv8_l	;# tmp675,
	add	x7, x7, :lo12:sv8_l	;# tmp674, tmp675,
	ldr	x7, [x7]	;# tmp676, sv8_l
	str	x7, [sp, 32]	;# tmp676,
	adrp	x7, sv8_k	;# tmp678,
	add	x7, x7, :lo12:sv8_k	;# tmp677, tmp678,
	ldr	x7, [x7]	;# tmp679, sv8_k
	str	x7, [sp, 24]	;# tmp679,
	adrp	x7, sv8_j	;# tmp681,
	add	x7, x7, :lo12:sv8_j	;# tmp680, tmp681,
	ldr	x7, [x7]	;# tmp682, sv8_j
	str	x7, [sp, 16]	;# tmp682,
	adrp	x7, sv8_i	;# tmp684,
	add	x7, x7, :lo12:sv8_i	;# tmp683, tmp684,
	ldr	x7, [x7]	;# tmp685, sv8_i
	str	x7, [sp, 8]	;# tmp685,
	adrp	x7, sv8_h	;# tmp687,
	add	x7, x7, :lo12:sv8_h	;# tmp686, tmp687,
	ldr	x7, [x7]	;# tmp688, sv8_h
	str	x7, [sp]	;# tmp688,
	ldr	x7, [x6]	;#, sv8_g
	ldr	x6, [x5]	;#, sv8_f
	ldr	x5, [x4]	;#, sv8_e
	ldr	x4, [x3]	;#, sv8_d
	ldr	x3, [x2]	;#, sv8_c
	ldr	x2, [x1]	;#, sv8_b
	ldr	x1, [x0]	;#, sv8_a
	adrp	x0, .LC23	;# tmp689,
	add	x0, x0, :lo12:.LC23	;#, tmp689,
	adrp	x8, __imp_use_va_args_many_short_vector_8_bytes	;# tmp692,
	add	x8, x8, :lo12:__imp_use_va_args_many_short_vector_8_bytes	;# tmp691, tmp692,
	ldr	x8, [x8]	;# tmp690,
	blr	x8		;# tmp690
	str	w0, [sp, 2352]	;#, actual
	ldr	w2, [sp, 2352]	;#, actual
	adrp	x0, .LC23	;# tmp693,
	add	x1, x0, :lo12:.LC23	;#, tmp693,
	adrp	x0, .LC63	;# tmp694,
	add	x0, x0, :lo12:.LC63	;#, tmp694,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2352]	;# tmp695, actual
	mov	w0, 6763	;# tmp696,
	cmp	w1, w0	;# tmp695, tmp696
	beq	.L351		;#,
	ldr	w0, [sp, 2428]	;# tmp698, failures
	add	w0, w0, 1	;# failures_201, tmp698,
	str	w0, [sp, 2428]	;# failures_201, failures
	ldr	w2, [sp, 2352]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp699,
	add	x0, x0, :lo12:.LC64	;#, tmp699,
	bl	__mingw_printf		;#
.L351:
;# varargs-use-dll.c:443:   TEST (few_not_short_vector_12_bytes, 3, nsv12_a, nsv12_b);
	adrp	x0, nsv12_b	;# tmp701,
	add	x0, x0, :lo12:nsv12_b	;# tmp700, tmp701,
	ldr	x3, [x0]	;# tmp702, nsv12_b
	ldr	w2, [x0, 8]	;# tmp703, nsv12_b
	adrp	x0, nsv12_a	;# tmp705,
	add	x0, x0, :lo12:nsv12_a	;# tmp704, tmp705,
	ldr	x1, [x0]	;# tmp706, nsv12_a
	ldr	w0, [x0, 8]	;# tmp707, nsv12_a
	mov	x4, x2	;#, tmp703
	mov	x2, x0	;#, tmp707
	adrp	x0, .LC24	;# tmp708,
	add	x0, x0, :lo12:.LC24	;#, tmp708,
	adrp	x5, __imp_use_va_args_few_not_short_vector_12_bytes	;# tmp711,
	add	x5, x5, :lo12:__imp_use_va_args_few_not_short_vector_12_bytes	;# tmp710, tmp711,
	ldr	x5, [x5]	;# tmp709,
	blr	x5		;# tmp709
	str	w0, [sp, 2348]	;#, actual
	ldr	w2, [sp, 2348]	;#, actual
	adrp	x0, .LC24	;# tmp712,
	add	x1, x0, :lo12:.LC24	;#, tmp712,
	adrp	x0, .LC63	;# tmp713,
	add	x0, x0, :lo12:.LC63	;#, tmp713,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2348]	;# tmp714, actual
	cmp	w0, 3	;# tmp714,
	beq	.L352		;#,
	ldr	w0, [sp, 2428]	;# tmp716, failures
	add	w0, w0, 1	;# failures_206, tmp716,
	str	w0, [sp, 2428]	;# failures_206, failures
	ldr	w2, [sp, 2348]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp717,
	add	x0, x0, :lo12:.LC64	;#, tmp717,
	bl	__mingw_printf		;#
.L352:
;# varargs-use-dll.c:444:   TEST (several_not_short_vector_12_bytes, 142, nsv12_a, nsv12_b, nsv12_c,
	adrp	x0, nsv12_d	;# tmp719,
	add	x0, x0, :lo12:nsv12_d	;# tmp718, tmp719,
	adrp	x1, nsv12_c	;# tmp722,
	add	x1, x1, :lo12:nsv12_c	;# tmp721, tmp722,
	ldr	x5, [x1]	;# tmp723, nsv12_c
	ldr	w6, [x1, 8]	;# tmp724, nsv12_c
	adrp	x1, nsv12_b	;# tmp726,
	add	x1, x1, :lo12:nsv12_b	;# tmp725, tmp726,
	ldr	x10, [x1]	;# tmp727, nsv12_b
	ldr	w4, [x1, 8]	;# tmp728, nsv12_b
	adrp	x1, nsv12_a	;# tmp730,
	add	x1, x1, :lo12:nsv12_a	;# tmp729, tmp730,
	ldr	x9, [x1]	;# tmp731, nsv12_a
	ldr	w8, [x1, 8]	;# tmp732, nsv12_a
	adrp	x1, nsv12_i	;# tmp734,
	add	x2, x1, :lo12:nsv12_i	;# tmp733, tmp734,
	add	x1, sp, 72	;# tmp735,,
	ldr	x3, [x2]	;# tmp737, nsv12_i
	ldr	w2, [x2, 8]	;# tmp738, nsv12_i
	str	x3, [x1]	;# tmp737,
	str	w2, [x1, 8]	;# tmp738,
	adrp	x1, nsv12_h	;# tmp740,
	add	x2, x1, :lo12:nsv12_h	;# tmp739, tmp740,
	add	x1, sp, 56	;# tmp741,,
	ldr	x3, [x2]	;# tmp743, nsv12_h
	ldr	w2, [x2, 8]	;# tmp744, nsv12_h
	str	x3, [x1]	;# tmp743,
	str	w2, [x1, 8]	;# tmp744,
	adrp	x1, nsv12_g	;# tmp746,
	add	x2, x1, :lo12:nsv12_g	;# tmp745, tmp746,
	add	x1, sp, 40	;# tmp747,,
	ldr	x3, [x2]	;# tmp749, nsv12_g
	ldr	w2, [x2, 8]	;# tmp750, nsv12_g
	str	x3, [x1]	;# tmp749,
	str	w2, [x1, 8]	;# tmp750,
	adrp	x1, nsv12_f	;# tmp752,
	add	x2, x1, :lo12:nsv12_f	;# tmp751, tmp752,
	add	x1, sp, 24	;# tmp753,,
	ldr	x3, [x2]	;# tmp755, nsv12_f
	ldr	w2, [x2, 8]	;# tmp756, nsv12_f
	str	x3, [x1]	;# tmp755,
	str	w2, [x1, 8]	;# tmp756,
	adrp	x1, nsv12_e	;# tmp758,
	add	x2, x1, :lo12:nsv12_e	;# tmp757, tmp758,
	add	x1, sp, 8	;# tmp759,,
	ldr	x3, [x2]	;# tmp761, nsv12_e
	ldr	w2, [x2, 8]	;# tmp762, nsv12_e
	str	x3, [x1]	;# tmp761,
	str	w2, [x1, 8]	;# tmp762,
	add	x1, x0, 8	;# tmp764, tmp718,
	ldr	w1, [x1]	;# tmp765, nsv12_d
	str	w1, [sp]	;# tmp765,
	ldr	x1, [x0]	;# tmp766, nsv12_d
	mov	x7, x1	;#, tmp766
	ldr	x0, [x0]	;# tmp767, nsv12_d
	mov	x7, x0	;#, tmp767
	mov	x3, x10	;#, tmp727
	mov	x1, x9	;#, tmp731
	mov	x2, x8	;#, tmp732
	adrp	x0, .LC25	;# tmp768,
	add	x0, x0, :lo12:.LC25	;#, tmp768,
	adrp	x8, __imp_use_va_args_several_not_short_vector_12_bytes	;# tmp771,
	add	x8, x8, :lo12:__imp_use_va_args_several_not_short_vector_12_bytes	;# tmp770, tmp771,
	ldr	x8, [x8]	;# tmp769,
	blr	x8		;# tmp769
	str	w0, [sp, 2344]	;#, actual
	ldr	w2, [sp, 2344]	;#, actual
	adrp	x0, .LC25	;# tmp772,
	add	x1, x0, :lo12:.LC25	;#, tmp772,
	adrp	x0, .LC63	;# tmp773,
	add	x0, x0, :lo12:.LC63	;#, tmp773,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2344]	;# tmp774, actual
	cmp	w0, 142	;# tmp774,
	beq	.L353		;#,
	ldr	w0, [sp, 2428]	;# tmp776, failures
	add	w0, w0, 1	;# failures_211, tmp776,
	str	w0, [sp, 2428]	;# failures_211, failures
	ldr	w2, [sp, 2344]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp777,
	add	x0, x0, :lo12:.LC64	;#, tmp777,
	bl	__mingw_printf		;#
.L353:
;# varargs-use-dll.c:446:   TEST (many_not_short_vector_12_bytes, 6763, nsv12_a, nsv12_b, nsv12_c,
	adrp	x0, nsv12_d	;# tmp779,
	add	x0, x0, :lo12:nsv12_d	;# tmp778, tmp779,
	adrp	x1, nsv12_c	;# tmp782,
	add	x1, x1, :lo12:nsv12_c	;# tmp781, tmp782,
	ldr	x5, [x1]	;# tmp783, nsv12_c
	ldr	w6, [x1, 8]	;# tmp784, nsv12_c
	adrp	x1, nsv12_b	;# tmp786,
	add	x1, x1, :lo12:nsv12_b	;# tmp785, tmp786,
	ldr	x10, [x1]	;# tmp787, nsv12_b
	ldr	w4, [x1, 8]	;# tmp788, nsv12_b
	adrp	x1, nsv12_a	;# tmp790,
	add	x1, x1, :lo12:nsv12_a	;# tmp789, tmp790,
	ldr	x9, [x1]	;# tmp791, nsv12_a
	ldr	w8, [x1, 8]	;# tmp792, nsv12_a
	adrp	x1, nsv12_q	;# tmp794,
	add	x2, x1, :lo12:nsv12_q	;# tmp793, tmp794,
	add	x1, sp, 200	;# tmp795,,
	ldr	x3, [x2]	;# tmp797, nsv12_q
	ldr	w2, [x2, 8]	;# tmp798, nsv12_q
	str	x3, [x1]	;# tmp797,
	str	w2, [x1, 8]	;# tmp798,
	adrp	x1, nsv12_p	;# tmp800,
	add	x2, x1, :lo12:nsv12_p	;# tmp799, tmp800,
	add	x1, sp, 184	;# tmp801,,
	ldr	x3, [x2]	;# tmp803, nsv12_p
	ldr	w2, [x2, 8]	;# tmp804, nsv12_p
	str	x3, [x1]	;# tmp803,
	str	w2, [x1, 8]	;# tmp804,
	adrp	x1, nsv12_o	;# tmp806,
	add	x2, x1, :lo12:nsv12_o	;# tmp805, tmp806,
	add	x1, sp, 168	;# tmp807,,
	ldr	x3, [x2]	;# tmp809, nsv12_o
	ldr	w2, [x2, 8]	;# tmp810, nsv12_o
	str	x3, [x1]	;# tmp809,
	str	w2, [x1, 8]	;# tmp810,
	adrp	x1, nsv12_n	;# tmp812,
	add	x2, x1, :lo12:nsv12_n	;# tmp811, tmp812,
	add	x1, sp, 152	;# tmp813,,
	ldr	x3, [x2]	;# tmp815, nsv12_n
	ldr	w2, [x2, 8]	;# tmp816, nsv12_n
	str	x3, [x1]	;# tmp815,
	str	w2, [x1, 8]	;# tmp816,
	adrp	x1, nsv12_m	;# tmp818,
	add	x2, x1, :lo12:nsv12_m	;# tmp817, tmp818,
	add	x1, sp, 136	;# tmp819,,
	ldr	x3, [x2]	;# tmp821, nsv12_m
	ldr	w2, [x2, 8]	;# tmp822, nsv12_m
	str	x3, [x1]	;# tmp821,
	str	w2, [x1, 8]	;# tmp822,
	adrp	x1, nsv12_l	;# tmp824,
	add	x2, x1, :lo12:nsv12_l	;# tmp823, tmp824,
	add	x1, sp, 120	;# tmp825,,
	ldr	x3, [x2]	;# tmp827, nsv12_l
	ldr	w2, [x2, 8]	;# tmp828, nsv12_l
	str	x3, [x1]	;# tmp827,
	str	w2, [x1, 8]	;# tmp828,
	adrp	x1, nsv12_k	;# tmp830,
	add	x2, x1, :lo12:nsv12_k	;# tmp829, tmp830,
	add	x1, sp, 104	;# tmp831,,
	ldr	x3, [x2]	;# tmp833, nsv12_k
	ldr	w2, [x2, 8]	;# tmp834, nsv12_k
	str	x3, [x1]	;# tmp833,
	str	w2, [x1, 8]	;# tmp834,
	adrp	x1, nsv12_j	;# tmp836,
	add	x2, x1, :lo12:nsv12_j	;# tmp835, tmp836,
	add	x1, sp, 88	;# tmp837,,
	ldr	x3, [x2]	;# tmp839, nsv12_j
	ldr	w2, [x2, 8]	;# tmp840, nsv12_j
	str	x3, [x1]	;# tmp839,
	str	w2, [x1, 8]	;# tmp840,
	adrp	x1, nsv12_i	;# tmp842,
	add	x2, x1, :lo12:nsv12_i	;# tmp841, tmp842,
	add	x1, sp, 72	;# tmp843,,
	ldr	x3, [x2]	;# tmp845, nsv12_i
	ldr	w2, [x2, 8]	;# tmp846, nsv12_i
	str	x3, [x1]	;# tmp845,
	str	w2, [x1, 8]	;# tmp846,
	adrp	x1, nsv12_h	;# tmp848,
	add	x2, x1, :lo12:nsv12_h	;# tmp847, tmp848,
	add	x1, sp, 56	;# tmp849,,
	ldr	x3, [x2]	;# tmp851, nsv12_h
	ldr	w2, [x2, 8]	;# tmp852, nsv12_h
	str	x3, [x1]	;# tmp851,
	str	w2, [x1, 8]	;# tmp852,
	adrp	x1, nsv12_g	;# tmp854,
	add	x2, x1, :lo12:nsv12_g	;# tmp853, tmp854,
	add	x1, sp, 40	;# tmp855,,
	ldr	x3, [x2]	;# tmp857, nsv12_g
	ldr	w2, [x2, 8]	;# tmp858, nsv12_g
	str	x3, [x1]	;# tmp857,
	str	w2, [x1, 8]	;# tmp858,
	adrp	x1, nsv12_f	;# tmp860,
	add	x2, x1, :lo12:nsv12_f	;# tmp859, tmp860,
	add	x1, sp, 24	;# tmp861,,
	ldr	x3, [x2]	;# tmp863, nsv12_f
	ldr	w2, [x2, 8]	;# tmp864, nsv12_f
	str	x3, [x1]	;# tmp863,
	str	w2, [x1, 8]	;# tmp864,
	adrp	x1, nsv12_e	;# tmp866,
	add	x2, x1, :lo12:nsv12_e	;# tmp865, tmp866,
	add	x1, sp, 8	;# tmp867,,
	ldr	x3, [x2]	;# tmp869, nsv12_e
	ldr	w2, [x2, 8]	;# tmp870, nsv12_e
	str	x3, [x1]	;# tmp869,
	str	w2, [x1, 8]	;# tmp870,
	add	x1, x0, 8	;# tmp872, tmp778,
	ldr	w1, [x1]	;# tmp873, nsv12_d
	str	w1, [sp]	;# tmp873,
	ldr	x1, [x0]	;# tmp874, nsv12_d
	mov	x7, x1	;#, tmp874
	ldr	x0, [x0]	;# tmp875, nsv12_d
	mov	x7, x0	;#, tmp875
	mov	x3, x10	;#, tmp787
	mov	x1, x9	;#, tmp791
	mov	x2, x8	;#, tmp792
	adrp	x0, .LC26	;# tmp876,
	add	x0, x0, :lo12:.LC26	;#, tmp876,
	adrp	x8, __imp_use_va_args_many_not_short_vector_12_bytes	;# tmp879,
	add	x8, x8, :lo12:__imp_use_va_args_many_not_short_vector_12_bytes	;# tmp878, tmp879,
	ldr	x8, [x8]	;# tmp877,
	blr	x8		;# tmp877
	str	w0, [sp, 2340]	;#, actual
	ldr	w2, [sp, 2340]	;#, actual
	adrp	x0, .LC26	;# tmp880,
	add	x1, x0, :lo12:.LC26	;#, tmp880,
	adrp	x0, .LC63	;# tmp881,
	add	x0, x0, :lo12:.LC63	;#, tmp881,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2340]	;# tmp882, actual
	mov	w0, 6763	;# tmp883,
	cmp	w1, w0	;# tmp882, tmp883
	beq	.L354		;#,
	ldr	w0, [sp, 2428]	;# tmp885, failures
	add	w0, w0, 1	;# failures_216, tmp885,
	str	w0, [sp, 2428]	;# failures_216, failures
	ldr	w2, [sp, 2340]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp886,
	add	x0, x0, :lo12:.LC64	;#, tmp886,
	bl	__mingw_printf		;#
.L354:
;# varargs-use-dll.c:450:   TEST (few_short_vector_16_bytes, 3, sv16_a, sv16_b);
	adrp	x0, sv16_b	;# tmp888,
	add	x1, x0, :lo12:sv16_b	;# tmp887, tmp888,
	adrp	x0, sv16_a	;# tmp890,
	add	x0, x0, :lo12:sv16_a	;# tmp889, tmp890,
	ldp	x3, x4, [x1]	;#, sv16_b
	ldp	x1, x2, [x0]	;#, sv16_a
	adrp	x0, .LC27	;# tmp891,
	add	x0, x0, :lo12:.LC27	;#, tmp891,
	adrp	x5, __imp_use_va_args_few_short_vector_16_bytes	;# tmp894,
	add	x5, x5, :lo12:__imp_use_va_args_few_short_vector_16_bytes	;# tmp893, tmp894,
	ldr	x5, [x5]	;# tmp892,
	blr	x5		;# tmp892
	str	w0, [sp, 2336]	;#, actual
	ldr	w2, [sp, 2336]	;#, actual
	adrp	x0, .LC27	;# tmp895,
	add	x1, x0, :lo12:.LC27	;#, tmp895,
	adrp	x0, .LC63	;# tmp896,
	add	x0, x0, :lo12:.LC63	;#, tmp896,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2336]	;# tmp897, actual
	cmp	w0, 3	;# tmp897,
	beq	.L355		;#,
	ldr	w0, [sp, 2428]	;# tmp899, failures
	add	w0, w0, 1	;# failures_221, tmp899,
	str	w0, [sp, 2428]	;# failures_221, failures
	ldr	w2, [sp, 2336]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp900,
	add	x0, x0, :lo12:.LC64	;#, tmp900,
	bl	__mingw_printf		;#
.L355:
;# varargs-use-dll.c:451:   TEST (several_short_vector_16_bytes, 142, sv16_a, sv16_b, sv16_c, sv16_d,
	adrp	x0, sv16_d	;# tmp902,
	add	x5, x0, :lo12:sv16_d	;# tmp901, tmp902,
	adrp	x0, sv16_c	;# tmp904,
	add	x4, x0, :lo12:sv16_c	;# tmp903, tmp904,
	adrp	x0, sv16_b	;# tmp906,
	add	x3, x0, :lo12:sv16_b	;# tmp905, tmp906,
	adrp	x0, sv16_a	;# tmp908,
	add	x2, x0, :lo12:sv16_a	;# tmp907, tmp908,
	adrp	x0, sv16_i	;# tmp910,
	add	x0, x0, :lo12:sv16_i	;# tmp909, tmp910,
	ldp	x0, x1, [x0]	;# tmp911, sv16_i
	stp	x0, x1, [sp, 64]	;# tmp911,
	adrp	x0, sv16_h	;# tmp913,
	add	x0, x0, :lo12:sv16_h	;# tmp912, tmp913,
	ldp	x0, x1, [x0]	;# tmp914, sv16_h
	stp	x0, x1, [sp, 48]	;# tmp914,
	adrp	x0, sv16_g	;# tmp916,
	add	x0, x0, :lo12:sv16_g	;# tmp915, tmp916,
	ldp	x0, x1, [x0]	;# tmp917, sv16_g
	stp	x0, x1, [sp, 32]	;# tmp917,
	adrp	x0, sv16_f	;# tmp919,
	add	x0, x0, :lo12:sv16_f	;# tmp918, tmp919,
	ldp	x0, x1, [x0]	;# tmp920, sv16_f
	stp	x0, x1, [sp, 16]	;# tmp920,
	adrp	x0, sv16_e	;# tmp922,
	add	x0, x0, :lo12:sv16_e	;# tmp921, tmp922,
	ldp	x0, x1, [x0]	;# tmp923, sv16_e
	stp	x0, x1, [sp]	;# tmp923,
	ldp	x7, x8, [x5]	;#, sv16_d
	ldp	x5, x6, [x4]	;#, sv16_c
	ldp	x3, x4, [x3]	;#, sv16_b
	ldp	x1, x2, [x2]	;#, sv16_a
	adrp	x0, .LC28	;# tmp924,
	add	x0, x0, :lo12:.LC28	;#, tmp924,
	adrp	x9, __imp_use_va_args_several_short_vector_16_bytes	;# tmp927,
	add	x9, x9, :lo12:__imp_use_va_args_several_short_vector_16_bytes	;# tmp926, tmp927,
	ldr	x9, [x9]	;# tmp925,
	blr	x9		;# tmp925
	str	w0, [sp, 2332]	;#, actual
	ldr	w2, [sp, 2332]	;#, actual
	adrp	x0, .LC28	;# tmp928,
	add	x1, x0, :lo12:.LC28	;#, tmp928,
	adrp	x0, .LC63	;# tmp929,
	add	x0, x0, :lo12:.LC63	;#, tmp929,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2332]	;# tmp930, actual
	cmp	w0, 142	;# tmp930,
	beq	.L356		;#,
	ldr	w0, [sp, 2428]	;# tmp932, failures
	add	w0, w0, 1	;# failures_226, tmp932,
	str	w0, [sp, 2428]	;# failures_226, failures
	ldr	w2, [sp, 2332]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp933,
	add	x0, x0, :lo12:.LC64	;#, tmp933,
	bl	__mingw_printf		;#
.L356:
;# varargs-use-dll.c:453:   TEST (many_short_vector_16_bytes, 6763, sv16_a, sv16_b, sv16_c, sv16_d,
	adrp	x0, sv16_d	;# tmp935,
	add	x5, x0, :lo12:sv16_d	;# tmp934, tmp935,
	adrp	x0, sv16_c	;# tmp937,
	add	x4, x0, :lo12:sv16_c	;# tmp936, tmp937,
	adrp	x0, sv16_b	;# tmp939,
	add	x3, x0, :lo12:sv16_b	;# tmp938, tmp939,
	adrp	x0, sv16_a	;# tmp941,
	add	x2, x0, :lo12:sv16_a	;# tmp940, tmp941,
	adrp	x0, sv16_q	;# tmp943,
	add	x0, x0, :lo12:sv16_q	;# tmp942, tmp943,
	ldp	x0, x1, [x0]	;# tmp944, sv16_q
	stp	x0, x1, [sp, 192]	;# tmp944,
	adrp	x0, sv16_p	;# tmp946,
	add	x0, x0, :lo12:sv16_p	;# tmp945, tmp946,
	ldp	x0, x1, [x0]	;# tmp947, sv16_p
	stp	x0, x1, [sp, 176]	;# tmp947,
	adrp	x0, sv16_o	;# tmp949,
	add	x0, x0, :lo12:sv16_o	;# tmp948, tmp949,
	ldp	x0, x1, [x0]	;# tmp950, sv16_o
	stp	x0, x1, [sp, 160]	;# tmp950,
	adrp	x0, sv16_n	;# tmp952,
	add	x0, x0, :lo12:sv16_n	;# tmp951, tmp952,
	ldp	x0, x1, [x0]	;# tmp953, sv16_n
	stp	x0, x1, [sp, 144]	;# tmp953,
	adrp	x0, sv16_m	;# tmp955,
	add	x0, x0, :lo12:sv16_m	;# tmp954, tmp955,
	ldp	x0, x1, [x0]	;# tmp956, sv16_m
	stp	x0, x1, [sp, 128]	;# tmp956,
	adrp	x0, sv16_l	;# tmp958,
	add	x0, x0, :lo12:sv16_l	;# tmp957, tmp958,
	ldp	x0, x1, [x0]	;# tmp959, sv16_l
	stp	x0, x1, [sp, 112]	;# tmp959,
	adrp	x0, sv16_k	;# tmp961,
	add	x0, x0, :lo12:sv16_k	;# tmp960, tmp961,
	ldp	x0, x1, [x0]	;# tmp962, sv16_k
	stp	x0, x1, [sp, 96]	;# tmp962,
	adrp	x0, sv16_j	;# tmp964,
	add	x0, x0, :lo12:sv16_j	;# tmp963, tmp964,
	ldp	x0, x1, [x0]	;# tmp965, sv16_j
	stp	x0, x1, [sp, 80]	;# tmp965,
	adrp	x0, sv16_i	;# tmp967,
	add	x0, x0, :lo12:sv16_i	;# tmp966, tmp967,
	ldp	x0, x1, [x0]	;# tmp968, sv16_i
	stp	x0, x1, [sp, 64]	;# tmp968,
	adrp	x0, sv16_h	;# tmp970,
	add	x0, x0, :lo12:sv16_h	;# tmp969, tmp970,
	ldp	x0, x1, [x0]	;# tmp971, sv16_h
	stp	x0, x1, [sp, 48]	;# tmp971,
	adrp	x0, sv16_g	;# tmp973,
	add	x0, x0, :lo12:sv16_g	;# tmp972, tmp973,
	ldp	x0, x1, [x0]	;# tmp974, sv16_g
	stp	x0, x1, [sp, 32]	;# tmp974,
	adrp	x0, sv16_f	;# tmp976,
	add	x0, x0, :lo12:sv16_f	;# tmp975, tmp976,
	ldp	x0, x1, [x0]	;# tmp977, sv16_f
	stp	x0, x1, [sp, 16]	;# tmp977,
	adrp	x0, sv16_e	;# tmp979,
	add	x0, x0, :lo12:sv16_e	;# tmp978, tmp979,
	ldp	x0, x1, [x0]	;# tmp980, sv16_e
	stp	x0, x1, [sp]	;# tmp980,
	ldp	x7, x8, [x5]	;#, sv16_d
	ldp	x5, x6, [x4]	;#, sv16_c
	ldp	x3, x4, [x3]	;#, sv16_b
	ldp	x1, x2, [x2]	;#, sv16_a
	adrp	x0, .LC29	;# tmp981,
	add	x0, x0, :lo12:.LC29	;#, tmp981,
	adrp	x9, __imp_use_va_args_many_short_vector_16_bytes	;# tmp984,
	add	x9, x9, :lo12:__imp_use_va_args_many_short_vector_16_bytes	;# tmp983, tmp984,
	ldr	x9, [x9]	;# tmp982,
	blr	x9		;# tmp982
	str	w0, [sp, 2328]	;#, actual
	ldr	w2, [sp, 2328]	;#, actual
	adrp	x0, .LC29	;# tmp985,
	add	x1, x0, :lo12:.LC29	;#, tmp985,
	adrp	x0, .LC63	;# tmp986,
	add	x0, x0, :lo12:.LC63	;#, tmp986,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2328]	;# tmp987, actual
	mov	w0, 6763	;# tmp988,
	cmp	w1, w0	;# tmp987, tmp988
	beq	.L357		;#,
	ldr	w0, [sp, 2428]	;# tmp990, failures
	add	w0, w0, 1	;# failures_231, tmp990,
	str	w0, [sp, 2428]	;# failures_231, failures
	ldr	w2, [sp, 2328]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp991,
	add	x0, x0, :lo12:.LC64	;#, tmp991,
	bl	__mingw_printf		;#
.L357:
;# varargs-use-dll.c:457:   TEST (few_hfa_2_floats, 3, hfa2f_a, hfa2f_b);
	adrp	x0, hfa2f_b	;# tmp993,
	add	x1, x0, :lo12:hfa2f_b	;# tmp992, tmp993,
	adrp	x0, hfa2f_a	;# tmp995,
	add	x0, x0, :lo12:hfa2f_a	;# tmp994, tmp995,
	ldr	x2, [x1]	;#, hfa2f_b
	ldr	x1, [x0]	;#, hfa2f_a
	adrp	x0, .LC30	;# tmp996,
	add	x0, x0, :lo12:.LC30	;#, tmp996,
	adrp	x3, __imp_use_va_args_few_hfa_2_floats	;# tmp999,
	add	x3, x3, :lo12:__imp_use_va_args_few_hfa_2_floats	;# tmp998, tmp999,
	ldr	x3, [x3]	;# tmp997,
	blr	x3		;# tmp997
	str	w0, [sp, 2324]	;#, actual
	ldr	w2, [sp, 2324]	;#, actual
	adrp	x0, .LC30	;# tmp1000,
	add	x1, x0, :lo12:.LC30	;#, tmp1000,
	adrp	x0, .LC63	;# tmp1001,
	add	x0, x0, :lo12:.LC63	;#, tmp1001,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2324]	;# tmp1002, actual
	cmp	w0, 3	;# tmp1002,
	beq	.L358		;#,
	ldr	w0, [sp, 2428]	;# tmp1004, failures
	add	w0, w0, 1	;# failures_236, tmp1004,
	str	w0, [sp, 2428]	;# failures_236, failures
	ldr	w2, [sp, 2324]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp1005,
	add	x0, x0, :lo12:.LC64	;#, tmp1005,
	bl	__mingw_printf		;#
.L358:
;# varargs-use-dll.c:458:   TEST (several_hfa_2_floats, 142, hfa2f_a, hfa2f_b, hfa2f_c, hfa2f_d, hfa2f_e,
	adrp	x0, hfa2f_g	;# tmp1007,
	add	x6, x0, :lo12:hfa2f_g	;# tmp1006, tmp1007,
	adrp	x0, hfa2f_f	;# tmp1009,
	add	x5, x0, :lo12:hfa2f_f	;# tmp1008, tmp1009,
	adrp	x0, hfa2f_e	;# tmp1011,
	add	x4, x0, :lo12:hfa2f_e	;# tmp1010, tmp1011,
	adrp	x0, hfa2f_d	;# tmp1013,
	add	x3, x0, :lo12:hfa2f_d	;# tmp1012, tmp1013,
	adrp	x0, hfa2f_c	;# tmp1015,
	add	x2, x0, :lo12:hfa2f_c	;# tmp1014, tmp1015,
	adrp	x0, hfa2f_b	;# tmp1017,
	add	x1, x0, :lo12:hfa2f_b	;# tmp1016, tmp1017,
	adrp	x0, hfa2f_a	;# tmp1019,
	add	x0, x0, :lo12:hfa2f_a	;# tmp1018, tmp1019,
	adrp	x7, hfa2f_i	;# tmp1021,
	add	x7, x7, :lo12:hfa2f_i	;# tmp1020, tmp1021,
	ldr	x7, [x7]	;# tmp1022, hfa2f_i
	str	x7, [sp, 8]	;# tmp1022,
	adrp	x7, hfa2f_h	;# tmp1024,
	add	x7, x7, :lo12:hfa2f_h	;# tmp1023, tmp1024,
	ldr	x7, [x7]	;# tmp1025, hfa2f_h
	str	x7, [sp]	;# tmp1025,
	ldr	x7, [x6]	;#, hfa2f_g
	ldr	x6, [x5]	;#, hfa2f_f
	ldr	x5, [x4]	;#, hfa2f_e
	ldr	x4, [x3]	;#, hfa2f_d
	ldr	x3, [x2]	;#, hfa2f_c
	ldr	x2, [x1]	;#, hfa2f_b
	ldr	x1, [x0]	;#, hfa2f_a
	adrp	x0, .LC31	;# tmp1026,
	add	x0, x0, :lo12:.LC31	;#, tmp1026,
	adrp	x8, __imp_use_va_args_several_hfa_2_floats	;# tmp1029,
	add	x8, x8, :lo12:__imp_use_va_args_several_hfa_2_floats	;# tmp1028, tmp1029,
	ldr	x8, [x8]	;# tmp1027,
	blr	x8		;# tmp1027
	str	w0, [sp, 2320]	;#, actual
	ldr	w2, [sp, 2320]	;#, actual
	adrp	x0, .LC31	;# tmp1030,
	add	x1, x0, :lo12:.LC31	;#, tmp1030,
	adrp	x0, .LC63	;# tmp1031,
	add	x0, x0, :lo12:.LC63	;#, tmp1031,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2320]	;# tmp1032, actual
	cmp	w0, 142	;# tmp1032,
	beq	.L359		;#,
	ldr	w0, [sp, 2428]	;# tmp1034, failures
	add	w0, w0, 1	;# failures_241, tmp1034,
	str	w0, [sp, 2428]	;# failures_241, failures
	ldr	w2, [sp, 2320]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp1035,
	add	x0, x0, :lo12:.LC64	;#, tmp1035,
	bl	__mingw_printf		;#
.L359:
;# varargs-use-dll.c:460:   TEST (many_hfa_2_floats, 6763, hfa2f_a, hfa2f_b, hfa2f_c, hfa2f_d, hfa2f_e,
	adrp	x0, hfa2f_g	;# tmp1037,
	add	x6, x0, :lo12:hfa2f_g	;# tmp1036, tmp1037,
	adrp	x0, hfa2f_f	;# tmp1039,
	add	x5, x0, :lo12:hfa2f_f	;# tmp1038, tmp1039,
	adrp	x0, hfa2f_e	;# tmp1041,
	add	x4, x0, :lo12:hfa2f_e	;# tmp1040, tmp1041,
	adrp	x0, hfa2f_d	;# tmp1043,
	add	x3, x0, :lo12:hfa2f_d	;# tmp1042, tmp1043,
	adrp	x0, hfa2f_c	;# tmp1045,
	add	x2, x0, :lo12:hfa2f_c	;# tmp1044, tmp1045,
	adrp	x0, hfa2f_b	;# tmp1047,
	add	x1, x0, :lo12:hfa2f_b	;# tmp1046, tmp1047,
	adrp	x0, hfa2f_a	;# tmp1049,
	add	x0, x0, :lo12:hfa2f_a	;# tmp1048, tmp1049,
	adrp	x7, hfa2f_q	;# tmp1051,
	add	x7, x7, :lo12:hfa2f_q	;# tmp1050, tmp1051,
	ldr	x7, [x7]	;# tmp1052, hfa2f_q
	str	x7, [sp, 72]	;# tmp1052,
	adrp	x7, hfa2f_p	;# tmp1054,
	add	x7, x7, :lo12:hfa2f_p	;# tmp1053, tmp1054,
	ldr	x7, [x7]	;# tmp1055, hfa2f_p
	str	x7, [sp, 64]	;# tmp1055,
	adrp	x7, hfa2f_o	;# tmp1057,
	add	x7, x7, :lo12:hfa2f_o	;# tmp1056, tmp1057,
	ldr	x7, [x7]	;# tmp1058, hfa2f_o
	str	x7, [sp, 56]	;# tmp1058,
	adrp	x7, hfa2f_n	;# tmp1060,
	add	x7, x7, :lo12:hfa2f_n	;# tmp1059, tmp1060,
	ldr	x7, [x7]	;# tmp1061, hfa2f_n
	str	x7, [sp, 48]	;# tmp1061,
	adrp	x7, hfa2f_m	;# tmp1063,
	add	x7, x7, :lo12:hfa2f_m	;# tmp1062, tmp1063,
	ldr	x7, [x7]	;# tmp1064, hfa2f_m
	str	x7, [sp, 40]	;# tmp1064,
	adrp	x7, hfa2f_l	;# tmp1066,
	add	x7, x7, :lo12:hfa2f_l	;# tmp1065, tmp1066,
	ldr	x7, [x7]	;# tmp1067, hfa2f_l
	str	x7, [sp, 32]	;# tmp1067,
	adrp	x7, hfa2f_k	;# tmp1069,
	add	x7, x7, :lo12:hfa2f_k	;# tmp1068, tmp1069,
	ldr	x7, [x7]	;# tmp1070, hfa2f_k
	str	x7, [sp, 24]	;# tmp1070,
	adrp	x7, hfa2f_j	;# tmp1072,
	add	x7, x7, :lo12:hfa2f_j	;# tmp1071, tmp1072,
	ldr	x7, [x7]	;# tmp1073, hfa2f_j
	str	x7, [sp, 16]	;# tmp1073,
	adrp	x7, hfa2f_i	;# tmp1075,
	add	x7, x7, :lo12:hfa2f_i	;# tmp1074, tmp1075,
	ldr	x7, [x7]	;# tmp1076, hfa2f_i
	str	x7, [sp, 8]	;# tmp1076,
	adrp	x7, hfa2f_h	;# tmp1078,
	add	x7, x7, :lo12:hfa2f_h	;# tmp1077, tmp1078,
	ldr	x7, [x7]	;# tmp1079, hfa2f_h
	str	x7, [sp]	;# tmp1079,
	ldr	x7, [x6]	;#, hfa2f_g
	ldr	x6, [x5]	;#, hfa2f_f
	ldr	x5, [x4]	;#, hfa2f_e
	ldr	x4, [x3]	;#, hfa2f_d
	ldr	x3, [x2]	;#, hfa2f_c
	ldr	x2, [x1]	;#, hfa2f_b
	ldr	x1, [x0]	;#, hfa2f_a
	adrp	x0, .LC32	;# tmp1080,
	add	x0, x0, :lo12:.LC32	;#, tmp1080,
	adrp	x8, __imp_use_va_args_many_hfa_2_floats	;# tmp1083,
	add	x8, x8, :lo12:__imp_use_va_args_many_hfa_2_floats	;# tmp1082, tmp1083,
	ldr	x8, [x8]	;# tmp1081,
	blr	x8		;# tmp1081
	str	w0, [sp, 2316]	;#, actual
	ldr	w2, [sp, 2316]	;#, actual
	adrp	x0, .LC32	;# tmp1084,
	add	x1, x0, :lo12:.LC32	;#, tmp1084,
	adrp	x0, .LC63	;# tmp1085,
	add	x0, x0, :lo12:.LC63	;#, tmp1085,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2316]	;# tmp1086, actual
	mov	w0, 6763	;# tmp1087,
	cmp	w1, w0	;# tmp1086, tmp1087
	beq	.L360		;#,
	ldr	w0, [sp, 2428]	;# tmp1089, failures
	add	w0, w0, 1	;# failures_246, tmp1089,
	str	w0, [sp, 2428]	;# failures_246, failures
	ldr	w2, [sp, 2316]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp1090,
	add	x0, x0, :lo12:.LC64	;#, tmp1090,
	bl	__mingw_printf		;#
.L360:
;# varargs-use-dll.c:464:   TEST (few_hfa_4_floats, 3, hfa4f_a, hfa4f_b);
	adrp	x0, hfa4f_b	;# tmp1092,
	add	x1, x0, :lo12:hfa4f_b	;# tmp1091, tmp1092,
	adrp	x0, hfa4f_a	;# tmp1094,
	add	x0, x0, :lo12:hfa4f_a	;# tmp1093, tmp1094,
	ldp	x3, x4, [x1]	;#, hfa4f_b
	ldp	x1, x2, [x0]	;#, hfa4f_a
	adrp	x0, .LC33	;# tmp1095,
	add	x0, x0, :lo12:.LC33	;#, tmp1095,
	adrp	x5, __imp_use_va_args_few_hfa_4_floats	;# tmp1098,
	add	x5, x5, :lo12:__imp_use_va_args_few_hfa_4_floats	;# tmp1097, tmp1098,
	ldr	x5, [x5]	;# tmp1096,
	blr	x5		;# tmp1096
	str	w0, [sp, 2312]	;#, actual
	ldr	w2, [sp, 2312]	;#, actual
	adrp	x0, .LC33	;# tmp1099,
	add	x1, x0, :lo12:.LC33	;#, tmp1099,
	adrp	x0, .LC63	;# tmp1100,
	add	x0, x0, :lo12:.LC63	;#, tmp1100,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2312]	;# tmp1101, actual
	cmp	w0, 3	;# tmp1101,
	beq	.L361		;#,
	ldr	w0, [sp, 2428]	;# tmp1103, failures
	add	w0, w0, 1	;# failures_251, tmp1103,
	str	w0, [sp, 2428]	;# failures_251, failures
	ldr	w2, [sp, 2312]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp1104,
	add	x0, x0, :lo12:.LC64	;#, tmp1104,
	bl	__mingw_printf		;#
.L361:
;# varargs-use-dll.c:465:   TEST (several_hfa_4_floats, 142, hfa4f_a, hfa4f_b, hfa4f_c, hfa4f_d, hfa4f_e,
	adrp	x0, hfa4f_d	;# tmp1106,
	add	x5, x0, :lo12:hfa4f_d	;# tmp1105, tmp1106,
	adrp	x0, hfa4f_c	;# tmp1108,
	add	x4, x0, :lo12:hfa4f_c	;# tmp1107, tmp1108,
	adrp	x0, hfa4f_b	;# tmp1110,
	add	x3, x0, :lo12:hfa4f_b	;# tmp1109, tmp1110,
	adrp	x0, hfa4f_a	;# tmp1112,
	add	x2, x0, :lo12:hfa4f_a	;# tmp1111, tmp1112,
	adrp	x0, hfa4f_i	;# tmp1114,
	add	x0, x0, :lo12:hfa4f_i	;# tmp1113, tmp1114,
	ldp	x0, x1, [x0]	;# tmp1115, hfa4f_i
	stp	x0, x1, [sp, 64]	;# tmp1115,
	adrp	x0, hfa4f_h	;# tmp1117,
	add	x0, x0, :lo12:hfa4f_h	;# tmp1116, tmp1117,
	ldp	x0, x1, [x0]	;# tmp1118, hfa4f_h
	stp	x0, x1, [sp, 48]	;# tmp1118,
	adrp	x0, hfa4f_g	;# tmp1120,
	add	x0, x0, :lo12:hfa4f_g	;# tmp1119, tmp1120,
	ldp	x0, x1, [x0]	;# tmp1121, hfa4f_g
	stp	x0, x1, [sp, 32]	;# tmp1121,
	adrp	x0, hfa4f_f	;# tmp1123,
	add	x0, x0, :lo12:hfa4f_f	;# tmp1122, tmp1123,
	ldp	x0, x1, [x0]	;# tmp1124, hfa4f_f
	stp	x0, x1, [sp, 16]	;# tmp1124,
	adrp	x0, hfa4f_e	;# tmp1126,
	add	x0, x0, :lo12:hfa4f_e	;# tmp1125, tmp1126,
	ldp	x0, x1, [x0]	;# tmp1127, hfa4f_e
	stp	x0, x1, [sp]	;# tmp1127,
	ldp	x7, x8, [x5]	;#, hfa4f_d
	ldp	x5, x6, [x4]	;#, hfa4f_c
	ldp	x3, x4, [x3]	;#, hfa4f_b
	ldp	x1, x2, [x2]	;#, hfa4f_a
	adrp	x0, .LC34	;# tmp1128,
	add	x0, x0, :lo12:.LC34	;#, tmp1128,
	adrp	x9, __imp_use_va_args_several_hfa_4_floats	;# tmp1131,
	add	x9, x9, :lo12:__imp_use_va_args_several_hfa_4_floats	;# tmp1130, tmp1131,
	ldr	x9, [x9]	;# tmp1129,
	blr	x9		;# tmp1129
	str	w0, [sp, 2308]	;#, actual
	ldr	w2, [sp, 2308]	;#, actual
	adrp	x0, .LC34	;# tmp1132,
	add	x1, x0, :lo12:.LC34	;#, tmp1132,
	adrp	x0, .LC63	;# tmp1133,
	add	x0, x0, :lo12:.LC63	;#, tmp1133,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2308]	;# tmp1134, actual
	cmp	w0, 142	;# tmp1134,
	beq	.L362		;#,
	ldr	w0, [sp, 2428]	;# tmp1136, failures
	add	w0, w0, 1	;# failures_256, tmp1136,
	str	w0, [sp, 2428]	;# failures_256, failures
	ldr	w2, [sp, 2308]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp1137,
	add	x0, x0, :lo12:.LC64	;#, tmp1137,
	bl	__mingw_printf		;#
.L362:
;# varargs-use-dll.c:467:   TEST (many_hfa_4_floats, 6763, hfa4f_a, hfa4f_b, hfa4f_c, hfa4f_d, hfa4f_e,
	adrp	x0, hfa4f_d	;# tmp1139,
	add	x5, x0, :lo12:hfa4f_d	;# tmp1138, tmp1139,
	adrp	x0, hfa4f_c	;# tmp1141,
	add	x4, x0, :lo12:hfa4f_c	;# tmp1140, tmp1141,
	adrp	x0, hfa4f_b	;# tmp1143,
	add	x3, x0, :lo12:hfa4f_b	;# tmp1142, tmp1143,
	adrp	x0, hfa4f_a	;# tmp1145,
	add	x2, x0, :lo12:hfa4f_a	;# tmp1144, tmp1145,
	adrp	x0, hfa4f_q	;# tmp1147,
	add	x0, x0, :lo12:hfa4f_q	;# tmp1146, tmp1147,
	ldp	x0, x1, [x0]	;# tmp1148, hfa4f_q
	stp	x0, x1, [sp, 192]	;# tmp1148,
	adrp	x0, hfa4f_p	;# tmp1150,
	add	x0, x0, :lo12:hfa4f_p	;# tmp1149, tmp1150,
	ldp	x0, x1, [x0]	;# tmp1151, hfa4f_p
	stp	x0, x1, [sp, 176]	;# tmp1151,
	adrp	x0, hfa4f_o	;# tmp1153,
	add	x0, x0, :lo12:hfa4f_o	;# tmp1152, tmp1153,
	ldp	x0, x1, [x0]	;# tmp1154, hfa4f_o
	stp	x0, x1, [sp, 160]	;# tmp1154,
	adrp	x0, hfa4f_n	;# tmp1156,
	add	x0, x0, :lo12:hfa4f_n	;# tmp1155, tmp1156,
	ldp	x0, x1, [x0]	;# tmp1157, hfa4f_n
	stp	x0, x1, [sp, 144]	;# tmp1157,
	adrp	x0, hfa4f_m	;# tmp1159,
	add	x0, x0, :lo12:hfa4f_m	;# tmp1158, tmp1159,
	ldp	x0, x1, [x0]	;# tmp1160, hfa4f_m
	stp	x0, x1, [sp, 128]	;# tmp1160,
	adrp	x0, hfa4f_l	;# tmp1162,
	add	x0, x0, :lo12:hfa4f_l	;# tmp1161, tmp1162,
	ldp	x0, x1, [x0]	;# tmp1163, hfa4f_l
	stp	x0, x1, [sp, 112]	;# tmp1163,
	adrp	x0, hfa4f_k	;# tmp1165,
	add	x0, x0, :lo12:hfa4f_k	;# tmp1164, tmp1165,
	ldp	x0, x1, [x0]	;# tmp1166, hfa4f_k
	stp	x0, x1, [sp, 96]	;# tmp1166,
	adrp	x0, hfa4f_j	;# tmp1168,
	add	x0, x0, :lo12:hfa4f_j	;# tmp1167, tmp1168,
	ldp	x0, x1, [x0]	;# tmp1169, hfa4f_j
	stp	x0, x1, [sp, 80]	;# tmp1169,
	adrp	x0, hfa4f_i	;# tmp1171,
	add	x0, x0, :lo12:hfa4f_i	;# tmp1170, tmp1171,
	ldp	x0, x1, [x0]	;# tmp1172, hfa4f_i
	stp	x0, x1, [sp, 64]	;# tmp1172,
	adrp	x0, hfa4f_h	;# tmp1174,
	add	x0, x0, :lo12:hfa4f_h	;# tmp1173, tmp1174,
	ldp	x0, x1, [x0]	;# tmp1175, hfa4f_h
	stp	x0, x1, [sp, 48]	;# tmp1175,
	adrp	x0, hfa4f_g	;# tmp1177,
	add	x0, x0, :lo12:hfa4f_g	;# tmp1176, tmp1177,
	ldp	x0, x1, [x0]	;# tmp1178, hfa4f_g
	stp	x0, x1, [sp, 32]	;# tmp1178,
	adrp	x0, hfa4f_f	;# tmp1180,
	add	x0, x0, :lo12:hfa4f_f	;# tmp1179, tmp1180,
	ldp	x0, x1, [x0]	;# tmp1181, hfa4f_f
	stp	x0, x1, [sp, 16]	;# tmp1181,
	adrp	x0, hfa4f_e	;# tmp1183,
	add	x0, x0, :lo12:hfa4f_e	;# tmp1182, tmp1183,
	ldp	x0, x1, [x0]	;# tmp1184, hfa4f_e
	stp	x0, x1, [sp]	;# tmp1184,
	ldp	x7, x8, [x5]	;#, hfa4f_d
	ldp	x5, x6, [x4]	;#, hfa4f_c
	ldp	x3, x4, [x3]	;#, hfa4f_b
	ldp	x1, x2, [x2]	;#, hfa4f_a
	adrp	x0, .LC35	;# tmp1185,
	add	x0, x0, :lo12:.LC35	;#, tmp1185,
	adrp	x9, __imp_use_va_args_many_hfa_4_floats	;# tmp1188,
	add	x9, x9, :lo12:__imp_use_va_args_many_hfa_4_floats	;# tmp1187, tmp1188,
	ldr	x9, [x9]	;# tmp1186,
	blr	x9		;# tmp1186
	str	w0, [sp, 2304]	;#, actual
	ldr	w2, [sp, 2304]	;#, actual
	adrp	x0, .LC35	;# tmp1189,
	add	x1, x0, :lo12:.LC35	;#, tmp1189,
	adrp	x0, .LC63	;# tmp1190,
	add	x0, x0, :lo12:.LC63	;#, tmp1190,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2304]	;# tmp1191, actual
	mov	w0, 6763	;# tmp1192,
	cmp	w1, w0	;# tmp1191, tmp1192
	beq	.L363		;#,
	ldr	w0, [sp, 2428]	;# tmp1194, failures
	add	w0, w0, 1	;# failures_261, tmp1194,
	str	w0, [sp, 2428]	;# failures_261, failures
	ldr	w2, [sp, 2304]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp1195,
	add	x0, x0, :lo12:.LC64	;#, tmp1195,
	bl	__mingw_printf		;#
.L363:
;# varargs-use-dll.c:471:   TEST (few_hfa_2_doubles, 3, hfa2d_a, hfa2d_b);
	adrp	x0, hfa2d_b	;# tmp1197,
	add	x1, x0, :lo12:hfa2d_b	;# tmp1196, tmp1197,
	adrp	x0, hfa2d_a	;# tmp1199,
	add	x0, x0, :lo12:hfa2d_a	;# tmp1198, tmp1199,
	ldp	x3, x4, [x1]	;#, hfa2d_b
	ldp	x1, x2, [x0]	;#, hfa2d_a
	adrp	x0, .LC36	;# tmp1200,
	add	x0, x0, :lo12:.LC36	;#, tmp1200,
	adrp	x5, __imp_use_va_args_few_hfa_2_doubles	;# tmp1203,
	add	x5, x5, :lo12:__imp_use_va_args_few_hfa_2_doubles	;# tmp1202, tmp1203,
	ldr	x5, [x5]	;# tmp1201,
	blr	x5		;# tmp1201
	str	w0, [sp, 2300]	;#, actual
	ldr	w2, [sp, 2300]	;#, actual
	adrp	x0, .LC36	;# tmp1204,
	add	x1, x0, :lo12:.LC36	;#, tmp1204,
	adrp	x0, .LC63	;# tmp1205,
	add	x0, x0, :lo12:.LC63	;#, tmp1205,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2300]	;# tmp1206, actual
	cmp	w0, 3	;# tmp1206,
	beq	.L364		;#,
	ldr	w0, [sp, 2428]	;# tmp1208, failures
	add	w0, w0, 1	;# failures_266, tmp1208,
	str	w0, [sp, 2428]	;# failures_266, failures
	ldr	w2, [sp, 2300]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp1209,
	add	x0, x0, :lo12:.LC64	;#, tmp1209,
	bl	__mingw_printf		;#
.L364:
;# varargs-use-dll.c:472:   TEST (several_hfa_2_doubles, 142, hfa2d_a, hfa2d_b, hfa2d_c, hfa2d_d,
	adrp	x0, hfa2d_d	;# tmp1211,
	add	x5, x0, :lo12:hfa2d_d	;# tmp1210, tmp1211,
	adrp	x0, hfa2d_c	;# tmp1213,
	add	x4, x0, :lo12:hfa2d_c	;# tmp1212, tmp1213,
	adrp	x0, hfa2d_b	;# tmp1215,
	add	x3, x0, :lo12:hfa2d_b	;# tmp1214, tmp1215,
	adrp	x0, hfa2d_a	;# tmp1217,
	add	x2, x0, :lo12:hfa2d_a	;# tmp1216, tmp1217,
	adrp	x0, hfa2d_i	;# tmp1219,
	add	x0, x0, :lo12:hfa2d_i	;# tmp1218, tmp1219,
	ldp	x0, x1, [x0]	;# tmp1220, hfa2d_i
	stp	x0, x1, [sp, 64]	;# tmp1220,
	adrp	x0, hfa2d_h	;# tmp1222,
	add	x0, x0, :lo12:hfa2d_h	;# tmp1221, tmp1222,
	ldp	x0, x1, [x0]	;# tmp1223, hfa2d_h
	stp	x0, x1, [sp, 48]	;# tmp1223,
	adrp	x0, hfa2d_g	;# tmp1225,
	add	x0, x0, :lo12:hfa2d_g	;# tmp1224, tmp1225,
	ldp	x0, x1, [x0]	;# tmp1226, hfa2d_g
	stp	x0, x1, [sp, 32]	;# tmp1226,
	adrp	x0, hfa2d_f	;# tmp1228,
	add	x0, x0, :lo12:hfa2d_f	;# tmp1227, tmp1228,
	ldp	x0, x1, [x0]	;# tmp1229, hfa2d_f
	stp	x0, x1, [sp, 16]	;# tmp1229,
	adrp	x0, hfa2d_e	;# tmp1231,
	add	x0, x0, :lo12:hfa2d_e	;# tmp1230, tmp1231,
	ldp	x0, x1, [x0]	;# tmp1232, hfa2d_e
	stp	x0, x1, [sp]	;# tmp1232,
	ldp	x7, x8, [x5]	;#, hfa2d_d
	ldp	x5, x6, [x4]	;#, hfa2d_c
	ldp	x3, x4, [x3]	;#, hfa2d_b
	ldp	x1, x2, [x2]	;#, hfa2d_a
	adrp	x0, .LC37	;# tmp1233,
	add	x0, x0, :lo12:.LC37	;#, tmp1233,
	adrp	x9, __imp_use_va_args_several_hfa_2_doubles	;# tmp1236,
	add	x9, x9, :lo12:__imp_use_va_args_several_hfa_2_doubles	;# tmp1235, tmp1236,
	ldr	x9, [x9]	;# tmp1234,
	blr	x9		;# tmp1234
	str	w0, [sp, 2296]	;#, actual
	ldr	w2, [sp, 2296]	;#, actual
	adrp	x0, .LC37	;# tmp1237,
	add	x1, x0, :lo12:.LC37	;#, tmp1237,
	adrp	x0, .LC63	;# tmp1238,
	add	x0, x0, :lo12:.LC63	;#, tmp1238,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2296]	;# tmp1239, actual
	cmp	w0, 142	;# tmp1239,
	beq	.L365		;#,
	ldr	w0, [sp, 2428]	;# tmp1241, failures
	add	w0, w0, 1	;# failures_271, tmp1241,
	str	w0, [sp, 2428]	;# failures_271, failures
	ldr	w2, [sp, 2296]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp1242,
	add	x0, x0, :lo12:.LC64	;#, tmp1242,
	bl	__mingw_printf		;#
.L365:
;# varargs-use-dll.c:474:   TEST (many_hfa_2_doubles, 6763, hfa2d_a, hfa2d_b, hfa2d_c, hfa2d_d, hfa2d_e,
	adrp	x0, hfa2d_d	;# tmp1244,
	add	x5, x0, :lo12:hfa2d_d	;# tmp1243, tmp1244,
	adrp	x0, hfa2d_c	;# tmp1246,
	add	x4, x0, :lo12:hfa2d_c	;# tmp1245, tmp1246,
	adrp	x0, hfa2d_b	;# tmp1248,
	add	x3, x0, :lo12:hfa2d_b	;# tmp1247, tmp1248,
	adrp	x0, hfa2d_a	;# tmp1250,
	add	x2, x0, :lo12:hfa2d_a	;# tmp1249, tmp1250,
	adrp	x0, hfa2d_q	;# tmp1252,
	add	x0, x0, :lo12:hfa2d_q	;# tmp1251, tmp1252,
	ldp	x0, x1, [x0]	;# tmp1253, hfa2d_q
	stp	x0, x1, [sp, 192]	;# tmp1253,
	adrp	x0, hfa2d_p	;# tmp1255,
	add	x0, x0, :lo12:hfa2d_p	;# tmp1254, tmp1255,
	ldp	x0, x1, [x0]	;# tmp1256, hfa2d_p
	stp	x0, x1, [sp, 176]	;# tmp1256,
	adrp	x0, hfa2d_o	;# tmp1258,
	add	x0, x0, :lo12:hfa2d_o	;# tmp1257, tmp1258,
	ldp	x0, x1, [x0]	;# tmp1259, hfa2d_o
	stp	x0, x1, [sp, 160]	;# tmp1259,
	adrp	x0, hfa2d_n	;# tmp1261,
	add	x0, x0, :lo12:hfa2d_n	;# tmp1260, tmp1261,
	ldp	x0, x1, [x0]	;# tmp1262, hfa2d_n
	stp	x0, x1, [sp, 144]	;# tmp1262,
	adrp	x0, hfa2d_m	;# tmp1264,
	add	x0, x0, :lo12:hfa2d_m	;# tmp1263, tmp1264,
	ldp	x0, x1, [x0]	;# tmp1265, hfa2d_m
	stp	x0, x1, [sp, 128]	;# tmp1265,
	adrp	x0, hfa2d_l	;# tmp1267,
	add	x0, x0, :lo12:hfa2d_l	;# tmp1266, tmp1267,
	ldp	x0, x1, [x0]	;# tmp1268, hfa2d_l
	stp	x0, x1, [sp, 112]	;# tmp1268,
	adrp	x0, hfa2d_k	;# tmp1270,
	add	x0, x0, :lo12:hfa2d_k	;# tmp1269, tmp1270,
	ldp	x0, x1, [x0]	;# tmp1271, hfa2d_k
	stp	x0, x1, [sp, 96]	;# tmp1271,
	adrp	x0, hfa2d_j	;# tmp1273,
	add	x0, x0, :lo12:hfa2d_j	;# tmp1272, tmp1273,
	ldp	x0, x1, [x0]	;# tmp1274, hfa2d_j
	stp	x0, x1, [sp, 80]	;# tmp1274,
	adrp	x0, hfa2d_i	;# tmp1276,
	add	x0, x0, :lo12:hfa2d_i	;# tmp1275, tmp1276,
	ldp	x0, x1, [x0]	;# tmp1277, hfa2d_i
	stp	x0, x1, [sp, 64]	;# tmp1277,
	adrp	x0, hfa2d_h	;# tmp1279,
	add	x0, x0, :lo12:hfa2d_h	;# tmp1278, tmp1279,
	ldp	x0, x1, [x0]	;# tmp1280, hfa2d_h
	stp	x0, x1, [sp, 48]	;# tmp1280,
	adrp	x0, hfa2d_g	;# tmp1282,
	add	x0, x0, :lo12:hfa2d_g	;# tmp1281, tmp1282,
	ldp	x0, x1, [x0]	;# tmp1283, hfa2d_g
	stp	x0, x1, [sp, 32]	;# tmp1283,
	adrp	x0, hfa2d_f	;# tmp1285,
	add	x0, x0, :lo12:hfa2d_f	;# tmp1284, tmp1285,
	ldp	x0, x1, [x0]	;# tmp1286, hfa2d_f
	stp	x0, x1, [sp, 16]	;# tmp1286,
	adrp	x0, hfa2d_e	;# tmp1288,
	add	x0, x0, :lo12:hfa2d_e	;# tmp1287, tmp1288,
	ldp	x0, x1, [x0]	;# tmp1289, hfa2d_e
	stp	x0, x1, [sp]	;# tmp1289,
	ldp	x7, x8, [x5]	;#, hfa2d_d
	ldp	x5, x6, [x4]	;#, hfa2d_c
	ldp	x3, x4, [x3]	;#, hfa2d_b
	ldp	x1, x2, [x2]	;#, hfa2d_a
	adrp	x0, .LC38	;# tmp1290,
	add	x0, x0, :lo12:.LC38	;#, tmp1290,
	adrp	x9, __imp_use_va_args_many_hfa_2_doubles	;# tmp1293,
	add	x9, x9, :lo12:__imp_use_va_args_many_hfa_2_doubles	;# tmp1292, tmp1293,
	ldr	x9, [x9]	;# tmp1291,
	blr	x9		;# tmp1291
	str	w0, [sp, 2292]	;#, actual
	ldr	w2, [sp, 2292]	;#, actual
	adrp	x0, .LC38	;# tmp1294,
	add	x1, x0, :lo12:.LC38	;#, tmp1294,
	adrp	x0, .LC63	;# tmp1295,
	add	x0, x0, :lo12:.LC63	;#, tmp1295,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2292]	;# tmp1296, actual
	mov	w0, 6763	;# tmp1297,
	cmp	w1, w0	;# tmp1296, tmp1297
	beq	.L366		;#,
	ldr	w0, [sp, 2428]	;# tmp1299, failures
	add	w0, w0, 1	;# failures_276, tmp1299,
	str	w0, [sp, 2428]	;# failures_276, failures
	ldr	w2, [sp, 2292]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp1300,
	add	x0, x0, :lo12:.LC64	;#, tmp1300,
	bl	__mingw_printf		;#
.L366:
;# varargs-use-dll.c:478:   TEST (few_hfa_4_doubles, 3, hfa4d_a, hfa4d_b);
	adrp	x0, hfa4d_b	;# tmp1302,
	add	x0, x0, :lo12:hfa4d_b	;# tmp1301, tmp1302,
	adrp	x1, hfa4d_a	;# tmp1307,
	add	x1, x1, :lo12:hfa4d_a	;# tmp1306, tmp1307,
	ldr	x11, [x1]	;# tmp1308, hfa4d_a
	ldr	x10, [x1, 8]	;# tmp1309, hfa4d_a
	ldr	x9, [x1, 16]	;# tmp1310, hfa4d_a
	ldr	x8, [x1, 24]	;# tmp1311, hfa4d_a
	add	x2, x0, 8	;# tmp1313, tmp1301,
	mov	x1, sp	;# tmp1314,
	mov	x4, x2	;# tmp1315, tmp1313
	ldp	x2, x3, [x4]	;# tmp1316, hfa4d_b
	ldr	x4, [x4, 16]	;# tmp1317, hfa4d_b
	stp	x2, x3, [x1]	;# tmp1316,
	str	x4, [x1, 16]	;# tmp1317,
	ldr	x3, [x0]	;# tmp1318, hfa4d_b
	ldr	x2, [x0, 8]	;# tmp1319, hfa4d_b
	ldr	x1, [x0, 16]	;# tmp1320, hfa4d_b
	mov	x5, x3	;#, tmp1318
	mov	x6, x2	;#, tmp1319
	mov	x7, x1	;#, tmp1320
	ldr	x2, [x0]	;# tmp1321, hfa4d_b
	ldr	x1, [x0, 8]	;# tmp1322, hfa4d_b
	ldr	x0, [x0, 16]	;# tmp1323, hfa4d_b
	mov	x5, x2	;#, tmp1321
	mov	x6, x1	;#, tmp1322
	mov	x7, x0	;#, tmp1323
	mov	x1, x11	;#, tmp1308
	mov	x2, x10	;#, tmp1309
	mov	x3, x9	;#, tmp1310
	mov	x4, x8	;#, tmp1311
	adrp	x0, .LC39	;# tmp1324,
	add	x0, x0, :lo12:.LC39	;#, tmp1324,
	adrp	x8, __imp_use_va_args_few_hfa_4_doubles	;# tmp1327,
	add	x8, x8, :lo12:__imp_use_va_args_few_hfa_4_doubles	;# tmp1326, tmp1327,
	ldr	x8, [x8]	;# tmp1325,
	blr	x8		;# tmp1325
	str	w0, [sp, 2288]	;#, actual
	ldr	w2, [sp, 2288]	;#, actual
	adrp	x0, .LC39	;# tmp1328,
	add	x1, x0, :lo12:.LC39	;#, tmp1328,
	adrp	x0, .LC63	;# tmp1329,
	add	x0, x0, :lo12:.LC63	;#, tmp1329,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2288]	;# tmp1330, actual
	cmp	w0, 3	;# tmp1330,
	beq	.L367		;#,
	ldr	w0, [sp, 2428]	;# tmp1332, failures
	add	w0, w0, 1	;# failures_281, tmp1332,
	str	w0, [sp, 2428]	;# failures_281, failures
	ldr	w2, [sp, 2288]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp1333,
	add	x0, x0, :lo12:.LC64	;#, tmp1333,
	bl	__mingw_printf		;#
.L367:
;# varargs-use-dll.c:479:   TEST (several_hfa_4_doubles, 142, hfa4d_a, hfa4d_b, hfa4d_c, hfa4d_d,
	adrp	x0, hfa4d_b	;# tmp1335,
	add	x0, x0, :lo12:hfa4d_b	;# tmp1334, tmp1335,
	adrp	x1, hfa4d_a	;# tmp1340,
	add	x1, x1, :lo12:hfa4d_a	;# tmp1339, tmp1340,
	ldr	x11, [x1]	;# tmp1341, hfa4d_a
	ldr	x10, [x1, 8]	;# tmp1342, hfa4d_a
	ldr	x9, [x1, 16]	;# tmp1343, hfa4d_a
	ldr	x8, [x1, 24]	;# tmp1344, hfa4d_a
	adrp	x1, hfa4d_i	;# tmp1346,
	add	x2, x1, :lo12:hfa4d_i	;# tmp1345, tmp1346,
	add	x1, sp, 216	;# tmp1347,,
	ldr	q30, [x2]	;# tmp1349, hfa4d_i
	ldr	q31, [x2, 16]	;# tmp1350, hfa4d_i
	str	q30, [x1]	;# tmp1349,
	str	q31, [x1, 16]	;# tmp1350,
	adrp	x1, hfa4d_h	;# tmp1352,
	add	x2, x1, :lo12:hfa4d_h	;# tmp1351, tmp1352,
	add	x1, sp, 184	;# tmp1353,,
	ldr	q30, [x2]	;# tmp1355, hfa4d_h
	ldr	q31, [x2, 16]	;# tmp1356, hfa4d_h
	str	q30, [x1]	;# tmp1355,
	str	q31, [x1, 16]	;# tmp1356,
	adrp	x1, hfa4d_g	;# tmp1358,
	add	x2, x1, :lo12:hfa4d_g	;# tmp1357, tmp1358,
	add	x1, sp, 152	;# tmp1359,,
	ldr	q30, [x2]	;# tmp1361, hfa4d_g
	ldr	q31, [x2, 16]	;# tmp1362, hfa4d_g
	str	q30, [x1]	;# tmp1361,
	str	q31, [x1, 16]	;# tmp1362,
	adrp	x1, hfa4d_f	;# tmp1364,
	add	x2, x1, :lo12:hfa4d_f	;# tmp1363, tmp1364,
	add	x1, sp, 120	;# tmp1365,,
	ldr	q30, [x2]	;# tmp1367, hfa4d_f
	ldr	q31, [x2, 16]	;# tmp1368, hfa4d_f
	str	q30, [x1]	;# tmp1367,
	str	q31, [x1, 16]	;# tmp1368,
	adrp	x1, hfa4d_e	;# tmp1370,
	add	x2, x1, :lo12:hfa4d_e	;# tmp1369, tmp1370,
	add	x1, sp, 88	;# tmp1371,,
	ldr	q30, [x2]	;# tmp1373, hfa4d_e
	ldr	q31, [x2, 16]	;# tmp1374, hfa4d_e
	str	q30, [x1]	;# tmp1373,
	str	q31, [x1, 16]	;# tmp1374,
	adrp	x1, hfa4d_d	;# tmp1376,
	add	x2, x1, :lo12:hfa4d_d	;# tmp1375, tmp1376,
	add	x1, sp, 56	;# tmp1377,,
	ldr	q30, [x2]	;# tmp1379, hfa4d_d
	ldr	q31, [x2, 16]	;# tmp1380, hfa4d_d
	str	q30, [x1]	;# tmp1379,
	str	q31, [x1, 16]	;# tmp1380,
	adrp	x1, hfa4d_c	;# tmp1382,
	add	x2, x1, :lo12:hfa4d_c	;# tmp1381, tmp1382,
	add	x1, sp, 24	;# tmp1383,,
	ldr	q30, [x2]	;# tmp1385, hfa4d_c
	ldr	q31, [x2, 16]	;# tmp1386, hfa4d_c
	str	q30, [x1]	;# tmp1385,
	str	q31, [x1, 16]	;# tmp1386,
	add	x2, x0, 8	;# tmp1388, tmp1334,
	mov	x1, sp	;# tmp1389,
	mov	x4, x2	;# tmp1390, tmp1388
	ldp	x2, x3, [x4]	;# tmp1391, hfa4d_b
	ldr	x4, [x4, 16]	;# tmp1392, hfa4d_b
	stp	x2, x3, [x1]	;# tmp1391,
	str	x4, [x1, 16]	;# tmp1392,
	ldr	x3, [x0]	;# tmp1393, hfa4d_b
	ldr	x2, [x0, 8]	;# tmp1394, hfa4d_b
	ldr	x1, [x0, 16]	;# tmp1395, hfa4d_b
	mov	x5, x3	;#, tmp1393
	mov	x6, x2	;#, tmp1394
	mov	x7, x1	;#, tmp1395
	ldr	x2, [x0]	;# tmp1396, hfa4d_b
	ldr	x1, [x0, 8]	;# tmp1397, hfa4d_b
	ldr	x0, [x0, 16]	;# tmp1398, hfa4d_b
	mov	x5, x2	;#, tmp1396
	mov	x6, x1	;#, tmp1397
	mov	x7, x0	;#, tmp1398
	mov	x1, x11	;#, tmp1341
	mov	x2, x10	;#, tmp1342
	mov	x3, x9	;#, tmp1343
	mov	x4, x8	;#, tmp1344
	adrp	x0, .LC40	;# tmp1399,
	add	x0, x0, :lo12:.LC40	;#, tmp1399,
	adrp	x8, __imp_use_va_args_several_hfa_4_doubles	;# tmp1402,
	add	x8, x8, :lo12:__imp_use_va_args_several_hfa_4_doubles	;# tmp1401, tmp1402,
	ldr	x8, [x8]	;# tmp1400,
	blr	x8		;# tmp1400
	str	w0, [sp, 2284]	;#, actual
	ldr	w2, [sp, 2284]	;#, actual
	adrp	x0, .LC40	;# tmp1403,
	add	x1, x0, :lo12:.LC40	;#, tmp1403,
	adrp	x0, .LC63	;# tmp1404,
	add	x0, x0, :lo12:.LC63	;#, tmp1404,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2284]	;# tmp1405, actual
	cmp	w0, 142	;# tmp1405,
	beq	.L368		;#,
	ldr	w0, [sp, 2428]	;# tmp1407, failures
	add	w0, w0, 1	;# failures_286, tmp1407,
	str	w0, [sp, 2428]	;# failures_286, failures
	ldr	w2, [sp, 2284]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp1408,
	add	x0, x0, :lo12:.LC64	;#, tmp1408,
	bl	__mingw_printf		;#
.L368:
;# varargs-use-dll.c:481:   TEST (many_hfa_4_doubles, 6763, hfa4d_a, hfa4d_b, hfa4d_c, hfa4d_d, hfa4d_e,
	adrp	x0, hfa4d_b	;# tmp1410,
	add	x0, x0, :lo12:hfa4d_b	;# tmp1409, tmp1410,
	adrp	x1, hfa4d_a	;# tmp1415,
	add	x1, x1, :lo12:hfa4d_a	;# tmp1414, tmp1415,
	ldr	x11, [x1]	;# tmp1416, hfa4d_a
	ldr	x10, [x1, 8]	;# tmp1417, hfa4d_a
	ldr	x9, [x1, 16]	;# tmp1418, hfa4d_a
	ldr	x8, [x1, 24]	;# tmp1419, hfa4d_a
	adrp	x1, hfa4d_q	;# tmp1421,
	add	x2, x1, :lo12:hfa4d_q	;# tmp1420, tmp1421,
	add	x1, sp, 472	;# tmp1422,,
	ldr	q30, [x2]	;# tmp1424, hfa4d_q
	ldr	q31, [x2, 16]	;# tmp1425, hfa4d_q
	str	q30, [x1]	;# tmp1424,
	str	q31, [x1, 16]	;# tmp1425,
	adrp	x1, hfa4d_p	;# tmp1427,
	add	x2, x1, :lo12:hfa4d_p	;# tmp1426, tmp1427,
	add	x1, sp, 440	;# tmp1428,,
	ldr	q30, [x2]	;# tmp1430, hfa4d_p
	ldr	q31, [x2, 16]	;# tmp1431, hfa4d_p
	str	q30, [x1]	;# tmp1430,
	str	q31, [x1, 16]	;# tmp1431,
	adrp	x1, hfa4d_o	;# tmp1433,
	add	x2, x1, :lo12:hfa4d_o	;# tmp1432, tmp1433,
	add	x1, sp, 408	;# tmp1434,,
	ldr	q30, [x2]	;# tmp1436, hfa4d_o
	ldr	q31, [x2, 16]	;# tmp1437, hfa4d_o
	str	q30, [x1]	;# tmp1436,
	str	q31, [x1, 16]	;# tmp1437,
	adrp	x1, hfa4d_n	;# tmp1439,
	add	x2, x1, :lo12:hfa4d_n	;# tmp1438, tmp1439,
	add	x1, sp, 376	;# tmp1440,,
	ldr	q30, [x2]	;# tmp1442, hfa4d_n
	ldr	q31, [x2, 16]	;# tmp1443, hfa4d_n
	str	q30, [x1]	;# tmp1442,
	str	q31, [x1, 16]	;# tmp1443,
	adrp	x1, hfa4d_m	;# tmp1445,
	add	x2, x1, :lo12:hfa4d_m	;# tmp1444, tmp1445,
	add	x1, sp, 344	;# tmp1446,,
	ldr	q30, [x2]	;# tmp1448, hfa4d_m
	ldr	q31, [x2, 16]	;# tmp1449, hfa4d_m
	str	q30, [x1]	;# tmp1448,
	str	q31, [x1, 16]	;# tmp1449,
	adrp	x1, hfa4d_l	;# tmp1451,
	add	x2, x1, :lo12:hfa4d_l	;# tmp1450, tmp1451,
	add	x1, sp, 312	;# tmp1452,,
	ldr	q30, [x2]	;# tmp1454, hfa4d_l
	ldr	q31, [x2, 16]	;# tmp1455, hfa4d_l
	str	q30, [x1]	;# tmp1454,
	str	q31, [x1, 16]	;# tmp1455,
	adrp	x1, hfa4d_k	;# tmp1457,
	add	x2, x1, :lo12:hfa4d_k	;# tmp1456, tmp1457,
	add	x1, sp, 280	;# tmp1458,,
	ldr	q30, [x2]	;# tmp1460, hfa4d_k
	ldr	q31, [x2, 16]	;# tmp1461, hfa4d_k
	str	q30, [x1]	;# tmp1460,
	str	q31, [x1, 16]	;# tmp1461,
	adrp	x1, hfa4d_j	;# tmp1463,
	add	x2, x1, :lo12:hfa4d_j	;# tmp1462, tmp1463,
	add	x1, sp, 248	;# tmp1464,,
	ldr	q30, [x2]	;# tmp1466, hfa4d_j
	ldr	q31, [x2, 16]	;# tmp1467, hfa4d_j
	str	q30, [x1]	;# tmp1466,
	str	q31, [x1, 16]	;# tmp1467,
	adrp	x1, hfa4d_i	;# tmp1469,
	add	x2, x1, :lo12:hfa4d_i	;# tmp1468, tmp1469,
	add	x1, sp, 216	;# tmp1470,,
	ldr	q30, [x2]	;# tmp1472, hfa4d_i
	ldr	q31, [x2, 16]	;# tmp1473, hfa4d_i
	str	q30, [x1]	;# tmp1472,
	str	q31, [x1, 16]	;# tmp1473,
	adrp	x1, hfa4d_h	;# tmp1475,
	add	x2, x1, :lo12:hfa4d_h	;# tmp1474, tmp1475,
	add	x1, sp, 184	;# tmp1476,,
	ldr	q30, [x2]	;# tmp1478, hfa4d_h
	ldr	q31, [x2, 16]	;# tmp1479, hfa4d_h
	str	q30, [x1]	;# tmp1478,
	str	q31, [x1, 16]	;# tmp1479,
	adrp	x1, hfa4d_g	;# tmp1481,
	add	x2, x1, :lo12:hfa4d_g	;# tmp1480, tmp1481,
	add	x1, sp, 152	;# tmp1482,,
	ldr	q30, [x2]	;# tmp1484, hfa4d_g
	ldr	q31, [x2, 16]	;# tmp1485, hfa4d_g
	str	q30, [x1]	;# tmp1484,
	str	q31, [x1, 16]	;# tmp1485,
	adrp	x1, hfa4d_f	;# tmp1487,
	add	x2, x1, :lo12:hfa4d_f	;# tmp1486, tmp1487,
	add	x1, sp, 120	;# tmp1488,,
	ldr	q30, [x2]	;# tmp1490, hfa4d_f
	ldr	q31, [x2, 16]	;# tmp1491, hfa4d_f
	str	q30, [x1]	;# tmp1490,
	str	q31, [x1, 16]	;# tmp1491,
	adrp	x1, hfa4d_e	;# tmp1493,
	add	x2, x1, :lo12:hfa4d_e	;# tmp1492, tmp1493,
	add	x1, sp, 88	;# tmp1494,,
	ldr	q30, [x2]	;# tmp1496, hfa4d_e
	ldr	q31, [x2, 16]	;# tmp1497, hfa4d_e
	str	q30, [x1]	;# tmp1496,
	str	q31, [x1, 16]	;# tmp1497,
	adrp	x1, hfa4d_d	;# tmp1499,
	add	x2, x1, :lo12:hfa4d_d	;# tmp1498, tmp1499,
	add	x1, sp, 56	;# tmp1500,,
	ldr	q30, [x2]	;# tmp1502, hfa4d_d
	ldr	q31, [x2, 16]	;# tmp1503, hfa4d_d
	str	q30, [x1]	;# tmp1502,
	str	q31, [x1, 16]	;# tmp1503,
	adrp	x1, hfa4d_c	;# tmp1505,
	add	x2, x1, :lo12:hfa4d_c	;# tmp1504, tmp1505,
	add	x1, sp, 24	;# tmp1506,,
	ldr	q30, [x2]	;# tmp1508, hfa4d_c
	ldr	q31, [x2, 16]	;# tmp1509, hfa4d_c
	str	q30, [x1]	;# tmp1508,
	str	q31, [x1, 16]	;# tmp1509,
	add	x2, x0, 8	;# tmp1511, tmp1409,
	mov	x1, sp	;# tmp1512,
	mov	x4, x2	;# tmp1513, tmp1511
	ldp	x2, x3, [x4]	;# tmp1514, hfa4d_b
	ldr	x4, [x4, 16]	;# tmp1515, hfa4d_b
	stp	x2, x3, [x1]	;# tmp1514,
	str	x4, [x1, 16]	;# tmp1515,
	ldr	x3, [x0]	;# tmp1516, hfa4d_b
	ldr	x2, [x0, 8]	;# tmp1517, hfa4d_b
	ldr	x1, [x0, 16]	;# tmp1518, hfa4d_b
	mov	x5, x3	;#, tmp1516
	mov	x6, x2	;#, tmp1517
	mov	x7, x1	;#, tmp1518
	ldr	x2, [x0]	;# tmp1519, hfa4d_b
	ldr	x1, [x0, 8]	;# tmp1520, hfa4d_b
	ldr	x0, [x0, 16]	;# tmp1521, hfa4d_b
	mov	x5, x2	;#, tmp1519
	mov	x6, x1	;#, tmp1520
	mov	x7, x0	;#, tmp1521
	mov	x1, x11	;#, tmp1416
	mov	x2, x10	;#, tmp1417
	mov	x3, x9	;#, tmp1418
	mov	x4, x8	;#, tmp1419
	adrp	x0, .LC41	;# tmp1522,
	add	x0, x0, :lo12:.LC41	;#, tmp1522,
	adrp	x8, __imp_use_va_args_many_hfa_4_doubles	;# tmp1525,
	add	x8, x8, :lo12:__imp_use_va_args_many_hfa_4_doubles	;# tmp1524, tmp1525,
	ldr	x8, [x8]	;# tmp1523,
	blr	x8		;# tmp1523
	str	w0, [sp, 2280]	;#, actual
	ldr	w2, [sp, 2280]	;#, actual
	adrp	x0, .LC41	;# tmp1526,
	add	x1, x0, :lo12:.LC41	;#, tmp1526,
	adrp	x0, .LC63	;# tmp1527,
	add	x0, x0, :lo12:.LC63	;#, tmp1527,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2280]	;# tmp1528, actual
	mov	w0, 6763	;# tmp1529,
	cmp	w1, w0	;# tmp1528, tmp1529
	beq	.L369		;#,
	ldr	w0, [sp, 2428]	;# tmp1531, failures
	add	w0, w0, 1	;# failures_291, tmp1531,
	str	w0, [sp, 2428]	;# failures_291, failures
	ldr	w2, [sp, 2280]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp1532,
	add	x0, x0, :lo12:.LC64	;#, tmp1532,
	bl	__mingw_printf		;#
.L369:
;# varargs-use-dll.c:485:   TEST (few_hva_2_short_vector_8_bytes, 3, hva2sv8_a, hva2sv8_b);
	adrp	x0, hva2sv8_b	;# tmp1534,
	add	x1, x0, :lo12:hva2sv8_b	;# tmp1533, tmp1534,
	adrp	x0, hva2sv8_a	;# tmp1536,
	add	x0, x0, :lo12:hva2sv8_a	;# tmp1535, tmp1536,
	ldp	x3, x4, [x1]	;#, hva2sv8_b
	ldp	x1, x2, [x0]	;#, hva2sv8_a
	adrp	x0, .LC42	;# tmp1537,
	add	x0, x0, :lo12:.LC42	;#, tmp1537,
	adrp	x5, __imp_use_va_args_few_hva_2_short_vector_8_bytes	;# tmp1540,
	add	x5, x5, :lo12:__imp_use_va_args_few_hva_2_short_vector_8_bytes	;# tmp1539, tmp1540,
	ldr	x5, [x5]	;# tmp1538,
	blr	x5		;# tmp1538
	str	w0, [sp, 2276]	;#, actual
	ldr	w2, [sp, 2276]	;#, actual
	adrp	x0, .LC42	;# tmp1541,
	add	x1, x0, :lo12:.LC42	;#, tmp1541,
	adrp	x0, .LC63	;# tmp1542,
	add	x0, x0, :lo12:.LC63	;#, tmp1542,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2276]	;# tmp1543, actual
	cmp	w0, 3	;# tmp1543,
	beq	.L370		;#,
	ldr	w0, [sp, 2428]	;# tmp1545, failures
	add	w0, w0, 1	;# failures_296, tmp1545,
	str	w0, [sp, 2428]	;# failures_296, failures
	ldr	w2, [sp, 2276]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp1546,
	add	x0, x0, :lo12:.LC64	;#, tmp1546,
	bl	__mingw_printf		;#
.L370:
;# varargs-use-dll.c:486:   TEST (several_hva_2_short_vector_8_bytes, 142, hva2sv8_a, hva2sv8_b,
	adrp	x0, hva2sv8_d	;# tmp1548,
	add	x5, x0, :lo12:hva2sv8_d	;# tmp1547, tmp1548,
	adrp	x0, hva2sv8_c	;# tmp1550,
	add	x4, x0, :lo12:hva2sv8_c	;# tmp1549, tmp1550,
	adrp	x0, hva2sv8_b	;# tmp1552,
	add	x3, x0, :lo12:hva2sv8_b	;# tmp1551, tmp1552,
	adrp	x0, hva2sv8_a	;# tmp1554,
	add	x2, x0, :lo12:hva2sv8_a	;# tmp1553, tmp1554,
	adrp	x0, hva2sv8_i	;# tmp1556,
	add	x0, x0, :lo12:hva2sv8_i	;# tmp1555, tmp1556,
	ldp	x0, x1, [x0]	;# tmp1557, hva2sv8_i
	stp	x0, x1, [sp, 64]	;# tmp1557,
	adrp	x0, hva2sv8_h	;# tmp1559,
	add	x0, x0, :lo12:hva2sv8_h	;# tmp1558, tmp1559,
	ldp	x0, x1, [x0]	;# tmp1560, hva2sv8_h
	stp	x0, x1, [sp, 48]	;# tmp1560,
	adrp	x0, hva2sv8_g	;# tmp1562,
	add	x0, x0, :lo12:hva2sv8_g	;# tmp1561, tmp1562,
	ldp	x0, x1, [x0]	;# tmp1563, hva2sv8_g
	stp	x0, x1, [sp, 32]	;# tmp1563,
	adrp	x0, hva2sv8_f	;# tmp1565,
	add	x0, x0, :lo12:hva2sv8_f	;# tmp1564, tmp1565,
	ldp	x0, x1, [x0]	;# tmp1566, hva2sv8_f
	stp	x0, x1, [sp, 16]	;# tmp1566,
	adrp	x0, hva2sv8_e	;# tmp1568,
	add	x0, x0, :lo12:hva2sv8_e	;# tmp1567, tmp1568,
	ldp	x0, x1, [x0]	;# tmp1569, hva2sv8_e
	stp	x0, x1, [sp]	;# tmp1569,
	ldp	x7, x8, [x5]	;#, hva2sv8_d
	ldp	x5, x6, [x4]	;#, hva2sv8_c
	ldp	x3, x4, [x3]	;#, hva2sv8_b
	ldp	x1, x2, [x2]	;#, hva2sv8_a
	adrp	x0, .LC43	;# tmp1570,
	add	x0, x0, :lo12:.LC43	;#, tmp1570,
	adrp	x9, __imp_use_va_args_several_hva_2_short_vector_8_bytes	;# tmp1573,
	add	x9, x9, :lo12:__imp_use_va_args_several_hva_2_short_vector_8_bytes	;# tmp1572, tmp1573,
	ldr	x9, [x9]	;# tmp1571,
	blr	x9		;# tmp1571
	str	w0, [sp, 2272]	;#, actual
	ldr	w2, [sp, 2272]	;#, actual
	adrp	x0, .LC43	;# tmp1574,
	add	x1, x0, :lo12:.LC43	;#, tmp1574,
	adrp	x0, .LC63	;# tmp1575,
	add	x0, x0, :lo12:.LC63	;#, tmp1575,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2272]	;# tmp1576, actual
	cmp	w0, 142	;# tmp1576,
	beq	.L371		;#,
	ldr	w0, [sp, 2428]	;# tmp1578, failures
	add	w0, w0, 1	;# failures_301, tmp1578,
	str	w0, [sp, 2428]	;# failures_301, failures
	ldr	w2, [sp, 2272]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp1579,
	add	x0, x0, :lo12:.LC64	;#, tmp1579,
	bl	__mingw_printf		;#
.L371:
;# varargs-use-dll.c:489:   TEST (many_hva_2_short_vector_8_bytes, 6763, hva2sv8_a, hva2sv8_b, hva2sv8_c,
	adrp	x0, hva2sv8_d	;# tmp1581,
	add	x5, x0, :lo12:hva2sv8_d	;# tmp1580, tmp1581,
	adrp	x0, hva2sv8_c	;# tmp1583,
	add	x4, x0, :lo12:hva2sv8_c	;# tmp1582, tmp1583,
	adrp	x0, hva2sv8_b	;# tmp1585,
	add	x3, x0, :lo12:hva2sv8_b	;# tmp1584, tmp1585,
	adrp	x0, hva2sv8_a	;# tmp1587,
	add	x2, x0, :lo12:hva2sv8_a	;# tmp1586, tmp1587,
	adrp	x0, hva2sv8_q	;# tmp1589,
	add	x0, x0, :lo12:hva2sv8_q	;# tmp1588, tmp1589,
	ldp	x0, x1, [x0]	;# tmp1590, hva2sv8_q
	stp	x0, x1, [sp, 192]	;# tmp1590,
	adrp	x0, hva2sv8_p	;# tmp1592,
	add	x0, x0, :lo12:hva2sv8_p	;# tmp1591, tmp1592,
	ldp	x0, x1, [x0]	;# tmp1593, hva2sv8_p
	stp	x0, x1, [sp, 176]	;# tmp1593,
	adrp	x0, hva2sv8_o	;# tmp1595,
	add	x0, x0, :lo12:hva2sv8_o	;# tmp1594, tmp1595,
	ldp	x0, x1, [x0]	;# tmp1596, hva2sv8_o
	stp	x0, x1, [sp, 160]	;# tmp1596,
	adrp	x0, hva2sv8_n	;# tmp1598,
	add	x0, x0, :lo12:hva2sv8_n	;# tmp1597, tmp1598,
	ldp	x0, x1, [x0]	;# tmp1599, hva2sv8_n
	stp	x0, x1, [sp, 144]	;# tmp1599,
	adrp	x0, hva2sv8_m	;# tmp1601,
	add	x0, x0, :lo12:hva2sv8_m	;# tmp1600, tmp1601,
	ldp	x0, x1, [x0]	;# tmp1602, hva2sv8_m
	stp	x0, x1, [sp, 128]	;# tmp1602,
	adrp	x0, hva2sv8_l	;# tmp1604,
	add	x0, x0, :lo12:hva2sv8_l	;# tmp1603, tmp1604,
	ldp	x0, x1, [x0]	;# tmp1605, hva2sv8_l
	stp	x0, x1, [sp, 112]	;# tmp1605,
	adrp	x0, hva2sv8_k	;# tmp1607,
	add	x0, x0, :lo12:hva2sv8_k	;# tmp1606, tmp1607,
	ldp	x0, x1, [x0]	;# tmp1608, hva2sv8_k
	stp	x0, x1, [sp, 96]	;# tmp1608,
	adrp	x0, hva2sv8_j	;# tmp1610,
	add	x0, x0, :lo12:hva2sv8_j	;# tmp1609, tmp1610,
	ldp	x0, x1, [x0]	;# tmp1611, hva2sv8_j
	stp	x0, x1, [sp, 80]	;# tmp1611,
	adrp	x0, hva2sv8_i	;# tmp1613,
	add	x0, x0, :lo12:hva2sv8_i	;# tmp1612, tmp1613,
	ldp	x0, x1, [x0]	;# tmp1614, hva2sv8_i
	stp	x0, x1, [sp, 64]	;# tmp1614,
	adrp	x0, hva2sv8_h	;# tmp1616,
	add	x0, x0, :lo12:hva2sv8_h	;# tmp1615, tmp1616,
	ldp	x0, x1, [x0]	;# tmp1617, hva2sv8_h
	stp	x0, x1, [sp, 48]	;# tmp1617,
	adrp	x0, hva2sv8_g	;# tmp1619,
	add	x0, x0, :lo12:hva2sv8_g	;# tmp1618, tmp1619,
	ldp	x0, x1, [x0]	;# tmp1620, hva2sv8_g
	stp	x0, x1, [sp, 32]	;# tmp1620,
	adrp	x0, hva2sv8_f	;# tmp1622,
	add	x0, x0, :lo12:hva2sv8_f	;# tmp1621, tmp1622,
	ldp	x0, x1, [x0]	;# tmp1623, hva2sv8_f
	stp	x0, x1, [sp, 16]	;# tmp1623,
	adrp	x0, hva2sv8_e	;# tmp1625,
	add	x0, x0, :lo12:hva2sv8_e	;# tmp1624, tmp1625,
	ldp	x0, x1, [x0]	;# tmp1626, hva2sv8_e
	stp	x0, x1, [sp]	;# tmp1626,
	ldp	x7, x8, [x5]	;#, hva2sv8_d
	ldp	x5, x6, [x4]	;#, hva2sv8_c
	ldp	x3, x4, [x3]	;#, hva2sv8_b
	ldp	x1, x2, [x2]	;#, hva2sv8_a
	adrp	x0, .LC44	;# tmp1627,
	add	x0, x0, :lo12:.LC44	;#, tmp1627,
	adrp	x9, __imp_use_va_args_many_hva_2_short_vector_8_bytes	;# tmp1630,
	add	x9, x9, :lo12:__imp_use_va_args_many_hva_2_short_vector_8_bytes	;# tmp1629, tmp1630,
	ldr	x9, [x9]	;# tmp1628,
	blr	x9		;# tmp1628
	str	w0, [sp, 2268]	;#, actual
	ldr	w2, [sp, 2268]	;#, actual
	adrp	x0, .LC44	;# tmp1631,
	add	x1, x0, :lo12:.LC44	;#, tmp1631,
	adrp	x0, .LC63	;# tmp1632,
	add	x0, x0, :lo12:.LC63	;#, tmp1632,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2268]	;# tmp1633, actual
	mov	w0, 6763	;# tmp1634,
	cmp	w1, w0	;# tmp1633, tmp1634
	beq	.L372		;#,
	ldr	w0, [sp, 2428]	;# tmp1636, failures
	add	w0, w0, 1	;# failures_306, tmp1636,
	str	w0, [sp, 2428]	;# failures_306, failures
	ldr	w2, [sp, 2268]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp1637,
	add	x0, x0, :lo12:.LC64	;#, tmp1637,
	bl	__mingw_printf		;#
.L372:
;# varargs-use-dll.c:494:   TEST (few_hva_4_short_vector_8_bytes, 3, hva4sv8_a, hva4sv8_b);
	adrp	x0, hva4sv8_a	;# tmp1639,
	add	x1, x0, :lo12:hva4sv8_a	;# tmp1638, tmp1639,
	add	x0, sp, 1936	;# tmp1640,,
	ldr	q30, [x1]	;# tmp1642, hva4sv8_a
	ldr	q31, [x1, 16]	;# tmp1643, hva4sv8_a
	str	q30, [x0]	;# tmp1642,
	str	q31, [x0, 16]	;# tmp1643,
	adrp	x0, hva4sv8_b	;# tmp1645,
	add	x1, x0, :lo12:hva4sv8_b	;# tmp1644, tmp1645,
	add	x0, sp, 1968	;# tmp1646,,
	ldr	q30, [x1]	;# tmp1648, hva4sv8_b
	ldr	q31, [x1, 16]	;# tmp1649, hva4sv8_b
	str	q30, [x0]	;# tmp1648,
	str	q31, [x0, 16]	;# tmp1649,
	add	x1, sp, 1968	;# tmp1650,,
	add	x0, sp, 1936	;# tmp1651,,
	mov	x2, x1	;#, tmp1650
	mov	x1, x0	;#, tmp1651
	adrp	x0, .LC45	;# tmp1652,
	add	x0, x0, :lo12:.LC45	;#, tmp1652,
	adrp	x3, __imp_use_va_args_few_hva_4_short_vector_8_bytes	;# tmp1655,
	add	x3, x3, :lo12:__imp_use_va_args_few_hva_4_short_vector_8_bytes	;# tmp1654, tmp1655,
	ldr	x3, [x3]	;# tmp1653,
	blr	x3		;# tmp1653
	str	w0, [sp, 2264]	;#, actual
	ldr	w2, [sp, 2264]	;#, actual
	adrp	x0, .LC45	;# tmp1656,
	add	x1, x0, :lo12:.LC45	;#, tmp1656,
	adrp	x0, .LC63	;# tmp1657,
	add	x0, x0, :lo12:.LC63	;#, tmp1657,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2264]	;# tmp1658, actual
	cmp	w0, 3	;# tmp1658,
	beq	.L373		;#,
	ldr	w0, [sp, 2428]	;# tmp1660, failures
	add	w0, w0, 1	;# failures_311, tmp1660,
	str	w0, [sp, 2428]	;# failures_311, failures
	ldr	w2, [sp, 2264]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp1661,
	add	x0, x0, :lo12:.LC64	;#, tmp1661,
	bl	__mingw_printf		;#
.L373:
;# varargs-use-dll.c:495:   TEST (several_hva_4_short_vector_8_bytes, 142, hva4sv8_a, hva4sv8_b,
	adrp	x0, hva4sv8_a	;# tmp1663,
	add	x1, x0, :lo12:hva4sv8_a	;# tmp1662, tmp1663,
	add	x0, sp, 1936	;# tmp1664,,
	ldr	q30, [x1]	;# tmp1666, hva4sv8_a
	ldr	q31, [x1, 16]	;# tmp1667, hva4sv8_a
	str	q30, [x0]	;# tmp1666,
	str	q31, [x0, 16]	;# tmp1667,
	adrp	x0, hva4sv8_b	;# tmp1669,
	add	x1, x0, :lo12:hva4sv8_b	;# tmp1668, tmp1669,
	add	x0, sp, 1968	;# tmp1670,,
	ldr	q30, [x1]	;# tmp1672, hva4sv8_b
	ldr	q31, [x1, 16]	;# tmp1673, hva4sv8_b
	str	q30, [x0]	;# tmp1672,
	str	q31, [x0, 16]	;# tmp1673,
	adrp	x0, hva4sv8_c	;# tmp1675,
	add	x1, x0, :lo12:hva4sv8_c	;# tmp1674, tmp1675,
	add	x0, sp, 1872	;# tmp1676,,
	ldr	q30, [x1]	;# tmp1678, hva4sv8_c
	ldr	q31, [x1, 16]	;# tmp1679, hva4sv8_c
	str	q30, [x0]	;# tmp1678,
	str	q31, [x0, 16]	;# tmp1679,
	adrp	x0, hva4sv8_d	;# tmp1681,
	add	x1, x0, :lo12:hva4sv8_d	;# tmp1680, tmp1681,
	add	x0, sp, 1904	;# tmp1682,,
	ldr	q30, [x1]	;# tmp1684, hva4sv8_d
	ldr	q31, [x1, 16]	;# tmp1685, hva4sv8_d
	str	q30, [x0]	;# tmp1684,
	str	q31, [x0, 16]	;# tmp1685,
	adrp	x0, hva4sv8_e	;# tmp1687,
	add	x1, x0, :lo12:hva4sv8_e	;# tmp1686, tmp1687,
	add	x0, sp, 1808	;# tmp1688,,
	ldr	q30, [x1]	;# tmp1690, hva4sv8_e
	ldr	q31, [x1, 16]	;# tmp1691, hva4sv8_e
	str	q30, [x0]	;# tmp1690,
	str	q31, [x0, 16]	;# tmp1691,
	adrp	x0, hva4sv8_f	;# tmp1693,
	add	x1, x0, :lo12:hva4sv8_f	;# tmp1692, tmp1693,
	add	x0, sp, 1840	;# tmp1694,,
	ldr	q30, [x1]	;# tmp1696, hva4sv8_f
	ldr	q31, [x1, 16]	;# tmp1697, hva4sv8_f
	str	q30, [x0]	;# tmp1696,
	str	q31, [x0, 16]	;# tmp1697,
	adrp	x0, hva4sv8_g	;# tmp1699,
	add	x1, x0, :lo12:hva4sv8_g	;# tmp1698, tmp1699,
	add	x0, sp, 1744	;# tmp1700,,
	ldr	q30, [x1]	;# tmp1702, hva4sv8_g
	ldr	q31, [x1, 16]	;# tmp1703, hva4sv8_g
	str	q30, [x0]	;# tmp1702,
	str	q31, [x0, 16]	;# tmp1703,
	adrp	x0, hva4sv8_h	;# tmp1705,
	add	x1, x0, :lo12:hva4sv8_h	;# tmp1704, tmp1705,
	add	x0, sp, 1776	;# tmp1706,,
	ldr	q30, [x1]	;# tmp1708, hva4sv8_h
	ldr	q31, [x1, 16]	;# tmp1709, hva4sv8_h
	str	q30, [x0]	;# tmp1708,
	str	q31, [x0, 16]	;# tmp1709,
	adrp	x0, hva4sv8_i	;# tmp1711,
	add	x1, x0, :lo12:hva4sv8_i	;# tmp1710, tmp1711,
	add	x0, sp, 1680	;# tmp1712,,
	ldr	q30, [x1]	;# tmp1714, hva4sv8_i
	ldr	q31, [x1, 16]	;# tmp1715, hva4sv8_i
	str	q30, [x0]	;# tmp1714,
	str	q31, [x0, 16]	;# tmp1715,
	add	x7, sp, 1744	;# tmp1716,,
	add	x6, sp, 1840	;# tmp1717,,
	add	x5, sp, 1808	;# tmp1718,,
	add	x4, sp, 1904	;# tmp1719,,
	add	x3, sp, 1872	;# tmp1720,,
	add	x2, sp, 1968	;# tmp1721,,
	add	x1, sp, 1936	;# tmp1722,,
	add	x0, sp, 1680	;# tmp1723,,
	str	x0, [sp, 8]	;# tmp1723,
	add	x0, sp, 1776	;# tmp1724,,
	str	x0, [sp]	;# tmp1724,
	adrp	x0, .LC46	;# tmp1725,
	add	x0, x0, :lo12:.LC46	;#, tmp1725,
	adrp	x8, __imp_use_va_args_several_hva_4_short_vector_8_bytes	;# tmp1728,
	add	x8, x8, :lo12:__imp_use_va_args_several_hva_4_short_vector_8_bytes	;# tmp1727, tmp1728,
	ldr	x8, [x8]	;# tmp1726,
	blr	x8		;# tmp1726
	str	w0, [sp, 2260]	;#, actual
	ldr	w2, [sp, 2260]	;#, actual
	adrp	x0, .LC46	;# tmp1729,
	add	x1, x0, :lo12:.LC46	;#, tmp1729,
	adrp	x0, .LC63	;# tmp1730,
	add	x0, x0, :lo12:.LC63	;#, tmp1730,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2260]	;# tmp1731, actual
	cmp	w0, 142	;# tmp1731,
	beq	.L374		;#,
	ldr	w0, [sp, 2428]	;# tmp1733, failures
	add	w0, w0, 1	;# failures_316, tmp1733,
	str	w0, [sp, 2428]	;# failures_316, failures
	ldr	w2, [sp, 2260]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp1734,
	add	x0, x0, :lo12:.LC64	;#, tmp1734,
	bl	__mingw_printf		;#
.L374:
;# varargs-use-dll.c:498:   TEST (many_hva_4_short_vector_8_bytes, 6763, hva4sv8_a, hva4sv8_b, hva4sv8_c,
	adrp	x0, hva4sv8_a	;# tmp1736,
	add	x1, x0, :lo12:hva4sv8_a	;# tmp1735, tmp1736,
	add	x0, sp, 1936	;# tmp1737,,
	ldr	q30, [x1]	;# tmp1739, hva4sv8_a
	ldr	q31, [x1, 16]	;# tmp1740, hva4sv8_a
	str	q30, [x0]	;# tmp1739,
	str	q31, [x0, 16]	;# tmp1740,
	adrp	x0, hva4sv8_b	;# tmp1742,
	add	x1, x0, :lo12:hva4sv8_b	;# tmp1741, tmp1742,
	add	x0, sp, 1968	;# tmp1743,,
	ldr	q30, [x1]	;# tmp1745, hva4sv8_b
	ldr	q31, [x1, 16]	;# tmp1746, hva4sv8_b
	str	q30, [x0]	;# tmp1745,
	str	q31, [x0, 16]	;# tmp1746,
	adrp	x0, hva4sv8_c	;# tmp1748,
	add	x1, x0, :lo12:hva4sv8_c	;# tmp1747, tmp1748,
	add	x0, sp, 1872	;# tmp1749,,
	ldr	q30, [x1]	;# tmp1751, hva4sv8_c
	ldr	q31, [x1, 16]	;# tmp1752, hva4sv8_c
	str	q30, [x0]	;# tmp1751,
	str	q31, [x0, 16]	;# tmp1752,
	adrp	x0, hva4sv8_d	;# tmp1754,
	add	x1, x0, :lo12:hva4sv8_d	;# tmp1753, tmp1754,
	add	x0, sp, 1904	;# tmp1755,,
	ldr	q30, [x1]	;# tmp1757, hva4sv8_d
	ldr	q31, [x1, 16]	;# tmp1758, hva4sv8_d
	str	q30, [x0]	;# tmp1757,
	str	q31, [x0, 16]	;# tmp1758,
	adrp	x0, hva4sv8_e	;# tmp1760,
	add	x1, x0, :lo12:hva4sv8_e	;# tmp1759, tmp1760,
	add	x0, sp, 1808	;# tmp1761,,
	ldr	q30, [x1]	;# tmp1763, hva4sv8_e
	ldr	q31, [x1, 16]	;# tmp1764, hva4sv8_e
	str	q30, [x0]	;# tmp1763,
	str	q31, [x0, 16]	;# tmp1764,
	adrp	x0, hva4sv8_f	;# tmp1766,
	add	x1, x0, :lo12:hva4sv8_f	;# tmp1765, tmp1766,
	add	x0, sp, 1840	;# tmp1767,,
	ldr	q30, [x1]	;# tmp1769, hva4sv8_f
	ldr	q31, [x1, 16]	;# tmp1770, hva4sv8_f
	str	q30, [x0]	;# tmp1769,
	str	q31, [x0, 16]	;# tmp1770,
	adrp	x0, hva4sv8_g	;# tmp1772,
	add	x1, x0, :lo12:hva4sv8_g	;# tmp1771, tmp1772,
	add	x0, sp, 1744	;# tmp1773,,
	ldr	q30, [x1]	;# tmp1775, hva4sv8_g
	ldr	q31, [x1, 16]	;# tmp1776, hva4sv8_g
	str	q30, [x0]	;# tmp1775,
	str	q31, [x0, 16]	;# tmp1776,
	adrp	x0, hva4sv8_h	;# tmp1778,
	add	x1, x0, :lo12:hva4sv8_h	;# tmp1777, tmp1778,
	add	x0, sp, 1776	;# tmp1779,,
	ldr	q30, [x1]	;# tmp1781, hva4sv8_h
	ldr	q31, [x1, 16]	;# tmp1782, hva4sv8_h
	str	q30, [x0]	;# tmp1781,
	str	q31, [x0, 16]	;# tmp1782,
	adrp	x0, hva4sv8_i	;# tmp1784,
	add	x1, x0, :lo12:hva4sv8_i	;# tmp1783, tmp1784,
	add	x0, sp, 1680	;# tmp1785,,
	ldr	q30, [x1]	;# tmp1787, hva4sv8_i
	ldr	q31, [x1, 16]	;# tmp1788, hva4sv8_i
	str	q30, [x0]	;# tmp1787,
	str	q31, [x0, 16]	;# tmp1788,
	adrp	x0, hva4sv8_j	;# tmp1790,
	add	x1, x0, :lo12:hva4sv8_j	;# tmp1789, tmp1790,
	add	x0, sp, 1712	;# tmp1791,,
	ldr	q30, [x1]	;# tmp1793, hva4sv8_j
	ldr	q31, [x1, 16]	;# tmp1794, hva4sv8_j
	str	q30, [x0]	;# tmp1793,
	str	q31, [x0, 16]	;# tmp1794,
	adrp	x0, hva4sv8_k	;# tmp1796,
	add	x1, x0, :lo12:hva4sv8_k	;# tmp1795, tmp1796,
	add	x0, sp, 1616	;# tmp1797,,
	ldr	q30, [x1]	;# tmp1799, hva4sv8_k
	ldr	q31, [x1, 16]	;# tmp1800, hva4sv8_k
	str	q30, [x0]	;# tmp1799,
	str	q31, [x0, 16]	;# tmp1800,
	adrp	x0, hva4sv8_l	;# tmp1802,
	add	x1, x0, :lo12:hva4sv8_l	;# tmp1801, tmp1802,
	add	x0, sp, 1648	;# tmp1803,,
	ldr	q30, [x1]	;# tmp1805, hva4sv8_l
	ldr	q31, [x1, 16]	;# tmp1806, hva4sv8_l
	str	q30, [x0]	;# tmp1805,
	str	q31, [x0, 16]	;# tmp1806,
	adrp	x0, hva4sv8_m	;# tmp1808,
	add	x1, x0, :lo12:hva4sv8_m	;# tmp1807, tmp1808,
	add	x0, sp, 2000	;# tmp1809,,
	ldr	q30, [x1]	;# tmp1811, hva4sv8_m
	ldr	q31, [x1, 16]	;# tmp1812, hva4sv8_m
	str	q30, [x0]	;# tmp1811,
	str	q31, [x0, 16]	;# tmp1812,
	adrp	x0, hva4sv8_n	;# tmp1814,
	add	x1, x0, :lo12:hva4sv8_n	;# tmp1813, tmp1814,
	add	x0, sp, 2032	;# tmp1815,,
	ldr	q30, [x1]	;# tmp1817, hva4sv8_n
	ldr	q31, [x1, 16]	;# tmp1818, hva4sv8_n
	str	q30, [x0]	;# tmp1817,
	str	q31, [x0, 16]	;# tmp1818,
	adrp	x0, hva4sv8_o	;# tmp1820,
	add	x1, x0, :lo12:hva4sv8_o	;# tmp1819, tmp1820,
	add	x0, sp, 2064	;# tmp1821,,
	ldr	q30, [x1]	;# tmp1823, hva4sv8_o
	ldr	q31, [x1, 16]	;# tmp1824, hva4sv8_o
	str	q30, [x0]	;# tmp1823,
	str	q31, [x0, 16]	;# tmp1824,
	adrp	x0, hva4sv8_p	;# tmp1826,
	add	x1, x0, :lo12:hva4sv8_p	;# tmp1825, tmp1826,
	add	x0, sp, 2096	;# tmp1827,,
	ldr	q30, [x1]	;# tmp1829, hva4sv8_p
	ldr	q31, [x1, 16]	;# tmp1830, hva4sv8_p
	str	q30, [x0]	;# tmp1829,
	str	q31, [x0, 16]	;# tmp1830,
	adrp	x0, hva4sv8_q	;# tmp1832,
	add	x1, x0, :lo12:hva4sv8_q	;# tmp1831, tmp1832,
	add	x0, sp, 2128	;# tmp1833,,
	ldr	q30, [x1]	;# tmp1835, hva4sv8_q
	ldr	q31, [x1, 16]	;# tmp1836, hva4sv8_q
	str	q30, [x0]	;# tmp1835,
	str	q31, [x0, 16]	;# tmp1836,
	add	x7, sp, 1744	;# tmp1837,,
	add	x6, sp, 1840	;# tmp1838,,
	add	x5, sp, 1808	;# tmp1839,,
	add	x4, sp, 1904	;# tmp1840,,
	add	x3, sp, 1872	;# tmp1841,,
	add	x2, sp, 1968	;# tmp1842,,
	add	x1, sp, 1936	;# tmp1843,,
	add	x0, sp, 2128	;# tmp1844,,
	str	x0, [sp, 72]	;# tmp1844,
	add	x0, sp, 2096	;# tmp1845,,
	str	x0, [sp, 64]	;# tmp1845,
	add	x0, sp, 2064	;# tmp1846,,
	str	x0, [sp, 56]	;# tmp1846,
	add	x0, sp, 2032	;# tmp1847,,
	str	x0, [sp, 48]	;# tmp1847,
	add	x0, sp, 2000	;# tmp1848,,
	str	x0, [sp, 40]	;# tmp1848,
	add	x0, sp, 1648	;# tmp1849,,
	str	x0, [sp, 32]	;# tmp1849,
	add	x0, sp, 1616	;# tmp1850,,
	str	x0, [sp, 24]	;# tmp1850,
	add	x0, sp, 1712	;# tmp1851,,
	str	x0, [sp, 16]	;# tmp1851,
	add	x0, sp, 1680	;# tmp1852,,
	str	x0, [sp, 8]	;# tmp1852,
	add	x0, sp, 1776	;# tmp1853,,
	str	x0, [sp]	;# tmp1853,
	adrp	x0, .LC47	;# tmp1854,
	add	x0, x0, :lo12:.LC47	;#, tmp1854,
	adrp	x8, __imp_use_va_args_many_hva_4_short_vector_8_bytes	;# tmp1857,
	add	x8, x8, :lo12:__imp_use_va_args_many_hva_4_short_vector_8_bytes	;# tmp1856, tmp1857,
	ldr	x8, [x8]	;# tmp1855,
	blr	x8		;# tmp1855
	str	w0, [sp, 2256]	;#, actual
	ldr	w2, [sp, 2256]	;#, actual
	adrp	x0, .LC47	;# tmp1858,
	add	x1, x0, :lo12:.LC47	;#, tmp1858,
	adrp	x0, .LC63	;# tmp1859,
	add	x0, x0, :lo12:.LC63	;#, tmp1859,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2256]	;# tmp1860, actual
	mov	w0, 6763	;# tmp1861,
	cmp	w1, w0	;# tmp1860, tmp1861
	beq	.L375		;#,
	ldr	w0, [sp, 2428]	;# tmp1863, failures
	add	w0, w0, 1	;# failures_321, tmp1863,
	str	w0, [sp, 2428]	;# failures_321, failures
	ldr	w2, [sp, 2256]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp1864,
	add	x0, x0, :lo12:.LC64	;#, tmp1864,
	bl	__mingw_printf		;#
.L375:
;# varargs-use-dll.c:503:   TEST (few_hva_2_short_vector_16_bytes, 3, hva2sv16_a, hva2sv16_b);
	adrp	x0, hva2sv16_a	;# tmp1866,
	add	x1, x0, :lo12:hva2sv16_a	;# tmp1865, tmp1866,
	add	x0, sp, 1936	;# tmp1867,,
	ldr	q30, [x1]	;# tmp1869, hva2sv16_a
	ldr	q31, [x1, 16]	;# tmp1870, hva2sv16_a
	str	q30, [x0]	;# tmp1869,
	str	q31, [x0, 16]	;# tmp1870,
	adrp	x0, hva2sv16_b	;# tmp1872,
	add	x1, x0, :lo12:hva2sv16_b	;# tmp1871, tmp1872,
	add	x0, sp, 1968	;# tmp1873,,
	ldr	q30, [x1]	;# tmp1875, hva2sv16_b
	ldr	q31, [x1, 16]	;# tmp1876, hva2sv16_b
	str	q30, [x0]	;# tmp1875,
	str	q31, [x0, 16]	;# tmp1876,
	add	x1, sp, 1968	;# tmp1877,,
	add	x0, sp, 1936	;# tmp1878,,
	mov	x2, x1	;#, tmp1877
	mov	x1, x0	;#, tmp1878
	adrp	x0, .LC48	;# tmp1879,
	add	x0, x0, :lo12:.LC48	;#, tmp1879,
	adrp	x3, __imp_use_va_args_few_hva_2_short_vector_16_bytes	;# tmp1882,
	add	x3, x3, :lo12:__imp_use_va_args_few_hva_2_short_vector_16_bytes	;# tmp1881, tmp1882,
	ldr	x3, [x3]	;# tmp1880,
	blr	x3		;# tmp1880
	str	w0, [sp, 2252]	;#, actual
	ldr	w2, [sp, 2252]	;#, actual
	adrp	x0, .LC48	;# tmp1883,
	add	x1, x0, :lo12:.LC48	;#, tmp1883,
	adrp	x0, .LC63	;# tmp1884,
	add	x0, x0, :lo12:.LC63	;#, tmp1884,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2252]	;# tmp1885, actual
	cmp	w0, 3	;# tmp1885,
	beq	.L376		;#,
	ldr	w0, [sp, 2428]	;# tmp1887, failures
	add	w0, w0, 1	;# failures_326, tmp1887,
	str	w0, [sp, 2428]	;# failures_326, failures
	ldr	w2, [sp, 2252]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp1888,
	add	x0, x0, :lo12:.LC64	;#, tmp1888,
	bl	__mingw_printf		;#
.L376:
;# varargs-use-dll.c:504:   TEST (several_hva_2_short_vector_16_bytes, 142, hva2sv16_a, hva2sv16_b,
	adrp	x0, hva2sv16_a	;# tmp1890,
	add	x1, x0, :lo12:hva2sv16_a	;# tmp1889, tmp1890,
	add	x0, sp, 1936	;# tmp1891,,
	ldr	q30, [x1]	;# tmp1893, hva2sv16_a
	ldr	q31, [x1, 16]	;# tmp1894, hva2sv16_a
	str	q30, [x0]	;# tmp1893,
	str	q31, [x0, 16]	;# tmp1894,
	adrp	x0, hva2sv16_b	;# tmp1896,
	add	x1, x0, :lo12:hva2sv16_b	;# tmp1895, tmp1896,
	add	x0, sp, 1968	;# tmp1897,,
	ldr	q30, [x1]	;# tmp1899, hva2sv16_b
	ldr	q31, [x1, 16]	;# tmp1900, hva2sv16_b
	str	q30, [x0]	;# tmp1899,
	str	q31, [x0, 16]	;# tmp1900,
	adrp	x0, hva2sv16_c	;# tmp1902,
	add	x1, x0, :lo12:hva2sv16_c	;# tmp1901, tmp1902,
	add	x0, sp, 1872	;# tmp1903,,
	ldr	q30, [x1]	;# tmp1905, hva2sv16_c
	ldr	q31, [x1, 16]	;# tmp1906, hva2sv16_c
	str	q30, [x0]	;# tmp1905,
	str	q31, [x0, 16]	;# tmp1906,
	adrp	x0, hva2sv16_d	;# tmp1908,
	add	x1, x0, :lo12:hva2sv16_d	;# tmp1907, tmp1908,
	add	x0, sp, 1904	;# tmp1909,,
	ldr	q30, [x1]	;# tmp1911, hva2sv16_d
	ldr	q31, [x1, 16]	;# tmp1912, hva2sv16_d
	str	q30, [x0]	;# tmp1911,
	str	q31, [x0, 16]	;# tmp1912,
	adrp	x0, hva2sv16_e	;# tmp1914,
	add	x1, x0, :lo12:hva2sv16_e	;# tmp1913, tmp1914,
	add	x0, sp, 1808	;# tmp1915,,
	ldr	q30, [x1]	;# tmp1917, hva2sv16_e
	ldr	q31, [x1, 16]	;# tmp1918, hva2sv16_e
	str	q30, [x0]	;# tmp1917,
	str	q31, [x0, 16]	;# tmp1918,
	adrp	x0, hva2sv16_f	;# tmp1920,
	add	x1, x0, :lo12:hva2sv16_f	;# tmp1919, tmp1920,
	add	x0, sp, 1840	;# tmp1921,,
	ldr	q30, [x1]	;# tmp1923, hva2sv16_f
	ldr	q31, [x1, 16]	;# tmp1924, hva2sv16_f
	str	q30, [x0]	;# tmp1923,
	str	q31, [x0, 16]	;# tmp1924,
	adrp	x0, hva2sv16_g	;# tmp1926,
	add	x1, x0, :lo12:hva2sv16_g	;# tmp1925, tmp1926,
	add	x0, sp, 1744	;# tmp1927,,
	ldr	q30, [x1]	;# tmp1929, hva2sv16_g
	ldr	q31, [x1, 16]	;# tmp1930, hva2sv16_g
	str	q30, [x0]	;# tmp1929,
	str	q31, [x0, 16]	;# tmp1930,
	adrp	x0, hva2sv16_h	;# tmp1932,
	add	x1, x0, :lo12:hva2sv16_h	;# tmp1931, tmp1932,
	add	x0, sp, 1776	;# tmp1933,,
	ldr	q30, [x1]	;# tmp1935, hva2sv16_h
	ldr	q31, [x1, 16]	;# tmp1936, hva2sv16_h
	str	q30, [x0]	;# tmp1935,
	str	q31, [x0, 16]	;# tmp1936,
	adrp	x0, hva2sv16_i	;# tmp1938,
	add	x1, x0, :lo12:hva2sv16_i	;# tmp1937, tmp1938,
	add	x0, sp, 1680	;# tmp1939,,
	ldr	q30, [x1]	;# tmp1941, hva2sv16_i
	ldr	q31, [x1, 16]	;# tmp1942, hva2sv16_i
	str	q30, [x0]	;# tmp1941,
	str	q31, [x0, 16]	;# tmp1942,
	add	x7, sp, 1744	;# tmp1943,,
	add	x6, sp, 1840	;# tmp1944,,
	add	x5, sp, 1808	;# tmp1945,,
	add	x4, sp, 1904	;# tmp1946,,
	add	x3, sp, 1872	;# tmp1947,,
	add	x2, sp, 1968	;# tmp1948,,
	add	x1, sp, 1936	;# tmp1949,,
	add	x0, sp, 1680	;# tmp1950,,
	str	x0, [sp, 8]	;# tmp1950,
	add	x0, sp, 1776	;# tmp1951,,
	str	x0, [sp]	;# tmp1951,
	adrp	x0, .LC49	;# tmp1952,
	add	x0, x0, :lo12:.LC49	;#, tmp1952,
	adrp	x8, __imp_use_va_args_several_hva_2_short_vector_16_bytes	;# tmp1955,
	add	x8, x8, :lo12:__imp_use_va_args_several_hva_2_short_vector_16_bytes	;# tmp1954, tmp1955,
	ldr	x8, [x8]	;# tmp1953,
	blr	x8		;# tmp1953
	str	w0, [sp, 2248]	;#, actual
	ldr	w2, [sp, 2248]	;#, actual
	adrp	x0, .LC49	;# tmp1956,
	add	x1, x0, :lo12:.LC49	;#, tmp1956,
	adrp	x0, .LC63	;# tmp1957,
	add	x0, x0, :lo12:.LC63	;#, tmp1957,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2248]	;# tmp1958, actual
	cmp	w0, 142	;# tmp1958,
	beq	.L377		;#,
	ldr	w0, [sp, 2428]	;# tmp1960, failures
	add	w0, w0, 1	;# failures_331, tmp1960,
	str	w0, [sp, 2428]	;# failures_331, failures
	ldr	w2, [sp, 2248]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp1961,
	add	x0, x0, :lo12:.LC64	;#, tmp1961,
	bl	__mingw_printf		;#
.L377:
;# varargs-use-dll.c:507:   TEST (many_hva_2_short_vector_16_bytes, 6763, hva2sv16_a, hva2sv16_b,
	adrp	x0, hva2sv16_a	;# tmp1963,
	add	x1, x0, :lo12:hva2sv16_a	;# tmp1962, tmp1963,
	add	x0, sp, 1936	;# tmp1964,,
	ldr	q30, [x1]	;# tmp1966, hva2sv16_a
	ldr	q31, [x1, 16]	;# tmp1967, hva2sv16_a
	str	q30, [x0]	;# tmp1966,
	str	q31, [x0, 16]	;# tmp1967,
	adrp	x0, hva2sv16_b	;# tmp1969,
	add	x1, x0, :lo12:hva2sv16_b	;# tmp1968, tmp1969,
	add	x0, sp, 1968	;# tmp1970,,
	ldr	q30, [x1]	;# tmp1972, hva2sv16_b
	ldr	q31, [x1, 16]	;# tmp1973, hva2sv16_b
	str	q30, [x0]	;# tmp1972,
	str	q31, [x0, 16]	;# tmp1973,
	adrp	x0, hva2sv16_c	;# tmp1975,
	add	x1, x0, :lo12:hva2sv16_c	;# tmp1974, tmp1975,
	add	x0, sp, 1872	;# tmp1976,,
	ldr	q30, [x1]	;# tmp1978, hva2sv16_c
	ldr	q31, [x1, 16]	;# tmp1979, hva2sv16_c
	str	q30, [x0]	;# tmp1978,
	str	q31, [x0, 16]	;# tmp1979,
	adrp	x0, hva2sv16_d	;# tmp1981,
	add	x1, x0, :lo12:hva2sv16_d	;# tmp1980, tmp1981,
	add	x0, sp, 1904	;# tmp1982,,
	ldr	q30, [x1]	;# tmp1984, hva2sv16_d
	ldr	q31, [x1, 16]	;# tmp1985, hva2sv16_d
	str	q30, [x0]	;# tmp1984,
	str	q31, [x0, 16]	;# tmp1985,
	adrp	x0, hva2sv16_e	;# tmp1987,
	add	x1, x0, :lo12:hva2sv16_e	;# tmp1986, tmp1987,
	add	x0, sp, 1808	;# tmp1988,,
	ldr	q30, [x1]	;# tmp1990, hva2sv16_e
	ldr	q31, [x1, 16]	;# tmp1991, hva2sv16_e
	str	q30, [x0]	;# tmp1990,
	str	q31, [x0, 16]	;# tmp1991,
	adrp	x0, hva2sv16_f	;# tmp1993,
	add	x1, x0, :lo12:hva2sv16_f	;# tmp1992, tmp1993,
	add	x0, sp, 1840	;# tmp1994,,
	ldr	q30, [x1]	;# tmp1996, hva2sv16_f
	ldr	q31, [x1, 16]	;# tmp1997, hva2sv16_f
	str	q30, [x0]	;# tmp1996,
	str	q31, [x0, 16]	;# tmp1997,
	adrp	x0, hva2sv16_g	;# tmp1999,
	add	x1, x0, :lo12:hva2sv16_g	;# tmp1998, tmp1999,
	add	x0, sp, 1744	;# tmp2000,,
	ldr	q30, [x1]	;# tmp2002, hva2sv16_g
	ldr	q31, [x1, 16]	;# tmp2003, hva2sv16_g
	str	q30, [x0]	;# tmp2002,
	str	q31, [x0, 16]	;# tmp2003,
	adrp	x0, hva2sv16_h	;# tmp2005,
	add	x1, x0, :lo12:hva2sv16_h	;# tmp2004, tmp2005,
	add	x0, sp, 1776	;# tmp2006,,
	ldr	q30, [x1]	;# tmp2008, hva2sv16_h
	ldr	q31, [x1, 16]	;# tmp2009, hva2sv16_h
	str	q30, [x0]	;# tmp2008,
	str	q31, [x0, 16]	;# tmp2009,
	adrp	x0, hva2sv16_i	;# tmp2011,
	add	x1, x0, :lo12:hva2sv16_i	;# tmp2010, tmp2011,
	add	x0, sp, 1680	;# tmp2012,,
	ldr	q30, [x1]	;# tmp2014, hva2sv16_i
	ldr	q31, [x1, 16]	;# tmp2015, hva2sv16_i
	str	q30, [x0]	;# tmp2014,
	str	q31, [x0, 16]	;# tmp2015,
	adrp	x0, hva2sv16_j	;# tmp2017,
	add	x1, x0, :lo12:hva2sv16_j	;# tmp2016, tmp2017,
	add	x0, sp, 1712	;# tmp2018,,
	ldr	q30, [x1]	;# tmp2020, hva2sv16_j
	ldr	q31, [x1, 16]	;# tmp2021, hva2sv16_j
	str	q30, [x0]	;# tmp2020,
	str	q31, [x0, 16]	;# tmp2021,
	adrp	x0, hva2sv16_k	;# tmp2023,
	add	x1, x0, :lo12:hva2sv16_k	;# tmp2022, tmp2023,
	add	x0, sp, 1616	;# tmp2024,,
	ldr	q30, [x1]	;# tmp2026, hva2sv16_k
	ldr	q31, [x1, 16]	;# tmp2027, hva2sv16_k
	str	q30, [x0]	;# tmp2026,
	str	q31, [x0, 16]	;# tmp2027,
	adrp	x0, hva2sv16_l	;# tmp2029,
	add	x1, x0, :lo12:hva2sv16_l	;# tmp2028, tmp2029,
	add	x0, sp, 1648	;# tmp2030,,
	ldr	q30, [x1]	;# tmp2032, hva2sv16_l
	ldr	q31, [x1, 16]	;# tmp2033, hva2sv16_l
	str	q30, [x0]	;# tmp2032,
	str	q31, [x0, 16]	;# tmp2033,
	adrp	x0, hva2sv16_m	;# tmp2035,
	add	x1, x0, :lo12:hva2sv16_m	;# tmp2034, tmp2035,
	add	x0, sp, 2000	;# tmp2036,,
	ldr	q30, [x1]	;# tmp2038, hva2sv16_m
	ldr	q31, [x1, 16]	;# tmp2039, hva2sv16_m
	str	q30, [x0]	;# tmp2038,
	str	q31, [x0, 16]	;# tmp2039,
	adrp	x0, hva2sv16_n	;# tmp2041,
	add	x1, x0, :lo12:hva2sv16_n	;# tmp2040, tmp2041,
	add	x0, sp, 2032	;# tmp2042,,
	ldr	q30, [x1]	;# tmp2044, hva2sv16_n
	ldr	q31, [x1, 16]	;# tmp2045, hva2sv16_n
	str	q30, [x0]	;# tmp2044,
	str	q31, [x0, 16]	;# tmp2045,
	adrp	x0, hva2sv16_o	;# tmp2047,
	add	x1, x0, :lo12:hva2sv16_o	;# tmp2046, tmp2047,
	add	x0, sp, 2064	;# tmp2048,,
	ldr	q30, [x1]	;# tmp2050, hva2sv16_o
	ldr	q31, [x1, 16]	;# tmp2051, hva2sv16_o
	str	q30, [x0]	;# tmp2050,
	str	q31, [x0, 16]	;# tmp2051,
	adrp	x0, hva2sv16_p	;# tmp2053,
	add	x1, x0, :lo12:hva2sv16_p	;# tmp2052, tmp2053,
	add	x0, sp, 2096	;# tmp2054,,
	ldr	q30, [x1]	;# tmp2056, hva2sv16_p
	ldr	q31, [x1, 16]	;# tmp2057, hva2sv16_p
	str	q30, [x0]	;# tmp2056,
	str	q31, [x0, 16]	;# tmp2057,
	adrp	x0, hva2sv16_q	;# tmp2059,
	add	x1, x0, :lo12:hva2sv16_q	;# tmp2058, tmp2059,
	add	x0, sp, 2128	;# tmp2060,,
	ldr	q30, [x1]	;# tmp2062, hva2sv16_q
	ldr	q31, [x1, 16]	;# tmp2063, hva2sv16_q
	str	q30, [x0]	;# tmp2062,
	str	q31, [x0, 16]	;# tmp2063,
	add	x7, sp, 1744	;# tmp2064,,
	add	x6, sp, 1840	;# tmp2065,,
	add	x5, sp, 1808	;# tmp2066,,
	add	x4, sp, 1904	;# tmp2067,,
	add	x3, sp, 1872	;# tmp2068,,
	add	x2, sp, 1968	;# tmp2069,,
	add	x1, sp, 1936	;# tmp2070,,
	add	x0, sp, 2128	;# tmp2071,,
	str	x0, [sp, 72]	;# tmp2071,
	add	x0, sp, 2096	;# tmp2072,,
	str	x0, [sp, 64]	;# tmp2072,
	add	x0, sp, 2064	;# tmp2073,,
	str	x0, [sp, 56]	;# tmp2073,
	add	x0, sp, 2032	;# tmp2074,,
	str	x0, [sp, 48]	;# tmp2074,
	add	x0, sp, 2000	;# tmp2075,,
	str	x0, [sp, 40]	;# tmp2075,
	add	x0, sp, 1648	;# tmp2076,,
	str	x0, [sp, 32]	;# tmp2076,
	add	x0, sp, 1616	;# tmp2077,,
	str	x0, [sp, 24]	;# tmp2077,
	add	x0, sp, 1712	;# tmp2078,,
	str	x0, [sp, 16]	;# tmp2078,
	add	x0, sp, 1680	;# tmp2079,,
	str	x0, [sp, 8]	;# tmp2079,
	add	x0, sp, 1776	;# tmp2080,,
	str	x0, [sp]	;# tmp2080,
	adrp	x0, .LC50	;# tmp2081,
	add	x0, x0, :lo12:.LC50	;#, tmp2081,
	adrp	x8, __imp_use_va_args_many_hva_2_short_vector_16_bytes	;# tmp2084,
	add	x8, x8, :lo12:__imp_use_va_args_many_hva_2_short_vector_16_bytes	;# tmp2083, tmp2084,
	ldr	x8, [x8]	;# tmp2082,
	blr	x8		;# tmp2082
	str	w0, [sp, 2244]	;#, actual
	ldr	w2, [sp, 2244]	;#, actual
	adrp	x0, .LC50	;# tmp2085,
	add	x1, x0, :lo12:.LC50	;#, tmp2085,
	adrp	x0, .LC63	;# tmp2086,
	add	x0, x0, :lo12:.LC63	;#, tmp2086,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2244]	;# tmp2087, actual
	mov	w0, 6763	;# tmp2088,
	cmp	w1, w0	;# tmp2087, tmp2088
	beq	.L378		;#,
	ldr	w0, [sp, 2428]	;# tmp2090, failures
	add	w0, w0, 1	;# failures_336, tmp2090,
	str	w0, [sp, 2428]	;# failures_336, failures
	ldr	w2, [sp, 2244]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp2091,
	add	x0, x0, :lo12:.LC64	;#, tmp2091,
	bl	__mingw_printf		;#
.L378:
;# varargs-use-dll.c:512:   TEST (few_hva_4_short_vector_16_bytes, 3, hva4sv16_a, hva4sv16_b);
	adrp	x0, hva4sv16_a	;# tmp2093,
	add	x1, x0, :lo12:hva4sv16_a	;# tmp2092, tmp2093,
	add	x0, sp, 1552	;# tmp2094,,
	ldr	q28, [x1]	;# tmp2096, hva4sv16_a
	ldr	q29, [x1, 16]	;# tmp2097, hva4sv16_a
	ldr	q30, [x1, 32]	;# tmp2098, hva4sv16_a
	ldr	q31, [x1, 48]	;# tmp2099, hva4sv16_a
	str	q28, [x0]	;# tmp2096,
	str	q29, [x0, 16]	;# tmp2097,
	str	q30, [x0, 32]	;# tmp2098,
	str	q31, [x0, 48]	;# tmp2099,
	adrp	x0, hva4sv16_b	;# tmp2101,
	add	x1, x0, :lo12:hva4sv16_b	;# tmp2100, tmp2101,
	add	x0, sp, 1488	;# tmp2102,,
	ldr	q28, [x1]	;# tmp2104, hva4sv16_b
	ldr	q29, [x1, 16]	;# tmp2105, hva4sv16_b
	ldr	q30, [x1, 32]	;# tmp2106, hva4sv16_b
	ldr	q31, [x1, 48]	;# tmp2107, hva4sv16_b
	str	q28, [x0]	;# tmp2104,
	str	q29, [x0, 16]	;# tmp2105,
	str	q30, [x0, 32]	;# tmp2106,
	str	q31, [x0, 48]	;# tmp2107,
	add	x1, sp, 1488	;# tmp2108,,
	add	x0, sp, 1552	;# tmp2109,,
	mov	x2, x1	;#, tmp2108
	mov	x1, x0	;#, tmp2109
	adrp	x0, .LC51	;# tmp2110,
	add	x0, x0, :lo12:.LC51	;#, tmp2110,
	adrp	x3, __imp_use_va_args_few_hva_4_short_vector_16_bytes	;# tmp2113,
	add	x3, x3, :lo12:__imp_use_va_args_few_hva_4_short_vector_16_bytes	;# tmp2112, tmp2113,
	ldr	x3, [x3]	;# tmp2111,
	blr	x3		;# tmp2111
	str	w0, [sp, 2240]	;#, actual
	ldr	w2, [sp, 2240]	;#, actual
	adrp	x0, .LC51	;# tmp2114,
	add	x1, x0, :lo12:.LC51	;#, tmp2114,
	adrp	x0, .LC63	;# tmp2115,
	add	x0, x0, :lo12:.LC63	;#, tmp2115,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2240]	;# tmp2116, actual
	cmp	w0, 3	;# tmp2116,
	beq	.L379		;#,
	ldr	w0, [sp, 2428]	;# tmp2118, failures
	add	w0, w0, 1	;# failures_341, tmp2118,
	str	w0, [sp, 2428]	;# failures_341, failures
	ldr	w2, [sp, 2240]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp2119,
	add	x0, x0, :lo12:.LC64	;#, tmp2119,
	bl	__mingw_printf		;#
.L379:
;# varargs-use-dll.c:513:   TEST (several_hva_4_short_vector_16_bytes, 142, hva4sv16_a, hva4sv16_b,
	adrp	x0, hva4sv16_a	;# tmp2121,
	add	x1, x0, :lo12:hva4sv16_a	;# tmp2120, tmp2121,
	add	x0, sp, 1552	;# tmp2122,,
	ldr	q28, [x1]	;# tmp2124, hva4sv16_a
	ldr	q29, [x1, 16]	;# tmp2125, hva4sv16_a
	ldr	q30, [x1, 32]	;# tmp2126, hva4sv16_a
	ldr	q31, [x1, 48]	;# tmp2127, hva4sv16_a
	str	q28, [x0]	;# tmp2124,
	str	q29, [x0, 16]	;# tmp2125,
	str	q30, [x0, 32]	;# tmp2126,
	str	q31, [x0, 48]	;# tmp2127,
	adrp	x0, hva4sv16_b	;# tmp2129,
	add	x1, x0, :lo12:hva4sv16_b	;# tmp2128, tmp2129,
	add	x0, sp, 1488	;# tmp2130,,
	ldr	q28, [x1]	;# tmp2132, hva4sv16_b
	ldr	q29, [x1, 16]	;# tmp2133, hva4sv16_b
	ldr	q30, [x1, 32]	;# tmp2134, hva4sv16_b
	ldr	q31, [x1, 48]	;# tmp2135, hva4sv16_b
	str	q28, [x0]	;# tmp2132,
	str	q29, [x0, 16]	;# tmp2133,
	str	q30, [x0, 32]	;# tmp2134,
	str	q31, [x0, 48]	;# tmp2135,
	adrp	x0, hva4sv16_c	;# tmp2137,
	add	x1, x0, :lo12:hva4sv16_c	;# tmp2136, tmp2137,
	add	x0, sp, 1424	;# tmp2138,,
	ldr	q28, [x1]	;# tmp2140, hva4sv16_c
	ldr	q29, [x1, 16]	;# tmp2141, hva4sv16_c
	ldr	q30, [x1, 32]	;# tmp2142, hva4sv16_c
	ldr	q31, [x1, 48]	;# tmp2143, hva4sv16_c
	str	q28, [x0]	;# tmp2140,
	str	q29, [x0, 16]	;# tmp2141,
	str	q30, [x0, 32]	;# tmp2142,
	str	q31, [x0, 48]	;# tmp2143,
	adrp	x0, hva4sv16_d	;# tmp2145,
	add	x1, x0, :lo12:hva4sv16_d	;# tmp2144, tmp2145,
	add	x0, sp, 1360	;# tmp2146,,
	ldr	q28, [x1]	;# tmp2148, hva4sv16_d
	ldr	q29, [x1, 16]	;# tmp2149, hva4sv16_d
	ldr	q30, [x1, 32]	;# tmp2150, hva4sv16_d
	ldr	q31, [x1, 48]	;# tmp2151, hva4sv16_d
	str	q28, [x0]	;# tmp2148,
	str	q29, [x0, 16]	;# tmp2149,
	str	q30, [x0, 32]	;# tmp2150,
	str	q31, [x0, 48]	;# tmp2151,
	adrp	x0, hva4sv16_e	;# tmp2153,
	add	x1, x0, :lo12:hva4sv16_e	;# tmp2152, tmp2153,
	add	x0, sp, 1296	;# tmp2154,,
	ldr	q28, [x1]	;# tmp2156, hva4sv16_e
	ldr	q29, [x1, 16]	;# tmp2157, hva4sv16_e
	ldr	q30, [x1, 32]	;# tmp2158, hva4sv16_e
	ldr	q31, [x1, 48]	;# tmp2159, hva4sv16_e
	str	q28, [x0]	;# tmp2156,
	str	q29, [x0, 16]	;# tmp2157,
	str	q30, [x0, 32]	;# tmp2158,
	str	q31, [x0, 48]	;# tmp2159,
	adrp	x0, hva4sv16_f	;# tmp2161,
	add	x1, x0, :lo12:hva4sv16_f	;# tmp2160, tmp2161,
	add	x0, sp, 1232	;# tmp2162,,
	ldr	q28, [x1]	;# tmp2164, hva4sv16_f
	ldr	q29, [x1, 16]	;# tmp2165, hva4sv16_f
	ldr	q30, [x1, 32]	;# tmp2166, hva4sv16_f
	ldr	q31, [x1, 48]	;# tmp2167, hva4sv16_f
	str	q28, [x0]	;# tmp2164,
	str	q29, [x0, 16]	;# tmp2165,
	str	q30, [x0, 32]	;# tmp2166,
	str	q31, [x0, 48]	;# tmp2167,
	adrp	x0, hva4sv16_g	;# tmp2169,
	add	x1, x0, :lo12:hva4sv16_g	;# tmp2168, tmp2169,
	add	x0, sp, 1168	;# tmp2170,,
	ldr	q28, [x1]	;# tmp2172, hva4sv16_g
	ldr	q29, [x1, 16]	;# tmp2173, hva4sv16_g
	ldr	q30, [x1, 32]	;# tmp2174, hva4sv16_g
	ldr	q31, [x1, 48]	;# tmp2175, hva4sv16_g
	str	q28, [x0]	;# tmp2172,
	str	q29, [x0, 16]	;# tmp2173,
	str	q30, [x0, 32]	;# tmp2174,
	str	q31, [x0, 48]	;# tmp2175,
	adrp	x0, hva4sv16_h	;# tmp2177,
	add	x1, x0, :lo12:hva4sv16_h	;# tmp2176, tmp2177,
	add	x0, sp, 1104	;# tmp2178,,
	ldr	q28, [x1]	;# tmp2180, hva4sv16_h
	ldr	q29, [x1, 16]	;# tmp2181, hva4sv16_h
	ldr	q30, [x1, 32]	;# tmp2182, hva4sv16_h
	ldr	q31, [x1, 48]	;# tmp2183, hva4sv16_h
	str	q28, [x0]	;# tmp2180,
	str	q29, [x0, 16]	;# tmp2181,
	str	q30, [x0, 32]	;# tmp2182,
	str	q31, [x0, 48]	;# tmp2183,
	adrp	x0, hva4sv16_i	;# tmp2185,
	add	x1, x0, :lo12:hva4sv16_i	;# tmp2184, tmp2185,
	add	x0, sp, 1040	;# tmp2186,,
	ldr	q28, [x1]	;# tmp2188, hva4sv16_i
	ldr	q29, [x1, 16]	;# tmp2189, hva4sv16_i
	ldr	q30, [x1, 32]	;# tmp2190, hva4sv16_i
	ldr	q31, [x1, 48]	;# tmp2191, hva4sv16_i
	str	q28, [x0]	;# tmp2188,
	str	q29, [x0, 16]	;# tmp2189,
	str	q30, [x0, 32]	;# tmp2190,
	str	q31, [x0, 48]	;# tmp2191,
	add	x7, sp, 1168	;# tmp2192,,
	add	x6, sp, 1232	;# tmp2193,,
	add	x5, sp, 1296	;# tmp2194,,
	add	x4, sp, 1360	;# tmp2195,,
	add	x3, sp, 1424	;# tmp2196,,
	add	x2, sp, 1488	;# tmp2197,,
	add	x1, sp, 1552	;# tmp2198,,
	add	x0, sp, 1040	;# tmp2199,,
	str	x0, [sp, 8]	;# tmp2199,
	add	x0, sp, 1104	;# tmp2200,,
	str	x0, [sp]	;# tmp2200,
	adrp	x0, .LC52	;# tmp2201,
	add	x0, x0, :lo12:.LC52	;#, tmp2201,
	adrp	x8, __imp_use_va_args_several_hva_4_short_vector_16_bytes	;# tmp2204,
	add	x8, x8, :lo12:__imp_use_va_args_several_hva_4_short_vector_16_bytes	;# tmp2203, tmp2204,
	ldr	x8, [x8]	;# tmp2202,
	blr	x8		;# tmp2202
	str	w0, [sp, 2236]	;#, actual
	ldr	w2, [sp, 2236]	;#, actual
	adrp	x0, .LC52	;# tmp2205,
	add	x1, x0, :lo12:.LC52	;#, tmp2205,
	adrp	x0, .LC63	;# tmp2206,
	add	x0, x0, :lo12:.LC63	;#, tmp2206,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 2236]	;# tmp2207, actual
	cmp	w0, 142	;# tmp2207,
	beq	.L380		;#,
	ldr	w0, [sp, 2428]	;# tmp2209, failures
	add	w0, w0, 1	;# failures_346, tmp2209,
	str	w0, [sp, 2428]	;# failures_346, failures
	ldr	w2, [sp, 2236]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp2210,
	add	x0, x0, :lo12:.LC64	;#, tmp2210,
	bl	__mingw_printf		;#
.L380:
;# varargs-use-dll.c:516:   TEST (many_hva_4_short_vector_16_bytes, 6763, hva4sv16_a, hva4sv16_b,
	adrp	x0, hva4sv16_a	;# tmp2212,
	add	x1, x0, :lo12:hva4sv16_a	;# tmp2211, tmp2212,
	add	x0, sp, 1552	;# tmp2213,,
	ldr	q28, [x1]	;# tmp2215, hva4sv16_a
	ldr	q29, [x1, 16]	;# tmp2216, hva4sv16_a
	ldr	q30, [x1, 32]	;# tmp2217, hva4sv16_a
	ldr	q31, [x1, 48]	;# tmp2218, hva4sv16_a
	str	q28, [x0]	;# tmp2215,
	str	q29, [x0, 16]	;# tmp2216,
	str	q30, [x0, 32]	;# tmp2217,
	str	q31, [x0, 48]	;# tmp2218,
	adrp	x0, hva4sv16_b	;# tmp2220,
	add	x1, x0, :lo12:hva4sv16_b	;# tmp2219, tmp2220,
	add	x0, sp, 1488	;# tmp2221,,
	ldr	q28, [x1]	;# tmp2223, hva4sv16_b
	ldr	q29, [x1, 16]	;# tmp2224, hva4sv16_b
	ldr	q30, [x1, 32]	;# tmp2225, hva4sv16_b
	ldr	q31, [x1, 48]	;# tmp2226, hva4sv16_b
	str	q28, [x0]	;# tmp2223,
	str	q29, [x0, 16]	;# tmp2224,
	str	q30, [x0, 32]	;# tmp2225,
	str	q31, [x0, 48]	;# tmp2226,
	adrp	x0, hva4sv16_c	;# tmp2228,
	add	x1, x0, :lo12:hva4sv16_c	;# tmp2227, tmp2228,
	add	x0, sp, 1424	;# tmp2229,,
	ldr	q28, [x1]	;# tmp2231, hva4sv16_c
	ldr	q29, [x1, 16]	;# tmp2232, hva4sv16_c
	ldr	q30, [x1, 32]	;# tmp2233, hva4sv16_c
	ldr	q31, [x1, 48]	;# tmp2234, hva4sv16_c
	str	q28, [x0]	;# tmp2231,
	str	q29, [x0, 16]	;# tmp2232,
	str	q30, [x0, 32]	;# tmp2233,
	str	q31, [x0, 48]	;# tmp2234,
	adrp	x0, hva4sv16_d	;# tmp2236,
	add	x1, x0, :lo12:hva4sv16_d	;# tmp2235, tmp2236,
	add	x0, sp, 1360	;# tmp2237,,
	ldr	q28, [x1]	;# tmp2239, hva4sv16_d
	ldr	q29, [x1, 16]	;# tmp2240, hva4sv16_d
	ldr	q30, [x1, 32]	;# tmp2241, hva4sv16_d
	ldr	q31, [x1, 48]	;# tmp2242, hva4sv16_d
	str	q28, [x0]	;# tmp2239,
	str	q29, [x0, 16]	;# tmp2240,
	str	q30, [x0, 32]	;# tmp2241,
	str	q31, [x0, 48]	;# tmp2242,
	adrp	x0, hva4sv16_e	;# tmp2244,
	add	x1, x0, :lo12:hva4sv16_e	;# tmp2243, tmp2244,
	add	x0, sp, 1296	;# tmp2245,,
	ldr	q28, [x1]	;# tmp2247, hva4sv16_e
	ldr	q29, [x1, 16]	;# tmp2248, hva4sv16_e
	ldr	q30, [x1, 32]	;# tmp2249, hva4sv16_e
	ldr	q31, [x1, 48]	;# tmp2250, hva4sv16_e
	str	q28, [x0]	;# tmp2247,
	str	q29, [x0, 16]	;# tmp2248,
	str	q30, [x0, 32]	;# tmp2249,
	str	q31, [x0, 48]	;# tmp2250,
	adrp	x0, hva4sv16_f	;# tmp2252,
	add	x1, x0, :lo12:hva4sv16_f	;# tmp2251, tmp2252,
	add	x0, sp, 1232	;# tmp2253,,
	ldr	q28, [x1]	;# tmp2255, hva4sv16_f
	ldr	q29, [x1, 16]	;# tmp2256, hva4sv16_f
	ldr	q30, [x1, 32]	;# tmp2257, hva4sv16_f
	ldr	q31, [x1, 48]	;# tmp2258, hva4sv16_f
	str	q28, [x0]	;# tmp2255,
	str	q29, [x0, 16]	;# tmp2256,
	str	q30, [x0, 32]	;# tmp2257,
	str	q31, [x0, 48]	;# tmp2258,
	adrp	x0, hva4sv16_g	;# tmp2260,
	add	x1, x0, :lo12:hva4sv16_g	;# tmp2259, tmp2260,
	add	x0, sp, 1168	;# tmp2261,,
	ldr	q28, [x1]	;# tmp2263, hva4sv16_g
	ldr	q29, [x1, 16]	;# tmp2264, hva4sv16_g
	ldr	q30, [x1, 32]	;# tmp2265, hva4sv16_g
	ldr	q31, [x1, 48]	;# tmp2266, hva4sv16_g
	str	q28, [x0]	;# tmp2263,
	str	q29, [x0, 16]	;# tmp2264,
	str	q30, [x0, 32]	;# tmp2265,
	str	q31, [x0, 48]	;# tmp2266,
	adrp	x0, hva4sv16_h	;# tmp2268,
	add	x1, x0, :lo12:hva4sv16_h	;# tmp2267, tmp2268,
	add	x0, sp, 1104	;# tmp2269,,
	ldr	q28, [x1]	;# tmp2271, hva4sv16_h
	ldr	q29, [x1, 16]	;# tmp2272, hva4sv16_h
	ldr	q30, [x1, 32]	;# tmp2273, hva4sv16_h
	ldr	q31, [x1, 48]	;# tmp2274, hva4sv16_h
	str	q28, [x0]	;# tmp2271,
	str	q29, [x0, 16]	;# tmp2272,
	str	q30, [x0, 32]	;# tmp2273,
	str	q31, [x0, 48]	;# tmp2274,
	adrp	x0, hva4sv16_i	;# tmp2276,
	add	x1, x0, :lo12:hva4sv16_i	;# tmp2275, tmp2276,
	add	x0, sp, 1040	;# tmp2277,,
	ldr	q28, [x1]	;# tmp2279, hva4sv16_i
	ldr	q29, [x1, 16]	;# tmp2280, hva4sv16_i
	ldr	q30, [x1, 32]	;# tmp2281, hva4sv16_i
	ldr	q31, [x1, 48]	;# tmp2282, hva4sv16_i
	str	q28, [x0]	;# tmp2279,
	str	q29, [x0, 16]	;# tmp2280,
	str	q30, [x0, 32]	;# tmp2281,
	str	q31, [x0, 48]	;# tmp2282,
	adrp	x0, hva4sv16_j	;# tmp2284,
	add	x1, x0, :lo12:hva4sv16_j	;# tmp2283, tmp2284,
	add	x0, sp, 976	;# tmp2285,,
	ldr	q28, [x1]	;# tmp2287, hva4sv16_j
	ldr	q29, [x1, 16]	;# tmp2288, hva4sv16_j
	ldr	q30, [x1, 32]	;# tmp2289, hva4sv16_j
	ldr	q31, [x1, 48]	;# tmp2290, hva4sv16_j
	str	q28, [x0]	;# tmp2287,
	str	q29, [x0, 16]	;# tmp2288,
	str	q30, [x0, 32]	;# tmp2289,
	str	q31, [x0, 48]	;# tmp2290,
	adrp	x0, hva4sv16_k	;# tmp2292,
	add	x1, x0, :lo12:hva4sv16_k	;# tmp2291, tmp2292,
	add	x0, sp, 912	;# tmp2293,,
	ldr	q28, [x1]	;# tmp2295, hva4sv16_k
	ldr	q29, [x1, 16]	;# tmp2296, hva4sv16_k
	ldr	q30, [x1, 32]	;# tmp2297, hva4sv16_k
	ldr	q31, [x1, 48]	;# tmp2298, hva4sv16_k
	str	q28, [x0]	;# tmp2295,
	str	q29, [x0, 16]	;# tmp2296,
	str	q30, [x0, 32]	;# tmp2297,
	str	q31, [x0, 48]	;# tmp2298,
	adrp	x0, hva4sv16_l	;# tmp2300,
	add	x1, x0, :lo12:hva4sv16_l	;# tmp2299, tmp2300,
	add	x0, sp, 848	;# tmp2301,,
	ldr	q28, [x1]	;# tmp2303, hva4sv16_l
	ldr	q29, [x1, 16]	;# tmp2304, hva4sv16_l
	ldr	q30, [x1, 32]	;# tmp2305, hva4sv16_l
	ldr	q31, [x1, 48]	;# tmp2306, hva4sv16_l
	str	q28, [x0]	;# tmp2303,
	str	q29, [x0, 16]	;# tmp2304,
	str	q30, [x0, 32]	;# tmp2305,
	str	q31, [x0, 48]	;# tmp2306,
	adrp	x0, hva4sv16_m	;# tmp2308,
	add	x1, x0, :lo12:hva4sv16_m	;# tmp2307, tmp2308,
	add	x0, sp, 784	;# tmp2309,,
	ldr	q28, [x1]	;# tmp2311, hva4sv16_m
	ldr	q29, [x1, 16]	;# tmp2312, hva4sv16_m
	ldr	q30, [x1, 32]	;# tmp2313, hva4sv16_m
	ldr	q31, [x1, 48]	;# tmp2314, hva4sv16_m
	str	q28, [x0]	;# tmp2311,
	str	q29, [x0, 16]	;# tmp2312,
	str	q30, [x0, 32]	;# tmp2313,
	str	q31, [x0, 48]	;# tmp2314,
	adrp	x0, hva4sv16_n	;# tmp2316,
	add	x1, x0, :lo12:hva4sv16_n	;# tmp2315, tmp2316,
	add	x0, sp, 720	;# tmp2317,,
	ldr	q28, [x1]	;# tmp2319, hva4sv16_n
	ldr	q29, [x1, 16]	;# tmp2320, hva4sv16_n
	ldr	q30, [x1, 32]	;# tmp2321, hva4sv16_n
	ldr	q31, [x1, 48]	;# tmp2322, hva4sv16_n
	str	q28, [x0]	;# tmp2319,
	str	q29, [x0, 16]	;# tmp2320,
	str	q30, [x0, 32]	;# tmp2321,
	str	q31, [x0, 48]	;# tmp2322,
	adrp	x0, hva4sv16_o	;# tmp2324,
	add	x1, x0, :lo12:hva4sv16_o	;# tmp2323, tmp2324,
	add	x0, sp, 656	;# tmp2325,,
	ldr	q28, [x1]	;# tmp2327, hva4sv16_o
	ldr	q29, [x1, 16]	;# tmp2328, hva4sv16_o
	ldr	q30, [x1, 32]	;# tmp2329, hva4sv16_o
	ldr	q31, [x1, 48]	;# tmp2330, hva4sv16_o
	str	q28, [x0]	;# tmp2327,
	str	q29, [x0, 16]	;# tmp2328,
	str	q30, [x0, 32]	;# tmp2329,
	str	q31, [x0, 48]	;# tmp2330,
	adrp	x0, hva4sv16_p	;# tmp2332,
	add	x1, x0, :lo12:hva4sv16_p	;# tmp2331, tmp2332,
	add	x0, sp, 592	;# tmp2333,,
	ldr	q28, [x1]	;# tmp2335, hva4sv16_p
	ldr	q29, [x1, 16]	;# tmp2336, hva4sv16_p
	ldr	q30, [x1, 32]	;# tmp2337, hva4sv16_p
	ldr	q31, [x1, 48]	;# tmp2338, hva4sv16_p
	str	q28, [x0]	;# tmp2335,
	str	q29, [x0, 16]	;# tmp2336,
	str	q30, [x0, 32]	;# tmp2337,
	str	q31, [x0, 48]	;# tmp2338,
	adrp	x0, hva4sv16_q	;# tmp2340,
	add	x1, x0, :lo12:hva4sv16_q	;# tmp2339, tmp2340,
	add	x0, sp, 528	;# tmp2341,,
	ldr	q28, [x1]	;# tmp2343, hva4sv16_q
	ldr	q29, [x1, 16]	;# tmp2344, hva4sv16_q
	ldr	q30, [x1, 32]	;# tmp2345, hva4sv16_q
	ldr	q31, [x1, 48]	;# tmp2346, hva4sv16_q
	str	q28, [x0]	;# tmp2343,
	str	q29, [x0, 16]	;# tmp2344,
	str	q30, [x0, 32]	;# tmp2345,
	str	q31, [x0, 48]	;# tmp2346,
	add	x7, sp, 1168	;# tmp2347,,
	add	x6, sp, 1232	;# tmp2348,,
	add	x5, sp, 1296	;# tmp2349,,
	add	x4, sp, 1360	;# tmp2350,,
	add	x3, sp, 1424	;# tmp2351,,
	add	x2, sp, 1488	;# tmp2352,,
	add	x1, sp, 1552	;# tmp2353,,
	add	x0, sp, 528	;# tmp2354,,
	str	x0, [sp, 72]	;# tmp2354,
	add	x0, sp, 592	;# tmp2355,,
	str	x0, [sp, 64]	;# tmp2355,
	add	x0, sp, 656	;# tmp2356,,
	str	x0, [sp, 56]	;# tmp2356,
	add	x0, sp, 720	;# tmp2357,,
	str	x0, [sp, 48]	;# tmp2357,
	add	x0, sp, 784	;# tmp2358,,
	str	x0, [sp, 40]	;# tmp2358,
	add	x0, sp, 848	;# tmp2359,,
	str	x0, [sp, 32]	;# tmp2359,
	add	x0, sp, 912	;# tmp2360,,
	str	x0, [sp, 24]	;# tmp2360,
	add	x0, sp, 976	;# tmp2361,,
	str	x0, [sp, 16]	;# tmp2361,
	add	x0, sp, 1040	;# tmp2362,,
	str	x0, [sp, 8]	;# tmp2362,
	add	x0, sp, 1104	;# tmp2363,,
	str	x0, [sp]	;# tmp2363,
	adrp	x0, .LC53	;# tmp2364,
	add	x0, x0, :lo12:.LC53	;#, tmp2364,
	adrp	x8, __imp_use_va_args_many_hva_4_short_vector_16_bytes	;# tmp2367,
	add	x8, x8, :lo12:__imp_use_va_args_many_hva_4_short_vector_16_bytes	;# tmp2366, tmp2367,
	ldr	x8, [x8]	;# tmp2365,
	blr	x8		;# tmp2365
	str	w0, [sp, 2232]	;#, actual
	ldr	w2, [sp, 2232]	;#, actual
	adrp	x0, .LC53	;# tmp2368,
	add	x1, x0, :lo12:.LC53	;#, tmp2368,
	adrp	x0, .LC63	;# tmp2369,
	add	x0, x0, :lo12:.LC63	;#, tmp2369,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2232]	;# tmp2370, actual
	mov	w0, 6763	;# tmp2371,
	cmp	w1, w0	;# tmp2370, tmp2371
	beq	.L381		;#,
	ldr	w0, [sp, 2428]	;# tmp2373, failures
	add	w0, w0, 1	;# failures_351, tmp2373,
	str	w0, [sp, 2428]	;# failures_351, failures
	ldr	w2, [sp, 2232]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp2374,
	add	x0, x0, :lo12:.LC64	;#, tmp2374,
	bl	__mingw_printf		;#
.L381:
;# varargs-use-dll.c:521:   TEST (ints_and_composites, 6763, 1, 2L, c, 5, 8L, f, 21, 34L, i, 89, 144L, l,
	adrp	x0, c	;# tmp2376,
	add	x1, x0, :lo12:c	;# tmp2375, tmp2376,
	add	x0, sp, 1552	;# tmp2377,,
	ldr	q28, [x1]	;# tmp2379, c
	ldr	q29, [x1, 16]	;# tmp2380, c
	ldr	q30, [x1, 32]	;# tmp2381, c
	ldr	q31, [x1, 48]	;# tmp2382, c
	str	q28, [x0]	;# tmp2379,
	str	q29, [x0, 16]	;# tmp2380,
	str	q30, [x0, 32]	;# tmp2381,
	str	q31, [x0, 48]	;# tmp2382,
	adrp	x0, f	;# tmp2384,
	add	x1, x0, :lo12:f	;# tmp2383, tmp2384,
	add	x0, sp, 1488	;# tmp2385,,
	ldr	q28, [x1]	;# tmp2387, f
	ldr	q29, [x1, 16]	;# tmp2388, f
	ldr	q30, [x1, 32]	;# tmp2389, f
	ldr	q31, [x1, 48]	;# tmp2390, f
	str	q28, [x0]	;# tmp2387,
	str	q29, [x0, 16]	;# tmp2388,
	str	q30, [x0, 32]	;# tmp2389,
	str	q31, [x0, 48]	;# tmp2390,
	adrp	x0, i	;# tmp2392,
	add	x1, x0, :lo12:i	;# tmp2391, tmp2392,
	add	x0, sp, 1424	;# tmp2393,,
	ldr	q28, [x1]	;# tmp2395, i
	ldr	q29, [x1, 16]	;# tmp2396, i
	ldr	q30, [x1, 32]	;# tmp2397, i
	ldr	q31, [x1, 48]	;# tmp2398, i
	str	q28, [x0]	;# tmp2395,
	str	q29, [x0, 16]	;# tmp2396,
	str	q30, [x0, 32]	;# tmp2397,
	str	q31, [x0, 48]	;# tmp2398,
	adrp	x0, l	;# tmp2400,
	add	x1, x0, :lo12:l	;# tmp2399, tmp2400,
	add	x0, sp, 1360	;# tmp2401,,
	ldr	q28, [x1]	;# tmp2403, l
	ldr	q29, [x1, 16]	;# tmp2404, l
	ldr	q30, [x1, 32]	;# tmp2405, l
	ldr	q31, [x1, 48]	;# tmp2406, l
	str	q28, [x0]	;# tmp2403,
	str	q29, [x0, 16]	;# tmp2404,
	str	q30, [x0, 32]	;# tmp2405,
	str	q31, [x0, 48]	;# tmp2406,
	adrp	x0, o	;# tmp2408,
	add	x1, x0, :lo12:o	;# tmp2407, tmp2408,
	add	x0, sp, 1296	;# tmp2409,,
	ldr	q28, [x1]	;# tmp2411, o
	ldr	q29, [x1, 16]	;# tmp2412, o
	ldr	q30, [x1, 32]	;# tmp2413, o
	ldr	q31, [x1, 48]	;# tmp2414, o
	str	q28, [x0]	;# tmp2411,
	str	q29, [x0, 16]	;# tmp2412,
	str	q30, [x0, 32]	;# tmp2413,
	str	q31, [x0, 48]	;# tmp2414,
	add	x2, sp, 1488	;# tmp2415,,
	add	x1, sp, 1552	;# tmp2416,,
	mov	w0, 2584	;# tmp2417,
	str	w0, [sp, 72]	;# tmp2417,
	mov	w0, 1597	;# tmp2418,
	str	w0, [sp, 64]	;# tmp2418,
	add	x0, sp, 1296	;# tmp2419,,
	str	x0, [sp, 56]	;# tmp2419,
	mov	w0, 610	;# tmp2420,
	str	w0, [sp, 48]	;# tmp2420,
	mov	w0, 377	;# tmp2421,
	str	w0, [sp, 40]	;# tmp2421,
	add	x0, sp, 1360	;# tmp2422,,
	str	x0, [sp, 32]	;# tmp2422,
	mov	w0, 144	;# tmp2423,
	str	w0, [sp, 24]	;# tmp2423,
	mov	w0, 89	;# tmp2424,
	str	w0, [sp, 16]	;# tmp2424,
	add	x0, sp, 1424	;# tmp2425,,
	str	x0, [sp, 8]	;# tmp2425,
	mov	w0, 34	;# tmp2426,
	str	w0, [sp]	;# tmp2426,
	mov	w7, 21	;#,
	mov	x6, x2	;#, tmp2415
	mov	w5, 8	;#,
	mov	w4, 5	;#,
	mov	x3, x1	;#, tmp2416
	mov	w2, 2	;#,
	mov	w1, 1	;#,
	adrp	x0, .LC54	;# tmp2427,
	add	x0, x0, :lo12:.LC54	;#, tmp2427,
	adrp	x8, __imp_use_va_args_ints_and_composites	;# tmp2430,
	add	x8, x8, :lo12:__imp_use_va_args_ints_and_composites	;# tmp2429, tmp2430,
	ldr	x8, [x8]	;# tmp2428,
	blr	x8		;# tmp2428
	str	w0, [sp, 2228]	;#, actual
	ldr	w2, [sp, 2228]	;#, actual
	adrp	x0, .LC54	;# tmp2431,
	add	x1, x0, :lo12:.LC54	;#, tmp2431,
	adrp	x0, .LC63	;# tmp2432,
	add	x0, x0, :lo12:.LC63	;#, tmp2432,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2228]	;# tmp2433, actual
	mov	w0, 6763	;# tmp2434,
	cmp	w1, w0	;# tmp2433, tmp2434
	beq	.L382		;#,
	ldr	w0, [sp, 2428]	;# tmp2436, failures
	add	w0, w0, 1	;# failures_356, tmp2436,
	str	w0, [sp, 2428]	;# failures_356, failures
	ldr	w2, [sp, 2228]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp2437,
	add	x0, x0, :lo12:.LC64	;#, tmp2437,
	bl	__mingw_printf		;#
.L382:
;# varargs-use-dll.c:523:   TEST (ints_and_floats, 6763, 1, 2L, 3.0f, 5.0, 8, 13L, 21.0f, 34.0, 55, 89L,
	mov	w0, 2584	;# tmp2438,
	str	w0, [sp, 72]	;# tmp2438,
	mov	x0, 268280837177344	;# tmp2440,
	movk	x0, 0x4098, lsl 48	;# tmp2440,,
	fmov	d31, x0	;# tmp2439, tmp2440
	str	d31, [sp, 64]	;# tmp2439,
	mov	x0, 237494511599616	;# tmp2442,
	movk	x0, 0x408e, lsl 48	;# tmp2442,,
	fmov	d31, x0	;# tmp2441, tmp2442
	str	d31, [sp, 56]	;# tmp2441,
	mov	w0, 610	;# tmp2443,
	str	w0, [sp, 48]	;# tmp2443,
	mov	w0, 377	;# tmp2444,
	str	w0, [sp, 40]	;# tmp2444,
	mov	x0, 35184372088832	;# tmp2446,
	movk	x0, 0x406d, lsl 48	;# tmp2446,,
	fmov	d31, x0	;# tmp2445, tmp2446
	str	d31, [sp, 32]	;# tmp2445,
	mov	x0, 4639270566145032192	;# tmp2448,
	fmov	d31, x0	;# tmp2447, tmp2448
	str	d31, [sp, 24]	;# tmp2447,
	mov	w0, 89	;# tmp2449,
	str	w0, [sp, 16]	;# tmp2449,
	mov	w0, 55	;# tmp2450,
	str	w0, [sp, 8]	;# tmp2450,
	mov	x0, 4629981891913580544	;# tmp2452,
	fmov	d31, x0	;# tmp2451, tmp2452
	str	d31, [sp]	;# tmp2451,
	fmov	d31, 2.1e+1	;# tmp2545,
	fmov	x7, d31	;#, tmp2545
	mov	w6, 13	;#,
	mov	w5, 8	;#,
	fmov	d31, 5.0e+0	;# tmp2546,
	fmov	x4, d31	;#, tmp2546
	fmov	d31, 3.0e+0	;# tmp2547,
	fmov	x3, d31	;#, tmp2547
	mov	w2, 2	;#,
	mov	w1, 1	;#,
	adrp	x0, .LC55	;# tmp2453,
	add	x0, x0, :lo12:.LC55	;#, tmp2453,
	adrp	x8, __imp_use_va_args_ints_and_floats	;# tmp2456,
	add	x8, x8, :lo12:__imp_use_va_args_ints_and_floats	;# tmp2455, tmp2456,
	ldr	x8, [x8]	;# tmp2454,
	blr	x8		;# tmp2454
	str	w0, [sp, 2224]	;#, actual
	ldr	w2, [sp, 2224]	;#, actual
	adrp	x0, .LC55	;# tmp2457,
	add	x1, x0, :lo12:.LC55	;#, tmp2457,
	adrp	x0, .LC63	;# tmp2458,
	add	x0, x0, :lo12:.LC63	;#, tmp2458,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2224]	;# tmp2459, actual
	mov	w0, 6763	;# tmp2460,
	cmp	w1, w0	;# tmp2459, tmp2460
	beq	.L383		;#,
	ldr	w0, [sp, 2428]	;# tmp2462, failures
	add	w0, w0, 1	;# failures_361, tmp2462,
	str	w0, [sp, 2428]	;# failures_361, failures
	ldr	w2, [sp, 2224]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp2463,
	add	x0, x0, :lo12:.LC64	;#, tmp2463,
	bl	__mingw_printf		;#
.L383:
;# varargs-use-dll.c:525:   TEST (ints_floats_and_composites, 6763, 1, 2L, 3.0f, 5.0, e, 13, 21L, 34.0f,
	adrp	x0, e	;# tmp2465,
	add	x1, x0, :lo12:e	;# tmp2464, tmp2465,
	add	x0, sp, 1552	;# tmp2466,,
	ldr	q28, [x1]	;# tmp2468, e
	ldr	q29, [x1, 16]	;# tmp2469, e
	ldr	q30, [x1, 32]	;# tmp2470, e
	ldr	q31, [x1, 48]	;# tmp2471, e
	str	q28, [x0]	;# tmp2468,
	str	q29, [x0, 16]	;# tmp2469,
	str	q30, [x0, 32]	;# tmp2470,
	str	q31, [x0, 48]	;# tmp2471,
	adrp	x0, j	;# tmp2473,
	add	x1, x0, :lo12:j	;# tmp2472, tmp2473,
	add	x0, sp, 1488	;# tmp2474,,
	ldr	q28, [x1]	;# tmp2476, j
	ldr	q29, [x1, 16]	;# tmp2477, j
	ldr	q30, [x1, 32]	;# tmp2478, j
	ldr	q31, [x1, 48]	;# tmp2479, j
	str	q28, [x0]	;# tmp2476,
	str	q29, [x0, 16]	;# tmp2477,
	str	q30, [x0, 32]	;# tmp2478,
	str	q31, [x0, 48]	;# tmp2479,
	adrp	x0, o	;# tmp2481,
	add	x1, x0, :lo12:o	;# tmp2480, tmp2481,
	add	x0, sp, 1424	;# tmp2482,,
	ldr	q28, [x1]	;# tmp2484, o
	ldr	q29, [x1, 16]	;# tmp2485, o
	ldr	q30, [x1, 32]	;# tmp2486, o
	ldr	q31, [x1, 48]	;# tmp2487, o
	str	q28, [x0]	;# tmp2484,
	str	q29, [x0, 16]	;# tmp2485,
	str	q30, [x0, 32]	;# tmp2486,
	str	q31, [x0, 48]	;# tmp2487,
	add	x1, sp, 1552	;# tmp2488,,
	mov	w0, 2584	;# tmp2489,
	str	w0, [sp, 72]	;# tmp2489,
	mov	w0, 1597	;# tmp2490,
	str	w0, [sp, 64]	;# tmp2490,
	add	x0, sp, 1424	;# tmp2491,,
	str	x0, [sp, 56]	;# tmp2491,
	mov	x0, 17592186044416	;# tmp2493,
	movk	x0, 0x4083, lsl 48	;# tmp2493,,
	fmov	d31, x0	;# tmp2492, tmp2493
	str	d31, [sp, 48]	;# tmp2492,
	mov	x0, 158329674399744	;# tmp2495,
	movk	x0, 0x4077, lsl 48	;# tmp2495,,
	fmov	d31, x0	;# tmp2494, tmp2495
	str	d31, [sp, 40]	;# tmp2494,
	mov	w0, 233	;# tmp2496,
	str	w0, [sp, 32]	;# tmp2496,
	mov	w0, 144	;# tmp2497,
	str	w0, [sp, 24]	;# tmp2497,
	add	x0, sp, 1488	;# tmp2498,,
	str	x0, [sp, 16]	;# tmp2498,
	mov	x0, 140737488355328	;# tmp2500,
	movk	x0, 0x404b, lsl 48	;# tmp2500,,
	fmov	d31, x0	;# tmp2499, tmp2500
	str	d31, [sp, 8]	;# tmp2499,
	mov	x0, 4629981891913580544	;# tmp2502,
	fmov	d31, x0	;# tmp2501, tmp2502
	str	d31, [sp]	;# tmp2501,
	mov	w7, 21	;#,
	mov	w6, 13	;#,
	mov	x5, x1	;#, tmp2488
	fmov	d31, 5.0e+0	;# tmp2548,
	fmov	x4, d31	;#, tmp2548
	fmov	d31, 3.0e+0	;# tmp2549,
	fmov	x3, d31	;#, tmp2549
	mov	w2, 2	;#,
	mov	w1, 1	;#,
	adrp	x0, .LC56	;# tmp2503,
	add	x0, x0, :lo12:.LC56	;#, tmp2503,
	adrp	x8, __imp_use_va_args_ints_floats_and_composites	;# tmp2506,
	add	x8, x8, :lo12:__imp_use_va_args_ints_floats_and_composites	;# tmp2505, tmp2506,
	ldr	x8, [x8]	;# tmp2504,
	blr	x8		;# tmp2504
	str	w0, [sp, 2220]	;#, actual
	ldr	w2, [sp, 2220]	;#, actual
	adrp	x0, .LC56	;# tmp2507,
	add	x1, x0, :lo12:.LC56	;#, tmp2507,
	adrp	x0, .LC63	;# tmp2508,
	add	x0, x0, :lo12:.LC63	;#, tmp2508,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 2220]	;# tmp2509, actual
	mov	w0, 6763	;# tmp2510,
	cmp	w1, w0	;# tmp2509, tmp2510
	beq	.L384		;#,
	ldr	w0, [sp, 2428]	;# tmp2512, failures
	add	w0, w0, 1	;# failures_366, tmp2512,
	str	w0, [sp, 2428]	;# failures_366, failures
	ldr	w2, [sp, 2220]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp2513,
	add	x0, x0, :lo12:.LC64	;#, tmp2513,
	bl	__mingw_printf		;#
.L384:
;# varargs-use-dll.c:528:   DEBUG ("\tfailures: %d\n", failures);
	ldr	w1, [sp, 2428]	;#, failures
	adrp	x0, .LC65	;# tmp2514,
	add	x0, x0, :lo12:.LC65	;#, tmp2514,
	bl	__mingw_printf		;#
;# varargs-use-dll.c:530:   return failures;
	ldr	w0, [sp, 2428]	;# _369, failures
;# varargs-use-dll.c:531: }
	add	sp, sp, 512	;#,,
	ldp	x29, x30, [sp]	;#,,
	add	sp, sp, 1920	;#,,
	ret	
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
