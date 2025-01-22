	.arch armv8-a
;# GNU C23 (GCC) version 15.0.1 20250116 (experimental) (aarch64-w64-mingw32)
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
	str	xzr, [x10, 2144]	;#,
	sub	sp, sp, #1952	;#,,
	stp	x29, x30, [sp, 80]	;#,,
	add	x29, sp, 80	;#,,
	.seh_endprologue
	str	w0, [sp, 1772]	;# argc, argc
	str	x1, [sp, 1760]	;# argv, argv
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
	str	wzr, [sp, 1948]	;#, failures
;# varargs-use-dll.c:407:   TEST (no_arguments, 165);
	adrp	x0, .LC0	;# tmp108,
	add	x0, x0, :lo12:.LC0	;#, tmp108,
	adrp	x1, __imp_use_va_args_no_arguments	;# tmp111,
	add	x1, x1, :lo12:__imp_use_va_args_no_arguments	;# tmp110, tmp111,
	ldr	x1, [x1]	;# tmp109,
	blr	x1		;# tmp109
	str	w0, [sp, 1944]	;#, actual
	ldr	w2, [sp, 1944]	;#, actual
	adrp	x0, .LC0	;# tmp112,
	add	x1, x0, :lo12:.LC0	;#, tmp112,
	adrp	x0, .LC63	;# tmp113,
	add	x0, x0, :lo12:.LC63	;#, tmp113,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1944]	;# tmp114, actual
	cmp	w0, 165	;# tmp114,
	beq	.L333		;#,
	ldr	w0, [sp, 1948]	;# tmp116, failures
	add	w0, w0, 1	;# failures_87, tmp116,
	str	w0, [sp, 1948]	;# failures_87, failures
	ldr	w2, [sp, 1944]	;#, actual
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
	str	w0, [sp, 1940]	;#, actual
	ldr	w2, [sp, 1940]	;#, actual
	adrp	x0, .LC3	;# tmp122,
	add	x1, x0, :lo12:.LC3	;#, tmp122,
	adrp	x0, .LC63	;# tmp123,
	add	x0, x0, :lo12:.LC63	;#, tmp123,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1940]	;# tmp124, actual
	cmp	w0, 142	;# tmp124,
	beq	.L334		;#,
	ldr	w0, [sp, 1948]	;# tmp126, failures
	add	w0, w0, 1	;# failures_92, tmp126,
	str	w0, [sp, 1948]	;# failures_92, failures
	ldr	w2, [sp, 1940]	;#, actual
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
	str	w0, [sp, 1936]	;#, actual
	ldr	w2, [sp, 1936]	;#, actual
	adrp	x0, .LC4	;# tmp134,
	add	x1, x0, :lo12:.LC4	;#, tmp134,
	adrp	x0, .LC63	;# tmp135,
	add	x0, x0, :lo12:.LC63	;#, tmp135,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1936]	;# tmp136, actual
	cmp	w0, 142	;# tmp136,
	beq	.L335		;#,
	ldr	w0, [sp, 1948]	;# tmp138, failures
	add	w0, w0, 1	;# failures_97, tmp138,
	str	w0, [sp, 1948]	;# failures_97, failures
	ldr	w2, [sp, 1936]	;#, actual
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
	str	w0, [sp, 1932]	;#, actual
	ldr	w2, [sp, 1932]	;#, actual
	adrp	x0, .LC5	;# tmp154,
	add	x1, x0, :lo12:.LC5	;#, tmp154,
	adrp	x0, .LC63	;# tmp155,
	add	x0, x0, :lo12:.LC63	;#, tmp155,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 1932]	;# tmp156, actual
	mov	w0, 6763	;# tmp157,
	cmp	w1, w0	;# tmp156, tmp157
	beq	.L336		;#,
	ldr	w0, [sp, 1948]	;# tmp159, failures
	add	w0, w0, 1	;# failures_102, tmp159,
	str	w0, [sp, 1948]	;# failures_102, failures
	ldr	w2, [sp, 1932]	;#, actual
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
	str	w0, [sp, 1928]	;#, actual
	ldr	w2, [sp, 1928]	;#, actual
	adrp	x0, .LC6	;# tmp165,
	add	x1, x0, :lo12:.LC6	;#, tmp165,
	adrp	x0, .LC63	;# tmp166,
	add	x0, x0, :lo12:.LC63	;#, tmp166,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1928]	;# tmp167, actual
	cmp	w0, 142	;# tmp167,
	beq	.L337		;#,
	ldr	w0, [sp, 1948]	;# tmp169, failures
	add	w0, w0, 1	;# failures_107, tmp169,
	str	w0, [sp, 1948]	;# failures_107, failures
	ldr	w2, [sp, 1928]	;#, actual
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
	str	w0, [sp, 1924]	;#, actual
	ldr	w2, [sp, 1924]	;#, actual
	adrp	x0, .LC7	;# tmp177,
	add	x1, x0, :lo12:.LC7	;#, tmp177,
	adrp	x0, .LC63	;# tmp178,
	add	x0, x0, :lo12:.LC63	;#, tmp178,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1924]	;# tmp179, actual
	cmp	w0, 142	;# tmp179,
	beq	.L338		;#,
	ldr	w0, [sp, 1948]	;# tmp181, failures
	add	w0, w0, 1	;# failures_112, tmp181,
	str	w0, [sp, 1948]	;# failures_112, failures
	ldr	w2, [sp, 1924]	;#, actual
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
	str	w0, [sp, 1920]	;#, actual
	ldr	w2, [sp, 1920]	;#, actual
	adrp	x0, .LC8	;# tmp197,
	add	x1, x0, :lo12:.LC8	;#, tmp197,
	adrp	x0, .LC63	;# tmp198,
	add	x0, x0, :lo12:.LC63	;#, tmp198,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 1920]	;# tmp199, actual
	mov	w0, 6763	;# tmp200,
	cmp	w1, w0	;# tmp199, tmp200
	beq	.L339		;#,
	ldr	w0, [sp, 1948]	;# tmp202, failures
	add	w0, w0, 1	;# failures_117, tmp202,
	str	w0, [sp, 1948]	;# failures_117, failures
	ldr	w2, [sp, 1920]	;#, actual
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
	str	w0, [sp, 1916]	;#, actual
	ldr	w2, [sp, 1916]	;#, actual
	adrp	x0, .LC9	;# tmp210,
	add	x1, x0, :lo12:.LC9	;#, tmp210,
	adrp	x0, .LC63	;# tmp211,
	add	x0, x0, :lo12:.LC63	;#, tmp211,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1916]	;# tmp212, actual
	cmp	w0, 142	;# tmp212,
	beq	.L340		;#,
	ldr	w0, [sp, 1948]	;# tmp214, failures
	add	w0, w0, 1	;# failures_122, tmp214,
	str	w0, [sp, 1948]	;# failures_122, failures
	ldr	w2, [sp, 1916]	;#, actual
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
	fmov	d31, 2.1e+1	;# tmp1785,
	fmov	x7, d31	;#, tmp1785
	fmov	d31, 1.3e+1	;# tmp1786,
	fmov	x6, d31	;#, tmp1786
	fmov	d31, 8.0e+0	;# tmp1787,
	fmov	x5, d31	;#, tmp1787
	fmov	d31, 5.0e+0	;# tmp1788,
	fmov	x4, d31	;#, tmp1788
	fmov	d31, 3.0e+0	;# tmp1789,
	fmov	x3, d31	;#, tmp1789
	fmov	d31, 2.0e+0	;# tmp1790,
	fmov	x2, d31	;#, tmp1790
	fmov	d31, 1.0e+0	;# tmp1791,
	fmov	x1, d31	;#, tmp1791
	adrp	x0, .LC10	;# tmp220,
	add	x0, x0, :lo12:.LC10	;#, tmp220,
	adrp	x8, __imp_use_va_args_several_doubles	;# tmp223,
	add	x8, x8, :lo12:__imp_use_va_args_several_doubles	;# tmp222, tmp223,
	ldr	x8, [x8]	;# tmp221,
	blr	x8		;# tmp221
	str	w0, [sp, 1912]	;#, actual
	ldr	w2, [sp, 1912]	;#, actual
	adrp	x0, .LC10	;# tmp224,
	add	x1, x0, :lo12:.LC10	;#, tmp224,
	adrp	x0, .LC63	;# tmp225,
	add	x0, x0, :lo12:.LC63	;#, tmp225,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1912]	;# tmp226, actual
	cmp	w0, 142	;# tmp226,
	beq	.L341		;#,
	ldr	w0, [sp, 1948]	;# tmp228, failures
	add	w0, w0, 1	;# failures_127, tmp228,
	str	w0, [sp, 1948]	;# failures_127, failures
	ldr	w2, [sp, 1912]	;#, actual
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
	fmov	d31, 2.1e+1	;# tmp1792,
	fmov	x7, d31	;#, tmp1792
	fmov	d31, 1.3e+1	;# tmp1793,
	fmov	x6, d31	;#, tmp1793
	fmov	d31, 8.0e+0	;# tmp1794,
	fmov	x5, d31	;#, tmp1794
	fmov	d31, 5.0e+0	;# tmp1795,
	fmov	x4, d31	;#, tmp1795
	fmov	d31, 3.0e+0	;# tmp1796,
	fmov	x3, d31	;#, tmp1796
	fmov	d31, 2.0e+0	;# tmp1797,
	fmov	x2, d31	;#, tmp1797
	fmov	d31, 1.0e+0	;# tmp1798,
	fmov	x1, d31	;#, tmp1798
	adrp	x0, .LC11	;# tmp250,
	add	x0, x0, :lo12:.LC11	;#, tmp250,
	adrp	x8, __imp_use_va_args_many_doubles	;# tmp253,
	add	x8, x8, :lo12:__imp_use_va_args_many_doubles	;# tmp252, tmp253,
	ldr	x8, [x8]	;# tmp251,
	blr	x8		;# tmp251
	str	w0, [sp, 1908]	;#, actual
	ldr	w2, [sp, 1908]	;#, actual
	adrp	x0, .LC11	;# tmp254,
	add	x1, x0, :lo12:.LC11	;#, tmp254,
	adrp	x0, .LC63	;# tmp255,
	add	x0, x0, :lo12:.LC63	;#, tmp255,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 1908]	;# tmp256, actual
	mov	w0, 6763	;# tmp257,
	cmp	w1, w0	;# tmp256, tmp257
	beq	.L342		;#,
	ldr	w0, [sp, 1948]	;# tmp259, failures
	add	w0, w0, 1	;# failures_132, tmp259,
	str	w0, [sp, 1948]	;# failures_132, failures
	ldr	w2, [sp, 1908]	;#, actual
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
	str	w0, [sp, 1904]	;#, actual
	ldr	w2, [sp, 1904]	;#, actual
	adrp	x0, .LC12	;# tmp267,
	add	x1, x0, :lo12:.LC12	;#, tmp267,
	adrp	x0, .LC63	;# tmp268,
	add	x0, x0, :lo12:.LC63	;#, tmp268,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1904]	;# tmp269, actual
	cmp	w0, 142	;# tmp269,
	beq	.L343		;#,
	ldr	w0, [sp, 1948]	;# tmp271, failures
	add	w0, w0, 1	;# failures_137, tmp271,
	str	w0, [sp, 1948]	;# failures_137, failures
	ldr	w2, [sp, 1904]	;#, actual
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
	fmov	d31, 2.1e+1	;# tmp1799,
	fmov	x7, d31	;#, tmp1799
	fmov	d31, 1.3e+1	;# tmp1800,
	fmov	x6, d31	;#, tmp1800
	fmov	d31, 8.0e+0	;# tmp1801,
	fmov	x5, d31	;#, tmp1801
	fmov	d31, 5.0e+0	;# tmp1802,
	fmov	x4, d31	;#, tmp1802
	fmov	d31, 3.0e+0	;# tmp1803,
	fmov	x3, d31	;#, tmp1803
	fmov	d31, 2.0e+0	;# tmp1804,
	fmov	x2, d31	;#, tmp1804
	fmov	d31, 1.0e+0	;# tmp1805,
	fmov	x1, d31	;#, tmp1805
	adrp	x0, .LC13	;# tmp277,
	add	x0, x0, :lo12:.LC13	;#, tmp277,
	adrp	x8, __imp_use_va_args_several_floats	;# tmp280,
	add	x8, x8, :lo12:__imp_use_va_args_several_floats	;# tmp279, tmp280,
	ldr	x8, [x8]	;# tmp278,
	blr	x8		;# tmp278
	str	w0, [sp, 1900]	;#, actual
	ldr	w2, [sp, 1900]	;#, actual
	adrp	x0, .LC13	;# tmp281,
	add	x1, x0, :lo12:.LC13	;#, tmp281,
	adrp	x0, .LC63	;# tmp282,
	add	x0, x0, :lo12:.LC63	;#, tmp282,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1900]	;# tmp283, actual
	cmp	w0, 142	;# tmp283,
	beq	.L344		;#,
	ldr	w0, [sp, 1948]	;# tmp285, failures
	add	w0, w0, 1	;# failures_142, tmp285,
	str	w0, [sp, 1948]	;# failures_142, failures
	ldr	w2, [sp, 1900]	;#, actual
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
	fmov	d31, 2.1e+1	;# tmp1806,
	fmov	x7, d31	;#, tmp1806
	fmov	d31, 1.3e+1	;# tmp1807,
	fmov	x6, d31	;#, tmp1807
	fmov	d31, 8.0e+0	;# tmp1808,
	fmov	x5, d31	;#, tmp1808
	fmov	d31, 5.0e+0	;# tmp1809,
	fmov	x4, d31	;#, tmp1809
	fmov	d31, 3.0e+0	;# tmp1810,
	fmov	x3, d31	;#, tmp1810
	fmov	d31, 2.0e+0	;# tmp1811,
	fmov	x2, d31	;#, tmp1811
	fmov	d31, 1.0e+0	;# tmp1812,
	fmov	x1, d31	;#, tmp1812
	adrp	x0, .LC14	;# tmp307,
	add	x0, x0, :lo12:.LC14	;#, tmp307,
	adrp	x8, __imp_use_va_args_many_floats	;# tmp310,
	add	x8, x8, :lo12:__imp_use_va_args_many_floats	;# tmp309, tmp310,
	ldr	x8, [x8]	;# tmp308,
	blr	x8		;# tmp308
	str	w0, [sp, 1896]	;#, actual
	ldr	w2, [sp, 1896]	;#, actual
	adrp	x0, .LC14	;# tmp311,
	add	x1, x0, :lo12:.LC14	;#, tmp311,
	adrp	x0, .LC63	;# tmp312,
	add	x0, x0, :lo12:.LC63	;#, tmp312,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 1896]	;# tmp313, actual
	mov	w0, 6763	;# tmp314,
	cmp	w1, w0	;# tmp313, tmp314
	beq	.L345		;#,
	ldr	w0, [sp, 1948]	;# tmp316, failures
	add	w0, w0, 1	;# failures_147, tmp316,
	str	w0, [sp, 1948]	;# failures_147, failures
	ldr	w2, [sp, 1896]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp317,
	add	x0, x0, :lo12:.LC64	;#, tmp317,
	bl	__mingw_printf		;#
.L345:
;# varargs-use-dll.c:431:   TEST (few_composites, 3, a, b);
	adrp	x0, a	;# tmp319,
	add	x1, x0, :lo12:a	;# tmp318, tmp319,
	add	x0, sp, 1696	;# tmp320,,
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
	add	x0, sp, 1632	;# tmp328,,
	ldr	q28, [x1]	;# tmp330, b
	ldr	q29, [x1, 16]	;# tmp331, b
	ldr	q30, [x1, 32]	;# tmp332, b
	ldr	q31, [x1, 48]	;# tmp333, b
	str	q28, [x0]	;# tmp330,
	str	q29, [x0, 16]	;# tmp331,
	str	q30, [x0, 32]	;# tmp332,
	str	q31, [x0, 48]	;# tmp333,
	add	x1, sp, 1632	;# tmp334,,
	add	x0, sp, 1696	;# tmp335,,
	mov	x2, x1	;#, tmp334
	mov	x1, x0	;#, tmp335
	adrp	x0, .LC18	;# tmp336,
	add	x0, x0, :lo12:.LC18	;#, tmp336,
	adrp	x3, __imp_use_va_args_few_composites	;# tmp339,
	add	x3, x3, :lo12:__imp_use_va_args_few_composites	;# tmp338, tmp339,
	ldr	x3, [x3]	;# tmp337,
	blr	x3		;# tmp337
	str	w0, [sp, 1892]	;#, actual
	ldr	w2, [sp, 1892]	;#, actual
	adrp	x0, .LC18	;# tmp340,
	add	x1, x0, :lo12:.LC18	;#, tmp340,
	adrp	x0, .LC63	;# tmp341,
	add	x0, x0, :lo12:.LC63	;#, tmp341,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1892]	;# tmp342, actual
	cmp	w0, 3	;# tmp342,
	beq	.L346		;#,
	ldr	w0, [sp, 1948]	;# tmp344, failures
	add	w0, w0, 1	;# failures_152, tmp344,
	str	w0, [sp, 1948]	;# failures_152, failures
	ldr	w2, [sp, 1892]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp345,
	add	x0, x0, :lo12:.LC64	;#, tmp345,
	bl	__mingw_printf		;#
