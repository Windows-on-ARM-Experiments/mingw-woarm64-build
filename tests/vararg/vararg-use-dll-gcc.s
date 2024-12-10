	.arch armv8-a
;# GNU C17 (GCC) version 15.0.0 20241016 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed: -march=armv8-a -mtune=cortex-a53 -O0
	.text
	.section	.rdata,"dr"
	.align	3
.LC0:
	.ascii "test\12\0"
	.align	3
.LC1:
	.ascii "test: %d\12\0"
	.align	3
.LC2:
	.ascii "vararg-use-dll.c\0"
	.align	3
.LC3:
	.ascii "one_int_argument (\"test: %d\\n\", 100) == 100\0"
	.align	3
.LC4:
	.ascii "test\0"
	.align	3
.LC5:
	.ascii "test: %s\12\0"
	.align	3
.LC6:
	.ascii "one_string_argument (\"test: %s\\n\", \"test\") == \"test\"\0"
	.align	3
.LC7:
	.ascii "sixteen_int_arguments (\"test: %d\\n\", 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768) == 65535\0"
	.align	3
.LC8:
	.ascii "g\0"
	.align	3
.LC9:
	.ascii "f\0"
	.align	3
.LC10:
	.ascii "e\0"
	.align	3
.LC11:
	.ascii "d\0"
	.align	3
.LC12:
	.ascii "c\0"
	.align	3
.LC13:
	.ascii "b\0"
	.align	3
.LC14:
	.ascii "a\0"
	.align	3
.LC15:
	.ascii "p\0"
	.align	3
.LC16:
	.ascii "o\0"
	.align	3
.LC17:
	.ascii "n\0"
	.align	3
.LC18:
	.ascii "m\0"
	.align	3
.LC19:
	.ascii "l\0"
	.align	3
.LC20:
	.ascii "k\0"
	.align	3
.LC21:
	.ascii "j\0"
	.align	3
.LC22:
	.ascii "i\0"
	.align	3
.LC23:
	.ascii "h\0"
	.align	3
.LC24:
	.ascii "sixteen_string_arguments (\"test: %s\\n\", \"a\", \"b\", \"c\", \"d\", \"e\", \"f\", \"g\", \"h\", \"i\", \"j\", \"k\", \"l\", \"m\", \"n\", \"o\", \"p\") == \"p\"\0"
	.text
	.align	2
	.global	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	sub	sp, sp, #112	;#,,
	stp	x29, x30, [sp, 80]	;#,,
	add	x29, sp, 80	;#,,
	.seh_endprologue
	str	w0, [sp, 108]	;# argc, argc
	str	x1, [sp, 96]	;# argv, argv
;# vararg-use-dll.c:24: {
	bl	__main		;#
;# vararg-use-dll.c:25:   no_arguments ("test\n");
	adrp	x0, .LC0	;# tmp111,
	add	x0, x0, :lo12:.LC0	;#, tmp111,
	adrp	x1, __imp_no_arguments	;# tmp114,
	add	x1, x1, :lo12:__imp_no_arguments	;# tmp113, tmp114,
	ldr	x1, [x1]	;# tmp112,
	blr	x1		;# tmp112
;# vararg-use-dll.c:26:   assert (one_int_argument ("test: %d\n", 100) == 100);
	mov	w1, 100	;#,
	adrp	x0, .LC1	;# tmp115,
	add	x0, x0, :lo12:.LC1	;#, tmp115,
	adrp	x2, __imp_one_int_argument	;# tmp118,
	add	x2, x2, :lo12:__imp_one_int_argument	;# tmp117, tmp118,
	ldr	x2, [x2]	;# tmp116,
	blr	x2		;# tmp116
	cmp	w0, 100	;# _1,
	beq	.L2		;#,
	mov	w2, 26	;#,
	adrp	x0, .LC2	;# tmp119,
	add	x1, x0, :lo12:.LC2	;#, tmp119,
	adrp	x0, .LC3	;# tmp120,
	add	x0, x0, :lo12:.LC3	;#, tmp120,
	adrp	x3, __imp__assert	;# tmp123,
	add	x3, x3, :lo12:__imp__assert	;# tmp122, tmp123,
	ldr	x3, [x3]	;# tmp121,
	blr	x3		;# tmp121
