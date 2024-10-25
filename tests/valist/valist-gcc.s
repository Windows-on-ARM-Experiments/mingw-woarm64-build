	.arch armv8-a
;# GNU C23 (GCC) version 15.0.0 20250108 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
;# options passed: -march=armv8-a -mtune=cortex-a53 -ggdb -O0
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	test_va_list
	.def	test_va_list;	.scl	2;	.type	32;	.endef
	.seh_proc	test_va_list
test_va_list:
.LFB123:
.LM1:
	.cfi_startproc
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# valist-use-dll.c:22:   va_start (argv, format);
.LM2:
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
;# valist-use-dll.c:23:   int retval = use_va_list (format, argv);
.LM3:
	ldr	x0, [sp, 32]	;# argv.0_1, argv
	mov	x1, x0	;#, argv.0_1
	ldr	x0, [sp, 24]	;#, format
	adrp	x2, __imp_use_va_list	;# tmp108,
	add	x2, x2, :lo12:__imp_use_va_list	;# tmp107, tmp108,
	ldr	x2, [x2]	;# tmp106,
	blr	x2		;# tmp106
.LVL0:
	str	w0, [sp, 44]	;#, retval
;# valist-use-dll.c:25:   return retval;
.LM4:
	ldr	w0, [sp, 44]	;# _8, retval
;# valist-use-dll.c:26: }
.LM5:
	ldp	x29, x30, [sp], 112	;#,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE123:
	.seh_endproc
	.align	2
	.global	use_indirect_va_list
	.def	use_indirect_va_list;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list
use_indirect_va_list:
.LFB124:
.LM6:
	.cfi_startproc
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4064]	;#,
	stp	x29, x30, [sp, -32]!	;#,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 16]	;# argv, argv
;# valist-use-dll.c:31:   return use_va_list (format, argv);
.LM7:
	ldr	x1, [sp, 16]	;#, argv
	ldr	x0, [sp, 24]	;#, format
	adrp	x2, __imp_use_va_list	;# tmp105,
	add	x2, x2, :lo12:__imp_use_va_list	;# tmp104, tmp105,
	ldr	x2, [x2]	;# tmp103,
	blr	x2		;# tmp103
.LVL1:
;# valist-use-dll.c:32: }
.LM8:
	ldp	x29, x30, [sp], 32	;#,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE124:
	.seh_endproc
	.align	2
	.global	test_indirect_va_list
	.def	test_indirect_va_list;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list
test_indirect_va_list:
.LFB125:
.LM9:
	.cfi_startproc
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	.cfi_def_cfa_offset 112
	.cfi_offset 29, -112
	.cfi_offset 30, -104
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# valist-use-dll.c:38:   va_start (argv, format);
.LM10:
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
;# valist-use-dll.c:39:   int retval = use_indirect_va_list (format, argv);
.LM11:
	ldr	x0, [sp, 32]	;# argv.1_1, argv
	mov	x1, x0	;#, argv.1_1
	ldr	x0, [sp, 24]	;#, format
	bl	use_indirect_va_list		;#
	str	w0, [sp, 44]	;#, retval
;# valist-use-dll.c:41:   return retval;
.LM12:
	ldr	w0, [sp, 44]	;# _8, retval
;# valist-use-dll.c:42: }
.LM13:
	ldp	x29, x30, [sp], 112	;#,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE125:
	.seh_endproc
	.section	.rdata,"dr"
	.align	3
.LC9:
	.ascii "format\0"
	.text
	.align	2
	.global	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB126:
.LM14:
	.cfi_startproc
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3808]	;#,
	sub	sp, sp, #288	;#,,
	.cfi_def_cfa_offset 288
	stp	x29, x30, [sp, 96]	;#,,
	.cfi_offset 29, -192
	.cfi_offset 30, -184
	add	x29, sp, 96	;#,,
	.seh_endprologue
	str	w0, [sp, 124]	;# argc, argc
	str	x1, [sp, 112]	;# argv, argv
;# valist-use-dll.c:53: {
.LM15:
	bl	__main		;#
;# valist-use-dll.c:54:   struct not_short_vector_12_bytes nsv12_a = { .a = 1, .b = 1, .c = 1 };
.LM16:
	adrp	x0, .LC0	;# tmp111,
	add	x1, x0, :lo12:.LC0	;# tmp110, tmp111,
	add	x0, sp, 264	;# tmp112,,
	ldr	x2, [x1]	;# tmp114,
	ldr	w1, [x1, 8]	;# tmp115,
	str	x2, [x0]	;# tmp114, nsv12_a
	str	w1, [x0, 8]	;# tmp115, nsv12_a