.L346:
;# varargs-use-dll.c:432:   TEST (several_composites, 142, a, b, c, d, e, f, g, h, i);
	adrp	x0, a	;# tmp347,
	add	x1, x0, :lo12:a	;# tmp346, tmp347,
	add	x0, sp, 1632	;# tmp348,,
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
	add	x0, sp, 1696	;# tmp356,,
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
	add	x0, sp, 1568	;# tmp364,,
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
	add	x0, sp, 1504	;# tmp372,,
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
	add	x0, sp, 1440	;# tmp380,,
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
	add	x0, sp, 1376	;# tmp388,,
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
	add	x0, sp, 1312	;# tmp396,,
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
	add	x0, sp, 1248	;# tmp404,,
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
	add	x0, sp, 1184	;# tmp412,,
	ldr	q28, [x1]	;# tmp414, i
	ldr	q29, [x1, 16]	;# tmp415, i
	ldr	q30, [x1, 32]	;# tmp416, i
	ldr	q31, [x1, 48]	;# tmp417, i
	str	q28, [x0]	;# tmp414,
	str	q29, [x0, 16]	;# tmp415,
	str	q30, [x0, 32]	;# tmp416,
	str	q31, [x0, 48]	;# tmp417,
	add	x7, sp, 1312	;# tmp418,,
	add	x6, sp, 1376	;# tmp419,,
	add	x5, sp, 1440	;# tmp420,,
	add	x4, sp, 1504	;# tmp421,,
	add	x3, sp, 1568	;# tmp422,,
	add	x2, sp, 1696	;# tmp423,,
	add	x1, sp, 1632	;# tmp424,,
	add	x0, sp, 1184	;# tmp425,,
	str	x0, [sp, 8]	;# tmp425,
	add	x0, sp, 1248	;# tmp426,,
	str	x0, [sp]	;# tmp426,
	adrp	x0, .LC19	;# tmp427,
	add	x0, x0, :lo12:.LC19	;#, tmp427,
	adrp	x8, __imp_use_va_args_several_composites	;# tmp430,
	add	x8, x8, :lo12:__imp_use_va_args_several_composites	;# tmp429, tmp430,
	ldr	x8, [x8]	;# tmp428,
	blr	x8		;# tmp428
	str	w0, [sp, 1888]	;#, actual
	ldr	w2, [sp, 1888]	;#, actual
	adrp	x0, .LC19	;# tmp431,
	add	x1, x0, :lo12:.LC19	;#, tmp431,
	adrp	x0, .LC63	;# tmp432,
	add	x0, x0, :lo12:.LC63	;#, tmp432,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1888]	;# tmp433, actual
	cmp	w0, 142	;# tmp433,
	beq	.L347		;#,
	ldr	w0, [sp, 1948]	;# tmp435, failures
	add	w0, w0, 1	;# failures_157, tmp435,
	str	w0, [sp, 1948]	;# failures_157, failures
	ldr	w2, [sp, 1888]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp436,
	add	x0, x0, :lo12:.LC64	;#, tmp436,
	bl	__mingw_printf		;#
.L347:
;# varargs-use-dll.c:433:   TEST (many_composites, 6763, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p,
	adrp	x0, a	;# tmp438,
	add	x1, x0, :lo12:a	;# tmp437, tmp438,
	add	x0, sp, 1504	;# tmp439,,
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
	add	x0, sp, 1440	;# tmp447,,
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
	add	x0, sp, 1376	;# tmp455,,
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
	add	x0, sp, 1312	;# tmp463,,
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
	add	x0, sp, 1248	;# tmp471,,
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
	add	x0, sp, 1184	;# tmp479,,
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
	add	x0, sp, 1568	;# tmp487,,
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
	add	x0, sp, 1632	;# tmp495,,
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
	add	x0, sp, 1696	;# tmp503,,
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
	add	x0, sp, 1120	;# tmp511,,
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
	add	x0, sp, 1056	;# tmp519,,
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
	add	x0, sp, 992	;# tmp527,,
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
	add	x0, sp, 928	;# tmp535,,
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
	add	x0, sp, 864	;# tmp543,,
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
	add	x0, sp, 800	;# tmp551,,
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
	add	x0, sp, 736	;# tmp559,,
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
	add	x0, sp, 672	;# tmp567,,
	ldr	q28, [x1]	;# tmp569, q
	ldr	q29, [x1, 16]	;# tmp570, q
	ldr	q30, [x1, 32]	;# tmp571, q
	ldr	q31, [x1, 48]	;# tmp572, q
	str	q28, [x0]	;# tmp569,
	str	q29, [x0, 16]	;# tmp570,
	str	q30, [x0, 32]	;# tmp571,
	str	q31, [x0, 48]	;# tmp572,
	add	x7, sp, 1568	;# tmp573,,
	add	x6, sp, 1184	;# tmp574,,
	add	x5, sp, 1248	;# tmp575,,
	add	x4, sp, 1312	;# tmp576,,
	add	x3, sp, 1376	;# tmp577,,
	add	x2, sp, 1440	;# tmp578,,
	add	x1, sp, 1504	;# tmp579,,
	add	x0, sp, 672	;# tmp580,,
	str	x0, [sp, 72]	;# tmp580,
	add	x0, sp, 736	;# tmp581,,
	str	x0, [sp, 64]	;# tmp581,
	add	x0, sp, 800	;# tmp582,,
	str	x0, [sp, 56]	;# tmp582,
	add	x0, sp, 864	;# tmp583,,
	str	x0, [sp, 48]	;# tmp583,
	add	x0, sp, 928	;# tmp584,,
	str	x0, [sp, 40]	;# tmp584,
	add	x0, sp, 992	;# tmp585,,
	str	x0, [sp, 32]	;# tmp585,
	add	x0, sp, 1056	;# tmp586,,
	str	x0, [sp, 24]	;# tmp586,
	add	x0, sp, 1120	;# tmp587,,
	str	x0, [sp, 16]	;# tmp587,
	add	x0, sp, 1696	;# tmp588,,
	str	x0, [sp, 8]	;# tmp588,
	add	x0, sp, 1632	;# tmp589,,
	str	x0, [sp]	;# tmp589,
	adrp	x0, .LC20	;# tmp590,
	add	x0, x0, :lo12:.LC20	;#, tmp590,
	adrp	x8, __imp_use_va_args_many_composites	;# tmp593,
	add	x8, x8, :lo12:__imp_use_va_args_many_composites	;# tmp592, tmp593,
	ldr	x8, [x8]	;# tmp591,
	blr	x8		;# tmp591
	str	w0, [sp, 1884]	;#, actual
	ldr	w2, [sp, 1884]	;#, actual
	adrp	x0, .LC20	;# tmp594,
	add	x1, x0, :lo12:.LC20	;#, tmp594,
	adrp	x0, .LC63	;# tmp595,
	add	x0, x0, :lo12:.LC63	;#, tmp595,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 1884]	;# tmp596, actual
	mov	w0, 6763	;# tmp597,
	cmp	w1, w0	;# tmp596, tmp597
	beq	.L348		;#,
	ldr	w0, [sp, 1948]	;# tmp599, failures
	add	w0, w0, 1	;# failures_162, tmp599,
	str	w0, [sp, 1948]	;# failures_162, failures
	ldr	w2, [sp, 1884]	;#, actual
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
	str	w0, [sp, 1880]	;#, actual
	ldr	w2, [sp, 1880]	;#, actual
	adrp	x0, .LC21	;# tmp609,
	add	x1, x0, :lo12:.LC21	;#, tmp609,
	adrp	x0, .LC63	;# tmp610,
	add	x0, x0, :lo12:.LC63	;#, tmp610,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1880]	;# tmp611, actual
	cmp	w0, 3	;# tmp611,
	beq	.L349		;#,
	ldr	w0, [sp, 1948]	;# tmp613, failures
	add	w0, w0, 1	;# failures_167, tmp613,
	str	w0, [sp, 1948]	;# failures_167, failures
	ldr	w2, [sp, 1880]	;#, actual
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
	str	w0, [sp, 1876]	;#, actual
	ldr	w2, [sp, 1876]	;#, actual
	adrp	x0, .LC22	;# tmp639,
	add	x1, x0, :lo12:.LC22	;#, tmp639,
	adrp	x0, .LC63	;# tmp640,
	add	x0, x0, :lo12:.LC63	;#, tmp640,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1876]	;# tmp641, actual
	cmp	w0, 142	;# tmp641,
	beq	.L350		;#,
	ldr	w0, [sp, 1948]	;# tmp643, failures
	add	w0, w0, 1	;# failures_172, tmp643,
	str	w0, [sp, 1948]	;# failures_172, failures
	ldr	w2, [sp, 1876]	;#, actual
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
	str	w0, [sp, 1872]	;#, actual
	ldr	w2, [sp, 1872]	;#, actual
	adrp	x0, .LC23	;# tmp693,
	add	x1, x0, :lo12:.LC23	;#, tmp693,
	adrp	x0, .LC63	;# tmp694,
	add	x0, x0, :lo12:.LC63	;#, tmp694,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 1872]	;# tmp695, actual
	mov	w0, 6763	;# tmp696,
	cmp	w1, w0	;# tmp695, tmp696
	beq	.L351		;#,
	ldr	w0, [sp, 1948]	;# tmp698, failures
	add	w0, w0, 1	;# failures_177, tmp698,
	str	w0, [sp, 1948]	;# failures_177, failures
	ldr	w2, [sp, 1872]	;#, actual
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
	str	w0, [sp, 1868]	;#, actual
	ldr	w2, [sp, 1868]	;#, actual
	adrp	x0, .LC24	;# tmp712,
	add	x1, x0, :lo12:.LC24	;#, tmp712,
	adrp	x0, .LC63	;# tmp713,
	add	x0, x0, :lo12:.LC63	;#, tmp713,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1868]	;# tmp714, actual
	cmp	w0, 3	;# tmp714,
	beq	.L352		;#,
	ldr	w0, [sp, 1948]	;# tmp716, failures
	add	w0, w0, 1	;# failures_182, tmp716,
	str	w0, [sp, 1948]	;# failures_182, failures
	ldr	w2, [sp, 1868]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp717,
	add	x0, x0, :lo12:.LC64	;#, tmp717,
	bl	__mingw_printf		;#
.L352:
;# varargs-use-dll.c:450:   TEST (few_short_vector_16_bytes, 3, sv16_a, sv16_b);
	adrp	x0, sv16_b	;# tmp719,
	add	x1, x0, :lo12:sv16_b	;# tmp718, tmp719,
	adrp	x0, sv16_a	;# tmp721,
	add	x0, x0, :lo12:sv16_a	;# tmp720, tmp721,
	ldp	x3, x4, [x1]	;#, sv16_b
	ldp	x1, x2, [x0]	;#, sv16_a
	adrp	x0, .LC27	;# tmp722,
	add	x0, x0, :lo12:.LC27	;#, tmp722,
	adrp	x5, __imp_use_va_args_few_short_vector_16_bytes	;# tmp725,
	add	x5, x5, :lo12:__imp_use_va_args_few_short_vector_16_bytes	;# tmp724, tmp725,
	ldr	x5, [x5]	;# tmp723,
	blr	x5		;# tmp723
	str	w0, [sp, 1864]	;#, actual
	ldr	w2, [sp, 1864]	;#, actual
	adrp	x0, .LC27	;# tmp726,
	add	x1, x0, :lo12:.LC27	;#, tmp726,
	adrp	x0, .LC63	;# tmp727,
	add	x0, x0, :lo12:.LC63	;#, tmp727,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1864]	;# tmp728, actual
	cmp	w0, 3	;# tmp728,
	beq	.L353		;#,
	ldr	w0, [sp, 1948]	;# tmp730, failures
	add	w0, w0, 1	;# failures_187, tmp730,
	str	w0, [sp, 1948]	;# failures_187, failures
	ldr	w2, [sp, 1864]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp731,
	add	x0, x0, :lo12:.LC64	;#, tmp731,
	bl	__mingw_printf		;#
.L353:
;# varargs-use-dll.c:457:   TEST (few_hfa_2_floats, 3, hfa2f_a, hfa2f_b);
	adrp	x0, hfa2f_b	;# tmp733,
	add	x1, x0, :lo12:hfa2f_b	;# tmp732, tmp733,
	adrp	x0, hfa2f_a	;# tmp735,
	add	x0, x0, :lo12:hfa2f_a	;# tmp734, tmp735,
	ldr	x2, [x1]	;#, hfa2f_b
	ldr	x1, [x0]	;#, hfa2f_a
	adrp	x0, .LC30	;# tmp736,
	add	x0, x0, :lo12:.LC30	;#, tmp736,
	adrp	x3, __imp_use_va_args_few_hfa_2_floats	;# tmp739,
	add	x3, x3, :lo12:__imp_use_va_args_few_hfa_2_floats	;# tmp738, tmp739,
	ldr	x3, [x3]	;# tmp737,
	blr	x3		;# tmp737
	str	w0, [sp, 1860]	;#, actual
	ldr	w2, [sp, 1860]	;#, actual
	adrp	x0, .LC30	;# tmp740,
	add	x1, x0, :lo12:.LC30	;#, tmp740,
	adrp	x0, .LC63	;# tmp741,
	add	x0, x0, :lo12:.LC63	;#, tmp741,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1860]	;# tmp742, actual
	cmp	w0, 3	;# tmp742,
	beq	.L354		;#,
	ldr	w0, [sp, 1948]	;# tmp744, failures
	add	w0, w0, 1	;# failures_192, tmp744,
	str	w0, [sp, 1948]	;# failures_192, failures
	ldr	w2, [sp, 1860]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp745,
	add	x0, x0, :lo12:.LC64	;#, tmp745,
	bl	__mingw_printf		;#
.L354:
;# varargs-use-dll.c:458:   TEST (several_hfa_2_floats, 142, hfa2f_a, hfa2f_b, hfa2f_c, hfa2f_d, hfa2f_e,
	adrp	x0, hfa2f_g	;# tmp747,
	add	x6, x0, :lo12:hfa2f_g	;# tmp746, tmp747,
	adrp	x0, hfa2f_f	;# tmp749,
	add	x5, x0, :lo12:hfa2f_f	;# tmp748, tmp749,
	adrp	x0, hfa2f_e	;# tmp751,
	add	x4, x0, :lo12:hfa2f_e	;# tmp750, tmp751,
	adrp	x0, hfa2f_d	;# tmp753,
	add	x3, x0, :lo12:hfa2f_d	;# tmp752, tmp753,
	adrp	x0, hfa2f_c	;# tmp755,
	add	x2, x0, :lo12:hfa2f_c	;# tmp754, tmp755,
	adrp	x0, hfa2f_b	;# tmp757,
	add	x1, x0, :lo12:hfa2f_b	;# tmp756, tmp757,
	adrp	x0, hfa2f_a	;# tmp759,
	add	x0, x0, :lo12:hfa2f_a	;# tmp758, tmp759,
	adrp	x7, hfa2f_i	;# tmp761,
	add	x7, x7, :lo12:hfa2f_i	;# tmp760, tmp761,
	ldr	x7, [x7]	;# tmp762, hfa2f_i
	str	x7, [sp, 8]	;# tmp762,
	adrp	x7, hfa2f_h	;# tmp764,
	add	x7, x7, :lo12:hfa2f_h	;# tmp763, tmp764,
	ldr	x7, [x7]	;# tmp765, hfa2f_h
	str	x7, [sp]	;# tmp765,
	ldr	x7, [x6]	;#, hfa2f_g
	ldr	x6, [x5]	;#, hfa2f_f
	ldr	x5, [x4]	;#, hfa2f_e
	ldr	x4, [x3]	;#, hfa2f_d
	ldr	x3, [x2]	;#, hfa2f_c
	ldr	x2, [x1]	;#, hfa2f_b
	ldr	x1, [x0]	;#, hfa2f_a
	adrp	x0, .LC31	;# tmp766,
	add	x0, x0, :lo12:.LC31	;#, tmp766,
	adrp	x8, __imp_use_va_args_several_hfa_2_floats	;# tmp769,
	add	x8, x8, :lo12:__imp_use_va_args_several_hfa_2_floats	;# tmp768, tmp769,
	ldr	x8, [x8]	;# tmp767,
	blr	x8		;# tmp767
	str	w0, [sp, 1856]	;#, actual
	ldr	w2, [sp, 1856]	;#, actual
	adrp	x0, .LC31	;# tmp770,
	add	x1, x0, :lo12:.LC31	;#, tmp770,
	adrp	x0, .LC63	;# tmp771,
	add	x0, x0, :lo12:.LC63	;#, tmp771,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1856]	;# tmp772, actual
	cmp	w0, 142	;# tmp772,
	beq	.L355		;#,
	ldr	w0, [sp, 1948]	;# tmp774, failures
	add	w0, w0, 1	;# failures_197, tmp774,
	str	w0, [sp, 1948]	;# failures_197, failures
	ldr	w2, [sp, 1856]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp775,
	add	x0, x0, :lo12:.LC64	;#, tmp775,
	bl	__mingw_printf		;#