.L2:
;# vararg-use-dll.c:27:   assert (one_string_argument ("test: %s\n", "test") == "test");
	adrp	x0, .LC4	;# tmp124,
	add	x1, x0, :lo12:.LC4	;#, tmp124,
	adrp	x0, .LC5	;# tmp125,
	add	x0, x0, :lo12:.LC5	;#, tmp125,
	adrp	x2, __imp_one_string_argument	;# tmp128,
	add	x2, x2, :lo12:__imp_one_string_argument	;# tmp127, tmp128,
	ldr	x2, [x2]	;# tmp126,
	blr	x2		;# tmp126
	mov	x1, x0	;# _2,
	adrp	x0, .LC4	;# tmp130,
	add	x0, x0, :lo12:.LC4	;# tmp129, tmp130,
	cmp	x1, x0	;# _2, tmp129
	beq	.L3		;#,
	mov	w2, 27	;#,
	adrp	x0, .LC2	;# tmp131,
	add	x1, x0, :lo12:.LC2	;#, tmp131,
	adrp	x0, .LC6	;# tmp132,
	add	x0, x0, :lo12:.LC6	;#, tmp132,
	adrp	x3, __imp__assert	;# tmp135,
	add	x3, x3, :lo12:__imp__assert	;# tmp134, tmp135,
	ldr	x3, [x3]	;# tmp133,
	blr	x3		;# tmp133
.L3:
;# vararg-use-dll.c:28:   assert (sixteen_int_arguments ("test: %d\n", 1, 2, 4, 8, 16, 32, 64, 128,
	mov	w0, 32768	;# tmp136,
	str	w0, [sp, 64]	;# tmp136,
	mov	w0, 16384	;# tmp137,
	str	w0, [sp, 56]	;# tmp137,
	mov	w0, 8192	;# tmp138,
	str	w0, [sp, 48]	;# tmp138,
	mov	w0, 4096	;# tmp139,
	str	w0, [sp, 40]	;# tmp139,
	mov	w0, 2048	;# tmp140,
	str	w0, [sp, 32]	;# tmp140,
	mov	w0, 1024	;# tmp141,
	str	w0, [sp, 24]	;# tmp141,
	mov	w0, 512	;# tmp142,
	str	w0, [sp, 16]	;# tmp142,
	mov	w0, 256	;# tmp143,
	str	w0, [sp, 8]	;# tmp143,
	mov	w0, 128	;# tmp144,
	str	w0, [sp]	;# tmp144,
	mov	w7, 64	;#,
	mov	w6, 32	;#,
	mov	w5, 16	;#,
	mov	w4, 8	;#,
	mov	w3, 4	;#,
	mov	w2, 2	;#,
	mov	w1, 1	;#,
	adrp	x0, .LC1	;# tmp145,
	add	x0, x0, :lo12:.LC1	;#, tmp145,
	adrp	x8, __imp_sixteen_int_arguments	;# tmp148,
	add	x8, x8, :lo12:__imp_sixteen_int_arguments	;# tmp147, tmp148,
	ldr	x8, [x8]	;# tmp146,
	blr	x8		;# tmp146
	mov	w1, w0	;# _3,
	mov	w0, 65535	;# tmp149,
	cmp	w1, w0	;# _3, tmp149
	beq	.L4		;#,
	mov	w2, 28	;#,
	adrp	x0, .LC2	;# tmp150,
	add	x1, x0, :lo12:.LC2	;#, tmp150,
	adrp	x0, .LC7	;# tmp151,
	add	x0, x0, :lo12:.LC7	;#, tmp151,
	adrp	x3, __imp__assert	;# tmp154,
	add	x3, x3, :lo12:__imp__assert	;# tmp153, tmp154,
	ldr	x3, [x3]	;# tmp152,
	blr	x3		;# tmp152
