	.arch armv8-a
;# GNU C23 (GCC) version 15.0.0 20250108 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
;# options passed: -march=armv8-a -mtune=cortex-a53 -O0
	.text
	.align	2
	.global	use_va_args
	.def	use_va_args;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args
use_va_args:
	sub	sp, sp, #272	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 216]	;#,
	str	x2, [sp, 224]	;#,
	str	x3, [sp, 232]	;#,
	str	x4, [sp, 240]	;#,
	str	x5, [sp, 248]	;#,
	str	x6, [sp, 256]	;#,
	str	x7, [sp, 264]	;#,
;# valist-dll.c:22:   va_start (argv, format);
	add	x0, sp, 272	;# tmp128,,
	sub	x0, x0, #56	;# tmp129, tmp128,
	str	x0, [sp, 24]	;# tmp129, MEM[(char * *)&argv]
;# valist-dll.c:23:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp, 24]	;# D.4515, argv
	add	x0, x1, 16	;# D.4516, D.4515,
	str	x0, [sp, 24]	;# D.4516, argv
	add	x0, sp, 32	;# tmp130,,
	ldr	x2, [x1]	;# tmp132, MEM[(struct not_short_vector_12_bytes *)_31]
	ldr	w1, [x1, 8]	;# tmp133, MEM[(struct not_short_vector_12_bytes *)_31]
	str	x2, [x0]	;# tmp132, D.4490
	str	w1, [x0, 8]	;# tmp133, D.4490
;# valist-dll.c:23:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 32]	;# tmp134, D.4490.a
	str	w0, [sp, 204]	;# tmp134, a
;# valist-dll.c:24:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp, 24]	;# D.4517, argv
	add	x0, x1, 16	;# D.4518, D.4517,
	str	x0, [sp, 24]	;# D.4518, argv
	add	x0, sp, 48	;# tmp135,,
	ldr	x2, [x1]	;# tmp137, MEM[(struct not_short_vector_12_bytes *)_35]
	ldr	w1, [x1, 8]	;# tmp138, MEM[(struct not_short_vector_12_bytes *)_35]
	str	x2, [x0]	;# tmp137, D.4491
	str	w1, [x0, 8]	;# tmp138, D.4491
;# valist-dll.c:24:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 52]	;# tmp139, D.4491.b
	str	w0, [sp, 200]	;# tmp139, b
;# valist-dll.c:25:   int c = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp, 24]	;# D.4519, argv
	add	x0, x1, 16	;# D.4520, D.4519,
	str	x0, [sp, 24]	;# D.4520, argv
	add	x0, sp, 64	;# tmp140,,
	ldr	x2, [x1]	;# tmp142, MEM[(struct not_short_vector_12_bytes *)_39]
	ldr	w1, [x1, 8]	;# tmp143, MEM[(struct not_short_vector_12_bytes *)_39]
	str	x2, [x0]	;# tmp142, D.4492
	str	w1, [x0, 8]	;# tmp143, D.4492
;# valist-dll.c:25:   int c = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 72]	;# tmp144, D.4492.c
	str	w0, [sp, 196]	;# tmp144, c
;# valist-dll.c:26:   int d = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp, 24]	;# D.4521, argv
	add	x0, x1, 16	;# D.4522, D.4521,
	str	x0, [sp, 24]	;# D.4522, argv
	add	x0, sp, 80	;# tmp145,,
	ldr	x2, [x1]	;# tmp147, MEM[(struct not_short_vector_12_bytes *)_43]
	ldr	w1, [x1, 8]	;# tmp148, MEM[(struct not_short_vector_12_bytes *)_43]
	str	x2, [x0]	;# tmp147, D.4493
	str	w1, [x0, 8]	;# tmp148, D.4493
;# valist-dll.c:26:   int d = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 80]	;# tmp149, D.4493.a
	str	w0, [sp, 192]	;# tmp149, d
;# valist-dll.c:27:   int e = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp, 24]	;# D.4523, argv
	add	x0, x1, 16	;# D.4524, D.4523,
	str	x0, [sp, 24]	;# D.4524, argv
	add	x0, sp, 96	;# tmp150,,
	ldr	x2, [x1]	;# tmp152, MEM[(struct not_short_vector_12_bytes *)_47]
	ldr	w1, [x1, 8]	;# tmp153, MEM[(struct not_short_vector_12_bytes *)_47]
	str	x2, [x0]	;# tmp152, D.4494
	str	w1, [x0, 8]	;# tmp153, D.4494