.L355:
;# varargs-use-dll.c:460:   TEST (many_hfa_2_floats, 6763, hfa2f_a, hfa2f_b, hfa2f_c, hfa2f_d, hfa2f_e,
	adrp	x0, hfa2f_g	;# tmp777,
	add	x6, x0, :lo12:hfa2f_g	;# tmp776, tmp777,
	adrp	x0, hfa2f_f	;# tmp779,
	add	x5, x0, :lo12:hfa2f_f	;# tmp778, tmp779,
	adrp	x0, hfa2f_e	;# tmp781,
	add	x4, x0, :lo12:hfa2f_e	;# tmp780, tmp781,
	adrp	x0, hfa2f_d	;# tmp783,
	add	x3, x0, :lo12:hfa2f_d	;# tmp782, tmp783,
	adrp	x0, hfa2f_c	;# tmp785,
	add	x2, x0, :lo12:hfa2f_c	;# tmp784, tmp785,
	adrp	x0, hfa2f_b	;# tmp787,
	add	x1, x0, :lo12:hfa2f_b	;# tmp786, tmp787,
	adrp	x0, hfa2f_a	;# tmp789,
	add	x0, x0, :lo12:hfa2f_a	;# tmp788, tmp789,
	adrp	x7, hfa2f_q	;# tmp791,
	add	x7, x7, :lo12:hfa2f_q	;# tmp790, tmp791,
	ldr	x7, [x7]	;# tmp792, hfa2f_q
	str	x7, [sp, 72]	;# tmp792,
	adrp	x7, hfa2f_p	;# tmp794,
	add	x7, x7, :lo12:hfa2f_p	;# tmp793, tmp794,
	ldr	x7, [x7]	;# tmp795, hfa2f_p
	str	x7, [sp, 64]	;# tmp795,
	adrp	x7, hfa2f_o	;# tmp797,
	add	x7, x7, :lo12:hfa2f_o	;# tmp796, tmp797,
	ldr	x7, [x7]	;# tmp798, hfa2f_o
	str	x7, [sp, 56]	;# tmp798,
	adrp	x7, hfa2f_n	;# tmp800,
	add	x7, x7, :lo12:hfa2f_n	;# tmp799, tmp800,
	ldr	x7, [x7]	;# tmp801, hfa2f_n
	str	x7, [sp, 48]	;# tmp801,
	adrp	x7, hfa2f_m	;# tmp803,
	add	x7, x7, :lo12:hfa2f_m	;# tmp802, tmp803,
	ldr	x7, [x7]	;# tmp804, hfa2f_m
	str	x7, [sp, 40]	;# tmp804,
	adrp	x7, hfa2f_l	;# tmp806,
	add	x7, x7, :lo12:hfa2f_l	;# tmp805, tmp806,
	ldr	x7, [x7]	;# tmp807, hfa2f_l
	str	x7, [sp, 32]	;# tmp807,
	adrp	x7, hfa2f_k	;# tmp809,
	add	x7, x7, :lo12:hfa2f_k	;# tmp808, tmp809,
	ldr	x7, [x7]	;# tmp810, hfa2f_k
	str	x7, [sp, 24]	;# tmp810,
	adrp	x7, hfa2f_j	;# tmp812,
	add	x7, x7, :lo12:hfa2f_j	;# tmp811, tmp812,
	ldr	x7, [x7]	;# tmp813, hfa2f_j
	str	x7, [sp, 16]	;# tmp813,
	adrp	x7, hfa2f_i	;# tmp815,
	add	x7, x7, :lo12:hfa2f_i	;# tmp814, tmp815,
	ldr	x7, [x7]	;# tmp816, hfa2f_i
	str	x7, [sp, 8]	;# tmp816,
	adrp	x7, hfa2f_h	;# tmp818,
	add	x7, x7, :lo12:hfa2f_h	;# tmp817, tmp818,
	ldr	x7, [x7]	;# tmp819, hfa2f_h
	str	x7, [sp]	;# tmp819,
	ldr	x7, [x6]	;#, hfa2f_g
	ldr	x6, [x5]	;#, hfa2f_f
	ldr	x5, [x4]	;#, hfa2f_e
	ldr	x4, [x3]	;#, hfa2f_d
	ldr	x3, [x2]	;#, hfa2f_c
	ldr	x2, [x1]	;#, hfa2f_b
	ldr	x1, [x0]	;#, hfa2f_a
	adrp	x0, .LC32	;# tmp820,
	add	x0, x0, :lo12:.LC32	;#, tmp820,
	adrp	x8, __imp_use_va_args_many_hfa_2_floats	;# tmp823,
	add	x8, x8, :lo12:__imp_use_va_args_many_hfa_2_floats	;# tmp822, tmp823,
	ldr	x8, [x8]	;# tmp821,
	blr	x8		;# tmp821
	str	w0, [sp, 1852]	;#, actual
	ldr	w2, [sp, 1852]	;#, actual
	adrp	x0, .LC32	;# tmp824,
	add	x1, x0, :lo12:.LC32	;#, tmp824,
	adrp	x0, .LC63	;# tmp825,
	add	x0, x0, :lo12:.LC63	;#, tmp825,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 1852]	;# tmp826, actual
	mov	w0, 6763	;# tmp827,
	cmp	w1, w0	;# tmp826, tmp827
	beq	.L356		;#,
	ldr	w0, [sp, 1948]	;# tmp829, failures
	add	w0, w0, 1	;# failures_202, tmp829,
	str	w0, [sp, 1948]	;# failures_202, failures
	ldr	w2, [sp, 1852]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp830,
	add	x0, x0, :lo12:.LC64	;#, tmp830,
	bl	__mingw_printf		;#
.L356:
;# varargs-use-dll.c:464:   TEST (few_hfa_4_floats, 3, hfa4f_a, hfa4f_b);
	adrp	x0, hfa4f_b	;# tmp832,
	add	x1, x0, :lo12:hfa4f_b	;# tmp831, tmp832,
	adrp	x0, hfa4f_a	;# tmp834,
	add	x0, x0, :lo12:hfa4f_a	;# tmp833, tmp834,
	ldp	x3, x4, [x1]	;#, hfa4f_b
	ldp	x1, x2, [x0]	;#, hfa4f_a
	adrp	x0, .LC33	;# tmp835,
	add	x0, x0, :lo12:.LC33	;#, tmp835,
	adrp	x5, __imp_use_va_args_few_hfa_4_floats	;# tmp838,
	add	x5, x5, :lo12:__imp_use_va_args_few_hfa_4_floats	;# tmp837, tmp838,
	ldr	x5, [x5]	;# tmp836,
	blr	x5		;# tmp836
	str	w0, [sp, 1848]	;#, actual
	ldr	w2, [sp, 1848]	;#, actual
	adrp	x0, .LC33	;# tmp839,
	add	x1, x0, :lo12:.LC33	;#, tmp839,
	adrp	x0, .LC63	;# tmp840,
	add	x0, x0, :lo12:.LC63	;#, tmp840,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1848]	;# tmp841, actual
	cmp	w0, 3	;# tmp841,
	beq	.L357		;#,
	ldr	w0, [sp, 1948]	;# tmp843, failures
	add	w0, w0, 1	;# failures_207, tmp843,
	str	w0, [sp, 1948]	;# failures_207, failures
	ldr	w2, [sp, 1848]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp844,
	add	x0, x0, :lo12:.LC64	;#, tmp844,
	bl	__mingw_printf		;#
.L357:
;# varargs-use-dll.c:471:   TEST (few_hfa_2_doubles, 3, hfa2d_a, hfa2d_b);
	adrp	x0, hfa2d_b	;# tmp846,
	add	x1, x0, :lo12:hfa2d_b	;# tmp845, tmp846,
	adrp	x0, hfa2d_a	;# tmp848,
	add	x0, x0, :lo12:hfa2d_a	;# tmp847, tmp848,
	ldp	x3, x4, [x1]	;#, hfa2d_b
	ldp	x1, x2, [x0]	;#, hfa2d_a
	adrp	x0, .LC36	;# tmp849,
	add	x0, x0, :lo12:.LC36	;#, tmp849,
	adrp	x5, __imp_use_va_args_few_hfa_2_doubles	;# tmp852,
	add	x5, x5, :lo12:__imp_use_va_args_few_hfa_2_doubles	;# tmp851, tmp852,
	ldr	x5, [x5]	;# tmp850,
	blr	x5		;# tmp850
	str	w0, [sp, 1844]	;#, actual
	ldr	w2, [sp, 1844]	;#, actual
	adrp	x0, .LC36	;# tmp853,
	add	x1, x0, :lo12:.LC36	;#, tmp853,
	adrp	x0, .LC63	;# tmp854,
	add	x0, x0, :lo12:.LC63	;#, tmp854,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1844]	;# tmp855, actual
	cmp	w0, 3	;# tmp855,
	beq	.L358		;#,
	ldr	w0, [sp, 1948]	;# tmp857, failures
	add	w0, w0, 1	;# failures_212, tmp857,
	str	w0, [sp, 1948]	;# failures_212, failures
	ldr	w2, [sp, 1844]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp858,
	add	x0, x0, :lo12:.LC64	;#, tmp858,
	bl	__mingw_printf		;#
.L358:
;# varargs-use-dll.c:478:   TEST (few_hfa_4_doubles, 3, hfa4d_a, hfa4d_b);
	adrp	x0, hfa4d_b	;# tmp860,
	add	x0, x0, :lo12:hfa4d_b	;# tmp859, tmp860,
	adrp	x1, hfa4d_a	;# tmp865,
	add	x1, x1, :lo12:hfa4d_a	;# tmp864, tmp865,
	ldr	x11, [x1]	;# tmp866, hfa4d_a
	ldr	x10, [x1, 8]	;# tmp867, hfa4d_a
	ldr	x9, [x1, 16]	;# tmp868, hfa4d_a
	ldr	x8, [x1, 24]	;# tmp869, hfa4d_a
	add	x2, x0, 8	;# tmp871, tmp859,
	mov	x1, sp	;# tmp872,
	mov	x4, x2	;# tmp873, tmp871
	ldp	x2, x3, [x4]	;# tmp874, hfa4d_b
	ldr	x4, [x4, 16]	;# tmp875, hfa4d_b
	stp	x2, x3, [x1]	;# tmp874,
	str	x4, [x1, 16]	;# tmp875,
	ldr	x3, [x0]	;# tmp876, hfa4d_b
	ldr	x2, [x0, 8]	;# tmp877, hfa4d_b
	ldr	x1, [x0, 16]	;# tmp878, hfa4d_b
	mov	x5, x3	;#, tmp876
	mov	x6, x2	;#, tmp877
	mov	x7, x1	;#, tmp878
	ldr	x2, [x0]	;# tmp879, hfa4d_b
	ldr	x1, [x0, 8]	;# tmp880, hfa4d_b
	ldr	x0, [x0, 16]	;# tmp881, hfa4d_b
	mov	x5, x2	;#, tmp879
	mov	x6, x1	;#, tmp880
	mov	x7, x0	;#, tmp881
	mov	x1, x11	;#, tmp866
	mov	x2, x10	;#, tmp867
	mov	x3, x9	;#, tmp868
	mov	x4, x8	;#, tmp869
	adrp	x0, .LC39	;# tmp882,
	add	x0, x0, :lo12:.LC39	;#, tmp882,
	adrp	x8, __imp_use_va_args_few_hfa_4_doubles	;# tmp885,
	add	x8, x8, :lo12:__imp_use_va_args_few_hfa_4_doubles	;# tmp884, tmp885,
	ldr	x8, [x8]	;# tmp883,
	blr	x8		;# tmp883
	str	w0, [sp, 1840]	;#, actual
	ldr	w2, [sp, 1840]	;#, actual
	adrp	x0, .LC39	;# tmp886,
	add	x1, x0, :lo12:.LC39	;#, tmp886,
	adrp	x0, .LC63	;# tmp887,
	add	x0, x0, :lo12:.LC63	;#, tmp887,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1840]	;# tmp888, actual
	cmp	w0, 3	;# tmp888,
	beq	.L359		;#,
	ldr	w0, [sp, 1948]	;# tmp890, failures
	add	w0, w0, 1	;# failures_217, tmp890,
	str	w0, [sp, 1948]	;# failures_217, failures
	ldr	w2, [sp, 1840]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp891,
	add	x0, x0, :lo12:.LC64	;#, tmp891,
	bl	__mingw_printf		;#
.L359:
;# varargs-use-dll.c:485:   TEST (few_hva_2_short_vector_8_bytes, 3, hva2sv8_a, hva2sv8_b);
	adrp	x0, hva2sv8_b	;# tmp893,
	add	x1, x0, :lo12:hva2sv8_b	;# tmp892, tmp893,
	adrp	x0, hva2sv8_a	;# tmp895,
	add	x0, x0, :lo12:hva2sv8_a	;# tmp894, tmp895,
	ldp	x3, x4, [x1]	;#, hva2sv8_b
	ldp	x1, x2, [x0]	;#, hva2sv8_a
	adrp	x0, .LC42	;# tmp896,
	add	x0, x0, :lo12:.LC42	;#, tmp896,
	adrp	x5, __imp_use_va_args_few_hva_2_short_vector_8_bytes	;# tmp899,
	add	x5, x5, :lo12:__imp_use_va_args_few_hva_2_short_vector_8_bytes	;# tmp898, tmp899,
	ldr	x5, [x5]	;# tmp897,
	blr	x5		;# tmp897
	str	w0, [sp, 1836]	;#, actual
	ldr	w2, [sp, 1836]	;#, actual
	adrp	x0, .LC42	;# tmp900,
	add	x1, x0, :lo12:.LC42	;#, tmp900,
	adrp	x0, .LC63	;# tmp901,
	add	x0, x0, :lo12:.LC63	;#, tmp901,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1836]	;# tmp902, actual
	cmp	w0, 3	;# tmp902,
	beq	.L360		;#,
	ldr	w0, [sp, 1948]	;# tmp904, failures
	add	w0, w0, 1	;# failures_222, tmp904,
	str	w0, [sp, 1948]	;# failures_222, failures
	ldr	w2, [sp, 1836]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp905,
	add	x0, x0, :lo12:.LC64	;#, tmp905,
	bl	__mingw_printf		;#
