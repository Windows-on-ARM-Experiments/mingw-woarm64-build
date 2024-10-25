	.arch armv8-a
;# GNU C23 (GCC) version 15.0.1 20250131 (experimental) (aarch64-w64-mingw32)
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
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
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
;# varargs-clang-issue-use-dll.c:22:   va_start (argv, format);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
;# varargs-clang-issue-use-dll.c:23:   int retval = use_va_list (format, argv);
	ldr	x0, [sp, 32]	;# argv.0_1, argv
	mov	x1, x0	;#, argv.0_1
	ldr	x0, [sp, 24]	;#, format
	adrp	x2, __imp_use_va_list	;# tmp108,
	add	x2, x2, :lo12:__imp_use_va_list	;# tmp107, tmp108,
	ldr	x2, [x2]	;# tmp106,
	blr	x2		;# tmp106
	str	w0, [sp, 44]	;#, retval
;# varargs-clang-issue-use-dll.c:25:   return retval;
	ldr	w0, [sp, 44]	;# _8, retval
;# varargs-clang-issue-use-dll.c:26: }
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_indirect_va_list
	.def	use_indirect_va_list;	.scl	2;	.type	32;	.endef
	.seh_proc	use_indirect_va_list
use_indirect_va_list:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4064]	;#,
	stp	x29, x30, [sp, -32]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 16]	;# argv, argv
;# varargs-clang-issue-use-dll.c:31:   return use_va_list (format, argv);
	ldr	x1, [sp, 16]	;#, argv
	ldr	x0, [sp, 24]	;#, format
	adrp	x2, __imp_use_va_list	;# tmp105,
	add	x2, x2, :lo12:__imp_use_va_list	;# tmp104, tmp105,
	ldr	x2, [x2]	;# tmp103,
	blr	x2		;# tmp103
;# varargs-clang-issue-use-dll.c:32: }
	ldp	x29, x30, [sp], 32	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	test_indirect_va_list
	.def	test_indirect_va_list;	.scl	2;	.type	32;	.endef
	.seh_proc	test_indirect_va_list
test_indirect_va_list:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
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
;# varargs-clang-issue-use-dll.c:38:   va_start (argv, format);
	add	x0, sp, 112	;# tmp104,,
	sub	x0, x0, #56	;# tmp105, tmp104,
	str	x0, [sp, 32]	;# tmp105, MEM[(char * *)&argv]
;# varargs-clang-issue-use-dll.c:39:   int retval = use_indirect_va_list (format, argv);
	ldr	x0, [sp, 32]	;# argv.1_1, argv
	mov	x1, x0	;#, argv.1_1
	ldr	x0, [sp, 24]	;#, format
	bl	use_indirect_va_list		;#
	str	w0, [sp, 44]	;#, retval
;# varargs-clang-issue-use-dll.c:41:   return retval;
	ldr	w0, [sp, 44]	;# _8, retval
;# varargs-clang-issue-use-dll.c:42: }
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
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
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3808]	;#,
	sub	sp, sp, #288	;#,,
	stp	x29, x30, [sp, 96]	;#,,
	add	x29, sp, 96	;#,,
	.seh_endprologue
	str	w0, [sp, 124]	;# argc, argc
	str	x1, [sp, 112]	;# argv, argv
;# varargs-clang-issue-use-dll.c:53: {
	bl	__main		;#
;# varargs-clang-issue-use-dll.c:54:   struct not_short_vector_12_bytes nsv12_a = { .a = 1, .b = 1, .c = 1 };
	adrp	x0, .LC0	;# tmp111,
	add	x1, x0, :lo12:.LC0	;# tmp110, tmp111,
	add	x0, sp, 264	;# tmp112,,
	ldr	x2, [x1]	;# tmp114,
	ldr	w1, [x1, 8]	;# tmp115,
	str	x2, [x0]	;# tmp114, nsv12_a
	str	w1, [x0, 8]	;# tmp115, nsv12_a