;# valist-dll.c:27:   int e = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 100]	;# tmp154, D.4494.b
	str	w0, [sp, 188]	;# tmp154, e
;# valist-dll.c:28:   int f = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp, 24]	;# D.4525, argv
	add	x0, x1, 16	;# D.4526, D.4525,
	str	x0, [sp, 24]	;# D.4526, argv
	add	x0, sp, 112	;# tmp155,,
	ldr	x2, [x1]	;# tmp157, MEM[(struct not_short_vector_12_bytes *)_51]
	ldr	w1, [x1, 8]	;# tmp158, MEM[(struct not_short_vector_12_bytes *)_51]
	str	x2, [x0]	;# tmp157, D.4495
	str	w1, [x0, 8]	;# tmp158, D.4495
;# valist-dll.c:28:   int f = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 120]	;# tmp159, D.4495.c
	str	w0, [sp, 184]	;# tmp159, f
;# valist-dll.c:29:   int g = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp, 24]	;# D.4527, argv
	add	x0, x1, 16	;# D.4528, D.4527,
	str	x0, [sp, 24]	;# D.4528, argv
	add	x0, sp, 128	;# tmp160,,
	ldr	x2, [x1]	;# tmp162, MEM[(struct not_short_vector_12_bytes *)_55]
	ldr	w1, [x1, 8]	;# tmp163, MEM[(struct not_short_vector_12_bytes *)_55]
	str	x2, [x0]	;# tmp162, D.4496
	str	w1, [x0, 8]	;# tmp163, D.4496
;# valist-dll.c:29:   int g = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 128]	;# tmp164, D.4496.a
	str	w0, [sp, 180]	;# tmp164, g
;# valist-dll.c:30:   int h = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp, 24]	;# D.4529, argv
	add	x0, x1, 16	;# D.4530, D.4529,
	str	x0, [sp, 24]	;# D.4530, argv
	add	x0, sp, 144	;# tmp165,,
	ldr	x2, [x1]	;# tmp167, MEM[(struct not_short_vector_12_bytes *)_59]
	ldr	w1, [x1, 8]	;# tmp168, MEM[(struct not_short_vector_12_bytes *)_59]
	str	x2, [x0]	;# tmp167, D.4497
	str	w1, [x0, 8]	;# tmp168, D.4497
;# valist-dll.c:30:   int h = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 148]	;# tmp169, D.4497.b
	str	w0, [sp, 176]	;# tmp169, h
;# valist-dll.c:31:   int i = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp, 24]	;# D.4531, argv
	add	x0, x1, 16	;# D.4532, D.4531,
	str	x0, [sp, 24]	;# D.4532, argv
	add	x0, sp, 160	;# tmp170,,
	ldr	x2, [x1]	;# tmp172, MEM[(struct not_short_vector_12_bytes *)_63]
	ldr	w1, [x1, 8]	;# tmp173, MEM[(struct not_short_vector_12_bytes *)_63]
	str	x2, [x0]	;# tmp172, D.4498
	str	w1, [x0, 8]	;# tmp173, D.4498
;# valist-dll.c:31:   int i = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 168]	;# tmp174, D.4498.c
	str	w0, [sp, 172]	;# tmp174, i
;# valist-dll.c:33:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 204]	;# tmp175, a
	ldr	w0, [sp, 200]	;# tmp176, b
	add	w1, w1, w0	;# _1, tmp175, tmp176
;# valist-dll.c:33:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 196]	;# tmp177, c
	add	w1, w1, w0	;# _2, _1, tmp177
;# valist-dll.c:33:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 192]	;# tmp178, d
	add	w1, w1, w0	;# _3, _2, tmp178
;# valist-dll.c:33:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 188]	;# tmp179, e
	add	w1, w1, w0	;# _4, _3, tmp179
;# valist-dll.c:33:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 184]	;# tmp180, f
	add	w1, w1, w0	;# _5, _4, tmp180