.L360:
;# varargs-use-dll.c:494:   TEST (few_hva_4_short_vector_8_bytes, 3, hva4sv8_a, hva4sv8_b);
	adrp	x0, hva4sv8_a	;# tmp907,
	add	x1, x0, :lo12:hva4sv8_a	;# tmp906, tmp907,
	add	x0, sp, 1504	;# tmp908,,
	ldr	q30, [x1]	;# tmp910, hva4sv8_a
	ldr	q31, [x1, 16]	;# tmp911, hva4sv8_a
	str	q30, [x0]	;# tmp910,
	str	q31, [x0, 16]	;# tmp911,
	adrp	x0, hva4sv8_b	;# tmp913,
	add	x1, x0, :lo12:hva4sv8_b	;# tmp912, tmp913,
	add	x0, sp, 1536	;# tmp914,,
	ldr	q30, [x1]	;# tmp916, hva4sv8_b
	ldr	q31, [x1, 16]	;# tmp917, hva4sv8_b
	str	q30, [x0]	;# tmp916,
	str	q31, [x0, 16]	;# tmp917,
	add	x1, sp, 1536	;# tmp918,,
	add	x0, sp, 1504	;# tmp919,,
	mov	x2, x1	;#, tmp918
	mov	x1, x0	;#, tmp919
	adrp	x0, .LC45	;# tmp920,
	add	x0, x0, :lo12:.LC45	;#, tmp920,
	adrp	x3, __imp_use_va_args_few_hva_4_short_vector_8_bytes	;# tmp923,
	add	x3, x3, :lo12:__imp_use_va_args_few_hva_4_short_vector_8_bytes	;# tmp922, tmp923,
	ldr	x3, [x3]	;# tmp921,
	blr	x3		;# tmp921
	str	w0, [sp, 1832]	;#, actual
	ldr	w2, [sp, 1832]	;#, actual
	adrp	x0, .LC45	;# tmp924,
	add	x1, x0, :lo12:.LC45	;#, tmp924,
	adrp	x0, .LC63	;# tmp925,
	add	x0, x0, :lo12:.LC63	;#, tmp925,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1832]	;# tmp926, actual
	cmp	w0, 3	;# tmp926,
	beq	.L361		;#,
	ldr	w0, [sp, 1948]	;# tmp928, failures
	add	w0, w0, 1	;# failures_227, tmp928,
	str	w0, [sp, 1948]	;# failures_227, failures
	ldr	w2, [sp, 1832]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp929,
	add	x0, x0, :lo12:.LC64	;#, tmp929,
	bl	__mingw_printf		;#
.L361:
;# varargs-use-dll.c:495:   TEST (several_hva_4_short_vector_8_bytes, 142, hva4sv8_a, hva4sv8_b,
	adrp	x0, hva4sv8_a	;# tmp931,
	add	x1, x0, :lo12:hva4sv8_a	;# tmp930, tmp931,
	add	x0, sp, 1504	;# tmp932,,
	ldr	q30, [x1]	;# tmp934, hva4sv8_a
	ldr	q31, [x1, 16]	;# tmp935, hva4sv8_a
	str	q30, [x0]	;# tmp934,
	str	q31, [x0, 16]	;# tmp935,
	adrp	x0, hva4sv8_b	;# tmp937,
	add	x1, x0, :lo12:hva4sv8_b	;# tmp936, tmp937,
	add	x0, sp, 1536	;# tmp938,,
	ldr	q30, [x1]	;# tmp940, hva4sv8_b
	ldr	q31, [x1, 16]	;# tmp941, hva4sv8_b
	str	q30, [x0]	;# tmp940,
	str	q31, [x0, 16]	;# tmp941,
	adrp	x0, hva4sv8_c	;# tmp943,
	add	x1, x0, :lo12:hva4sv8_c	;# tmp942, tmp943,
	add	x0, sp, 1440	;# tmp944,,
	ldr	q30, [x1]	;# tmp946, hva4sv8_c
	ldr	q31, [x1, 16]	;# tmp947, hva4sv8_c
	str	q30, [x0]	;# tmp946,
	str	q31, [x0, 16]	;# tmp947,
	adrp	x0, hva4sv8_d	;# tmp949,
	add	x1, x0, :lo12:hva4sv8_d	;# tmp948, tmp949,
	add	x0, sp, 1472	;# tmp950,,
	ldr	q30, [x1]	;# tmp952, hva4sv8_d
	ldr	q31, [x1, 16]	;# tmp953, hva4sv8_d
	str	q30, [x0]	;# tmp952,
	str	q31, [x0, 16]	;# tmp953,
	adrp	x0, hva4sv8_e	;# tmp955,
	add	x1, x0, :lo12:hva4sv8_e	;# tmp954, tmp955,
	add	x0, sp, 1376	;# tmp956,,
	ldr	q30, [x1]	;# tmp958, hva4sv8_e
	ldr	q31, [x1, 16]	;# tmp959, hva4sv8_e
	str	q30, [x0]	;# tmp958,
	str	q31, [x0, 16]	;# tmp959,
	adrp	x0, hva4sv8_f	;# tmp961,
	add	x1, x0, :lo12:hva4sv8_f	;# tmp960, tmp961,
	add	x0, sp, 1408	;# tmp962,,
	ldr	q30, [x1]	;# tmp964, hva4sv8_f
	ldr	q31, [x1, 16]	;# tmp965, hva4sv8_f
	str	q30, [x0]	;# tmp964,
	str	q31, [x0, 16]	;# tmp965,
	adrp	x0, hva4sv8_g	;# tmp967,
	add	x1, x0, :lo12:hva4sv8_g	;# tmp966, tmp967,
	add	x0, sp, 1312	;# tmp968,,
	ldr	q30, [x1]	;# tmp970, hva4sv8_g
	ldr	q31, [x1, 16]	;# tmp971, hva4sv8_g
	str	q30, [x0]	;# tmp970,
	str	q31, [x0, 16]	;# tmp971,
	adrp	x0, hva4sv8_h	;# tmp973,
	add	x1, x0, :lo12:hva4sv8_h	;# tmp972, tmp973,
	add	x0, sp, 1344	;# tmp974,,
	ldr	q30, [x1]	;# tmp976, hva4sv8_h
	ldr	q31, [x1, 16]	;# tmp977, hva4sv8_h
	str	q30, [x0]	;# tmp976,
	str	q31, [x0, 16]	;# tmp977,
	adrp	x0, hva4sv8_i	;# tmp979,
	add	x1, x0, :lo12:hva4sv8_i	;# tmp978, tmp979,
	add	x0, sp, 1248	;# tmp980,,
	ldr	q30, [x1]	;# tmp982, hva4sv8_i
	ldr	q31, [x1, 16]	;# tmp983, hva4sv8_i
	str	q30, [x0]	;# tmp982,
	str	q31, [x0, 16]	;# tmp983,
	add	x7, sp, 1312	;# tmp984,,
	add	x6, sp, 1408	;# tmp985,,
	add	x5, sp, 1376	;# tmp986,,
	add	x4, sp, 1472	;# tmp987,,
	add	x3, sp, 1440	;# tmp988,,
	add	x2, sp, 1536	;# tmp989,,
	add	x1, sp, 1504	;# tmp990,,
	add	x0, sp, 1248	;# tmp991,,
	str	x0, [sp, 8]	;# tmp991,
	add	x0, sp, 1344	;# tmp992,,
	str	x0, [sp]	;# tmp992,
	adrp	x0, .LC46	;# tmp993,
	add	x0, x0, :lo12:.LC46	;#, tmp993,
	adrp	x8, __imp_use_va_args_several_hva_4_short_vector_8_bytes	;# tmp996,
	add	x8, x8, :lo12:__imp_use_va_args_several_hva_4_short_vector_8_bytes	;# tmp995, tmp996,
	ldr	x8, [x8]	;# tmp994,
	blr	x8		;# tmp994
	str	w0, [sp, 1828]	;#, actual
	ldr	w2, [sp, 1828]	;#, actual
	adrp	x0, .LC46	;# tmp997,
	add	x1, x0, :lo12:.LC46	;#, tmp997,
	adrp	x0, .LC63	;# tmp998,
	add	x0, x0, :lo12:.LC63	;#, tmp998,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1828]	;# tmp999, actual
	cmp	w0, 142	;# tmp999,
	beq	.L362		;#,
	ldr	w0, [sp, 1948]	;# tmp1001, failures
	add	w0, w0, 1	;# failures_232, tmp1001,
	str	w0, [sp, 1948]	;# failures_232, failures
	ldr	w2, [sp, 1828]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp1002,
	add	x0, x0, :lo12:.LC64	;#, tmp1002,
	bl	__mingw_printf		;#
.L362:
;# varargs-use-dll.c:498:   TEST (many_hva_4_short_vector_8_bytes, 6763, hva4sv8_a, hva4sv8_b, hva4sv8_c,
	adrp	x0, hva4sv8_a	;# tmp1004,
	add	x1, x0, :lo12:hva4sv8_a	;# tmp1003, tmp1004,
	add	x0, sp, 1504	;# tmp1005,,
	ldr	q30, [x1]	;# tmp1007, hva4sv8_a
	ldr	q31, [x1, 16]	;# tmp1008, hva4sv8_a
	str	q30, [x0]	;# tmp1007,
	str	q31, [x0, 16]	;# tmp1008,
	adrp	x0, hva4sv8_b	;# tmp1010,
	add	x1, x0, :lo12:hva4sv8_b	;# tmp1009, tmp1010,
	add	x0, sp, 1536	;# tmp1011,,
	ldr	q30, [x1]	;# tmp1013, hva4sv8_b
	ldr	q31, [x1, 16]	;# tmp1014, hva4sv8_b
	str	q30, [x0]	;# tmp1013,
	str	q31, [x0, 16]	;# tmp1014,
	adrp	x0, hva4sv8_c	;# tmp1016,
	add	x1, x0, :lo12:hva4sv8_c	;# tmp1015, tmp1016,
	add	x0, sp, 1440	;# tmp1017,,
	ldr	q30, [x1]	;# tmp1019, hva4sv8_c
	ldr	q31, [x1, 16]	;# tmp1020, hva4sv8_c
	str	q30, [x0]	;# tmp1019,
	str	q31, [x0, 16]	;# tmp1020,
	adrp	x0, hva4sv8_d	;# tmp1022,
	add	x1, x0, :lo12:hva4sv8_d	;# tmp1021, tmp1022,
	add	x0, sp, 1472	;# tmp1023,,
	ldr	q30, [x1]	;# tmp1025, hva4sv8_d
	ldr	q31, [x1, 16]	;# tmp1026, hva4sv8_d
	str	q30, [x0]	;# tmp1025,
	str	q31, [x0, 16]	;# tmp1026,
	adrp	x0, hva4sv8_e	;# tmp1028,
	add	x1, x0, :lo12:hva4sv8_e	;# tmp1027, tmp1028,
	add	x0, sp, 1376	;# tmp1029,,
	ldr	q30, [x1]	;# tmp1031, hva4sv8_e
	ldr	q31, [x1, 16]	;# tmp1032, hva4sv8_e
	str	q30, [x0]	;# tmp1031,
	str	q31, [x0, 16]	;# tmp1032,
	adrp	x0, hva4sv8_f	;# tmp1034,
	add	x1, x0, :lo12:hva4sv8_f	;# tmp1033, tmp1034,
	add	x0, sp, 1408	;# tmp1035,,
	ldr	q30, [x1]	;# tmp1037, hva4sv8_f
	ldr	q31, [x1, 16]	;# tmp1038, hva4sv8_f
	str	q30, [x0]	;# tmp1037,
	str	q31, [x0, 16]	;# tmp1038,
	adrp	x0, hva4sv8_g	;# tmp1040,
	add	x1, x0, :lo12:hva4sv8_g	;# tmp1039, tmp1040,
	add	x0, sp, 1312	;# tmp1041,,
	ldr	q30, [x1]	;# tmp1043, hva4sv8_g
	ldr	q31, [x1, 16]	;# tmp1044, hva4sv8_g
	str	q30, [x0]	;# tmp1043,
	str	q31, [x0, 16]	;# tmp1044,
	adrp	x0, hva4sv8_h	;# tmp1046,
	add	x1, x0, :lo12:hva4sv8_h	;# tmp1045, tmp1046,
	add	x0, sp, 1344	;# tmp1047,,
	ldr	q30, [x1]	;# tmp1049, hva4sv8_h
	ldr	q31, [x1, 16]	;# tmp1050, hva4sv8_h
	str	q30, [x0]	;# tmp1049,
	str	q31, [x0, 16]	;# tmp1050,
	adrp	x0, hva4sv8_i	;# tmp1052,
	add	x1, x0, :lo12:hva4sv8_i	;# tmp1051, tmp1052,
	add	x0, sp, 1248	;# tmp1053,,
	ldr	q30, [x1]	;# tmp1055, hva4sv8_i
	ldr	q31, [x1, 16]	;# tmp1056, hva4sv8_i
	str	q30, [x0]	;# tmp1055,
	str	q31, [x0, 16]	;# tmp1056,
	adrp	x0, hva4sv8_j	;# tmp1058,
	add	x1, x0, :lo12:hva4sv8_j	;# tmp1057, tmp1058,
	add	x0, sp, 1280	;# tmp1059,,
	ldr	q30, [x1]	;# tmp1061, hva4sv8_j
	ldr	q31, [x1, 16]	;# tmp1062, hva4sv8_j
	str	q30, [x0]	;# tmp1061,
	str	q31, [x0, 16]	;# tmp1062,
	adrp	x0, hva4sv8_k	;# tmp1064,
	add	x1, x0, :lo12:hva4sv8_k	;# tmp1063, tmp1064,
	add	x0, sp, 1184	;# tmp1065,,
	ldr	q30, [x1]	;# tmp1067, hva4sv8_k
	ldr	q31, [x1, 16]	;# tmp1068, hva4sv8_k
	str	q30, [x0]	;# tmp1067,
	str	q31, [x0, 16]	;# tmp1068,
	adrp	x0, hva4sv8_l	;# tmp1070,
	add	x1, x0, :lo12:hva4sv8_l	;# tmp1069, tmp1070,
	add	x0, sp, 1216	;# tmp1071,,
	ldr	q30, [x1]	;# tmp1073, hva4sv8_l
	ldr	q31, [x1, 16]	;# tmp1074, hva4sv8_l
	str	q30, [x0]	;# tmp1073,
	str	q31, [x0, 16]	;# tmp1074,
	adrp	x0, hva4sv8_m	;# tmp1076,
	add	x1, x0, :lo12:hva4sv8_m	;# tmp1075, tmp1076,
	add	x0, sp, 1568	;# tmp1077,,
	ldr	q30, [x1]	;# tmp1079, hva4sv8_m
	ldr	q31, [x1, 16]	;# tmp1080, hva4sv8_m
	str	q30, [x0]	;# tmp1079,
	str	q31, [x0, 16]	;# tmp1080,
	adrp	x0, hva4sv8_n	;# tmp1082,
	add	x1, x0, :lo12:hva4sv8_n	;# tmp1081, tmp1082,
	add	x0, sp, 1600	;# tmp1083,,
	ldr	q30, [x1]	;# tmp1085, hva4sv8_n
	ldr	q31, [x1, 16]	;# tmp1086, hva4sv8_n
	str	q30, [x0]	;# tmp1085,
	str	q31, [x0, 16]	;# tmp1086,
	adrp	x0, hva4sv8_o	;# tmp1088,
	add	x1, x0, :lo12:hva4sv8_o	;# tmp1087, tmp1088,
	add	x0, sp, 1632	;# tmp1089,,
	ldr	q30, [x1]	;# tmp1091, hva4sv8_o
	ldr	q31, [x1, 16]	;# tmp1092, hva4sv8_o
	str	q30, [x0]	;# tmp1091,
	str	q31, [x0, 16]	;# tmp1092,
	adrp	x0, hva4sv8_p	;# tmp1094,
	add	x1, x0, :lo12:hva4sv8_p	;# tmp1093, tmp1094,
	add	x0, sp, 1664	;# tmp1095,,
	ldr	q30, [x1]	;# tmp1097, hva4sv8_p
	ldr	q31, [x1, 16]	;# tmp1098, hva4sv8_p
	str	q30, [x0]	;# tmp1097,
	str	q31, [x0, 16]	;# tmp1098,
	adrp	x0, hva4sv8_q	;# tmp1100,
	add	x1, x0, :lo12:hva4sv8_q	;# tmp1099, tmp1100,
	add	x0, sp, 1696	;# tmp1101,,
	ldr	q30, [x1]	;# tmp1103, hva4sv8_q
	ldr	q31, [x1, 16]	;# tmp1104, hva4sv8_q
	str	q30, [x0]	;# tmp1103,
	str	q31, [x0, 16]	;# tmp1104,
	add	x7, sp, 1312	;# tmp1105,,
	add	x6, sp, 1408	;# tmp1106,,
	add	x5, sp, 1376	;# tmp1107,,
	add	x4, sp, 1472	;# tmp1108,,
	add	x3, sp, 1440	;# tmp1109,,
	add	x2, sp, 1536	;# tmp1110,,
	add	x1, sp, 1504	;# tmp1111,,
	add	x0, sp, 1696	;# tmp1112,,
	str	x0, [sp, 72]	;# tmp1112,
	add	x0, sp, 1664	;# tmp1113,,
	str	x0, [sp, 64]	;# tmp1113,
	add	x0, sp, 1632	;# tmp1114,,
	str	x0, [sp, 56]	;# tmp1114,
	add	x0, sp, 1600	;# tmp1115,,
	str	x0, [sp, 48]	;# tmp1115,
	add	x0, sp, 1568	;# tmp1116,,
	str	x0, [sp, 40]	;# tmp1116,
	add	x0, sp, 1216	;# tmp1117,,
	str	x0, [sp, 32]	;# tmp1117,
	add	x0, sp, 1184	;# tmp1118,,
	str	x0, [sp, 24]	;# tmp1118,
	add	x0, sp, 1280	;# tmp1119,,
	str	x0, [sp, 16]	;# tmp1119,
	add	x0, sp, 1248	;# tmp1120,,
	str	x0, [sp, 8]	;# tmp1120,
	add	x0, sp, 1344	;# tmp1121,,
	str	x0, [sp]	;# tmp1121,
	adrp	x0, .LC47	;# tmp1122,
	add	x0, x0, :lo12:.LC47	;#, tmp1122,
	adrp	x8, __imp_use_va_args_many_hva_4_short_vector_8_bytes	;# tmp1125,
	add	x8, x8, :lo12:__imp_use_va_args_many_hva_4_short_vector_8_bytes	;# tmp1124, tmp1125,
	ldr	x8, [x8]	;# tmp1123,
	blr	x8		;# tmp1123
	str	w0, [sp, 1824]	;#, actual
	ldr	w2, [sp, 1824]	;#, actual
	adrp	x0, .LC47	;# tmp1126,
	add	x1, x0, :lo12:.LC47	;#, tmp1126,
	adrp	x0, .LC63	;# tmp1127,
	add	x0, x0, :lo12:.LC63	;#, tmp1127,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 1824]	;# tmp1128, actual
	mov	w0, 6763	;# tmp1129,
	cmp	w1, w0	;# tmp1128, tmp1129
	beq	.L363		;#,
	ldr	w0, [sp, 1948]	;# tmp1131, failures
	add	w0, w0, 1	;# failures_237, tmp1131,
	str	w0, [sp, 1948]	;# failures_237, failures
	ldr	w2, [sp, 1824]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp1132,
	add	x0, x0, :lo12:.LC64	;#, tmp1132,
	bl	__mingw_printf		;#