;# varargs-clang-issue-use-dll.c:55:   struct not_short_vector_12_bytes nsv12_b = { .a = 2, .b = 2, .c = 2 };
	adrp	x0, .LC1	;# tmp117,
	add	x1, x0, :lo12:.LC1	;# tmp116, tmp117,
	add	x0, sp, 248	;# tmp118,,
	ldr	x2, [x1]	;# tmp120,
	ldr	w1, [x1, 8]	;# tmp121,
	str	x2, [x0]	;# tmp120, nsv12_b
	str	w1, [x0, 8]	;# tmp121, nsv12_b
;# varargs-clang-issue-use-dll.c:56:   struct not_short_vector_12_bytes nsv12_c = { .a = 3, .b = 3, .c = 3 };
	adrp	x0, .LC2	;# tmp123,
	add	x1, x0, :lo12:.LC2	;# tmp122, tmp123,
	add	x0, sp, 232	;# tmp124,,
	ldr	x2, [x1]	;# tmp126,
	ldr	w1, [x1, 8]	;# tmp127,
	str	x2, [x0]	;# tmp126, nsv12_c
	str	w1, [x0, 8]	;# tmp127, nsv12_c
;# varargs-clang-issue-use-dll.c:57:   struct not_short_vector_12_bytes nsv12_d = { .a = 5, .b = 5, .c = 5 };
	adrp	x0, .LC3	;# tmp129,
	add	x1, x0, :lo12:.LC3	;# tmp128, tmp129,
	add	x0, sp, 216	;# tmp130,,
	ldr	x2, [x1]	;# tmp132,
	ldr	w1, [x1, 8]	;# tmp133,
	str	x2, [x0]	;# tmp132, nsv12_d
	str	w1, [x0, 8]	;# tmp133, nsv12_d
;# varargs-clang-issue-use-dll.c:58:   struct not_short_vector_12_bytes nsv12_e = { .a = 8, .b = 8, .c = 8 };
	adrp	x0, .LC4	;# tmp135,
	add	x1, x0, :lo12:.LC4	;# tmp134, tmp135,
	add	x0, sp, 200	;# tmp136,,
	ldr	x2, [x1]	;# tmp138,
	ldr	w1, [x1, 8]	;# tmp139,
	str	x2, [x0]	;# tmp138, nsv12_e
	str	w1, [x0, 8]	;# tmp139, nsv12_e
;# varargs-clang-issue-use-dll.c:59:   struct not_short_vector_12_bytes nsv12_f = { .a = 13, .b = 13, .c = 13 };
	adrp	x0, .LC5	;# tmp141,
	add	x1, x0, :lo12:.LC5	;# tmp140, tmp141,
	add	x0, sp, 184	;# tmp142,,
	ldr	x2, [x1]	;# tmp144,
	ldr	w1, [x1, 8]	;# tmp145,
	str	x2, [x0]	;# tmp144, nsv12_f
	str	w1, [x0, 8]	;# tmp145, nsv12_f
;# varargs-clang-issue-use-dll.c:60:   struct not_short_vector_12_bytes nsv12_g = { .a = 21, .b = 21, .c = 21 };
	adrp	x0, .LC6	;# tmp147,
	add	x1, x0, :lo12:.LC6	;# tmp146, tmp147,
	add	x0, sp, 168	;# tmp148,,
	ldr	x2, [x1]	;# tmp150,
	ldr	w1, [x1, 8]	;# tmp151,
	str	x2, [x0]	;# tmp150, nsv12_g
	str	w1, [x0, 8]	;# tmp151, nsv12_g
;# varargs-clang-issue-use-dll.c:61:   struct not_short_vector_12_bytes nsv12_h = { .a = 34, .b = 34, .c = 34 };
	adrp	x0, .LC7	;# tmp153,
	add	x1, x0, :lo12:.LC7	;# tmp152, tmp153,
	add	x0, sp, 152	;# tmp154,,
	ldr	x2, [x1]	;# tmp156,
	ldr	w1, [x1, 8]	;# tmp157,
	str	x2, [x0]	;# tmp156, nsv12_h
	str	w1, [x0, 8]	;# tmp157, nsv12_h