;# valist-use-dll.c:55:   struct not_short_vector_12_bytes nsv12_b = { .a = 2, .b = 2, .c = 2 };
.LM17:
	adrp	x0, .LC1	;# tmp117,
	add	x1, x0, :lo12:.LC1	;# tmp116, tmp117,
	add	x0, sp, 248	;# tmp118,,
	ldr	x2, [x1]	;# tmp120,
	ldr	w1, [x1, 8]	;# tmp121,
	str	x2, [x0]	;# tmp120, nsv12_b
	str	w1, [x0, 8]	;# tmp121, nsv12_b
;# valist-use-dll.c:56:   struct not_short_vector_12_bytes nsv12_c = { .a = 3, .b = 3, .c = 3 };
.LM18:
	adrp	x0, .LC2	;# tmp123,
	add	x1, x0, :lo12:.LC2	;# tmp122, tmp123,
	add	x0, sp, 232	;# tmp124,,
	ldr	x2, [x1]	;# tmp126,
	ldr	w1, [x1, 8]	;# tmp127,
	str	x2, [x0]	;# tmp126, nsv12_c
	str	w1, [x0, 8]	;# tmp127, nsv12_c
;# valist-use-dll.c:57:   struct not_short_vector_12_bytes nsv12_d = { .a = 5, .b = 5, .c = 5 };
.LM19:
	adrp	x0, .LC3	;# tmp129,
	add	x1, x0, :lo12:.LC3	;# tmp128, tmp129,
	add	x0, sp, 216	;# tmp130,,
	ldr	x2, [x1]	;# tmp132,
	ldr	w1, [x1, 8]	;# tmp133,
	str	x2, [x0]	;# tmp132, nsv12_d
	str	w1, [x0, 8]	;# tmp133, nsv12_d
;# valist-use-dll.c:58:   struct not_short_vector_12_bytes nsv12_e = { .a = 8, .b = 8, .c = 8 };
.LM20:
	adrp	x0, .LC4	;# tmp135,
	add	x1, x0, :lo12:.LC4	;# tmp134, tmp135,
	add	x0, sp, 200	;# tmp136,,
	ldr	x2, [x1]	;# tmp138,
	ldr	w1, [x1, 8]	;# tmp139,
	str	x2, [x0]	;# tmp138, nsv12_e
	str	w1, [x0, 8]	;# tmp139, nsv12_e
;# valist-use-dll.c:59:   struct not_short_vector_12_bytes nsv12_f = { .a = 13, .b = 13, .c = 13 };
.LM21:
	adrp	x0, .LC5	;# tmp141,
	add	x1, x0, :lo12:.LC5	;# tmp140, tmp141,
	add	x0, sp, 184	;# tmp142,,
	ldr	x2, [x1]	;# tmp144,
	ldr	w1, [x1, 8]	;# tmp145,
	str	x2, [x0]	;# tmp144, nsv12_f
	str	w1, [x0, 8]	;# tmp145, nsv12_f
;# valist-use-dll.c:60:   struct not_short_vector_12_bytes nsv12_g = { .a = 21, .b = 21, .c = 21 };
.LM22:
	adrp	x0, .LC6	;# tmp147,
	add	x1, x0, :lo12:.LC6	;# tmp146, tmp147,
	add	x0, sp, 168	;# tmp148,,
	ldr	x2, [x1]	;# tmp150,
	ldr	w1, [x1, 8]	;# tmp151,
	str	x2, [x0]	;# tmp150, nsv12_g
	str	w1, [x0, 8]	;# tmp151, nsv12_g
;# valist-use-dll.c:61:   struct not_short_vector_12_bytes nsv12_h = { .a = 34, .b = 34, .c = 34 };
.LM23:
	adrp	x0, .LC7	;# tmp153,
	add	x1, x0, :lo12:.LC7	;# tmp152, tmp153,
	add	x0, sp, 152	;# tmp154,,
	ldr	x2, [x1]	;# tmp156,
	ldr	w1, [x1, 8]	;# tmp157,
	str	x2, [x0]	;# tmp156, nsv12_h
	str	w1, [x0, 8]	;# tmp157, nsv12_h