.L363:
;# varargs-use-dll.c:503:   TEST (few_hva_2_short_vector_16_bytes, 3, hva2sv16_a, hva2sv16_b);
	adrp	x0, hva2sv16_a	;# tmp1134,
	add	x1, x0, :lo12:hva2sv16_a	;# tmp1133, tmp1134,
	add	x0, sp, 1504	;# tmp1135,,
	ldr	q30, [x1]	;# tmp1137, hva2sv16_a
	ldr	q31, [x1, 16]	;# tmp1138, hva2sv16_a
	str	q30, [x0]	;# tmp1137,
	str	q31, [x0, 16]	;# tmp1138,
	adrp	x0, hva2sv16_b	;# tmp1140,
	add	x1, x0, :lo12:hva2sv16_b	;# tmp1139, tmp1140,
	add	x0, sp, 1536	;# tmp1141,,
	ldr	q30, [x1]	;# tmp1143, hva2sv16_b
	ldr	q31, [x1, 16]	;# tmp1144, hva2sv16_b
	str	q30, [x0]	;# tmp1143,
	str	q31, [x0, 16]	;# tmp1144,
	add	x1, sp, 1536	;# tmp1145,,
	add	x0, sp, 1504	;# tmp1146,,
	mov	x2, x1	;#, tmp1145
	mov	x1, x0	;#, tmp1146
	adrp	x0, .LC48	;# tmp1147,
	add	x0, x0, :lo12:.LC48	;#, tmp1147,
	adrp	x3, __imp_use_va_args_few_hva_2_short_vector_16_bytes	;# tmp1150,
	add	x3, x3, :lo12:__imp_use_va_args_few_hva_2_short_vector_16_bytes	;# tmp1149, tmp1150,
	ldr	x3, [x3]	;# tmp1148,
	blr	x3		;# tmp1148
	str	w0, [sp, 1820]	;#, actual
	ldr	w2, [sp, 1820]	;#, actual
	adrp	x0, .LC48	;# tmp1151,
	add	x1, x0, :lo12:.LC48	;#, tmp1151,
	adrp	x0, .LC63	;# tmp1152,
	add	x0, x0, :lo12:.LC63	;#, tmp1152,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1820]	;# tmp1153, actual
	cmp	w0, 3	;# tmp1153,
	beq	.L364		;#,
	ldr	w0, [sp, 1948]	;# tmp1155, failures
	add	w0, w0, 1	;# failures_242, tmp1155,
	str	w0, [sp, 1948]	;# failures_242, failures
	ldr	w2, [sp, 1820]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp1156,
	add	x0, x0, :lo12:.LC64	;#, tmp1156,
	bl	__mingw_printf		;#
.L364:
;# varargs-use-dll.c:504:   TEST (several_hva_2_short_vector_16_bytes, 142, hva2sv16_a, hva2sv16_b,
	adrp	x0, hva2sv16_a	;# tmp1158,
	add	x1, x0, :lo12:hva2sv16_a	;# tmp1157, tmp1158,
	add	x0, sp, 1504	;# tmp1159,,
	ldr	q30, [x1]	;# tmp1161, hva2sv16_a
	ldr	q31, [x1, 16]	;# tmp1162, hva2sv16_a
	str	q30, [x0]	;# tmp1161,
	str	q31, [x0, 16]	;# tmp1162,
	adrp	x0, hva2sv16_b	;# tmp1164,
	add	x1, x0, :lo12:hva2sv16_b	;# tmp1163, tmp1164,
	add	x0, sp, 1536	;# tmp1165,,
	ldr	q30, [x1]	;# tmp1167, hva2sv16_b
	ldr	q31, [x1, 16]	;# tmp1168, hva2sv16_b
	str	q30, [x0]	;# tmp1167,
	str	q31, [x0, 16]	;# tmp1168,
	adrp	x0, hva2sv16_c	;# tmp1170,
	add	x1, x0, :lo12:hva2sv16_c	;# tmp1169, tmp1170,
	add	x0, sp, 1440	;# tmp1171,,
	ldr	q30, [x1]	;# tmp1173, hva2sv16_c
	ldr	q31, [x1, 16]	;# tmp1174, hva2sv16_c
	str	q30, [x0]	;# tmp1173,
	str	q31, [x0, 16]	;# tmp1174,
	adrp	x0, hva2sv16_d	;# tmp1176,
	add	x1, x0, :lo12:hva2sv16_d	;# tmp1175, tmp1176,
	add	x0, sp, 1472	;# tmp1177,,
	ldr	q30, [x1]	;# tmp1179, hva2sv16_d
	ldr	q31, [x1, 16]	;# tmp1180, hva2sv16_d
	str	q30, [x0]	;# tmp1179,
	str	q31, [x0, 16]	;# tmp1180,
	adrp	x0, hva2sv16_e	;# tmp1182,
	add	x1, x0, :lo12:hva2sv16_e	;# tmp1181, tmp1182,
	add	x0, sp, 1376	;# tmp1183,,
	ldr	q30, [x1]	;# tmp1185, hva2sv16_e
	ldr	q31, [x1, 16]	;# tmp1186, hva2sv16_e
	str	q30, [x0]	;# tmp1185,
	str	q31, [x0, 16]	;# tmp1186,
	adrp	x0, hva2sv16_f	;# tmp1188,
	add	x1, x0, :lo12:hva2sv16_f	;# tmp1187, tmp1188,
	add	x0, sp, 1408	;# tmp1189,,
	ldr	q30, [x1]	;# tmp1191, hva2sv16_f
	ldr	q31, [x1, 16]	;# tmp1192, hva2sv16_f
	str	q30, [x0]	;# tmp1191,
	str	q31, [x0, 16]	;# tmp1192,
	adrp	x0, hva2sv16_g	;# tmp1194,
	add	x1, x0, :lo12:hva2sv16_g	;# tmp1193, tmp1194,
	add	x0, sp, 1312	;# tmp1195,,
	ldr	q30, [x1]	;# tmp1197, hva2sv16_g
	ldr	q31, [x1, 16]	;# tmp1198, hva2sv16_g
	str	q30, [x0]	;# tmp1197,
	str	q31, [x0, 16]	;# tmp1198,
	adrp	x0, hva2sv16_h	;# tmp1200,
	add	x1, x0, :lo12:hva2sv16_h	;# tmp1199, tmp1200,
	add	x0, sp, 1344	;# tmp1201,,
	ldr	q30, [x1]	;# tmp1203, hva2sv16_h
	ldr	q31, [x1, 16]	;# tmp1204, hva2sv16_h
	str	q30, [x0]	;# tmp1203,
	str	q31, [x0, 16]	;# tmp1204,
	adrp	x0, hva2sv16_i	;# tmp1206,
	add	x1, x0, :lo12:hva2sv16_i	;# tmp1205, tmp1206,
	add	x0, sp, 1248	;# tmp1207,,
	ldr	q30, [x1]	;# tmp1209, hva2sv16_i
	ldr	q31, [x1, 16]	;# tmp1210, hva2sv16_i
	str	q30, [x0]	;# tmp1209,
	str	q31, [x0, 16]	;# tmp1210,
	add	x7, sp, 1312	;# tmp1211,,
	add	x6, sp, 1408	;# tmp1212,,
	add	x5, sp, 1376	;# tmp1213,,
	add	x4, sp, 1472	;# tmp1214,,
	add	x3, sp, 1440	;# tmp1215,,
	add	x2, sp, 1536	;# tmp1216,,
	add	x1, sp, 1504	;# tmp1217,,
	add	x0, sp, 1248	;# tmp1218,,
	str	x0, [sp, 8]	;# tmp1218,
	add	x0, sp, 1344	;# tmp1219,,
	str	x0, [sp]	;# tmp1219,
	adrp	x0, .LC49	;# tmp1220,
	add	x0, x0, :lo12:.LC49	;#, tmp1220,
	adrp	x8, __imp_use_va_args_several_hva_2_short_vector_16_bytes	;# tmp1223,
	add	x8, x8, :lo12:__imp_use_va_args_several_hva_2_short_vector_16_bytes	;# tmp1222, tmp1223,
	ldr	x8, [x8]	;# tmp1221,
	blr	x8		;# tmp1221
	str	w0, [sp, 1816]	;#, actual
	ldr	w2, [sp, 1816]	;#, actual
	adrp	x0, .LC49	;# tmp1224,
	add	x1, x0, :lo12:.LC49	;#, tmp1224,
	adrp	x0, .LC63	;# tmp1225,
	add	x0, x0, :lo12:.LC63	;#, tmp1225,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1816]	;# tmp1226, actual
	cmp	w0, 142	;# tmp1226,
	beq	.L365		;#,
	ldr	w0, [sp, 1948]	;# tmp1228, failures
	add	w0, w0, 1	;# failures_247, tmp1228,
	str	w0, [sp, 1948]	;# failures_247, failures
	ldr	w2, [sp, 1816]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp1229,
	add	x0, x0, :lo12:.LC64	;#, tmp1229,
	bl	__mingw_printf		;#