;# varargs-clang-issue-use-dll.c:62:   struct not_short_vector_12_bytes nsv12_i = { .a = 55, .b = 55, .c = 55 };
	adrp	x0, .LC8	;# tmp159,
	add	x1, x0, :lo12:.LC8	;# tmp158, tmp159,
	add	x0, sp, 136	;# tmp160,,
	ldr	x2, [x1]	;# tmp162,
	ldr	w1, [x1, 8]	;# tmp163,
	str	x2, [x0]	;# tmp162, nsv12_i
	str	w1, [x0, 8]	;# tmp163, nsv12_i
;# varargs-clang-issue-use-dll.c:64:   int test1 = use_va_args ("format", nsv12_a, nsv12_b, nsv12_c,
	ldr	x5, [sp, 232]	;# tmp165, nsv12_c
	ldr	w6, [sp, 240]	;# tmp166, nsv12_c
	ldr	x3, [sp, 248]	;# tmp167, nsv12_b
	ldr	w4, [sp, 256]	;# tmp168, nsv12_b
	ldr	x9, [sp, 264]	;# tmp169, nsv12_a
	ldr	w8, [sp, 272]	;# tmp170, nsv12_a
	add	x0, sp, 72	;# tmp171,,
	add	x1, sp, 136	;# tmp172,,
	ldr	x2, [x1]	;# tmp173, nsv12_i
	ldr	w1, [x1, 8]	;# tmp174, nsv12_i
	str	x2, [x0]	;# tmp173,
	str	w1, [x0, 8]	;# tmp174,
	add	x0, sp, 56	;# tmp175,,
	add	x1, sp, 152	;# tmp176,,
	ldr	x2, [x1]	;# tmp177, nsv12_h
	ldr	w1, [x1, 8]	;# tmp178, nsv12_h
	str	x2, [x0]	;# tmp177,
	str	w1, [x0, 8]	;# tmp178,
	add	x0, sp, 40	;# tmp179,,
	add	x1, sp, 168	;# tmp180,,
	ldr	x2, [x1]	;# tmp181, nsv12_g
	ldr	w1, [x1, 8]	;# tmp182, nsv12_g
	str	x2, [x0]	;# tmp181,
	str	w1, [x0, 8]	;# tmp182,
	add	x0, sp, 24	;# tmp183,,
	add	x1, sp, 184	;# tmp184,,
	ldr	x2, [x1]	;# tmp185, nsv12_f
	ldr	w1, [x1, 8]	;# tmp186, nsv12_f
	str	x2, [x0]	;# tmp185,
	str	w1, [x0, 8]	;# tmp186,
	add	x0, sp, 8	;# tmp187,,
	add	x1, sp, 200	;# tmp188,,
	ldr	x2, [x1]	;# tmp189, nsv12_e
	ldr	w1, [x1, 8]	;# tmp190, nsv12_e
	str	x2, [x0]	;# tmp189,
	str	w1, [x0, 8]	;# tmp190,
	ldr	w0, [sp, 224]	;# tmp191, nsv12_d
	str	w0, [sp]	;# tmp191,
	ldr	x0, [sp, 216]	;# tmp192, nsv12_d
	mov	x7, x0	;#, tmp192
	ldr	x0, [sp, 216]	;# tmp193, nsv12_d
	mov	x7, x0	;#, tmp193
	mov	x1, x9	;#, tmp169
	mov	x2, x8	;#, tmp170
	adrp	x0, .LC9	;# tmp194,
	add	x0, x0, :lo12:.LC9	;#, tmp194,
	adrp	x8, __imp_use_va_args	;# tmp197,
	add	x8, x8, :lo12:__imp_use_va_args	;# tmp196, tmp197,
	ldr	x8, [x8]	;# tmp195,
	blr	x8		;# tmp195
	str	w0, [sp, 284]	;#, test1
