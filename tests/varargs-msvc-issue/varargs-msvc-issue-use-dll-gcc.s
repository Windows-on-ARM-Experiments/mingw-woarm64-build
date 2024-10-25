	.arch armv8-a
;# GNU C23 (GCC) version 15.0.1 20250131 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed: -march=armv8-a -mtune=cortex-a53 -O0
	.text
	.global	hfa4d_a
	.data
	.align	3
	.def	hfa4d_a;	.scl	2;	.type	0;	.endef
hfa4d_a:
;# a:
	.word	0
	.word	1072693248
;# b:
	.word	-1717986918
	.word	1072798105
;# c:
	.word	858993459
	.word	1072902963
;# d:
	.word	-858993459
	.word	1073007820
	.global	hfa4d_b
	.align	3
	.def	hfa4d_b;	.scl	2;	.type	0;	.endef
hfa4d_b:
;# a:
	.word	0
	.word	1073741824
;# b:
	.word	-858993459
	.word	1073794252
;# c:
	.word	-1717986918
	.word	1073846681
;# d:
	.word	1717986918
	.word	1073899110
	.section	.rdata,"dr"
	.align	3
.LC0:
	.ascii "few_hfa_4_doubles\0"
	.text
	.align	2
	.global	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4016]	;#,
	sub	sp, sp, #80	;#,,
	stp	x29, x30, [sp, 32]	;#,,
	add	x29, sp, 32	;#,,
	.seh_endprologue
	str	w0, [sp, 60]	;# argc, argc
	str	x1, [sp, 48]	;# argv, argv
;# varargs-msvc-issue-use-dll.c:26: {
	bl	__main		;#
;# varargs-msvc-issue-use-dll.c:28:       = use_va_args_few_hfa_4_doubles ("few_hfa_4_doubles", hfa4d_a, hfa4d_b);
	adrp	x0, hfa4d_b	;# tmp104,
	add	x0, x0, :lo12:hfa4d_b	;# tmp103, tmp104,
	adrp	x1, hfa4d_a	;# tmp109,
	add	x1, x1, :lo12:hfa4d_a	;# tmp108, tmp109,
	ldr	x11, [x1]	;# tmp110, hfa4d_a
	ldr	x10, [x1, 8]	;# tmp111, hfa4d_a
	ldr	x9, [x1, 16]	;# tmp112, hfa4d_a
	ldr	x8, [x1, 24]	;# tmp113, hfa4d_a
	add	x2, x0, 8	;# tmp115, tmp103,
	mov	x1, sp	;# tmp116,
	mov	x4, x2	;# tmp117, tmp115
	ldp	x2, x3, [x4]	;# tmp118, hfa4d_b
	ldr	x4, [x4, 16]	;# tmp119, hfa4d_b
	stp	x2, x3, [x1]	;# tmp118,
	str	x4, [x1, 16]	;# tmp119,
	ldr	x3, [x0]	;# tmp120, hfa4d_b
	ldr	x2, [x0, 8]	;# tmp121, hfa4d_b
	ldr	x1, [x0, 16]	;# tmp122, hfa4d_b
	mov	x5, x3	;#, tmp120
	mov	x6, x2	;#, tmp121
	mov	x7, x1	;#, tmp122
	ldr	x2, [x0]	;# tmp123, hfa4d_b
	ldr	x1, [x0, 8]	;# tmp124, hfa4d_b
	ldr	x0, [x0, 16]	;# tmp125, hfa4d_b
	mov	x5, x2	;#, tmp123
	mov	x6, x1	;#, tmp124
	mov	x7, x0	;#, tmp125
	mov	x1, x11	;#, tmp110
	mov	x2, x10	;#, tmp111
	mov	x3, x9	;#, tmp112
	mov	x4, x8	;#, tmp113
	adrp	x0, .LC0	;# tmp126,
	add	x0, x0, :lo12:.LC0	;#, tmp126,
	adrp	x8, __imp_use_va_args_few_hfa_4_doubles	;# tmp129,
	add	x8, x8, :lo12:__imp_use_va_args_few_hfa_4_doubles	;# tmp128, tmp129,
	ldr	x8, [x8]	;# tmp127,
	blr	x8		;# tmp127
	str	w0, [sp, 76]	;#, actual
;# varargs-msvc-issue-use-dll.c:30:     return 1;
	mov	w0, 1	;# _4,
;# varargs-msvc-issue-use-dll.c:33: }
	ldp	x29, x30, [sp, 32]	;#,,
	add	sp, sp, 80	;#,,
	ret	
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