.L365:
;# varargs-use-dll.c:507:   TEST (many_hva_2_short_vector_16_bytes, 6763, hva2sv16_a, hva2sv16_b,
	adrp	x0, hva2sv16_a	;# tmp1231,
	add	x1, x0, :lo12:hva2sv16_a	;# tmp1230, tmp1231,
	add	x0, sp, 1504	;# tmp1232,,
	ldr	q30, [x1]	;# tmp1234, hva2sv16_a
	ldr	q31, [x1, 16]	;# tmp1235, hva2sv16_a
	str	q30, [x0]	;# tmp1234,
	str	q31, [x0, 16]	;# tmp1235,
	adrp	x0, hva2sv16_b	;# tmp1237,
	add	x1, x0, :lo12:hva2sv16_b	;# tmp1236, tmp1237,
	add	x0, sp, 1536	;# tmp1238,,
	ldr	q30, [x1]	;# tmp1240, hva2sv16_b
	ldr	q31, [x1, 16]	;# tmp1241, hva2sv16_b
	str	q30, [x0]	;# tmp1240,
	str	q31, [x0, 16]	;# tmp1241,
	adrp	x0, hva2sv16_c	;# tmp1243,
	add	x1, x0, :lo12:hva2sv16_c	;# tmp1242, tmp1243,
	add	x0, sp, 1440	;# tmp1244,,
	ldr	q30, [x1]	;# tmp1246, hva2sv16_c
	ldr	q31, [x1, 16]	;# tmp1247, hva2sv16_c
	str	q30, [x0]	;# tmp1246,
	str	q31, [x0, 16]	;# tmp1247,
	adrp	x0, hva2sv16_d	;# tmp1249,
	add	x1, x0, :lo12:hva2sv16_d	;# tmp1248, tmp1249,
	add	x0, sp, 1472	;# tmp1250,,
	ldr	q30, [x1]	;# tmp1252, hva2sv16_d
	ldr	q31, [x1, 16]	;# tmp1253, hva2sv16_d
	str	q30, [x0]	;# tmp1252,
	str	q31, [x0, 16]	;# tmp1253,
	adrp	x0, hva2sv16_e	;# tmp1255,
	add	x1, x0, :lo12:hva2sv16_e	;# tmp1254, tmp1255,
	add	x0, sp, 1376	;# tmp1256,,
	ldr	q30, [x1]	;# tmp1258, hva2sv16_e
	ldr	q31, [x1, 16]	;# tmp1259, hva2sv16_e
	str	q30, [x0]	;# tmp1258,
	str	q31, [x0, 16]	;# tmp1259,
	adrp	x0, hva2sv16_f	;# tmp1261,
	add	x1, x0, :lo12:hva2sv16_f	;# tmp1260, tmp1261,
	add	x0, sp, 1408	;# tmp1262,,
	ldr	q30, [x1]	;# tmp1264, hva2sv16_f
	ldr	q31, [x1, 16]	;# tmp1265, hva2sv16_f
	str	q30, [x0]	;# tmp1264,
	str	q31, [x0, 16]	;# tmp1265,
	adrp	x0, hva2sv16_g	;# tmp1267,
	add	x1, x0, :lo12:hva2sv16_g	;# tmp1266, tmp1267,
	add	x0, sp, 1312	;# tmp1268,,
	ldr	q30, [x1]	;# tmp1270, hva2sv16_g
	ldr	q31, [x1, 16]	;# tmp1271, hva2sv16_g
	str	q30, [x0]	;# tmp1270,
	str	q31, [x0, 16]	;# tmp1271,
	adrp	x0, hva2sv16_h	;# tmp1273,
	add	x1, x0, :lo12:hva2sv16_h	;# tmp1272, tmp1273,
	add	x0, sp, 1344	;# tmp1274,,
	ldr	q30, [x1]	;# tmp1276, hva2sv16_h
	ldr	q31, [x1, 16]	;# tmp1277, hva2sv16_h
	str	q30, [x0]	;# tmp1276,
	str	q31, [x0, 16]	;# tmp1277,
	adrp	x0, hva2sv16_i	;# tmp1279,
	add	x1, x0, :lo12:hva2sv16_i	;# tmp1278, tmp1279,
	add	x0, sp, 1248	;# tmp1280,,
	ldr	q30, [x1]	;# tmp1282, hva2sv16_i
	ldr	q31, [x1, 16]	;# tmp1283, hva2sv16_i
	str	q30, [x0]	;# tmp1282,
	str	q31, [x0, 16]	;# tmp1283,
	adrp	x0, hva2sv16_j	;# tmp1285,
	add	x1, x0, :lo12:hva2sv16_j	;# tmp1284, tmp1285,
	add	x0, sp, 1280	;# tmp1286,,
	ldr	q30, [x1]	;# tmp1288, hva2sv16_j
	ldr	q31, [x1, 16]	;# tmp1289, hva2sv16_j
	str	q30, [x0]	;# tmp1288,
	str	q31, [x0, 16]	;# tmp1289,
	adrp	x0, hva2sv16_k	;# tmp1291,
	add	x1, x0, :lo12:hva2sv16_k	;# tmp1290, tmp1291,
	add	x0, sp, 1184	;# tmp1292,,
	ldr	q30, [x1]	;# tmp1294, hva2sv16_k
	ldr	q31, [x1, 16]	;# tmp1295, hva2sv16_k
	str	q30, [x0]	;# tmp1294,
	str	q31, [x0, 16]	;# tmp1295,
	adrp	x0, hva2sv16_l	;# tmp1297,
	add	x1, x0, :lo12:hva2sv16_l	;# tmp1296, tmp1297,
	add	x0, sp, 1216	;# tmp1298,,
	ldr	q30, [x1]	;# tmp1300, hva2sv16_l
	ldr	q31, [x1, 16]	;# tmp1301, hva2sv16_l
	str	q30, [x0]	;# tmp1300,
	str	q31, [x0, 16]	;# tmp1301,
	adrp	x0, hva2sv16_m	;# tmp1303,
	add	x1, x0, :lo12:hva2sv16_m	;# tmp1302, tmp1303,
	add	x0, sp, 1568	;# tmp1304,,
	ldr	q30, [x1]	;# tmp1306, hva2sv16_m
	ldr	q31, [x1, 16]	;# tmp1307, hva2sv16_m
	str	q30, [x0]	;# tmp1306,
	str	q31, [x0, 16]	;# tmp1307,
	adrp	x0, hva2sv16_n	;# tmp1309,
	add	x1, x0, :lo12:hva2sv16_n	;# tmp1308, tmp1309,
	add	x0, sp, 1600	;# tmp1310,,
	ldr	q30, [x1]	;# tmp1312, hva2sv16_n
	ldr	q31, [x1, 16]	;# tmp1313, hva2sv16_n
	str	q30, [x0]	;# tmp1312,
	str	q31, [x0, 16]	;# tmp1313,
	adrp	x0, hva2sv16_o	;# tmp1315,
	add	x1, x0, :lo12:hva2sv16_o	;# tmp1314, tmp1315,
	add	x0, sp, 1632	;# tmp1316,,
	ldr	q30, [x1]	;# tmp1318, hva2sv16_o
	ldr	q31, [x1, 16]	;# tmp1319, hva2sv16_o
	str	q30, [x0]	;# tmp1318,
	str	q31, [x0, 16]	;# tmp1319,
	adrp	x0, hva2sv16_p	;# tmp1321,
	add	x1, x0, :lo12:hva2sv16_p	;# tmp1320, tmp1321,
	add	x0, sp, 1664	;# tmp1322,,
	ldr	q30, [x1]	;# tmp1324, hva2sv16_p
	ldr	q31, [x1, 16]	;# tmp1325, hva2sv16_p
	str	q30, [x0]	;# tmp1324,
	str	q31, [x0, 16]	;# tmp1325,
	adrp	x0, hva2sv16_q	;# tmp1327,
	add	x1, x0, :lo12:hva2sv16_q	;# tmp1326, tmp1327,
	add	x0, sp, 1696	;# tmp1328,,
	ldr	q30, [x1]	;# tmp1330, hva2sv16_q
	ldr	q31, [x1, 16]	;# tmp1331, hva2sv16_q
	str	q30, [x0]	;# tmp1330,
	str	q31, [x0, 16]	;# tmp1331,
	add	x7, sp, 1312	;# tmp1332,,
	add	x6, sp, 1408	;# tmp1333,,
	add	x5, sp, 1376	;# tmp1334,,
	add	x4, sp, 1472	;# tmp1335,,
	add	x3, sp, 1440	;# tmp1336,,
	add	x2, sp, 1536	;# tmp1337,,
	add	x1, sp, 1504	;# tmp1338,,
	add	x0, sp, 1696	;# tmp1339,,
	str	x0, [sp, 72]	;# tmp1339,
	add	x0, sp, 1664	;# tmp1340,,
	str	x0, [sp, 64]	;# tmp1340,
	add	x0, sp, 1632	;# tmp1341,,
	str	x0, [sp, 56]	;# tmp1341,
	add	x0, sp, 1600	;# tmp1342,,
	str	x0, [sp, 48]	;# tmp1342,
	add	x0, sp, 1568	;# tmp1343,,
	str	x0, [sp, 40]	;# tmp1343,
	add	x0, sp, 1216	;# tmp1344,,
	str	x0, [sp, 32]	;# tmp1344,
	add	x0, sp, 1184	;# tmp1345,,
	str	x0, [sp, 24]	;# tmp1345,
	add	x0, sp, 1280	;# tmp1346,,
	str	x0, [sp, 16]	;# tmp1346,
	add	x0, sp, 1248	;# tmp1347,,
	str	x0, [sp, 8]	;# tmp1347,
	add	x0, sp, 1344	;# tmp1348,,
	str	x0, [sp]	;# tmp1348,
	adrp	x0, .LC50	;# tmp1349,
	add	x0, x0, :lo12:.LC50	;#, tmp1349,
	adrp	x8, __imp_use_va_args_many_hva_2_short_vector_16_bytes	;# tmp1352,
	add	x8, x8, :lo12:__imp_use_va_args_many_hva_2_short_vector_16_bytes	;# tmp1351, tmp1352,
	ldr	x8, [x8]	;# tmp1350,
	blr	x8		;# tmp1350
	str	w0, [sp, 1812]	;#, actual
	ldr	w2, [sp, 1812]	;#, actual
	adrp	x0, .LC50	;# tmp1353,
	add	x1, x0, :lo12:.LC50	;#, tmp1353,
	adrp	x0, .LC63	;# tmp1354,
	add	x0, x0, :lo12:.LC63	;#, tmp1354,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 1812]	;# tmp1355, actual
	mov	w0, 6763	;# tmp1356,
	cmp	w1, w0	;# tmp1355, tmp1356
	beq	.L366		;#,
	ldr	w0, [sp, 1948]	;# tmp1358, failures
	add	w0, w0, 1	;# failures_252, tmp1358,
	str	w0, [sp, 1948]	;# failures_252, failures
	ldr	w2, [sp, 1812]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp1359,
	add	x0, x0, :lo12:.LC64	;#, tmp1359,
	bl	__mingw_printf		;#
.L366:
;# varargs-use-dll.c:512:   TEST (few_hva_4_short_vector_16_bytes, 3, hva4sv16_a, hva4sv16_b);
	adrp	x0, hva4sv16_a	;# tmp1361,
	add	x1, x0, :lo12:hva4sv16_a	;# tmp1360, tmp1361,
	add	x0, sp, 1120	;# tmp1362,,
	ldr	q28, [x1]	;# tmp1364, hva4sv16_a
	ldr	q29, [x1, 16]	;# tmp1365, hva4sv16_a
	ldr	q30, [x1, 32]	;# tmp1366, hva4sv16_a
	ldr	q31, [x1, 48]	;# tmp1367, hva4sv16_a
	str	q28, [x0]	;# tmp1364,
	str	q29, [x0, 16]	;# tmp1365,
	str	q30, [x0, 32]	;# tmp1366,
	str	q31, [x0, 48]	;# tmp1367,
	adrp	x0, hva4sv16_b	;# tmp1369,
	add	x1, x0, :lo12:hva4sv16_b	;# tmp1368, tmp1369,
	add	x0, sp, 1056	;# tmp1370,,
	ldr	q28, [x1]	;# tmp1372, hva4sv16_b
	ldr	q29, [x1, 16]	;# tmp1373, hva4sv16_b
	ldr	q30, [x1, 32]	;# tmp1374, hva4sv16_b
	ldr	q31, [x1, 48]	;# tmp1375, hva4sv16_b
	str	q28, [x0]	;# tmp1372,
	str	q29, [x0, 16]	;# tmp1373,
	str	q30, [x0, 32]	;# tmp1374,
	str	q31, [x0, 48]	;# tmp1375,
	add	x1, sp, 1056	;# tmp1376,,
	add	x0, sp, 1120	;# tmp1377,,
	mov	x2, x1	;#, tmp1376
	mov	x1, x0	;#, tmp1377
	adrp	x0, .LC51	;# tmp1378,
	add	x0, x0, :lo12:.LC51	;#, tmp1378,
	adrp	x3, __imp_use_va_args_few_hva_4_short_vector_16_bytes	;# tmp1381,
	add	x3, x3, :lo12:__imp_use_va_args_few_hva_4_short_vector_16_bytes	;# tmp1380, tmp1381,
	ldr	x3, [x3]	;# tmp1379,
	blr	x3		;# tmp1379
	str	w0, [sp, 1808]	;#, actual
	ldr	w2, [sp, 1808]	;#, actual
	adrp	x0, .LC51	;# tmp1382,
	add	x1, x0, :lo12:.LC51	;#, tmp1382,
	adrp	x0, .LC63	;# tmp1383,
	add	x0, x0, :lo12:.LC63	;#, tmp1383,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1808]	;# tmp1384, actual
	cmp	w0, 3	;# tmp1384,
	beq	.L367		;#,
	ldr	w0, [sp, 1948]	;# tmp1386, failures
	add	w0, w0, 1	;# failures_257, tmp1386,
	str	w0, [sp, 1948]	;# failures_257, failures
	ldr	w2, [sp, 1808]	;#, actual
	mov	w1, 3	;#,
	adrp	x0, .LC64	;# tmp1387,
	add	x0, x0, :lo12:.LC64	;#, tmp1387,
	bl	__mingw_printf		;#
.L367:
;# varargs-use-dll.c:513:   TEST (several_hva_4_short_vector_16_bytes, 142, hva4sv16_a, hva4sv16_b,
	adrp	x0, hva4sv16_a	;# tmp1389,
	add	x1, x0, :lo12:hva4sv16_a	;# tmp1388, tmp1389,
	add	x0, sp, 1120	;# tmp1390,,
	ldr	q28, [x1]	;# tmp1392, hva4sv16_a
	ldr	q29, [x1, 16]	;# tmp1393, hva4sv16_a
	ldr	q30, [x1, 32]	;# tmp1394, hva4sv16_a
	ldr	q31, [x1, 48]	;# tmp1395, hva4sv16_a
	str	q28, [x0]	;# tmp1392,
	str	q29, [x0, 16]	;# tmp1393,
	str	q30, [x0, 32]	;# tmp1394,
	str	q31, [x0, 48]	;# tmp1395,
	adrp	x0, hva4sv16_b	;# tmp1397,
	add	x1, x0, :lo12:hva4sv16_b	;# tmp1396, tmp1397,
	add	x0, sp, 1056	;# tmp1398,,
	ldr	q28, [x1]	;# tmp1400, hva4sv16_b
	ldr	q29, [x1, 16]	;# tmp1401, hva4sv16_b
	ldr	q30, [x1, 32]	;# tmp1402, hva4sv16_b
	ldr	q31, [x1, 48]	;# tmp1403, hva4sv16_b
	str	q28, [x0]	;# tmp1400,
	str	q29, [x0, 16]	;# tmp1401,
	str	q30, [x0, 32]	;# tmp1402,
	str	q31, [x0, 48]	;# tmp1403,
	adrp	x0, hva4sv16_c	;# tmp1405,
	add	x1, x0, :lo12:hva4sv16_c	;# tmp1404, tmp1405,
	add	x0, sp, 992	;# tmp1406,,
	ldr	q28, [x1]	;# tmp1408, hva4sv16_c
	ldr	q29, [x1, 16]	;# tmp1409, hva4sv16_c
	ldr	q30, [x1, 32]	;# tmp1410, hva4sv16_c
	ldr	q31, [x1, 48]	;# tmp1411, hva4sv16_c
	str	q28, [x0]	;# tmp1408,
	str	q29, [x0, 16]	;# tmp1409,
	str	q30, [x0, 32]	;# tmp1410,
	str	q31, [x0, 48]	;# tmp1411,
	adrp	x0, hva4sv16_d	;# tmp1413,
	add	x1, x0, :lo12:hva4sv16_d	;# tmp1412, tmp1413,
	add	x0, sp, 928	;# tmp1414,,
	ldr	q28, [x1]	;# tmp1416, hva4sv16_d
	ldr	q29, [x1, 16]	;# tmp1417, hva4sv16_d
	ldr	q30, [x1, 32]	;# tmp1418, hva4sv16_d
	ldr	q31, [x1, 48]	;# tmp1419, hva4sv16_d
	str	q28, [x0]	;# tmp1416,
	str	q29, [x0, 16]	;# tmp1417,
	str	q30, [x0, 32]	;# tmp1418,
	str	q31, [x0, 48]	;# tmp1419,
	adrp	x0, hva4sv16_e	;# tmp1421,
	add	x1, x0, :lo12:hva4sv16_e	;# tmp1420, tmp1421,
	add	x0, sp, 864	;# tmp1422,,
	ldr	q28, [x1]	;# tmp1424, hva4sv16_e
	ldr	q29, [x1, 16]	;# tmp1425, hva4sv16_e
	ldr	q30, [x1, 32]	;# tmp1426, hva4sv16_e
	ldr	q31, [x1, 48]	;# tmp1427, hva4sv16_e
	str	q28, [x0]	;# tmp1424,
	str	q29, [x0, 16]	;# tmp1425,
	str	q30, [x0, 32]	;# tmp1426,
	str	q31, [x0, 48]	;# tmp1427,
	adrp	x0, hva4sv16_f	;# tmp1429,
	add	x1, x0, :lo12:hva4sv16_f	;# tmp1428, tmp1429,
	add	x0, sp, 800	;# tmp1430,,
	ldr	q28, [x1]	;# tmp1432, hva4sv16_f
	ldr	q29, [x1, 16]	;# tmp1433, hva4sv16_f
	ldr	q30, [x1, 32]	;# tmp1434, hva4sv16_f
	ldr	q31, [x1, 48]	;# tmp1435, hva4sv16_f
	str	q28, [x0]	;# tmp1432,
	str	q29, [x0, 16]	;# tmp1433,
	str	q30, [x0, 32]	;# tmp1434,
	str	q31, [x0, 48]	;# tmp1435,
	adrp	x0, hva4sv16_g	;# tmp1437,
	add	x1, x0, :lo12:hva4sv16_g	;# tmp1436, tmp1437,
	add	x0, sp, 736	;# tmp1438,,
	ldr	q28, [x1]	;# tmp1440, hva4sv16_g
	ldr	q29, [x1, 16]	;# tmp1441, hva4sv16_g
	ldr	q30, [x1, 32]	;# tmp1442, hva4sv16_g
	ldr	q31, [x1, 48]	;# tmp1443, hva4sv16_g
	str	q28, [x0]	;# tmp1440,
	str	q29, [x0, 16]	;# tmp1441,
	str	q30, [x0, 32]	;# tmp1442,
	str	q31, [x0, 48]	;# tmp1443,
	adrp	x0, hva4sv16_h	;# tmp1445,
	add	x1, x0, :lo12:hva4sv16_h	;# tmp1444, tmp1445,
	add	x0, sp, 672	;# tmp1446,,
	ldr	q28, [x1]	;# tmp1448, hva4sv16_h
	ldr	q29, [x1, 16]	;# tmp1449, hva4sv16_h
	ldr	q30, [x1, 32]	;# tmp1450, hva4sv16_h
	ldr	q31, [x1, 48]	;# tmp1451, hva4sv16_h
	str	q28, [x0]	;# tmp1448,
	str	q29, [x0, 16]	;# tmp1449,
	str	q30, [x0, 32]	;# tmp1450,
	str	q31, [x0, 48]	;# tmp1451,
	adrp	x0, hva4sv16_i	;# tmp1453,
	add	x1, x0, :lo12:hva4sv16_i	;# tmp1452, tmp1453,
	add	x0, sp, 608	;# tmp1454,,
	ldr	q28, [x1]	;# tmp1456, hva4sv16_i
	ldr	q29, [x1, 16]	;# tmp1457, hva4sv16_i
	ldr	q30, [x1, 32]	;# tmp1458, hva4sv16_i
	ldr	q31, [x1, 48]	;# tmp1459, hva4sv16_i
	str	q28, [x0]	;# tmp1456,
	str	q29, [x0, 16]	;# tmp1457,
	str	q30, [x0, 32]	;# tmp1458,
	str	q31, [x0, 48]	;# tmp1459,
	add	x7, sp, 736	;# tmp1460,,
	add	x6, sp, 800	;# tmp1461,,
	add	x5, sp, 864	;# tmp1462,,
	add	x4, sp, 928	;# tmp1463,,
	add	x3, sp, 992	;# tmp1464,,
	add	x2, sp, 1056	;# tmp1465,,
	add	x1, sp, 1120	;# tmp1466,,
	add	x0, sp, 608	;# tmp1467,,
	str	x0, [sp, 8]	;# tmp1467,
	add	x0, sp, 672	;# tmp1468,,
	str	x0, [sp]	;# tmp1468,
	adrp	x0, .LC52	;# tmp1469,
	add	x0, x0, :lo12:.LC52	;#, tmp1469,
	adrp	x8, __imp_use_va_args_several_hva_4_short_vector_16_bytes	;# tmp1472,
	add	x8, x8, :lo12:__imp_use_va_args_several_hva_4_short_vector_16_bytes	;# tmp1471, tmp1472,
	ldr	x8, [x8]	;# tmp1470,
	blr	x8		;# tmp1470
	str	w0, [sp, 1804]	;#, actual
	ldr	w2, [sp, 1804]	;#, actual
	adrp	x0, .LC52	;# tmp1473,
	add	x1, x0, :lo12:.LC52	;#, tmp1473,
	adrp	x0, .LC63	;# tmp1474,
	add	x0, x0, :lo12:.LC63	;#, tmp1474,
	bl	__mingw_printf		;#
	ldr	w0, [sp, 1804]	;# tmp1475, actual
	cmp	w0, 142	;# tmp1475,
	beq	.L368		;#,
	ldr	w0, [sp, 1948]	;# tmp1477, failures
	add	w0, w0, 1	;# failures_262, tmp1477,
	str	w0, [sp, 1948]	;# failures_262, failures
	ldr	w2, [sp, 1804]	;#, actual
	mov	w1, 142	;#,
	adrp	x0, .LC64	;# tmp1478,
	add	x0, x0, :lo12:.LC64	;#, tmp1478,
	bl	__mingw_printf		;#