;# valist-dll.c:33:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 180]	;# tmp181, g
	add	w1, w1, w0	;# _6, _5, tmp181
;# valist-dll.c:33:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 176]	;# tmp182, h
	add	w1, w1, w0	;# _7, _6, tmp182
;# valist-dll.c:33:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 172]	;# tmp183, i
	add	w0, w1, w0	;# _29, _7, tmp183
;# valist-dll.c:34: }
	add	sp, sp, 272	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list
	.def	use_va_list;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list
use_va_list:
	sub	sp, sp, #192	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# valist-dll.c:39:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp]	;# D.4533, argv
	add	x0, x1, 16	;# D.4534, D.4533,
	str	x0, [sp]	;# D.4534, argv
	add	x0, sp, 16	;# tmp128,,
	ldr	x2, [x1]	;# tmp130, MEM[(struct not_short_vector_12_bytes *)_28]
	ldr	w1, [x1, 8]	;# tmp131, MEM[(struct not_short_vector_12_bytes *)_28]
	str	x2, [x0]	;# tmp130, D.4502
	str	w1, [x0, 8]	;# tmp131, D.4502
;# valist-dll.c:39:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 16]	;# tmp132, D.4502.a
	str	w0, [sp, 188]	;# tmp132, a
;# valist-dll.c:40:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp]	;# D.4535, argv
	add	x0, x1, 16	;# D.4536, D.4535,
	str	x0, [sp]	;# D.4536, argv
	add	x0, sp, 32	;# tmp133,,
	ldr	x2, [x1]	;# tmp135, MEM[(struct not_short_vector_12_bytes *)_32]
	ldr	w1, [x1, 8]	;# tmp136, MEM[(struct not_short_vector_12_bytes *)_32]
	str	x2, [x0]	;# tmp135, D.4503
	str	w1, [x0, 8]	;# tmp136, D.4503
;# valist-dll.c:40:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 36]	;# tmp137, D.4503.b
	str	w0, [sp, 184]	;# tmp137, b
;# valist-dll.c:41:   int c = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp]	;# D.4537, argv
	add	x0, x1, 16	;# D.4538, D.4537,
	str	x0, [sp]	;# D.4538, argv
	add	x0, sp, 48	;# tmp138,,
	ldr	x2, [x1]	;# tmp140, MEM[(struct not_short_vector_12_bytes *)_36]
	ldr	w1, [x1, 8]	;# tmp141, MEM[(struct not_short_vector_12_bytes *)_36]
	str	x2, [x0]	;# tmp140, D.4504
	str	w1, [x0, 8]	;# tmp141, D.4504
;# valist-dll.c:41:   int c = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 56]	;# tmp142, D.4504.c
	str	w0, [sp, 180]	;# tmp142, c
;# valist-dll.c:42:   int d = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp]	;# D.4539, argv
	add	x0, x1, 16	;# D.4540, D.4539,
	str	x0, [sp]	;# D.4540, argv
	add	x0, sp, 64	;# tmp143,,
	ldr	x2, [x1]	;# tmp145, MEM[(struct not_short_vector_12_bytes *)_40]
	ldr	w1, [x1, 8]	;# tmp146, MEM[(struct not_short_vector_12_bytes *)_40]
	str	x2, [x0]	;# tmp145, D.4505
	str	w1, [x0, 8]	;# tmp146, D.4505
;# valist-dll.c:42:   int d = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 64]	;# tmp147, D.4505.a
	str	w0, [sp, 176]	;# tmp147, d
;# valist-dll.c:43:   int e = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp]	;# D.4541, argv
	add	x0, x1, 16	;# D.4542, D.4541,
	str	x0, [sp]	;# D.4542, argv
	add	x0, sp, 80	;# tmp148,,
	ldr	x2, [x1]	;# tmp150, MEM[(struct not_short_vector_12_bytes *)_44]
	ldr	w1, [x1, 8]	;# tmp151, MEM[(struct not_short_vector_12_bytes *)_44]
	str	x2, [x0]	;# tmp150, D.4506
	str	w1, [x0, 8]	;# tmp151, D.4506
;# valist-dll.c:43:   int e = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 84]	;# tmp152, D.4506.b
	str	w0, [sp, 172]	;# tmp152, e