;# valist-use-dll.c:62:   struct not_short_vector_12_bytes nsv12_i = { .a = 55, .b = 55, .c = 55 };
.LM24:
	adrp	x0, .LC8	;# tmp159,
	add	x1, x0, :lo12:.LC8	;# tmp158, tmp159,
	add	x0, sp, 136	;# tmp160,,
	ldr	x2, [x1]	;# tmp162,
	ldr	w1, [x1, 8]	;# tmp163,
	str	x2, [x0]	;# tmp162, nsv12_i
	str	w1, [x0, 8]	;# tmp163, nsv12_i
;# valist-use-dll.c:64:   int test1 = use_va_args ("format", nsv12_a, nsv12_b, nsv12_c,
.LM25:
	ldr	x7, [sp, 216]	;# tmp164, nsv12_d
	ldr	w8, [sp, 224]	;# tmp165, nsv12_d
	ldr	x3, [sp, 248]	;# tmp168, nsv12_b
	ldr	w4, [sp, 256]	;# tmp169, nsv12_b
	ldr	x10, [sp, 264]	;# tmp170, nsv12_a
	ldr	w9, [sp, 272]	;# tmp171, nsv12_a
	add	x0, sp, 80	;# tmp172,,
	add	x1, sp, 136	;# tmp173,,
	ldr	x2, [x1]	;# tmp174, nsv12_i
	ldr	w1, [x1, 8]	;# tmp175, nsv12_i
	str	x2, [x0]	;# tmp174,
	str	w1, [x0, 8]	;# tmp175,
	add	x0, sp, 64	;# tmp176,,
	add	x1, sp, 152	;# tmp177,,
	ldr	x2, [x1]	;# tmp178, nsv12_h
	ldr	w1, [x1, 8]	;# tmp179, nsv12_h
	str	x2, [x0]	;# tmp178,
	str	w1, [x0, 8]	;# tmp179,
	add	x0, sp, 48	;# tmp180,,
	add	x1, sp, 168	;# tmp181,,
	ldr	x2, [x1]	;# tmp182, nsv12_g
	ldr	w1, [x1, 8]	;# tmp183, nsv12_g
	str	x2, [x0]	;# tmp182,
	str	w1, [x0, 8]	;# tmp183,
	add	x0, sp, 32	;# tmp184,,
	add	x1, sp, 184	;# tmp185,,
	ldr	x2, [x1]	;# tmp186, nsv12_f
	ldr	w1, [x1, 8]	;# tmp187, nsv12_f
	str	x2, [x0]	;# tmp186,
	str	w1, [x0, 8]	;# tmp187,
	add	x0, sp, 16	;# tmp188,,
	add	x1, sp, 200	;# tmp189,,
	ldr	x2, [x1]	;# tmp190, nsv12_e
	ldr	w1, [x1, 8]	;# tmp191, nsv12_e
	str	x2, [x0]	;# tmp190,
	str	w1, [x0, 8]	;# tmp191,
	mov	x1, sp	;# tmp192,
	add	x0, sp, 232	;# tmp193,,
	ldr	x2, [x0]	;# tmp194, nsv12_c
	ldr	w0, [x0, 8]	;# tmp195, nsv12_c
	str	x2, [x1]	;# tmp194,
	str	w0, [x1, 8]	;# tmp195,
	ldr	x1, [sp, 232]	;# tmp196, nsv12_c
	ldr	x0, [sp, 240]	;# tmp197, nsv12_c
	mov	x5, x1	;#, tmp196
	mov	x6, x0	;#, tmp197
	ldr	x1, [sp, 232]	;# tmp198, nsv12_c
	ldr	w0, [sp, 240]	;# tmp199, nsv12_c
	mov	x5, x1	;#, tmp198
	mov	x6, x0	;#, tmp199
	mov	x1, x10	;#, tmp170
	mov	x2, x9	;#, tmp171
	adrp	x0, .LC9	;# tmp200,
	add	x0, x0, :lo12:.LC9	;#, tmp200,
	adrp	x9, __imp_use_va_args	;# tmp203,
	add	x9, x9, :lo12:__imp_use_va_args	;# tmp202, tmp203,
	ldr	x9, [x9]	;# tmp201,
	blr	x9		;# tmp201
.LVL2:
	str	w0, [sp, 284]	;#, test1