;# varargs-clang-issue-use-dll.c:66:   int test2 = test_va_list ("format", nsv12_a, nsv12_b, nsv12_c,
	ldr	x5, [sp, 232]	;# tmp199, nsv12_c
	ldr	w6, [sp, 240]	;# tmp200, nsv12_c
	ldr	x3, [sp, 248]	;# tmp201, nsv12_b
	ldr	w4, [sp, 256]	;# tmp202, nsv12_b
	ldr	x9, [sp, 264]	;# tmp203, nsv12_a
	ldr	w8, [sp, 272]	;# tmp204, nsv12_a
	add	x0, sp, 72	;# tmp205,,
	add	x1, sp, 136	;# tmp206,,
	ldr	x2, [x1]	;# tmp207, nsv12_i
	ldr	w1, [x1, 8]	;# tmp208, nsv12_i
	str	x2, [x0]	;# tmp207,
	str	w1, [x0, 8]	;# tmp208,
	add	x0, sp, 56	;# tmp209,,
	add	x1, sp, 152	;# tmp210,,
	ldr	x2, [x1]	;# tmp211, nsv12_h
	ldr	w1, [x1, 8]	;# tmp212, nsv12_h
	str	x2, [x0]	;# tmp211,
	str	w1, [x0, 8]	;# tmp212,
	add	x0, sp, 40	;# tmp213,,
	add	x1, sp, 168	;# tmp214,,
	ldr	x2, [x1]	;# tmp215, nsv12_g
	ldr	w1, [x1, 8]	;# tmp216, nsv12_g
	str	x2, [x0]	;# tmp215,
	str	w1, [x0, 8]	;# tmp216,
	add	x0, sp, 24	;# tmp217,,
	add	x1, sp, 184	;# tmp218,,
	ldr	x2, [x1]	;# tmp219, nsv12_f
	ldr	w1, [x1, 8]	;# tmp220, nsv12_f
	str	x2, [x0]	;# tmp219,
	str	w1, [x0, 8]	;# tmp220,
	add	x0, sp, 8	;# tmp221,,
	add	x1, sp, 200	;# tmp222,,
	ldr	x2, [x1]	;# tmp223, nsv12_e
	ldr	w1, [x1, 8]	;# tmp224, nsv12_e
	str	x2, [x0]	;# tmp223,
	str	w1, [x0, 8]	;# tmp224,
	ldr	w0, [sp, 224]	;# tmp225, nsv12_d
	str	w0, [sp]	;# tmp225,
	ldr	x0, [sp, 216]	;# tmp226, nsv12_d
	mov	x7, x0	;#, tmp226
	ldr	x0, [sp, 216]	;# tmp227, nsv12_d
	mov	x7, x0	;#, tmp227
	mov	x1, x9	;#, tmp203
	mov	x2, x8	;#, tmp204
	adrp	x0, .LC9	;# tmp228,
	add	x0, x0, :lo12:.LC9	;#, tmp228,
	bl	test_va_list		;#
	str	w0, [sp, 280]	;#, test2