.L368:
;# varargs-use-dll.c:516:   TEST (many_hva_4_short_vector_16_bytes, 6763, hva4sv16_a, hva4sv16_b,
	adrp	x0, hva4sv16_a	;# tmp1480,
	add	x1, x0, :lo12:hva4sv16_a	;# tmp1479, tmp1480,
	add	x0, sp, 1120	;# tmp1481,,
	ldr	q28, [x1]	;# tmp1483, hva4sv16_a
	ldr	q29, [x1, 16]	;# tmp1484, hva4sv16_a
	ldr	q30, [x1, 32]	;# tmp1485, hva4sv16_a
	ldr	q31, [x1, 48]	;# tmp1486, hva4sv16_a
	str	q28, [x0]	;# tmp1483,
	str	q29, [x0, 16]	;# tmp1484,
	str	q30, [x0, 32]	;# tmp1485,
	str	q31, [x0, 48]	;# tmp1486,
	adrp	x0, hva4sv16_b	;# tmp1488,
	add	x1, x0, :lo12:hva4sv16_b	;# tmp1487, tmp1488,
	add	x0, sp, 1056	;# tmp1489,,
	ldr	q28, [x1]	;# tmp1491, hva4sv16_b
	ldr	q29, [x1, 16]	;# tmp1492, hva4sv16_b
	ldr	q30, [x1, 32]	;# tmp1493, hva4sv16_b
	ldr	q31, [x1, 48]	;# tmp1494, hva4sv16_b
	str	q28, [x0]	;# tmp1491,
	str	q29, [x0, 16]	;# tmp1492,
	str	q30, [x0, 32]	;# tmp1493,
	str	q31, [x0, 48]	;# tmp1494,
	adrp	x0, hva4sv16_c	;# tmp1496,
	add	x1, x0, :lo12:hva4sv16_c	;# tmp1495, tmp1496,
	add	x0, sp, 992	;# tmp1497,,
	ldr	q28, [x1]	;# tmp1499, hva4sv16_c
	ldr	q29, [x1, 16]	;# tmp1500, hva4sv16_c
	ldr	q30, [x1, 32]	;# tmp1501, hva4sv16_c
	ldr	q31, [x1, 48]	;# tmp1502, hva4sv16_c
	str	q28, [x0]	;# tmp1499,
	str	q29, [x0, 16]	;# tmp1500,
	str	q30, [x0, 32]	;# tmp1501,
	str	q31, [x0, 48]	;# tmp1502,
	adrp	x0, hva4sv16_d	;# tmp1504,
	add	x1, x0, :lo12:hva4sv16_d	;# tmp1503, tmp1504,
	add	x0, sp, 928	;# tmp1505,,
	ldr	q28, [x1]	;# tmp1507, hva4sv16_d
	ldr	q29, [x1, 16]	;# tmp1508, hva4sv16_d
	ldr	q30, [x1, 32]	;# tmp1509, hva4sv16_d
	ldr	q31, [x1, 48]	;# tmp1510, hva4sv16_d
	str	q28, [x0]	;# tmp1507,
	str	q29, [x0, 16]	;# tmp1508,
	str	q30, [x0, 32]	;# tmp1509,
	str	q31, [x0, 48]	;# tmp1510,
	adrp	x0, hva4sv16_e	;# tmp1512,
	add	x1, x0, :lo12:hva4sv16_e	;# tmp1511, tmp1512,
	add	x0, sp, 864	;# tmp1513,,
	ldr	q28, [x1]	;# tmp1515, hva4sv16_e
	ldr	q29, [x1, 16]	;# tmp1516, hva4sv16_e
	ldr	q30, [x1, 32]	;# tmp1517, hva4sv16_e
	ldr	q31, [x1, 48]	;# tmp1518, hva4sv16_e
	str	q28, [x0]	;# tmp1515,
	str	q29, [x0, 16]	;# tmp1516,
	str	q30, [x0, 32]	;# tmp1517,
	str	q31, [x0, 48]	;# tmp1518,
	adrp	x0, hva4sv16_f	;# tmp1520,
	add	x1, x0, :lo12:hva4sv16_f	;# tmp1519, tmp1520,
	add	x0, sp, 800	;# tmp1521,,
	ldr	q28, [x1]	;# tmp1523, hva4sv16_f
	ldr	q29, [x1, 16]	;# tmp1524, hva4sv16_f
	ldr	q30, [x1, 32]	;# tmp1525, hva4sv16_f
	ldr	q31, [x1, 48]	;# tmp1526, hva4sv16_f
	str	q28, [x0]	;# tmp1523,
	str	q29, [x0, 16]	;# tmp1524,
	str	q30, [x0, 32]	;# tmp1525,
	str	q31, [x0, 48]	;# tmp1526,
	adrp	x0, hva4sv16_g	;# tmp1528,
	add	x1, x0, :lo12:hva4sv16_g	;# tmp1527, tmp1528,
	add	x0, sp, 736	;# tmp1529,,
	ldr	q28, [x1]	;# tmp1531, hva4sv16_g
	ldr	q29, [x1, 16]	;# tmp1532, hva4sv16_g
	ldr	q30, [x1, 32]	;# tmp1533, hva4sv16_g
	ldr	q31, [x1, 48]	;# tmp1534, hva4sv16_g
	str	q28, [x0]	;# tmp1531,
	str	q29, [x0, 16]	;# tmp1532,
	str	q30, [x0, 32]	;# tmp1533,
	str	q31, [x0, 48]	;# tmp1534,
	adrp	x0, hva4sv16_h	;# tmp1536,
	add	x1, x0, :lo12:hva4sv16_h	;# tmp1535, tmp1536,
	add	x0, sp, 672	;# tmp1537,,
	ldr	q28, [x1]	;# tmp1539, hva4sv16_h
	ldr	q29, [x1, 16]	;# tmp1540, hva4sv16_h
	ldr	q30, [x1, 32]	;# tmp1541, hva4sv16_h
	ldr	q31, [x1, 48]	;# tmp1542, hva4sv16_h
	str	q28, [x0]	;# tmp1539,
	str	q29, [x0, 16]	;# tmp1540,
	str	q30, [x0, 32]	;# tmp1541,
	str	q31, [x0, 48]	;# tmp1542,
	adrp	x0, hva4sv16_i	;# tmp1544,
	add	x1, x0, :lo12:hva4sv16_i	;# tmp1543, tmp1544,
	add	x0, sp, 608	;# tmp1545,,
	ldr	q28, [x1]	;# tmp1547, hva4sv16_i
	ldr	q29, [x1, 16]	;# tmp1548, hva4sv16_i
	ldr	q30, [x1, 32]	;# tmp1549, hva4sv16_i
	ldr	q31, [x1, 48]	;# tmp1550, hva4sv16_i
	str	q28, [x0]	;# tmp1547,
	str	q29, [x0, 16]	;# tmp1548,
	str	q30, [x0, 32]	;# tmp1549,
	str	q31, [x0, 48]	;# tmp1550,
	adrp	x0, hva4sv16_j	;# tmp1552,
	add	x1, x0, :lo12:hva4sv16_j	;# tmp1551, tmp1552,
	add	x0, sp, 544	;# tmp1553,,
	ldr	q28, [x1]	;# tmp1555, hva4sv16_j
	ldr	q29, [x1, 16]	;# tmp1556, hva4sv16_j
	ldr	q30, [x1, 32]	;# tmp1557, hva4sv16_j
	ldr	q31, [x1, 48]	;# tmp1558, hva4sv16_j
	str	q28, [x0]	;# tmp1555,
	str	q29, [x0, 16]	;# tmp1556,
	str	q30, [x0, 32]	;# tmp1557,
	str	q31, [x0, 48]	;# tmp1558,
	adrp	x0, hva4sv16_k	;# tmp1560,
	add	x1, x0, :lo12:hva4sv16_k	;# tmp1559, tmp1560,
	add	x0, sp, 480	;# tmp1561,,
	ldr	q28, [x1]	;# tmp1563, hva4sv16_k
	ldr	q29, [x1, 16]	;# tmp1564, hva4sv16_k
	ldr	q30, [x1, 32]	;# tmp1565, hva4sv16_k
	ldr	q31, [x1, 48]	;# tmp1566, hva4sv16_k
	str	q28, [x0]	;# tmp1563,
	str	q29, [x0, 16]	;# tmp1564,
	str	q30, [x0, 32]	;# tmp1565,
	str	q31, [x0, 48]	;# tmp1566,
	adrp	x0, hva4sv16_l	;# tmp1568,
	add	x1, x0, :lo12:hva4sv16_l	;# tmp1567, tmp1568,
	add	x0, sp, 416	;# tmp1569,,
	ldr	q28, [x1]	;# tmp1571, hva4sv16_l
	ldr	q29, [x1, 16]	;# tmp1572, hva4sv16_l
	ldr	q30, [x1, 32]	;# tmp1573, hva4sv16_l
	ldr	q31, [x1, 48]	;# tmp1574, hva4sv16_l
	str	q28, [x0]	;# tmp1571,
	str	q29, [x0, 16]	;# tmp1572,
	str	q30, [x0, 32]	;# tmp1573,
	str	q31, [x0, 48]	;# tmp1574,
	adrp	x0, hva4sv16_m	;# tmp1576,
	add	x1, x0, :lo12:hva4sv16_m	;# tmp1575, tmp1576,
	add	x0, sp, 352	;# tmp1577,,
	ldr	q28, [x1]	;# tmp1579, hva4sv16_m
	ldr	q29, [x1, 16]	;# tmp1580, hva4sv16_m
	ldr	q30, [x1, 32]	;# tmp1581, hva4sv16_m
	ldr	q31, [x1, 48]	;# tmp1582, hva4sv16_m
	str	q28, [x0]	;# tmp1579,
	str	q29, [x0, 16]	;# tmp1580,
	str	q30, [x0, 32]	;# tmp1581,
	str	q31, [x0, 48]	;# tmp1582,
	adrp	x0, hva4sv16_n	;# tmp1584,
	add	x1, x0, :lo12:hva4sv16_n	;# tmp1583, tmp1584,
	add	x0, sp, 288	;# tmp1585,,
	ldr	q28, [x1]	;# tmp1587, hva4sv16_n
	ldr	q29, [x1, 16]	;# tmp1588, hva4sv16_n
	ldr	q30, [x1, 32]	;# tmp1589, hva4sv16_n
	ldr	q31, [x1, 48]	;# tmp1590, hva4sv16_n
	str	q28, [x0]	;# tmp1587,
	str	q29, [x0, 16]	;# tmp1588,
	str	q30, [x0, 32]	;# tmp1589,
	str	q31, [x0, 48]	;# tmp1590,
	adrp	x0, hva4sv16_o	;# tmp1592,
	add	x1, x0, :lo12:hva4sv16_o	;# tmp1591, tmp1592,
	add	x0, sp, 224	;# tmp1593,,
	ldr	q28, [x1]	;# tmp1595, hva4sv16_o
	ldr	q29, [x1, 16]	;# tmp1596, hva4sv16_o
	ldr	q30, [x1, 32]	;# tmp1597, hva4sv16_o
	ldr	q31, [x1, 48]	;# tmp1598, hva4sv16_o
	str	q28, [x0]	;# tmp1595,
	str	q29, [x0, 16]	;# tmp1596,
	str	q30, [x0, 32]	;# tmp1597,
	str	q31, [x0, 48]	;# tmp1598,
	adrp	x0, hva4sv16_p	;# tmp1600,
	add	x1, x0, :lo12:hva4sv16_p	;# tmp1599, tmp1600,
	add	x0, sp, 160	;# tmp1601,,
	ldr	q28, [x1]	;# tmp1603, hva4sv16_p
	ldr	q29, [x1, 16]	;# tmp1604, hva4sv16_p
	ldr	q30, [x1, 32]	;# tmp1605, hva4sv16_p
	ldr	q31, [x1, 48]	;# tmp1606, hva4sv16_p
	str	q28, [x0]	;# tmp1603,
	str	q29, [x0, 16]	;# tmp1604,
	str	q30, [x0, 32]	;# tmp1605,
	str	q31, [x0, 48]	;# tmp1606,
	adrp	x0, hva4sv16_q	;# tmp1608,
	add	x1, x0, :lo12:hva4sv16_q	;# tmp1607, tmp1608,
	add	x0, sp, 96	;# tmp1609,,
	ldr	q28, [x1]	;# tmp1611, hva4sv16_q
	ldr	q29, [x1, 16]	;# tmp1612, hva4sv16_q
	ldr	q30, [x1, 32]	;# tmp1613, hva4sv16_q
	ldr	q31, [x1, 48]	;# tmp1614, hva4sv16_q
	str	q28, [x0]	;# tmp1611,
	str	q29, [x0, 16]	;# tmp1612,
	str	q30, [x0, 32]	;# tmp1613,
	str	q31, [x0, 48]	;# tmp1614,
	add	x7, sp, 736	;# tmp1615,,
	add	x6, sp, 800	;# tmp1616,,
	add	x5, sp, 864	;# tmp1617,,
	add	x4, sp, 928	;# tmp1618,,
	add	x3, sp, 992	;# tmp1619,,
	add	x2, sp, 1056	;# tmp1620,,
	add	x1, sp, 1120	;# tmp1621,,
	add	x0, sp, 96	;# tmp1622,,
	str	x0, [sp, 72]	;# tmp1622,
	add	x0, sp, 160	;# tmp1623,,
	str	x0, [sp, 64]	;# tmp1623,
	add	x0, sp, 224	;# tmp1624,,
	str	x0, [sp, 56]	;# tmp1624,
	add	x0, sp, 288	;# tmp1625,,
	str	x0, [sp, 48]	;# tmp1625,
	add	x0, sp, 352	;# tmp1626,,
	str	x0, [sp, 40]	;# tmp1626,
	add	x0, sp, 416	;# tmp1627,,
	str	x0, [sp, 32]	;# tmp1627,
	add	x0, sp, 480	;# tmp1628,,
	str	x0, [sp, 24]	;# tmp1628,
	add	x0, sp, 544	;# tmp1629,,
	str	x0, [sp, 16]	;# tmp1629,
	add	x0, sp, 608	;# tmp1630,,
	str	x0, [sp, 8]	;# tmp1630,
	add	x0, sp, 672	;# tmp1631,,
	str	x0, [sp]	;# tmp1631,
	adrp	x0, .LC53	;# tmp1632,
	add	x0, x0, :lo12:.LC53	;#, tmp1632,
	adrp	x8, __imp_use_va_args_many_hva_4_short_vector_16_bytes	;# tmp1635,
	add	x8, x8, :lo12:__imp_use_va_args_many_hva_4_short_vector_16_bytes	;# tmp1634, tmp1635,
	ldr	x8, [x8]	;# tmp1633,
	blr	x8		;# tmp1633
	str	w0, [sp, 1800]	;#, actual
	ldr	w2, [sp, 1800]	;#, actual
	adrp	x0, .LC53	;# tmp1636,
	add	x1, x0, :lo12:.LC53	;#, tmp1636,
	adrp	x0, .LC63	;# tmp1637,
	add	x0, x0, :lo12:.LC63	;#, tmp1637,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 1800]	;# tmp1638, actual
	mov	w0, 6763	;# tmp1639,
	cmp	w1, w0	;# tmp1638, tmp1639
	beq	.L369		;#,
	ldr	w0, [sp, 1948]	;# tmp1641, failures
	add	w0, w0, 1	;# failures_267, tmp1641,
	str	w0, [sp, 1948]	;# failures_267, failures
	ldr	w2, [sp, 1800]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp1642,
	add	x0, x0, :lo12:.LC64	;#, tmp1642,
	bl	__mingw_printf		;#