;# valist-use-dll.c:66:   int test2 = test_va_list ("format", nsv12_a, nsv12_b, nsv12_c,
.LM26:
	ldr	x7, [sp, 216]	;# tmp204, nsv12_d
	ldr	w8, [sp, 224]	;# tmp205, nsv12_d
	ldr	x3, [sp, 248]	;# tmp208, nsv12_b
	ldr	w4, [sp, 256]	;# tmp209, nsv12_b
	ldr	x10, [sp, 264]	;# tmp210, nsv12_a
	ldr	w9, [sp, 272]	;# tmp211, nsv12_a
	add	x0, sp, 80	;# tmp212,,
	add	x1, sp, 136	;# tmp213,,
	ldr	x2, [x1]	;# tmp214, nsv12_i
	ldr	w1, [x1, 8]	;# tmp215, nsv12_i
	str	x2, [x0]	;# tmp214,
	str	w1, [x0, 8]	;# tmp215,
	add	x0, sp, 64	;# tmp216,,
	add	x1, sp, 152	;# tmp217,,
	ldr	x2, [x1]	;# tmp218, nsv12_h
	ldr	w1, [x1, 8]	;# tmp219, nsv12_h
	str	x2, [x0]	;# tmp218,
	str	w1, [x0, 8]	;# tmp219,
	add	x0, sp, 48	;# tmp220,,
	add	x1, sp, 168	;# tmp221,,
	ldr	x2, [x1]	;# tmp222, nsv12_g
	ldr	w1, [x1, 8]	;# tmp223, nsv12_g
	str	x2, [x0]	;# tmp222,
	str	w1, [x0, 8]	;# tmp223,
	add	x0, sp, 32	;# tmp224,,
	add	x1, sp, 184	;# tmp225,,
	ldr	x2, [x1]	;# tmp226, nsv12_f
	ldr	w1, [x1, 8]	;# tmp227, nsv12_f
	str	x2, [x0]	;# tmp226,
	str	w1, [x0, 8]	;# tmp227,
	add	x0, sp, 16	;# tmp228,,
	add	x1, sp, 200	;# tmp229,,
	ldr	x2, [x1]	;# tmp230, nsv12_e
	ldr	w1, [x1, 8]	;# tmp231, nsv12_e
	str	x2, [x0]	;# tmp230,
	str	w1, [x0, 8]	;# tmp231,
	mov	x1, sp	;# tmp232,
	add	x0, sp, 232	;# tmp233,,
	ldr	x2, [x0]	;# tmp234, nsv12_c
	ldr	w0, [x0, 8]	;# tmp235, nsv12_c
	str	x2, [x1]	;# tmp234,
	str	w0, [x1, 8]	;# tmp235,
	ldr	x1, [sp, 232]	;# tmp236, nsv12_c
	ldr	x0, [sp, 240]	;# tmp237, nsv12_c
	mov	x5, x1	;#, tmp236
	mov	x6, x0	;#, tmp237
	ldr	x1, [sp, 232]	;# tmp238, nsv12_c
	ldr	w0, [sp, 240]	;# tmp239, nsv12_c
	mov	x5, x1	;#, tmp238
	mov	x6, x0	;#, tmp239
	mov	x1, x10	;#, tmp210
	mov	x2, x9	;#, tmp211
	adrp	x0, .LC9	;# tmp240,
	add	x0, x0, :lo12:.LC9	;#, tmp240,
	bl	test_va_list		;#
	str	w0, [sp, 280]	;#, test2