;# varargs-clang-issue-use-dll.c:68:   int test3 = test_indirect_va_list ("format", nsv12_a, nsv12_b, nsv12_c,
	ldr	x5, [sp, 232]	;# tmp230, nsv12_c
	ldr	w6, [sp, 240]	;# tmp231, nsv12_c
	ldr	x3, [sp, 248]	;# tmp232, nsv12_b
	ldr	w4, [sp, 256]	;# tmp233, nsv12_b
	ldr	x9, [sp, 264]	;# tmp234, nsv12_a
	ldr	w8, [sp, 272]	;# tmp235, nsv12_a
	add	x0, sp, 72	;# tmp236,,
	add	x1, sp, 136	;# tmp237,,
	ldr	x2, [x1]	;# tmp238, nsv12_i
	ldr	w1, [x1, 8]	;# tmp239, nsv12_i
	str	x2, [x0]	;# tmp238,
	str	w1, [x0, 8]	;# tmp239,
	add	x0, sp, 56	;# tmp240,,
	add	x1, sp, 152	;# tmp241,,
	ldr	x2, [x1]	;# tmp242, nsv12_h
	ldr	w1, [x1, 8]	;# tmp243, nsv12_h
	str	x2, [x0]	;# tmp242,
	str	w1, [x0, 8]	;# tmp243,
	add	x0, sp, 40	;# tmp244,,
	add	x1, sp, 168	;# tmp245,,
	ldr	x2, [x1]	;# tmp246, nsv12_g
	ldr	w1, [x1, 8]	;# tmp247, nsv12_g
	str	x2, [x0]	;# tmp246,
	str	w1, [x0, 8]	;# tmp247,
	add	x0, sp, 24	;# tmp248,,
	add	x1, sp, 184	;# tmp249,,
	ldr	x2, [x1]	;# tmp250, nsv12_f
	ldr	w1, [x1, 8]	;# tmp251, nsv12_f
	str	x2, [x0]	;# tmp250,
	str	w1, [x0, 8]	;# tmp251,
	add	x0, sp, 8	;# tmp252,,
	add	x1, sp, 200	;# tmp253,,
	ldr	x2, [x1]	;# tmp254, nsv12_e
	ldr	w1, [x1, 8]	;# tmp255, nsv12_e
	str	x2, [x0]	;# tmp254,
	str	w1, [x0, 8]	;# tmp255,
	ldr	w0, [sp, 224]	;# tmp256, nsv12_d
	str	w0, [sp]	;# tmp256,
	ldr	x0, [sp, 216]	;# tmp257, nsv12_d
	mov	x7, x0	;#, tmp257
	ldr	x0, [sp, 216]	;# tmp258, nsv12_d
	mov	x7, x0	;#, tmp258
	mov	x1, x9	;#, tmp234
	mov	x2, x8	;#, tmp235
	adrp	x0, .LC9	;# tmp259,
	add	x0, x0, :lo12:.LC9	;#, tmp259,
	bl	test_indirect_va_list		;#
	str	w0, [sp, 276]	;#, test3
;# varargs-clang-issue-use-dll.c:71:   return ((test1 == 142) ? 0 : 1) +
	ldr	w0, [sp, 284]	;# tmp261, test1
	cmp	w0, 142	;# tmp261,
	cset	w0, ne	;# tmp262,
	and	w0, w0, 255	;# _1, _1
	mov	w1, w0	;# _2, _1
;# varargs-clang-issue-use-dll.c:72:     ((test2 == 142) ? 0 : 1) +
	ldr	w0, [sp, 280]	;# tmp264, test2
	cmp	w0, 142	;# tmp264,
	cset	w0, ne	;# tmp265,
	and	w0, w0, 255	;# _3, _3
;# varargs-clang-issue-use-dll.c:71:   return ((test1 == 142) ? 0 : 1) +
	add	w0, w1, w0	;# _5, _2, _4
;# varargs-clang-issue-use-dll.c:73:     ((test3 == 142) ? 0 : 1);
	ldr	w1, [sp, 276]	;# tmp267, test3
	cmp	w1, 142	;# tmp267,
	cset	w1, ne	;# tmp268,
	and	w1, w1, 255	;# _6, _6
;# varargs-clang-issue-use-dll.c:72:     ((test2 == 142) ? 0 : 1) +
	add	w0, w0, w1	;# _24, _5, _7
;# varargs-clang-issue-use-dll.c:74: }
	ldp	x29, x30, [sp, 96]	;#,,
	add	sp, sp, 288	;#,,
	ret	
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
	.def	__main;	.scl	2;	.type	32;	.endef