.L369:
;# varargs-use-dll.c:521:   TEST (ints_and_composites, 6763, 1, 2L, c, 5, 8L, f, 21, 34L, i, 89, 144L, l,
	adrp	x0, c	;# tmp1644,
	add	x1, x0, :lo12:c	;# tmp1643, tmp1644,
	add	x0, sp, 1120	;# tmp1645,,
	ldr	q28, [x1]	;# tmp1647, c
	ldr	q29, [x1, 16]	;# tmp1648, c
	ldr	q30, [x1, 32]	;# tmp1649, c
	ldr	q31, [x1, 48]	;# tmp1650, c
	str	q28, [x0]	;# tmp1647,
	str	q29, [x0, 16]	;# tmp1648,
	str	q30, [x0, 32]	;# tmp1649,
	str	q31, [x0, 48]	;# tmp1650,
	adrp	x0, f	;# tmp1652,
	add	x1, x0, :lo12:f	;# tmp1651, tmp1652,
	add	x0, sp, 1056	;# tmp1653,,
	ldr	q28, [x1]	;# tmp1655, f
	ldr	q29, [x1, 16]	;# tmp1656, f
	ldr	q30, [x1, 32]	;# tmp1657, f
	ldr	q31, [x1, 48]	;# tmp1658, f
	str	q28, [x0]	;# tmp1655,
	str	q29, [x0, 16]	;# tmp1656,
	str	q30, [x0, 32]	;# tmp1657,
	str	q31, [x0, 48]	;# tmp1658,
	adrp	x0, i	;# tmp1660,
	add	x1, x0, :lo12:i	;# tmp1659, tmp1660,
	add	x0, sp, 992	;# tmp1661,,
	ldr	q28, [x1]	;# tmp1663, i
	ldr	q29, [x1, 16]	;# tmp1664, i
	ldr	q30, [x1, 32]	;# tmp1665, i
	ldr	q31, [x1, 48]	;# tmp1666, i
	str	q28, [x0]	;# tmp1663,
	str	q29, [x0, 16]	;# tmp1664,
	str	q30, [x0, 32]	;# tmp1665,
	str	q31, [x0, 48]	;# tmp1666,
	adrp	x0, l	;# tmp1668,
	add	x1, x0, :lo12:l	;# tmp1667, tmp1668,
	add	x0, sp, 928	;# tmp1669,,
	ldr	q28, [x1]	;# tmp1671, l
	ldr	q29, [x1, 16]	;# tmp1672, l
	ldr	q30, [x1, 32]	;# tmp1673, l
	ldr	q31, [x1, 48]	;# tmp1674, l
	str	q28, [x0]	;# tmp1671,
	str	q29, [x0, 16]	;# tmp1672,
	str	q30, [x0, 32]	;# tmp1673,
	str	q31, [x0, 48]	;# tmp1674,
	adrp	x0, o	;# tmp1676,
	add	x1, x0, :lo12:o	;# tmp1675, tmp1676,
	add	x0, sp, 864	;# tmp1677,,
	ldr	q28, [x1]	;# tmp1679, o
	ldr	q29, [x1, 16]	;# tmp1680, o
	ldr	q30, [x1, 32]	;# tmp1681, o
	ldr	q31, [x1, 48]	;# tmp1682, o
	str	q28, [x0]	;# tmp1679,
	str	q29, [x0, 16]	;# tmp1680,
	str	q30, [x0, 32]	;# tmp1681,
	str	q31, [x0, 48]	;# tmp1682,
	add	x2, sp, 1056	;# tmp1683,,
	add	x1, sp, 1120	;# tmp1684,,
	mov	w0, 2584	;# tmp1685,
	str	w0, [sp, 72]	;# tmp1685,
	mov	w0, 1597	;# tmp1686,
	str	w0, [sp, 64]	;# tmp1686,
	add	x0, sp, 864	;# tmp1687,,
	str	x0, [sp, 56]	;# tmp1687,
	mov	w0, 610	;# tmp1688,
	str	w0, [sp, 48]	;# tmp1688,
	mov	w0, 377	;# tmp1689,
	str	w0, [sp, 40]	;# tmp1689,
	add	x0, sp, 928	;# tmp1690,,
	str	x0, [sp, 32]	;# tmp1690,
	mov	w0, 144	;# tmp1691,
	str	w0, [sp, 24]	;# tmp1691,
	mov	w0, 89	;# tmp1692,
	str	w0, [sp, 16]	;# tmp1692,
	add	x0, sp, 992	;# tmp1693,,
	str	x0, [sp, 8]	;# tmp1693,
	mov	w0, 34	;# tmp1694,
	str	w0, [sp]	;# tmp1694,
	mov	w7, 21	;#,
	mov	x6, x2	;#, tmp1683
	mov	w5, 8	;#,
	mov	w4, 5	;#,
	mov	x3, x1	;#, tmp1684
	mov	w2, 2	;#,
	mov	w1, 1	;#,
	adrp	x0, .LC54	;# tmp1695,
	add	x0, x0, :lo12:.LC54	;#, tmp1695,
	adrp	x8, __imp_use_va_args_ints_and_composites	;# tmp1698,
	add	x8, x8, :lo12:__imp_use_va_args_ints_and_composites	;# tmp1697, tmp1698,
	ldr	x8, [x8]	;# tmp1696,
	blr	x8		;# tmp1696
	str	w0, [sp, 1796]	;#, actual
	ldr	w2, [sp, 1796]	;#, actual
	adrp	x0, .LC54	;# tmp1699,
	add	x1, x0, :lo12:.LC54	;#, tmp1699,
	adrp	x0, .LC63	;# tmp1700,
	add	x0, x0, :lo12:.LC63	;#, tmp1700,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 1796]	;# tmp1701, actual
	mov	w0, 6763	;# tmp1702,
	cmp	w1, w0	;# tmp1701, tmp1702
	beq	.L370		;#,
	ldr	w0, [sp, 1948]	;# tmp1704, failures
	add	w0, w0, 1	;# failures_272, tmp1704,
	str	w0, [sp, 1948]	;# failures_272, failures
	ldr	w2, [sp, 1796]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp1705,
	add	x0, x0, :lo12:.LC64	;#, tmp1705,
	bl	__mingw_printf		;#
.L370:
;# varargs-use-dll.c:523:   TEST (ints_and_floats, 6763, 1, 2L, 3.0f, 5.0, 8, 13L, 21.0f, 34.0, 55, 89L,
	mov	w0, 2584	;# tmp1706,
	str	w0, [sp, 72]	;# tmp1706,
	mov	x0, 268280837177344	;# tmp1708,
	movk	x0, 0x4098, lsl 48	;# tmp1708,,
	fmov	d31, x0	;# tmp1707, tmp1708
	str	d31, [sp, 64]	;# tmp1707,
	mov	x0, 237494511599616	;# tmp1710,
	movk	x0, 0x408e, lsl 48	;# tmp1710,,
	fmov	d31, x0	;# tmp1709, tmp1710
	str	d31, [sp, 56]	;# tmp1709,
	mov	w0, 610	;# tmp1711,
	str	w0, [sp, 48]	;# tmp1711,
	mov	w0, 377	;# tmp1712,
	str	w0, [sp, 40]	;# tmp1712,
	mov	x0, 35184372088832	;# tmp1714,
	movk	x0, 0x406d, lsl 48	;# tmp1714,,
	fmov	d31, x0	;# tmp1713, tmp1714
	str	d31, [sp, 32]	;# tmp1713,
	mov	x0, 4639270566145032192	;# tmp1716,
	fmov	d31, x0	;# tmp1715, tmp1716
	str	d31, [sp, 24]	;# tmp1715,
	mov	w0, 89	;# tmp1717,
	str	w0, [sp, 16]	;# tmp1717,
	mov	w0, 55	;# tmp1718,
	str	w0, [sp, 8]	;# tmp1718,
	mov	x0, 4629981891913580544	;# tmp1720,
	fmov	d31, x0	;# tmp1719, tmp1720
	str	d31, [sp]	;# tmp1719,
	fmov	d31, 2.1e+1	;# tmp1813,
	fmov	x7, d31	;#, tmp1813
	mov	w6, 13	;#,
	mov	w5, 8	;#,
	fmov	d31, 5.0e+0	;# tmp1814,
	fmov	x4, d31	;#, tmp1814
	fmov	d31, 3.0e+0	;# tmp1815,
	fmov	x3, d31	;#, tmp1815
	mov	w2, 2	;#,
	mov	w1, 1	;#,
	adrp	x0, .LC55	;# tmp1721,
	add	x0, x0, :lo12:.LC55	;#, tmp1721,
	adrp	x8, __imp_use_va_args_ints_and_floats	;# tmp1724,
	add	x8, x8, :lo12:__imp_use_va_args_ints_and_floats	;# tmp1723, tmp1724,
	ldr	x8, [x8]	;# tmp1722,
	blr	x8		;# tmp1722
	str	w0, [sp, 1792]	;#, actual
	ldr	w2, [sp, 1792]	;#, actual
	adrp	x0, .LC55	;# tmp1725,
	add	x1, x0, :lo12:.LC55	;#, tmp1725,
	adrp	x0, .LC63	;# tmp1726,
	add	x0, x0, :lo12:.LC63	;#, tmp1726,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 1792]	;# tmp1727, actual
	mov	w0, 6763	;# tmp1728,
	cmp	w1, w0	;# tmp1727, tmp1728
	beq	.L371		;#,
	ldr	w0, [sp, 1948]	;# tmp1730, failures
	add	w0, w0, 1	;# failures_277, tmp1730,
	str	w0, [sp, 1948]	;# failures_277, failures
	ldr	w2, [sp, 1792]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp1731,
	add	x0, x0, :lo12:.LC64	;#, tmp1731,
	bl	__mingw_printf		;#
.L371:
;# varargs-use-dll.c:525:   TEST (ints_floats_and_composites, 6763, 1, 2L, 3.0f, 5.0, e, 13, 21L, 34.0f,
	adrp	x0, e	;# tmp1733,
	add	x1, x0, :lo12:e	;# tmp1732, tmp1733,
	add	x0, sp, 1120	;# tmp1734,,
	ldr	q28, [x1]	;# tmp1736, e
	ldr	q29, [x1, 16]	;# tmp1737, e
	ldr	q30, [x1, 32]	;# tmp1738, e
	ldr	q31, [x1, 48]	;# tmp1739, e
	str	q28, [x0]	;# tmp1736,
	str	q29, [x0, 16]	;# tmp1737,
	str	q30, [x0, 32]	;# tmp1738,
	str	q31, [x0, 48]	;# tmp1739,
	adrp	x0, j	;# tmp1741,
	add	x1, x0, :lo12:j	;# tmp1740, tmp1741,
	add	x0, sp, 1056	;# tmp1742,,
	ldr	q28, [x1]	;# tmp1744, j
	ldr	q29, [x1, 16]	;# tmp1745, j
	ldr	q30, [x1, 32]	;# tmp1746, j
	ldr	q31, [x1, 48]	;# tmp1747, j
	str	q28, [x0]	;# tmp1744,
	str	q29, [x0, 16]	;# tmp1745,
	str	q30, [x0, 32]	;# tmp1746,
	str	q31, [x0, 48]	;# tmp1747,
	adrp	x0, o	;# tmp1749,
	add	x1, x0, :lo12:o	;# tmp1748, tmp1749,
	add	x0, sp, 992	;# tmp1750,,
	ldr	q28, [x1]	;# tmp1752, o
	ldr	q29, [x1, 16]	;# tmp1753, o
	ldr	q30, [x1, 32]	;# tmp1754, o
	ldr	q31, [x1, 48]	;# tmp1755, o
	str	q28, [x0]	;# tmp1752,
	str	q29, [x0, 16]	;# tmp1753,
	str	q30, [x0, 32]	;# tmp1754,
	str	q31, [x0, 48]	;# tmp1755,
	add	x1, sp, 1120	;# tmp1756,,
	mov	w0, 2584	;# tmp1757,
	str	w0, [sp, 72]	;# tmp1757,
	mov	w0, 1597	;# tmp1758,
	str	w0, [sp, 64]	;# tmp1758,
	add	x0, sp, 992	;# tmp1759,,
	str	x0, [sp, 56]	;# tmp1759,
	mov	x0, 17592186044416	;# tmp1761,
	movk	x0, 0x4083, lsl 48	;# tmp1761,,
	fmov	d31, x0	;# tmp1760, tmp1761
	str	d31, [sp, 48]	;# tmp1760,
	mov	x0, 158329674399744	;# tmp1763,
	movk	x0, 0x4077, lsl 48	;# tmp1763,,
	fmov	d31, x0	;# tmp1762, tmp1763
	str	d31, [sp, 40]	;# tmp1762,
	mov	w0, 233	;# tmp1764,
	str	w0, [sp, 32]	;# tmp1764,
	mov	w0, 144	;# tmp1765,
	str	w0, [sp, 24]	;# tmp1765,
	add	x0, sp, 1056	;# tmp1766,,
	str	x0, [sp, 16]	;# tmp1766,
	mov	x0, 140737488355328	;# tmp1768,
	movk	x0, 0x404b, lsl 48	;# tmp1768,,
	fmov	d31, x0	;# tmp1767, tmp1768
	str	d31, [sp, 8]	;# tmp1767,
	mov	x0, 4629981891913580544	;# tmp1770,
	fmov	d31, x0	;# tmp1769, tmp1770
	str	d31, [sp]	;# tmp1769,
	mov	w7, 21	;#,
	mov	w6, 13	;#,
	mov	x5, x1	;#, tmp1756
	fmov	d31, 5.0e+0	;# tmp1816,
	fmov	x4, d31	;#, tmp1816
	fmov	d31, 3.0e+0	;# tmp1817,
	fmov	x3, d31	;#, tmp1817
	mov	w2, 2	;#,
	mov	w1, 1	;#,
	adrp	x0, .LC56	;# tmp1771,
	add	x0, x0, :lo12:.LC56	;#, tmp1771,
	adrp	x8, __imp_use_va_args_ints_floats_and_composites	;# tmp1774,
	add	x8, x8, :lo12:__imp_use_va_args_ints_floats_and_composites	;# tmp1773, tmp1774,
	ldr	x8, [x8]	;# tmp1772,
	blr	x8		;# tmp1772
	str	w0, [sp, 1788]	;#, actual
	ldr	w2, [sp, 1788]	;#, actual
	adrp	x0, .LC56	;# tmp1775,
	add	x1, x0, :lo12:.LC56	;#, tmp1775,
	adrp	x0, .LC63	;# tmp1776,
	add	x0, x0, :lo12:.LC63	;#, tmp1776,
	bl	__mingw_printf		;#
	ldr	w1, [sp, 1788]	;# tmp1777, actual
	mov	w0, 6763	;# tmp1778,
	cmp	w1, w0	;# tmp1777, tmp1778
	beq	.L372		;#,
	ldr	w0, [sp, 1948]	;# tmp1780, failures
	add	w0, w0, 1	;# failures_282, tmp1780,
	str	w0, [sp, 1948]	;# failures_282, failures
	ldr	w2, [sp, 1788]	;#, actual
	mov	w1, 6763	;#,
	adrp	x0, .LC64	;# tmp1781,
	add	x0, x0, :lo12:.LC64	;#, tmp1781,
	bl	__mingw_printf		;#
.L372:
;# varargs-use-dll.c:528:   DEBUG ("\tfailures: %d\n", failures);
	ldr	w1, [sp, 1948]	;#, failures
	adrp	x0, .LC65	;# tmp1782,
	add	x0, x0, :lo12:.LC65	;#, tmp1782,
	bl	__mingw_printf		;#
;# varargs-use-dll.c:530:   return failures;
	ldr	w0, [sp, 1948]	;# _285, failures
;# varargs-use-dll.c:531: }
	ldp	x29, x30, [sp, 80]	;#,,
	add	sp, sp, 1952	;#,,
	ret	
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