;# valist-use-dll.c:68:   int test3 = test_indirect_va_list ("format", nsv12_a, nsv12_b, nsv12_c,
.LM27:
	ldr	x7, [sp, 216]	;# tmp241, nsv12_d
	ldr	w8, [sp, 224]	;# tmp242, nsv12_d
	ldr	x3, [sp, 248]	;# tmp245, nsv12_b
	ldr	w4, [sp, 256]	;# tmp246, nsv12_b
	ldr	x10, [sp, 264]	;# tmp247, nsv12_a
	ldr	w9, [sp, 272]	;# tmp248, nsv12_a
	add	x0, sp, 80	;# tmp249,,
	add	x1, sp, 136	;# tmp250,,
	ldr	x2, [x1]	;# tmp251, nsv12_i
	ldr	w1, [x1, 8]	;# tmp252, nsv12_i
	str	x2, [x0]	;# tmp251,
	str	w1, [x0, 8]	;# tmp252,
	add	x0, sp, 64	;# tmp253,,
	add	x1, sp, 152	;# tmp254,,
	ldr	x2, [x1]	;# tmp255, nsv12_h
	ldr	w1, [x1, 8]	;# tmp256, nsv12_h
	str	x2, [x0]	;# tmp255,
	str	w1, [x0, 8]	;# tmp256,
	add	x0, sp, 48	;# tmp257,,
	add	x1, sp, 168	;# tmp258,,
	ldr	x2, [x1]	;# tmp259, nsv12_g
	ldr	w1, [x1, 8]	;# tmp260, nsv12_g
	str	x2, [x0]	;# tmp259,
	str	w1, [x0, 8]	;# tmp260,
	add	x0, sp, 32	;# tmp261,,
	add	x1, sp, 184	;# tmp262,,
	ldr	x2, [x1]	;# tmp263, nsv12_f
	ldr	w1, [x1, 8]	;# tmp264, nsv12_f
	str	x2, [x0]	;# tmp263,
	str	w1, [x0, 8]	;# tmp264,
	add	x0, sp, 16	;# tmp265,,
	add	x1, sp, 200	;# tmp266,,
	ldr	x2, [x1]	;# tmp267, nsv12_e
	ldr	w1, [x1, 8]	;# tmp268, nsv12_e
	str	x2, [x0]	;# tmp267,
	str	w1, [x0, 8]	;# tmp268,
	mov	x1, sp	;# tmp269,
	add	x0, sp, 232	;# tmp270,,
	ldr	x2, [x0]	;# tmp271, nsv12_c
	ldr	w0, [x0, 8]	;# tmp272, nsv12_c
	str	x2, [x1]	;# tmp271,
	str	w0, [x1, 8]	;# tmp272,
	ldr	x1, [sp, 232]	;# tmp273, nsv12_c
	ldr	x0, [sp, 240]	;# tmp274, nsv12_c
	mov	x5, x1	;#, tmp273
	mov	x6, x0	;#, tmp274
	ldr	x1, [sp, 232]	;# tmp275, nsv12_c
	ldr	w0, [sp, 240]	;# tmp276, nsv12_c
	mov	x5, x1	;#, tmp275
	mov	x6, x0	;#, tmp276
	mov	x1, x10	;#, tmp247
	mov	x2, x9	;#, tmp248
	adrp	x0, .LC9	;# tmp277,
	add	x0, x0, :lo12:.LC9	;#, tmp277,
	bl	test_indirect_va_list		;#
	str	w0, [sp, 276]	;#, test3
;# valist-use-dll.c:71:   return ((test1 == 142) ? 0 : 1) +
.LM28:
	ldr	w0, [sp, 284]	;# tmp279, test1
	cmp	w0, 142	;# tmp279,
	cset	w0, ne	;# tmp280,
	and	w0, w0, 255	;# _1, _1
	mov	w1, w0	;# _2, _1
;# valist-use-dll.c:72:     ((test2 == 142) ? 0 : 1) +
.LM29:
	ldr	w0, [sp, 280]	;# tmp282, test2
	cmp	w0, 142	;# tmp282,
	cset	w0, ne	;# tmp283,
	and	w0, w0, 255	;# _3, _3
;# valist-use-dll.c:71:   return ((test1 == 142) ? 0 : 1) +
.LM30:
	add	w0, w1, w0	;# _5, _2, _4
;# valist-use-dll.c:73:     ((test3 == 142) ? 0 : 1);
.LM31:
	ldr	w1, [sp, 276]	;# tmp285, test3
	cmp	w1, 142	;# tmp285,
	cset	w1, ne	;# tmp286,
	and	w1, w1, 255	;# _6, _6
;# valist-use-dll.c:72:     ((test2 == 142) ? 0 : 1) +
.LM32:
	add	w0, w0, w1	;# _24, _5, _7
;# valist-use-dll.c:74: }
.LM33:
	ldp	x29, x30, [sp, 96]	;#,,
	add	sp, sp, 288	;#,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE126:
	.seh_endproc
	.data
	.align	3
.LC0:
;# a:
	.word	1
;# b:
	.word	1
;# c:
	.word	1
	.align	3
.LC1:
;# a:
	.word	2
;# b:
	.word	2
;# c:
	.word	2
	.align	3
.LC2:
;# a:
	.word	3
;# b:
	.word	3
;# c:
	.word	3
	.align	3
.LC3:
;# a:
	.word	5