;# valist-dll.c:44:   int f = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp]	;# D.4543, argv
	add	x0, x1, 16	;# D.4544, D.4543,
	str	x0, [sp]	;# D.4544, argv
	add	x0, sp, 96	;# tmp153,,
	ldr	x2, [x1]	;# tmp155, MEM[(struct not_short_vector_12_bytes *)_48]
	ldr	w1, [x1, 8]	;# tmp156, MEM[(struct not_short_vector_12_bytes *)_48]
	str	x2, [x0]	;# tmp155, D.4507
	str	w1, [x0, 8]	;# tmp156, D.4507
;# valist-dll.c:44:   int f = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 104]	;# tmp157, D.4507.c
	str	w0, [sp, 168]	;# tmp157, f
;# valist-dll.c:45:   int g = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp]	;# D.4545, argv
	add	x0, x1, 16	;# D.4546, D.4545,
	str	x0, [sp]	;# D.4546, argv
	add	x0, sp, 112	;# tmp158,,
	ldr	x2, [x1]	;# tmp160, MEM[(struct not_short_vector_12_bytes *)_52]
	ldr	w1, [x1, 8]	;# tmp161, MEM[(struct not_short_vector_12_bytes *)_52]
	str	x2, [x0]	;# tmp160, D.4508
	str	w1, [x0, 8]	;# tmp161, D.4508
;# valist-dll.c:45:   int g = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 112]	;# tmp162, D.4508.a
	str	w0, [sp, 164]	;# tmp162, g
;# valist-dll.c:46:   int h = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp]	;# D.4547, argv
	add	x0, x1, 16	;# D.4548, D.4547,
	str	x0, [sp]	;# D.4548, argv
	add	x0, sp, 128	;# tmp163,,
	ldr	x2, [x1]	;# tmp165, MEM[(struct not_short_vector_12_bytes *)_56]
	ldr	w1, [x1, 8]	;# tmp166, MEM[(struct not_short_vector_12_bytes *)_56]
	str	x2, [x0]	;# tmp165, D.4509
	str	w1, [x0, 8]	;# tmp166, D.4509
;# valist-dll.c:46:   int h = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 132]	;# tmp167, D.4509.b
	str	w0, [sp, 160]	;# tmp167, h
;# valist-dll.c:47:   int i = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp]	;# D.4549, argv
	add	x0, x1, 16	;# D.4550, D.4549,
	str	x0, [sp]	;# D.4550, argv
	add	x0, sp, 144	;# tmp168,,
	ldr	x2, [x1]	;# tmp170, MEM[(struct not_short_vector_12_bytes *)_60]
	ldr	w1, [x1, 8]	;# tmp171, MEM[(struct not_short_vector_12_bytes *)_60]
	str	x2, [x0]	;# tmp170, D.4510
	str	w1, [x0, 8]	;# tmp171, D.4510
;# valist-dll.c:47:   int i = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 152]	;# tmp172, D.4510.c
	str	w0, [sp, 156]	;# tmp172, i
;# valist-dll.c:48:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 188]	;# tmp173, a
	ldr	w0, [sp, 184]	;# tmp174, b
	add	w1, w1, w0	;# _1, tmp173, tmp174
;# valist-dll.c:48:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 180]	;# tmp175, c
	add	w1, w1, w0	;# _2, _1, tmp175
;# valist-dll.c:48:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 176]	;# tmp176, d
	add	w1, w1, w0	;# _3, _2, tmp176
;# valist-dll.c:48:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 172]	;# tmp177, e
	add	w1, w1, w0	;# _4, _3, tmp177
;# valist-dll.c:48:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 168]	;# tmp178, f
	add	w1, w1, w0	;# _5, _4, tmp178
;# valist-dll.c:48:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 164]	;# tmp179, g
	add	w1, w1, w0	;# _6, _5, tmp179
;# valist-dll.c:48:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 160]	;# tmp180, h
	add	w1, w1, w0	;# _7, _6, tmp180
;# valist-dll.c:48:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 156]	;# tmp181, i
	add	w0, w1, w0	;# _27, _7, tmp181
;# valist-dll.c:49: }
	add	sp, sp, 192	;#,,
	ret	
	.seh_endproc