.L4:
;# vararg-use-dll.c:32:   assert (sixteen_string_arguments ("test: %s\n", "a", "b", "c", "d", "e", "f",
	adrp	x0, .LC15	;# tmp156,
	add	x0, x0, :lo12:.LC15	;# tmp155, tmp156,
	str	x0, [sp, 64]	;# tmp155,
	adrp	x0, .LC16	;# tmp158,
	add	x0, x0, :lo12:.LC16	;# tmp157, tmp158,
	str	x0, [sp, 56]	;# tmp157,
	adrp	x0, .LC17	;# tmp160,
	add	x0, x0, :lo12:.LC17	;# tmp159, tmp160,
	str	x0, [sp, 48]	;# tmp159,
	adrp	x0, .LC18	;# tmp162,
	add	x0, x0, :lo12:.LC18	;# tmp161, tmp162,
	str	x0, [sp, 40]	;# tmp161,
	adrp	x0, .LC19	;# tmp164,
	add	x0, x0, :lo12:.LC19	;# tmp163, tmp164,
	str	x0, [sp, 32]	;# tmp163,
	adrp	x0, .LC20	;# tmp166,
	add	x0, x0, :lo12:.LC20	;# tmp165, tmp166,
	str	x0, [sp, 24]	;# tmp165,
	adrp	x0, .LC21	;# tmp168,
	add	x0, x0, :lo12:.LC21	;# tmp167, tmp168,
	str	x0, [sp, 16]	;# tmp167,
	adrp	x0, .LC22	;# tmp170,
	add	x0, x0, :lo12:.LC22	;# tmp169, tmp170,
	str	x0, [sp, 8]	;# tmp169,
	adrp	x0, .LC23	;# tmp172,
	add	x0, x0, :lo12:.LC23	;# tmp171, tmp172,
	str	x0, [sp]	;# tmp171,
	adrp	x0, .LC8	;# tmp173,
	add	x7, x0, :lo12:.LC8	;#, tmp173,
	adrp	x0, .LC9	;# tmp174,
	add	x6, x0, :lo12:.LC9	;#, tmp174,
	adrp	x0, .LC10	;# tmp175,
	add	x5, x0, :lo12:.LC10	;#, tmp175,
	adrp	x0, .LC11	;# tmp176,
	add	x4, x0, :lo12:.LC11	;#, tmp176,
	adrp	x0, .LC12	;# tmp177,
	add	x3, x0, :lo12:.LC12	;#, tmp177,
	adrp	x0, .LC13	;# tmp178,
	add	x2, x0, :lo12:.LC13	;#, tmp178,
	adrp	x0, .LC14	;# tmp179,
	add	x1, x0, :lo12:.LC14	;#, tmp179,
	adrp	x0, .LC5	;# tmp180,
	add	x0, x0, :lo12:.LC5	;#, tmp180,
	adrp	x8, __imp_sixteen_string_arguments	;# tmp183,
	add	x8, x8, :lo12:__imp_sixteen_string_arguments	;# tmp182, tmp183,
	ldr	x8, [x8]	;# tmp181,
	blr	x8		;# tmp181
	mov	x1, x0	;# _4,
	adrp	x0, .LC15	;# tmp185,
	add	x0, x0, :lo12:.LC15	;# tmp184, tmp185,
	cmp	x1, x0	;# _4, tmp184
	beq	.L5		;#,
	mov	w2, 32	;#,
	adrp	x0, .LC2	;# tmp186,
	add	x1, x0, :lo12:.LC2	;#, tmp186,
	adrp	x0, .LC24	;# tmp187,
	add	x0, x0, :lo12:.LC24	;#, tmp187,
	adrp	x3, __imp__assert	;# tmp190,
	add	x3, x3, :lo12:__imp__assert	;# tmp189, tmp190,
	ldr	x3, [x3]	;# tmp188,
	blr	x3		;# tmp188
.L5:
;# vararg-use-dll.c:36:   return 0;
	mov	w0, 0	;# _19,
;# vararg-use-dll.c:37: }
	ldp	x29, x30, [sp, 80]	;#,,
	add	sp, sp, 112	;#,,
	ret	
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