;# b:
	.word	5
;# c:
	.word	5
	.align	3
.LC4:
;# a:
	.word	8
;# b:
	.word	8
;# c:
	.word	8
	.align	3
.LC5:
;# a:
	.word	13
;# b:
	.word	13
;# c:
	.word	13
	.align	3
.LC6:
;# a:
	.word	21
;# b:
	.word	21
;# c:
	.word	21
	.align	3
.LC7:
;# a:
	.word	34
;# b:
	.word	34
;# c:
	.word	34
	.align	3
.LC8:
;# a:
	.word	55
;# b:
	.word	55
;# c:
	.word	55
	.text
	.align	2
	.global	__main
	.def	__main;	.scl	2;	.type	32;	.endef
	.seh_proc	__main
__main:
.LFB127:
.LM34:
	.cfi_startproc
	.seh_endprologue
;# valist-use-dll.c:80: }
.LM35:
	nop	
	ret	
	.cfi_endproc
.LFE127:
	.seh_endproc
.Letext0:
	.section	.debug_info,"dr"
.Ldebug_info0:
	.word	0x459
	.hword	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0xd
	.ascii "GNU C23 15.0.0 20250108 (experimental) -march=armv8-a -mtune=cortex-a53 -ggdb -O0\0"
	.byte	0x1d
	.ascii "valist-use-dll.c\0"
	.ascii "/home/blachex/mingw-woarm64-build/tests/valist\0"
	.xword	.Ltext0
	.xword	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0xa
	.ascii "__gnuc_va_list\0"
	.byte	0x28
	.byte	0x1b
	.word	0xca
	.uleb128 0xe
	.byte	0x8
	.ascii "__builtin_va_list\0"
	.word	0xe2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0xf
	.word	0xe2
	.uleb128 0xa
	.ascii "va_list\0"
	.byte	0x67
	.byte	0x18
	.word	0xb4
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x10
	.ascii "not_short_vector_12_bytes\0"
	.byte	0xc
	.byte	0x1
	.byte	0x2c
	.byte	0x8
	.word	0x1a1
	.uleb128 0x3
	.ascii "a\0"
	.byte	0x2e
	.word	0x13f
	.byte	0
	.uleb128 0x3
	.ascii "b\0"
	.byte	0x2f
	.word	0x13f
	.byte	0x4
	.uleb128 0x3
	.ascii "c\0"
	.byte	0x30
	.word	0x13f
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.ascii "use_va_args\0"
	.byte	0xd
	.word	0x13f
	.word	0x1be
	.uleb128 0x4
	.word	0x1be
	.uleb128 0x5
	.byte	0
	.uleb128 0x6
	.word	0xea
	.uleb128 0xb
	.ascii "use_va_list\0"
	.byte	0x10
	.word	0x13f
	.word	0x1e4
	.uleb128 0x4
	.word	0x1be
	.uleb128 0x4
	.word	0xef
	.byte	0
	.uleb128 0x11
	.ascii "__main\0"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.xword	.LFB127
	.xword	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.ascii "main\0"
	.byte	0x34
	.word	0x13f
	.xword	.LFB126
	.xword	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.word	0x328
	.uleb128 0x7
	.ascii "argc\0"
	.byte	0x34
	.byte	0xb
	.word	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x7
	.ascii "argv\0"
	.byte	0x34
	.byte	0x17
	.word	0x328
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1
	.ascii "nsv12_a\0"
	.byte	0x36
	.byte	0x24
	.word	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.ascii "nsv12_b\0"
	.byte	0x37
	.byte	0x24
	.word	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.ascii "nsv12_c\0"
	.byte	0x38
	.byte	0x24
	.word	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.ascii "nsv12_d\0"
	.byte	0x39
	.byte	0x24
	.word	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.ascii "nsv12_e\0"
	.byte	0x3a
	.byte	0x24
	.word	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.ascii "nsv12_f\0"
	.byte	0x3b
	.byte	0x24
	.word	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.ascii "nsv12_g\0"
	.byte	0x3c
	.byte	0x24
	.word	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1
	.ascii "nsv12_h\0"
	.byte	0x3d
	.byte	0x24
	.word	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1
	.ascii "nsv12_i\0"
	.byte	0x3e
	.byte	0x24
	.word	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1
	.ascii "test1\0"
	.byte	0x40
	.byte	0x7
	.word	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1
	.ascii "test2\0"
	.byte	0x42
	.byte	0x7
	.word	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1
	.ascii "test3\0"
	.byte	0x44
	.byte	0x7
	.word	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.xword	.LVL2
	.word	0x1a1
	.byte	0
	.uleb128 0x6
	.word	0x32d
	.uleb128 0x6
	.word	0xe2
	.uleb128 0xc
	.ascii "test_indirect_va_list\0"
	.byte	0x23
	.word	0x13f
	.xword	.LFB125
	.xword	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.word	0x397
	.uleb128 0x9
	.secrel32	.LASF0
	.byte	0x23
	.byte	0x24
	.word	0x1be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x5
	.uleb128 0x1
	.ascii "argv\0"
	.byte	0x25
	.byte	0xb
	.word	0xef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.ascii "retval\0"
	.byte	0x27
	.byte	0x7
	.word	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x12
	.ascii "use_indirect_va_list\0"
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.word	0x13f
	.xword	.LFB124
	.xword	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.word	0x3f5
	.uleb128 0x9
	.secrel32	.LASF0
	.byte	0x1d
	.byte	0x23
	.word	0x1be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x7
	.ascii "argv\0"
	.byte	0x1d
	.byte	0x33
	.word	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x8
	.xword	.LVL1
	.word	0x1c3
	.byte	0
	.uleb128 0x13
	.ascii "test_va_list\0"
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.word	0x13f
	.xword	.LFB123
	.xword	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.secrel32	.LASF0
	.byte	0x13
	.byte	0x1b
	.word	0x1be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x5
	.uleb128 0x1
	.ascii "argv\0"
	.byte	0x15
	.byte	0xb
	.word	0xef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.ascii "retval\0"
	.byte	0x17
	.byte	0x7
	.word	0x13f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x8
	.xword	.LVL0
	.word	0x1c3
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x8
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x8
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xd
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.word	0x2c
	.hword	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.hword	0
	.hword	0
	.xword	.Ltext0
	.xword	.Letext0-.Ltext0
	.xword	0
	.xword	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.word	.LELT0-.LSLT0
.LSLT0:
	.hword	0x5
	.byte	0x8
	.byte	0
	.word	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf2
	.byte	0xd
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x8
	.uleb128 0x2
	.ascii "/home/blachex/mingw-woarm64-build/tests/valist\0"
	.ascii "/home/blachex/cross-aarch64-w64-mingw32-ucrt/lib/gcc/aarch64-w64-mingw32/15.0.0/include"
	.byte	0
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x8
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x3
	.ascii "valist-use-dll.c\0"
	.byte	0
	.ascii "valist-use-dll.c\0"
	.byte	0
	.ascii "stdarg.h\0"
	.byte	0x1
.LELTP0:
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM1
	.byte	0x2a
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM2
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM3
	.byte	0x18
	.byte	0x5
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM4
	.byte	0x19
	.byte	0x5
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM5
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM7
	.byte	0x18
	.byte	0x5
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM8
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM9
	.byte	0x1b
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM10
	.byte	0x19
	.byte	0x5
	.uleb128 0x3
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM11
	.byte	0x18
	.byte	0x5
	.uleb128 0x10
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM12
	.byte	0x19
	.byte	0x5
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM13
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM14
	.byte	0x22
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM15
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM16
	.byte	0x18
	.byte	0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM17
	.byte	0x18
	.byte	0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM18
	.byte	0x18
	.byte	0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM19
	.byte	0x18
	.byte	0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM20
	.byte	0x18
	.byte	0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM21
	.byte	0x18
	.byte	0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM22
	.byte	0x18
	.byte	0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM23
	.byte	0x18
	.byte	0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM24
	.byte	0x18
	.byte	0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM25
	.byte	0x19
	.byte	0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM26
	.byte	0x19
	.byte	0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM27
	.byte	0x19
	.byte	0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM28
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1e
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM29
	.byte	0x18
	.byte	0x5
	.uleb128 0x19
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM30
	.byte	0x16
	.byte	0x5
	.uleb128 0x23
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM31
	.byte	0x19
	.byte	0x5
	.uleb128 0x19
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM32
	.byte	0x16
	.byte	0x5
	.uleb128 0x1e
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM33
	.byte	0x19
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM34
	.byte	0x1c
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM35
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.Letext0
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"dr"
.LASF0:
	.ascii "format\0"
	.def	__main;	.scl	2;	.type	32;	.endef
