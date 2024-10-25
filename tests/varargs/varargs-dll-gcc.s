	.arch armv8-a
;# GNU C23 (GCC) version 15.0.1 20250131 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed: -march=armv8-a -mtune=cortex-a53 -O0
	.text
	.align	2
	.global	use_va_args_no_arguments
	.def	use_va_args_no_arguments;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_no_arguments
use_va_args_no_arguments:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 40]	;#,
	str	x2, [sp, 48]	;#,
	str	x3, [sp, 56]	;#,
	str	x4, [sp, 64]	;#,
	str	x5, [sp, 72]	;#,
	str	x6, [sp, 80]	;#,
	str	x7, [sp, 88]	;#,
;# varargs-dll.c:18:   va_start (argv, format);
	add	x0, sp, 96	;# tmp103,,
	sub	x0, x0, #56	;# tmp104, tmp103,
	str	x0, [sp, 24]	;# tmp104, MEM[(char * *)&argv]
;# varargs-dll.c:20:   return 165;
	mov	w0, 165	;# _4,
;# varargs-dll.c:21: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_no_arguments
	.def	use_va_list_no_arguments;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_no_arguments
use_va_list_no_arguments:
	sub	sp, sp, #16	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:26:   return 165;
	mov	w0, 165	;# _1,
;# varargs-dll.c:27: }
	add	sp, sp, 16	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_longs
	.def	use_va_args_few_longs;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_longs
use_va_args_few_longs:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 40]	;#,
	str	x2, [sp, 48]	;#,
	str	x3, [sp, 56]	;#,
	str	x4, [sp, 64]	;#,
	str	x5, [sp, 72]	;#,
	str	x6, [sp, 80]	;#,
	str	x7, [sp, 88]	;#,
;# varargs-dll.c:33:   va_start (argv, format);
	add	x0, sp, 96	;# tmp107,,
	sub	x0, x0, #56	;# tmp108, tmp107,
	str	x0, [sp, 16]	;# tmp108, MEM[(char * *)&argv]
;# varargs-dll.c:34:   long a = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8082, argv
	add	x1, x0, 8	;# D.8083, D.8082,
	str	x1, [sp, 16]	;# D.8083, argv
	ldr	w0, [x0]	;# tmp109, MEM[(long int *)_10]
	str	w0, [sp, 28]	;# tmp109, a
;# varargs-dll.c:35:   long b = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8084, argv
	add	x1, x0, 8	;# D.8085, D.8084,
	str	x1, [sp, 16]	;# D.8085, argv
	ldr	w0, [x0]	;# tmp110, MEM[(long int *)_13]
	str	w0, [sp, 24]	;# tmp110, b
;# varargs-dll.c:37:   return a + b;
	ldr	w1, [sp, 28]	;# tmp111, a
	ldr	w0, [sp, 24]	;# tmp112, b
	add	w0, w1, w0	;# _8, tmp111, tmp112
;# varargs-dll.c:38: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_longs
	.def	use_va_list_few_longs;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_longs
use_va_list_few_longs:
	sub	sp, sp, #32	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:43:   long a = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8086, argv
	add	x1, x0, 8	;# D.8087, D.8086,
	str	x1, [sp]	;# D.8087, argv
	ldr	w0, [x0]	;# tmp107, MEM[(long int *)_7]
	str	w0, [sp, 28]	;# tmp107, a
;# varargs-dll.c:44:   long b = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8088, argv
	add	x1, x0, 8	;# D.8089, D.8088,
	str	x1, [sp]	;# D.8089, argv
	ldr	w0, [x0]	;# tmp108, MEM[(long int *)_10]
	str	w0, [sp, 24]	;# tmp108, b
;# varargs-dll.c:45:   return a + b;
	ldr	w1, [sp, 28]	;# tmp109, a
	ldr	w0, [sp, 24]	;# tmp110, b
	add	w0, w1, w0	;# _6, tmp109, tmp110
;# varargs-dll.c:46: }
	add	sp, sp, 32	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_longs
	.def	use_va_args_several_longs;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_longs
use_va_args_several_longs:
	sub	sp, sp, #128	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 72]	;#,
	str	x2, [sp, 80]	;#,
	str	x3, [sp, 88]	;#,
	str	x4, [sp, 96]	;#,
	str	x5, [sp, 104]	;#,
	str	x6, [sp, 112]	;#,
	str	x7, [sp, 120]	;#,
;# varargs-dll.c:52:   va_start (argv, format);
	add	x0, sp, 128	;# tmp128,,
	sub	x0, x0, #56	;# tmp129, tmp128,
	str	x0, [sp, 16]	;# tmp129, MEM[(char * *)&argv]
;# varargs-dll.c:53:   long a = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8090, argv
	add	x1, x0, 8	;# D.8091, D.8090,
	str	x1, [sp, 16]	;# D.8091, argv
	ldr	w0, [x0]	;# tmp130, MEM[(long int *)_31]
	str	w0, [sp, 60]	;# tmp130, a
;# varargs-dll.c:54:   long b = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8092, argv
	add	x1, x0, 8	;# D.8093, D.8092,
	str	x1, [sp, 16]	;# D.8093, argv
	ldr	w0, [x0]	;# tmp131, MEM[(long int *)_34]
	str	w0, [sp, 56]	;# tmp131, b
;# varargs-dll.c:55:   long c = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8094, argv
	add	x1, x0, 8	;# D.8095, D.8094,
	str	x1, [sp, 16]	;# D.8095, argv
	ldr	w0, [x0]	;# tmp132, MEM[(long int *)_37]
	str	w0, [sp, 52]	;# tmp132, c
;# varargs-dll.c:56:   long d = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8096, argv
	add	x1, x0, 8	;# D.8097, D.8096,
	str	x1, [sp, 16]	;# D.8097, argv
	ldr	w0, [x0]	;# tmp133, MEM[(long int *)_40]
	str	w0, [sp, 48]	;# tmp133, d
;# varargs-dll.c:57:   long e = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8098, argv
	add	x1, x0, 8	;# D.8099, D.8098,
	str	x1, [sp, 16]	;# D.8099, argv
	ldr	w0, [x0]	;# tmp134, MEM[(long int *)_43]
	str	w0, [sp, 44]	;# tmp134, e
;# varargs-dll.c:58:   long f = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8100, argv
	add	x1, x0, 8	;# D.8101, D.8100,
	str	x1, [sp, 16]	;# D.8101, argv
	ldr	w0, [x0]	;# tmp135, MEM[(long int *)_46]
	str	w0, [sp, 40]	;# tmp135, f
;# varargs-dll.c:59:   long g = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8102, argv
	add	x1, x0, 8	;# D.8103, D.8102,
	str	x1, [sp, 16]	;# D.8103, argv
	ldr	w0, [x0]	;# tmp136, MEM[(long int *)_49]
	str	w0, [sp, 36]	;# tmp136, g
;# varargs-dll.c:60:   long h = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8104, argv
	add	x1, x0, 8	;# D.8105, D.8104,
	str	x1, [sp, 16]	;# D.8105, argv
	ldr	w0, [x0]	;# tmp137, MEM[(long int *)_52]
	str	w0, [sp, 32]	;# tmp137, h
;# varargs-dll.c:61:   long i = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8106, argv
	add	x1, x0, 8	;# D.8107, D.8106,
	str	x1, [sp, 16]	;# D.8107, argv
	ldr	w0, [x0]	;# tmp138, MEM[(long int *)_55]
	str	w0, [sp, 28]	;# tmp138, i
;# varargs-dll.c:63:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 60]	;# tmp139, a
	ldr	w0, [sp, 56]	;# tmp140, b
	add	w1, w1, w0	;# _1, tmp139, tmp140
;# varargs-dll.c:63:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 52]	;# tmp141, c
	add	w1, w1, w0	;# _2, _1, tmp141
;# varargs-dll.c:63:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 48]	;# tmp142, d
	add	w1, w1, w0	;# _3, _2, tmp142
;# varargs-dll.c:63:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 44]	;# tmp143, e
	add	w1, w1, w0	;# _4, _3, tmp143
;# varargs-dll.c:63:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 40]	;# tmp144, f
	add	w1, w1, w0	;# _5, _4, tmp144
;# varargs-dll.c:63:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 36]	;# tmp145, g
	add	w1, w1, w0	;# _6, _5, tmp145
;# varargs-dll.c:63:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 32]	;# tmp146, h
	add	w1, w1, w0	;# _7, _6, tmp146
;# varargs-dll.c:63:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 28]	;# tmp147, i
	add	w0, w1, w0	;# _29, _7, tmp147
;# varargs-dll.c:64: }
	add	sp, sp, 128	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_longs
	.def	use_va_list_several_longs;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_longs
use_va_list_several_longs:
	sub	sp, sp, #64	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:69:   long a = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8108, argv
	add	x1, x0, 8	;# D.8109, D.8108,
	str	x1, [sp]	;# D.8109, argv
	ldr	w0, [x0]	;# tmp128, MEM[(long int *)_28]
	str	w0, [sp, 60]	;# tmp128, a
;# varargs-dll.c:70:   long b = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8110, argv
	add	x1, x0, 8	;# D.8111, D.8110,
	str	x1, [sp]	;# D.8111, argv
	ldr	w0, [x0]	;# tmp129, MEM[(long int *)_31]
	str	w0, [sp, 56]	;# tmp129, b
;# varargs-dll.c:71:   long c = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8112, argv
	add	x1, x0, 8	;# D.8113, D.8112,
	str	x1, [sp]	;# D.8113, argv
	ldr	w0, [x0]	;# tmp130, MEM[(long int *)_34]
	str	w0, [sp, 52]	;# tmp130, c
;# varargs-dll.c:72:   long d = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8114, argv
	add	x1, x0, 8	;# D.8115, D.8114,
	str	x1, [sp]	;# D.8115, argv
	ldr	w0, [x0]	;# tmp131, MEM[(long int *)_37]
	str	w0, [sp, 48]	;# tmp131, d
;# varargs-dll.c:73:   long e = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8116, argv
	add	x1, x0, 8	;# D.8117, D.8116,
	str	x1, [sp]	;# D.8117, argv
	ldr	w0, [x0]	;# tmp132, MEM[(long int *)_40]
	str	w0, [sp, 44]	;# tmp132, e
;# varargs-dll.c:74:   long f = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8118, argv
	add	x1, x0, 8	;# D.8119, D.8118,
	str	x1, [sp]	;# D.8119, argv
	ldr	w0, [x0]	;# tmp133, MEM[(long int *)_43]
	str	w0, [sp, 40]	;# tmp133, f
;# varargs-dll.c:75:   long g = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8120, argv
	add	x1, x0, 8	;# D.8121, D.8120,
	str	x1, [sp]	;# D.8121, argv
	ldr	w0, [x0]	;# tmp134, MEM[(long int *)_46]
	str	w0, [sp, 36]	;# tmp134, g
;# varargs-dll.c:76:   long h = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8122, argv
	add	x1, x0, 8	;# D.8123, D.8122,
	str	x1, [sp]	;# D.8123, argv
	ldr	w0, [x0]	;# tmp135, MEM[(long int *)_49]
	str	w0, [sp, 32]	;# tmp135, h
;# varargs-dll.c:77:   long i = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8124, argv
	add	x1, x0, 8	;# D.8125, D.8124,
	str	x1, [sp]	;# D.8125, argv
	ldr	w0, [x0]	;# tmp136, MEM[(long int *)_52]
	str	w0, [sp, 28]	;# tmp136, i
;# varargs-dll.c:78:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 60]	;# tmp137, a
	ldr	w0, [sp, 56]	;# tmp138, b
	add	w1, w1, w0	;# _1, tmp137, tmp138
;# varargs-dll.c:78:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 52]	;# tmp139, c
	add	w1, w1, w0	;# _2, _1, tmp139
;# varargs-dll.c:78:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 48]	;# tmp140, d
	add	w1, w1, w0	;# _3, _2, tmp140
;# varargs-dll.c:78:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 44]	;# tmp141, e
	add	w1, w1, w0	;# _4, _3, tmp141
;# varargs-dll.c:78:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 40]	;# tmp142, f
	add	w1, w1, w0	;# _5, _4, tmp142
;# varargs-dll.c:78:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 36]	;# tmp143, g
	add	w1, w1, w0	;# _6, _5, tmp143
;# varargs-dll.c:78:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 32]	;# tmp144, h
	add	w1, w1, w0	;# _7, _6, tmp144
;# varargs-dll.c:78:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 28]	;# tmp145, i
	add	w0, w1, w0	;# _27, _7, tmp145
;# varargs-dll.c:79: }
	add	sp, sp, 64	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_longs
	.def	use_va_args_many_longs;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_longs
use_va_args_many_longs:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 104]	;#,
	str	x2, [sp, 112]	;#,
	str	x3, [sp, 120]	;#,
	str	x4, [sp, 128]	;#,
	str	x5, [sp, 136]	;#,
	str	x6, [sp, 144]	;#,
	str	x7, [sp, 152]	;#,
;# varargs-dll.c:85:   va_start (argv, format);
	add	x0, sp, 160	;# tmp152,,
	sub	x0, x0, #56	;# tmp153, tmp152,
	str	x0, [sp, 16]	;# tmp153, MEM[(char * *)&argv]
;# varargs-dll.c:86:   long a = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8126, argv
	add	x1, x0, 8	;# D.8127, D.8126,
	str	x1, [sp, 16]	;# D.8127, argv
	ldr	w0, [x0]	;# tmp154, MEM[(long int *)_55]
	str	w0, [sp, 92]	;# tmp154, a
;# varargs-dll.c:87:   long b = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8128, argv
	add	x1, x0, 8	;# D.8129, D.8128,
	str	x1, [sp, 16]	;# D.8129, argv
	ldr	w0, [x0]	;# tmp155, MEM[(long int *)_58]
	str	w0, [sp, 88]	;# tmp155, b
;# varargs-dll.c:88:   long c = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8130, argv
	add	x1, x0, 8	;# D.8131, D.8130,
	str	x1, [sp, 16]	;# D.8131, argv
	ldr	w0, [x0]	;# tmp156, MEM[(long int *)_61]
	str	w0, [sp, 84]	;# tmp156, c
;# varargs-dll.c:89:   long d = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8132, argv
	add	x1, x0, 8	;# D.8133, D.8132,
	str	x1, [sp, 16]	;# D.8133, argv
	ldr	w0, [x0]	;# tmp157, MEM[(long int *)_64]
	str	w0, [sp, 80]	;# tmp157, d
;# varargs-dll.c:90:   long e = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8134, argv
	add	x1, x0, 8	;# D.8135, D.8134,
	str	x1, [sp, 16]	;# D.8135, argv
	ldr	w0, [x0]	;# tmp158, MEM[(long int *)_67]
	str	w0, [sp, 76]	;# tmp158, e
;# varargs-dll.c:91:   long f = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8136, argv
	add	x1, x0, 8	;# D.8137, D.8136,
	str	x1, [sp, 16]	;# D.8137, argv
	ldr	w0, [x0]	;# tmp159, MEM[(long int *)_70]
	str	w0, [sp, 72]	;# tmp159, f
;# varargs-dll.c:92:   long g = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8138, argv
	add	x1, x0, 8	;# D.8139, D.8138,
	str	x1, [sp, 16]	;# D.8139, argv
	ldr	w0, [x0]	;# tmp160, MEM[(long int *)_73]
	str	w0, [sp, 68]	;# tmp160, g
;# varargs-dll.c:93:   long h = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8140, argv
	add	x1, x0, 8	;# D.8141, D.8140,
	str	x1, [sp, 16]	;# D.8141, argv
	ldr	w0, [x0]	;# tmp161, MEM[(long int *)_76]
	str	w0, [sp, 64]	;# tmp161, h
;# varargs-dll.c:94:   long i = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8142, argv
	add	x1, x0, 8	;# D.8143, D.8142,
	str	x1, [sp, 16]	;# D.8143, argv
	ldr	w0, [x0]	;# tmp162, MEM[(long int *)_79]
	str	w0, [sp, 60]	;# tmp162, i
;# varargs-dll.c:95:   long j = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8144, argv
	add	x1, x0, 8	;# D.8145, D.8144,
	str	x1, [sp, 16]	;# D.8145, argv
	ldr	w0, [x0]	;# tmp163, MEM[(long int *)_82]
	str	w0, [sp, 56]	;# tmp163, j
;# varargs-dll.c:96:   long k = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8146, argv
	add	x1, x0, 8	;# D.8147, D.8146,
	str	x1, [sp, 16]	;# D.8147, argv
	ldr	w0, [x0]	;# tmp164, MEM[(long int *)_85]
	str	w0, [sp, 52]	;# tmp164, k
;# varargs-dll.c:97:   long l = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8148, argv
	add	x1, x0, 8	;# D.8149, D.8148,
	str	x1, [sp, 16]	;# D.8149, argv
	ldr	w0, [x0]	;# tmp165, MEM[(long int *)_88]
	str	w0, [sp, 48]	;# tmp165, l
;# varargs-dll.c:98:   long m = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8150, argv
	add	x1, x0, 8	;# D.8151, D.8150,
	str	x1, [sp, 16]	;# D.8151, argv
	ldr	w0, [x0]	;# tmp166, MEM[(long int *)_91]
	str	w0, [sp, 44]	;# tmp166, m
;# varargs-dll.c:99:   long n = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8152, argv
	add	x1, x0, 8	;# D.8153, D.8152,
	str	x1, [sp, 16]	;# D.8153, argv
	ldr	w0, [x0]	;# tmp167, MEM[(long int *)_94]
	str	w0, [sp, 40]	;# tmp167, n
;# varargs-dll.c:100:   long o = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8154, argv
	add	x1, x0, 8	;# D.8155, D.8154,
	str	x1, [sp, 16]	;# D.8155, argv
	ldr	w0, [x0]	;# tmp168, MEM[(long int *)_97]
	str	w0, [sp, 36]	;# tmp168, o
;# varargs-dll.c:101:   long p = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8156, argv
	add	x1, x0, 8	;# D.8157, D.8156,
	str	x1, [sp, 16]	;# D.8157, argv
	ldr	w0, [x0]	;# tmp169, MEM[(long int *)_100]
	str	w0, [sp, 32]	;# tmp169, p
;# varargs-dll.c:102:   long q = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.8158, argv
	add	x1, x0, 8	;# D.8159, D.8158,
	str	x1, [sp, 16]	;# D.8159, argv
	ldr	w0, [x0]	;# tmp170, MEM[(long int *)_103]
	str	w0, [sp, 28]	;# tmp170, q
;# varargs-dll.c:104:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 92]	;# tmp171, a
	ldr	w0, [sp, 88]	;# tmp172, b
	add	w1, w1, w0	;# _1, tmp171, tmp172
;# varargs-dll.c:104:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 84]	;# tmp173, c
	add	w1, w1, w0	;# _2, _1, tmp173
;# varargs-dll.c:104:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 80]	;# tmp174, d
	add	w1, w1, w0	;# _3, _2, tmp174
;# varargs-dll.c:104:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 76]	;# tmp175, e
	add	w1, w1, w0	;# _4, _3, tmp175
;# varargs-dll.c:104:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 72]	;# tmp176, f
	add	w1, w1, w0	;# _5, _4, tmp176
;# varargs-dll.c:104:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 68]	;# tmp177, g
	add	w1, w1, w0	;# _6, _5, tmp177
;# varargs-dll.c:104:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 64]	;# tmp178, h
	add	w1, w1, w0	;# _7, _6, tmp178
;# varargs-dll.c:104:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 60]	;# tmp179, i
	add	w1, w1, w0	;# _8, _7, tmp179
;# varargs-dll.c:104:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 56]	;# tmp180, j
	add	w1, w1, w0	;# _9, _8, tmp180
;# varargs-dll.c:104:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 52]	;# tmp181, k
	add	w1, w1, w0	;# _10, _9, tmp181
;# varargs-dll.c:104:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 48]	;# tmp182, l
	add	w1, w1, w0	;# _11, _10, tmp182
;# varargs-dll.c:104:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 44]	;# tmp183, m
	add	w1, w1, w0	;# _12, _11, tmp183
;# varargs-dll.c:104:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 40]	;# tmp184, n
	add	w1, w1, w0	;# _13, _12, tmp184
;# varargs-dll.c:104:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 36]	;# tmp185, o
	add	w1, w1, w0	;# _14, _13, tmp185
;# varargs-dll.c:104:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 32]	;# tmp186, p
	add	w1, w1, w0	;# _15, _14, tmp186
;# varargs-dll.c:104:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 28]	;# tmp187, q
	add	w0, w1, w0	;# _53, _15, tmp187
;# varargs-dll.c:105: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_longs
	.def	use_va_list_many_longs;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_longs
use_va_list_many_longs:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:110:   long a = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8160, argv
	add	x1, x0, 8	;# D.8161, D.8160,
	str	x1, [sp]	;# D.8161, argv
	ldr	w0, [x0]	;# tmp152, MEM[(long int *)_52]
	str	w0, [sp, 92]	;# tmp152, a
;# varargs-dll.c:111:   long b = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8162, argv
	add	x1, x0, 8	;# D.8163, D.8162,
	str	x1, [sp]	;# D.8163, argv
	ldr	w0, [x0]	;# tmp153, MEM[(long int *)_55]
	str	w0, [sp, 88]	;# tmp153, b
;# varargs-dll.c:112:   long c = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8164, argv
	add	x1, x0, 8	;# D.8165, D.8164,
	str	x1, [sp]	;# D.8165, argv
	ldr	w0, [x0]	;# tmp154, MEM[(long int *)_58]
	str	w0, [sp, 84]	;# tmp154, c
;# varargs-dll.c:113:   long d = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8166, argv
	add	x1, x0, 8	;# D.8167, D.8166,
	str	x1, [sp]	;# D.8167, argv
	ldr	w0, [x0]	;# tmp155, MEM[(long int *)_61]
	str	w0, [sp, 80]	;# tmp155, d
;# varargs-dll.c:114:   long e = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8168, argv
	add	x1, x0, 8	;# D.8169, D.8168,
	str	x1, [sp]	;# D.8169, argv
	ldr	w0, [x0]	;# tmp156, MEM[(long int *)_64]
	str	w0, [sp, 76]	;# tmp156, e
;# varargs-dll.c:115:   long f = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8170, argv
	add	x1, x0, 8	;# D.8171, D.8170,
	str	x1, [sp]	;# D.8171, argv
	ldr	w0, [x0]	;# tmp157, MEM[(long int *)_67]
	str	w0, [sp, 72]	;# tmp157, f
;# varargs-dll.c:116:   long g = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8172, argv
	add	x1, x0, 8	;# D.8173, D.8172,
	str	x1, [sp]	;# D.8173, argv
	ldr	w0, [x0]	;# tmp158, MEM[(long int *)_70]
	str	w0, [sp, 68]	;# tmp158, g
;# varargs-dll.c:117:   long h = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8174, argv
	add	x1, x0, 8	;# D.8175, D.8174,
	str	x1, [sp]	;# D.8175, argv
	ldr	w0, [x0]	;# tmp159, MEM[(long int *)_73]
	str	w0, [sp, 64]	;# tmp159, h
;# varargs-dll.c:118:   long i = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8176, argv
	add	x1, x0, 8	;# D.8177, D.8176,
	str	x1, [sp]	;# D.8177, argv
	ldr	w0, [x0]	;# tmp160, MEM[(long int *)_76]
	str	w0, [sp, 60]	;# tmp160, i
;# varargs-dll.c:119:   long j = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8178, argv
	add	x1, x0, 8	;# D.8179, D.8178,
	str	x1, [sp]	;# D.8179, argv
	ldr	w0, [x0]	;# tmp161, MEM[(long int *)_79]
	str	w0, [sp, 56]	;# tmp161, j
;# varargs-dll.c:120:   long k = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8180, argv
	add	x1, x0, 8	;# D.8181, D.8180,
	str	x1, [sp]	;# D.8181, argv
	ldr	w0, [x0]	;# tmp162, MEM[(long int *)_82]
	str	w0, [sp, 52]	;# tmp162, k
;# varargs-dll.c:121:   long l = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8182, argv
	add	x1, x0, 8	;# D.8183, D.8182,
	str	x1, [sp]	;# D.8183, argv
	ldr	w0, [x0]	;# tmp163, MEM[(long int *)_85]
	str	w0, [sp, 48]	;# tmp163, l
;# varargs-dll.c:122:   long m = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8184, argv
	add	x1, x0, 8	;# D.8185, D.8184,
	str	x1, [sp]	;# D.8185, argv
	ldr	w0, [x0]	;# tmp164, MEM[(long int *)_88]
	str	w0, [sp, 44]	;# tmp164, m
;# varargs-dll.c:123:   long n = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8186, argv
	add	x1, x0, 8	;# D.8187, D.8186,
	str	x1, [sp]	;# D.8187, argv
	ldr	w0, [x0]	;# tmp165, MEM[(long int *)_91]
	str	w0, [sp, 40]	;# tmp165, n
;# varargs-dll.c:124:   long o = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8188, argv
	add	x1, x0, 8	;# D.8189, D.8188,
	str	x1, [sp]	;# D.8189, argv
	ldr	w0, [x0]	;# tmp166, MEM[(long int *)_94]
	str	w0, [sp, 36]	;# tmp166, o
;# varargs-dll.c:125:   long p = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8190, argv
	add	x1, x0, 8	;# D.8191, D.8190,
	str	x1, [sp]	;# D.8191, argv
	ldr	w0, [x0]	;# tmp167, MEM[(long int *)_97]
	str	w0, [sp, 32]	;# tmp167, p
;# varargs-dll.c:126:   long q = va_arg (argv, long);
	ldr	x0, [sp]	;# D.8192, argv
	add	x1, x0, 8	;# D.8193, D.8192,
	str	x1, [sp]	;# D.8193, argv
	ldr	w0, [x0]	;# tmp168, MEM[(long int *)_100]
	str	w0, [sp, 28]	;# tmp168, q
;# varargs-dll.c:127:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 92]	;# tmp169, a
	ldr	w0, [sp, 88]	;# tmp170, b
	add	w1, w1, w0	;# _1, tmp169, tmp170
;# varargs-dll.c:127:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 84]	;# tmp171, c
	add	w1, w1, w0	;# _2, _1, tmp171
;# varargs-dll.c:127:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 80]	;# tmp172, d
	add	w1, w1, w0	;# _3, _2, tmp172
;# varargs-dll.c:127:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 76]	;# tmp173, e
	add	w1, w1, w0	;# _4, _3, tmp173
;# varargs-dll.c:127:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 72]	;# tmp174, f
	add	w1, w1, w0	;# _5, _4, tmp174
;# varargs-dll.c:127:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 68]	;# tmp175, g
	add	w1, w1, w0	;# _6, _5, tmp175
;# varargs-dll.c:127:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 64]	;# tmp176, h
	add	w1, w1, w0	;# _7, _6, tmp176
;# varargs-dll.c:127:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 60]	;# tmp177, i
	add	w1, w1, w0	;# _8, _7, tmp177
;# varargs-dll.c:127:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 56]	;# tmp178, j
	add	w1, w1, w0	;# _9, _8, tmp178
;# varargs-dll.c:127:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 52]	;# tmp179, k
	add	w1, w1, w0	;# _10, _9, tmp179
;# varargs-dll.c:127:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 48]	;# tmp180, l
	add	w1, w1, w0	;# _11, _10, tmp180
;# varargs-dll.c:127:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 44]	;# tmp181, m
	add	w1, w1, w0	;# _12, _11, tmp181
;# varargs-dll.c:127:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 40]	;# tmp182, n
	add	w1, w1, w0	;# _13, _12, tmp182
;# varargs-dll.c:127:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 36]	;# tmp183, o
	add	w1, w1, w0	;# _14, _13, tmp183
;# varargs-dll.c:127:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 32]	;# tmp184, p
	add	w1, w1, w0	;# _15, _14, tmp184
;# varargs-dll.c:127:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 28]	;# tmp185, q
	add	w0, w1, w0	;# _51, _15, tmp185
;# varargs-dll.c:128: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_ints
	.def	use_va_args_few_ints;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_ints
use_va_args_few_ints:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 40]	;#,
	str	x2, [sp, 48]	;#,
	str	x3, [sp, 56]	;#,
	str	x4, [sp, 64]	;#,
	str	x5, [sp, 72]	;#,
	str	x6, [sp, 80]	;#,
	str	x7, [sp, 88]	;#,
;# varargs-dll.c:134:   va_start (argv, format);
	add	x0, sp, 96	;# tmp107,,
	sub	x0, x0, #56	;# tmp108, tmp107,
	str	x0, [sp, 16]	;# tmp108, MEM[(char * *)&argv]
;# varargs-dll.c:135:   int a = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8194, argv
	add	x1, x0, 8	;# D.8195, D.8194,
	str	x1, [sp, 16]	;# D.8195, argv
	ldr	w0, [x0]	;# tmp109, MEM[(int *)_10]
	str	w0, [sp, 28]	;# tmp109, a
;# varargs-dll.c:136:   int b = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8196, argv
	add	x1, x0, 8	;# D.8197, D.8196,
	str	x1, [sp, 16]	;# D.8197, argv
	ldr	w0, [x0]	;# tmp110, MEM[(int *)_13]
	str	w0, [sp, 24]	;# tmp110, b
;# varargs-dll.c:138:   return a + b;
	ldr	w1, [sp, 28]	;# tmp111, a
	ldr	w0, [sp, 24]	;# tmp112, b
	add	w0, w1, w0	;# _8, tmp111, tmp112
;# varargs-dll.c:139: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_ints
	.def	use_va_list_few_ints;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_ints
use_va_list_few_ints:
	sub	sp, sp, #32	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:144:   int a = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8198, argv
	add	x1, x0, 8	;# D.8199, D.8198,
	str	x1, [sp]	;# D.8199, argv
	ldr	w0, [x0]	;# tmp107, MEM[(int *)_7]
	str	w0, [sp, 28]	;# tmp107, a
;# varargs-dll.c:145:   int b = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8200, argv
	add	x1, x0, 8	;# D.8201, D.8200,
	str	x1, [sp]	;# D.8201, argv
	ldr	w0, [x0]	;# tmp108, MEM[(int *)_10]
	str	w0, [sp, 24]	;# tmp108, b
;# varargs-dll.c:146:   return a + b;
	ldr	w1, [sp, 28]	;# tmp109, a
	ldr	w0, [sp, 24]	;# tmp110, b
	add	w0, w1, w0	;# _6, tmp109, tmp110
;# varargs-dll.c:147: }
	add	sp, sp, 32	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_ints
	.def	use_va_args_several_ints;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_ints
use_va_args_several_ints:
	sub	sp, sp, #128	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 72]	;#,
	str	x2, [sp, 80]	;#,
	str	x3, [sp, 88]	;#,
	str	x4, [sp, 96]	;#,
	str	x5, [sp, 104]	;#,
	str	x6, [sp, 112]	;#,
	str	x7, [sp, 120]	;#,
;# varargs-dll.c:153:   va_start (argv, format);
	add	x0, sp, 128	;# tmp128,,
	sub	x0, x0, #56	;# tmp129, tmp128,
	str	x0, [sp, 16]	;# tmp129, MEM[(char * *)&argv]
;# varargs-dll.c:154:   int a = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8202, argv
	add	x1, x0, 8	;# D.8203, D.8202,
	str	x1, [sp, 16]	;# D.8203, argv
	ldr	w0, [x0]	;# tmp130, MEM[(int *)_31]
	str	w0, [sp, 60]	;# tmp130, a
;# varargs-dll.c:155:   int b = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8204, argv
	add	x1, x0, 8	;# D.8205, D.8204,
	str	x1, [sp, 16]	;# D.8205, argv
	ldr	w0, [x0]	;# tmp131, MEM[(int *)_34]
	str	w0, [sp, 56]	;# tmp131, b
;# varargs-dll.c:156:   int c = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8206, argv
	add	x1, x0, 8	;# D.8207, D.8206,
	str	x1, [sp, 16]	;# D.8207, argv
	ldr	w0, [x0]	;# tmp132, MEM[(int *)_37]
	str	w0, [sp, 52]	;# tmp132, c
;# varargs-dll.c:157:   int d = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8208, argv
	add	x1, x0, 8	;# D.8209, D.8208,
	str	x1, [sp, 16]	;# D.8209, argv
	ldr	w0, [x0]	;# tmp133, MEM[(int *)_40]
	str	w0, [sp, 48]	;# tmp133, d
;# varargs-dll.c:158:   int e = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8210, argv
	add	x1, x0, 8	;# D.8211, D.8210,
	str	x1, [sp, 16]	;# D.8211, argv
	ldr	w0, [x0]	;# tmp134, MEM[(int *)_43]
	str	w0, [sp, 44]	;# tmp134, e
;# varargs-dll.c:159:   int f = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8212, argv
	add	x1, x0, 8	;# D.8213, D.8212,
	str	x1, [sp, 16]	;# D.8213, argv
	ldr	w0, [x0]	;# tmp135, MEM[(int *)_46]
	str	w0, [sp, 40]	;# tmp135, f
;# varargs-dll.c:160:   int g = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8214, argv
	add	x1, x0, 8	;# D.8215, D.8214,
	str	x1, [sp, 16]	;# D.8215, argv
	ldr	w0, [x0]	;# tmp136, MEM[(int *)_49]
	str	w0, [sp, 36]	;# tmp136, g
;# varargs-dll.c:161:   int h = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8216, argv
	add	x1, x0, 8	;# D.8217, D.8216,
	str	x1, [sp, 16]	;# D.8217, argv
	ldr	w0, [x0]	;# tmp137, MEM[(int *)_52]
	str	w0, [sp, 32]	;# tmp137, h
;# varargs-dll.c:162:   int i = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8218, argv
	add	x1, x0, 8	;# D.8219, D.8218,
	str	x1, [sp, 16]	;# D.8219, argv
	ldr	w0, [x0]	;# tmp138, MEM[(int *)_55]
	str	w0, [sp, 28]	;# tmp138, i
;# varargs-dll.c:164:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 60]	;# tmp139, a
	ldr	w0, [sp, 56]	;# tmp140, b
	add	w1, w1, w0	;# _1, tmp139, tmp140
;# varargs-dll.c:164:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 52]	;# tmp141, c
	add	w1, w1, w0	;# _2, _1, tmp141
;# varargs-dll.c:164:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 48]	;# tmp142, d
	add	w1, w1, w0	;# _3, _2, tmp142
;# varargs-dll.c:164:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 44]	;# tmp143, e
	add	w1, w1, w0	;# _4, _3, tmp143
;# varargs-dll.c:164:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 40]	;# tmp144, f
	add	w1, w1, w0	;# _5, _4, tmp144
;# varargs-dll.c:164:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 36]	;# tmp145, g
	add	w1, w1, w0	;# _6, _5, tmp145
;# varargs-dll.c:164:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 32]	;# tmp146, h
	add	w1, w1, w0	;# _7, _6, tmp146
;# varargs-dll.c:164:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 28]	;# tmp147, i
	add	w0, w1, w0	;# _29, _7, tmp147
;# varargs-dll.c:165: }
	add	sp, sp, 128	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_ints
	.def	use_va_list_several_ints;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_ints
use_va_list_several_ints:
	sub	sp, sp, #64	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:170:   int a = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8220, argv
	add	x1, x0, 8	;# D.8221, D.8220,
	str	x1, [sp]	;# D.8221, argv
	ldr	w0, [x0]	;# tmp128, MEM[(int *)_28]
	str	w0, [sp, 60]	;# tmp128, a
;# varargs-dll.c:171:   int b = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8222, argv
	add	x1, x0, 8	;# D.8223, D.8222,
	str	x1, [sp]	;# D.8223, argv
	ldr	w0, [x0]	;# tmp129, MEM[(int *)_31]
	str	w0, [sp, 56]	;# tmp129, b
;# varargs-dll.c:172:   int c = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8224, argv
	add	x1, x0, 8	;# D.8225, D.8224,
	str	x1, [sp]	;# D.8225, argv
	ldr	w0, [x0]	;# tmp130, MEM[(int *)_34]
	str	w0, [sp, 52]	;# tmp130, c
;# varargs-dll.c:173:   int d = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8226, argv
	add	x1, x0, 8	;# D.8227, D.8226,
	str	x1, [sp]	;# D.8227, argv
	ldr	w0, [x0]	;# tmp131, MEM[(int *)_37]
	str	w0, [sp, 48]	;# tmp131, d
;# varargs-dll.c:174:   int e = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8228, argv
	add	x1, x0, 8	;# D.8229, D.8228,
	str	x1, [sp]	;# D.8229, argv
	ldr	w0, [x0]	;# tmp132, MEM[(int *)_40]
	str	w0, [sp, 44]	;# tmp132, e
;# varargs-dll.c:175:   int f = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8230, argv
	add	x1, x0, 8	;# D.8231, D.8230,
	str	x1, [sp]	;# D.8231, argv
	ldr	w0, [x0]	;# tmp133, MEM[(int *)_43]
	str	w0, [sp, 40]	;# tmp133, f
;# varargs-dll.c:176:   int g = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8232, argv
	add	x1, x0, 8	;# D.8233, D.8232,
	str	x1, [sp]	;# D.8233, argv
	ldr	w0, [x0]	;# tmp134, MEM[(int *)_46]
	str	w0, [sp, 36]	;# tmp134, g
;# varargs-dll.c:177:   int h = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8234, argv
	add	x1, x0, 8	;# D.8235, D.8234,
	str	x1, [sp]	;# D.8235, argv
	ldr	w0, [x0]	;# tmp135, MEM[(int *)_49]
	str	w0, [sp, 32]	;# tmp135, h
;# varargs-dll.c:178:   int i = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8236, argv
	add	x1, x0, 8	;# D.8237, D.8236,
	str	x1, [sp]	;# D.8237, argv
	ldr	w0, [x0]	;# tmp136, MEM[(int *)_52]
	str	w0, [sp, 28]	;# tmp136, i
;# varargs-dll.c:179:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 60]	;# tmp137, a
	ldr	w0, [sp, 56]	;# tmp138, b
	add	w1, w1, w0	;# _1, tmp137, tmp138
;# varargs-dll.c:179:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 52]	;# tmp139, c
	add	w1, w1, w0	;# _2, _1, tmp139
;# varargs-dll.c:179:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 48]	;# tmp140, d
	add	w1, w1, w0	;# _3, _2, tmp140
;# varargs-dll.c:179:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 44]	;# tmp141, e
	add	w1, w1, w0	;# _4, _3, tmp141
;# varargs-dll.c:179:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 40]	;# tmp142, f
	add	w1, w1, w0	;# _5, _4, tmp142
;# varargs-dll.c:179:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 36]	;# tmp143, g
	add	w1, w1, w0	;# _6, _5, tmp143
;# varargs-dll.c:179:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 32]	;# tmp144, h
	add	w1, w1, w0	;# _7, _6, tmp144
;# varargs-dll.c:179:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 28]	;# tmp145, i
	add	w0, w1, w0	;# _27, _7, tmp145
;# varargs-dll.c:180: }
	add	sp, sp, 64	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_ints
	.def	use_va_args_many_ints;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_ints
use_va_args_many_ints:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 104]	;#,
	str	x2, [sp, 112]	;#,
	str	x3, [sp, 120]	;#,
	str	x4, [sp, 128]	;#,
	str	x5, [sp, 136]	;#,
	str	x6, [sp, 144]	;#,
	str	x7, [sp, 152]	;#,
;# varargs-dll.c:186:   va_start (argv, format);
	add	x0, sp, 160	;# tmp152,,
	sub	x0, x0, #56	;# tmp153, tmp152,
	str	x0, [sp, 16]	;# tmp153, MEM[(char * *)&argv]
;# varargs-dll.c:187:   int a = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8238, argv
	add	x1, x0, 8	;# D.8239, D.8238,
	str	x1, [sp, 16]	;# D.8239, argv
	ldr	w0, [x0]	;# tmp154, MEM[(int *)_55]
	str	w0, [sp, 92]	;# tmp154, a
;# varargs-dll.c:188:   int b = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8240, argv
	add	x1, x0, 8	;# D.8241, D.8240,
	str	x1, [sp, 16]	;# D.8241, argv
	ldr	w0, [x0]	;# tmp155, MEM[(int *)_58]
	str	w0, [sp, 88]	;# tmp155, b
;# varargs-dll.c:189:   int c = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8242, argv
	add	x1, x0, 8	;# D.8243, D.8242,
	str	x1, [sp, 16]	;# D.8243, argv
	ldr	w0, [x0]	;# tmp156, MEM[(int *)_61]
	str	w0, [sp, 84]	;# tmp156, c
;# varargs-dll.c:190:   int d = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8244, argv
	add	x1, x0, 8	;# D.8245, D.8244,
	str	x1, [sp, 16]	;# D.8245, argv
	ldr	w0, [x0]	;# tmp157, MEM[(int *)_64]
	str	w0, [sp, 80]	;# tmp157, d
;# varargs-dll.c:191:   int e = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8246, argv
	add	x1, x0, 8	;# D.8247, D.8246,
	str	x1, [sp, 16]	;# D.8247, argv
	ldr	w0, [x0]	;# tmp158, MEM[(int *)_67]
	str	w0, [sp, 76]	;# tmp158, e
;# varargs-dll.c:192:   int f = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8248, argv
	add	x1, x0, 8	;# D.8249, D.8248,
	str	x1, [sp, 16]	;# D.8249, argv
	ldr	w0, [x0]	;# tmp159, MEM[(int *)_70]
	str	w0, [sp, 72]	;# tmp159, f
;# varargs-dll.c:193:   int g = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8250, argv
	add	x1, x0, 8	;# D.8251, D.8250,
	str	x1, [sp, 16]	;# D.8251, argv
	ldr	w0, [x0]	;# tmp160, MEM[(int *)_73]
	str	w0, [sp, 68]	;# tmp160, g
;# varargs-dll.c:194:   int h = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8252, argv
	add	x1, x0, 8	;# D.8253, D.8252,
	str	x1, [sp, 16]	;# D.8253, argv
	ldr	w0, [x0]	;# tmp161, MEM[(int *)_76]
	str	w0, [sp, 64]	;# tmp161, h
;# varargs-dll.c:195:   int i = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8254, argv
	add	x1, x0, 8	;# D.8255, D.8254,
	str	x1, [sp, 16]	;# D.8255, argv
	ldr	w0, [x0]	;# tmp162, MEM[(int *)_79]
	str	w0, [sp, 60]	;# tmp162, i
;# varargs-dll.c:196:   int j = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8256, argv
	add	x1, x0, 8	;# D.8257, D.8256,
	str	x1, [sp, 16]	;# D.8257, argv
	ldr	w0, [x0]	;# tmp163, MEM[(int *)_82]
	str	w0, [sp, 56]	;# tmp163, j
;# varargs-dll.c:197:   int k = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8258, argv
	add	x1, x0, 8	;# D.8259, D.8258,
	str	x1, [sp, 16]	;# D.8259, argv
	ldr	w0, [x0]	;# tmp164, MEM[(int *)_85]
	str	w0, [sp, 52]	;# tmp164, k
;# varargs-dll.c:198:   int l = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8260, argv
	add	x1, x0, 8	;# D.8261, D.8260,
	str	x1, [sp, 16]	;# D.8261, argv
	ldr	w0, [x0]	;# tmp165, MEM[(int *)_88]
	str	w0, [sp, 48]	;# tmp165, l
;# varargs-dll.c:199:   int m = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8262, argv
	add	x1, x0, 8	;# D.8263, D.8262,
	str	x1, [sp, 16]	;# D.8263, argv
	ldr	w0, [x0]	;# tmp166, MEM[(int *)_91]
	str	w0, [sp, 44]	;# tmp166, m
;# varargs-dll.c:200:   int n = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8264, argv
	add	x1, x0, 8	;# D.8265, D.8264,
	str	x1, [sp, 16]	;# D.8265, argv
	ldr	w0, [x0]	;# tmp167, MEM[(int *)_94]
	str	w0, [sp, 40]	;# tmp167, n
;# varargs-dll.c:201:   int o = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8266, argv
	add	x1, x0, 8	;# D.8267, D.8266,
	str	x1, [sp, 16]	;# D.8267, argv
	ldr	w0, [x0]	;# tmp168, MEM[(int *)_97]
	str	w0, [sp, 36]	;# tmp168, o
;# varargs-dll.c:202:   int p = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8268, argv
	add	x1, x0, 8	;# D.8269, D.8268,
	str	x1, [sp, 16]	;# D.8269, argv
	ldr	w0, [x0]	;# tmp169, MEM[(int *)_100]
	str	w0, [sp, 32]	;# tmp169, p
;# varargs-dll.c:203:   int q = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.8270, argv
	add	x1, x0, 8	;# D.8271, D.8270,
	str	x1, [sp, 16]	;# D.8271, argv
	ldr	w0, [x0]	;# tmp170, MEM[(int *)_103]
	str	w0, [sp, 28]	;# tmp170, q
;# varargs-dll.c:205:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 92]	;# tmp171, a
	ldr	w0, [sp, 88]	;# tmp172, b
	add	w1, w1, w0	;# _1, tmp171, tmp172
;# varargs-dll.c:205:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 84]	;# tmp173, c
	add	w1, w1, w0	;# _2, _1, tmp173
;# varargs-dll.c:205:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 80]	;# tmp174, d
	add	w1, w1, w0	;# _3, _2, tmp174
;# varargs-dll.c:205:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 76]	;# tmp175, e
	add	w1, w1, w0	;# _4, _3, tmp175
;# varargs-dll.c:205:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 72]	;# tmp176, f
	add	w1, w1, w0	;# _5, _4, tmp176
;# varargs-dll.c:205:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 68]	;# tmp177, g
	add	w1, w1, w0	;# _6, _5, tmp177
;# varargs-dll.c:205:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 64]	;# tmp178, h
	add	w1, w1, w0	;# _7, _6, tmp178
;# varargs-dll.c:205:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 60]	;# tmp179, i
	add	w1, w1, w0	;# _8, _7, tmp179
;# varargs-dll.c:205:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 56]	;# tmp180, j
	add	w1, w1, w0	;# _9, _8, tmp180
;# varargs-dll.c:205:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 52]	;# tmp181, k
	add	w1, w1, w0	;# _10, _9, tmp181
;# varargs-dll.c:205:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 48]	;# tmp182, l
	add	w1, w1, w0	;# _11, _10, tmp182
;# varargs-dll.c:205:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 44]	;# tmp183, m
	add	w1, w1, w0	;# _12, _11, tmp183
;# varargs-dll.c:205:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 40]	;# tmp184, n
	add	w1, w1, w0	;# _13, _12, tmp184
;# varargs-dll.c:205:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 36]	;# tmp185, o
	add	w1, w1, w0	;# _14, _13, tmp185
;# varargs-dll.c:205:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 32]	;# tmp186, p
	add	w1, w1, w0	;# _15, _14, tmp186
;# varargs-dll.c:205:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 28]	;# tmp187, q
	add	w0, w1, w0	;# _53, _15, tmp187
;# varargs-dll.c:206: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_ints
	.def	use_va_list_many_ints;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_ints
use_va_list_many_ints:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:211:   int a = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8272, argv
	add	x1, x0, 8	;# D.8273, D.8272,
	str	x1, [sp]	;# D.8273, argv
	ldr	w0, [x0]	;# tmp152, MEM[(int *)_52]
	str	w0, [sp, 92]	;# tmp152, a
;# varargs-dll.c:212:   int b = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8274, argv
	add	x1, x0, 8	;# D.8275, D.8274,
	str	x1, [sp]	;# D.8275, argv
	ldr	w0, [x0]	;# tmp153, MEM[(int *)_55]
	str	w0, [sp, 88]	;# tmp153, b
;# varargs-dll.c:213:   int c = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8276, argv
	add	x1, x0, 8	;# D.8277, D.8276,
	str	x1, [sp]	;# D.8277, argv
	ldr	w0, [x0]	;# tmp154, MEM[(int *)_58]
	str	w0, [sp, 84]	;# tmp154, c
;# varargs-dll.c:214:   int d = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8278, argv
	add	x1, x0, 8	;# D.8279, D.8278,
	str	x1, [sp]	;# D.8279, argv
	ldr	w0, [x0]	;# tmp155, MEM[(int *)_61]
	str	w0, [sp, 80]	;# tmp155, d
;# varargs-dll.c:215:   int e = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8280, argv
	add	x1, x0, 8	;# D.8281, D.8280,
	str	x1, [sp]	;# D.8281, argv
	ldr	w0, [x0]	;# tmp156, MEM[(int *)_64]
	str	w0, [sp, 76]	;# tmp156, e
;# varargs-dll.c:216:   int f = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8282, argv
	add	x1, x0, 8	;# D.8283, D.8282,
	str	x1, [sp]	;# D.8283, argv
	ldr	w0, [x0]	;# tmp157, MEM[(int *)_67]
	str	w0, [sp, 72]	;# tmp157, f
;# varargs-dll.c:217:   int g = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8284, argv
	add	x1, x0, 8	;# D.8285, D.8284,
	str	x1, [sp]	;# D.8285, argv
	ldr	w0, [x0]	;# tmp158, MEM[(int *)_70]
	str	w0, [sp, 68]	;# tmp158, g
;# varargs-dll.c:218:   int h = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8286, argv
	add	x1, x0, 8	;# D.8287, D.8286,
	str	x1, [sp]	;# D.8287, argv
	ldr	w0, [x0]	;# tmp159, MEM[(int *)_73]
	str	w0, [sp, 64]	;# tmp159, h
;# varargs-dll.c:219:   int i = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8288, argv
	add	x1, x0, 8	;# D.8289, D.8288,
	str	x1, [sp]	;# D.8289, argv
	ldr	w0, [x0]	;# tmp160, MEM[(int *)_76]
	str	w0, [sp, 60]	;# tmp160, i
;# varargs-dll.c:220:   int j = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8290, argv
	add	x1, x0, 8	;# D.8291, D.8290,
	str	x1, [sp]	;# D.8291, argv
	ldr	w0, [x0]	;# tmp161, MEM[(int *)_79]
	str	w0, [sp, 56]	;# tmp161, j
;# varargs-dll.c:221:   int k = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8292, argv
	add	x1, x0, 8	;# D.8293, D.8292,
	str	x1, [sp]	;# D.8293, argv
	ldr	w0, [x0]	;# tmp162, MEM[(int *)_82]
	str	w0, [sp, 52]	;# tmp162, k
;# varargs-dll.c:222:   int l = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8294, argv
	add	x1, x0, 8	;# D.8295, D.8294,
	str	x1, [sp]	;# D.8295, argv
	ldr	w0, [x0]	;# tmp163, MEM[(int *)_85]
	str	w0, [sp, 48]	;# tmp163, l
;# varargs-dll.c:223:   int m = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8296, argv
	add	x1, x0, 8	;# D.8297, D.8296,
	str	x1, [sp]	;# D.8297, argv
	ldr	w0, [x0]	;# tmp164, MEM[(int *)_88]
	str	w0, [sp, 44]	;# tmp164, m
;# varargs-dll.c:224:   int n = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8298, argv
	add	x1, x0, 8	;# D.8299, D.8298,
	str	x1, [sp]	;# D.8299, argv
	ldr	w0, [x0]	;# tmp165, MEM[(int *)_91]
	str	w0, [sp, 40]	;# tmp165, n
;# varargs-dll.c:225:   int o = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8300, argv
	add	x1, x0, 8	;# D.8301, D.8300,
	str	x1, [sp]	;# D.8301, argv
	ldr	w0, [x0]	;# tmp166, MEM[(int *)_94]
	str	w0, [sp, 36]	;# tmp166, o
;# varargs-dll.c:226:   int p = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8302, argv
	add	x1, x0, 8	;# D.8303, D.8302,
	str	x1, [sp]	;# D.8303, argv
	ldr	w0, [x0]	;# tmp167, MEM[(int *)_97]
	str	w0, [sp, 32]	;# tmp167, p
;# varargs-dll.c:227:   int q = va_arg (argv, int);
	ldr	x0, [sp]	;# D.8304, argv
	add	x1, x0, 8	;# D.8305, D.8304,
	str	x1, [sp]	;# D.8305, argv
	ldr	w0, [x0]	;# tmp168, MEM[(int *)_100]
	str	w0, [sp, 28]	;# tmp168, q
;# varargs-dll.c:228:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 92]	;# tmp169, a
	ldr	w0, [sp, 88]	;# tmp170, b
	add	w1, w1, w0	;# _1, tmp169, tmp170
;# varargs-dll.c:228:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 84]	;# tmp171, c
	add	w1, w1, w0	;# _2, _1, tmp171
;# varargs-dll.c:228:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 80]	;# tmp172, d
	add	w1, w1, w0	;# _3, _2, tmp172
;# varargs-dll.c:228:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 76]	;# tmp173, e
	add	w1, w1, w0	;# _4, _3, tmp173
;# varargs-dll.c:228:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 72]	;# tmp174, f
	add	w1, w1, w0	;# _5, _4, tmp174
;# varargs-dll.c:228:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 68]	;# tmp175, g
	add	w1, w1, w0	;# _6, _5, tmp175
;# varargs-dll.c:228:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 64]	;# tmp176, h
	add	w1, w1, w0	;# _7, _6, tmp176
;# varargs-dll.c:228:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 60]	;# tmp177, i
	add	w1, w1, w0	;# _8, _7, tmp177
;# varargs-dll.c:228:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 56]	;# tmp178, j
	add	w1, w1, w0	;# _9, _8, tmp178
;# varargs-dll.c:228:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 52]	;# tmp179, k
	add	w1, w1, w0	;# _10, _9, tmp179
;# varargs-dll.c:228:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 48]	;# tmp180, l
	add	w1, w1, w0	;# _11, _10, tmp180
;# varargs-dll.c:228:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 44]	;# tmp181, m
	add	w1, w1, w0	;# _12, _11, tmp181
;# varargs-dll.c:228:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 40]	;# tmp182, n
	add	w1, w1, w0	;# _13, _12, tmp182
;# varargs-dll.c:228:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 36]	;# tmp183, o
	add	w1, w1, w0	;# _14, _13, tmp183
;# varargs-dll.c:228:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 32]	;# tmp184, p
	add	w1, w1, w0	;# _15, _14, tmp184
;# varargs-dll.c:228:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 28]	;# tmp185, q
	add	w0, w1, w0	;# _51, _15, tmp185
;# varargs-dll.c:229: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_doubles
	.def	use_va_args_few_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_doubles
use_va_args_few_doubles:
	sub	sp, sp, #112	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# name, name
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-dll.c:235:   va_start (argv, name);
	add	x0, sp, 112	;# tmp108,,
	sub	x0, x0, #56	;# tmp109, tmp108,
	str	x0, [sp, 24]	;# tmp109, MEM[(char * *)&argv]
;# varargs-dll.c:236:   double a = va_arg (argv, double);
	ldr	x0, [sp, 24]	;# D.8306, argv
	add	x1, x0, 8	;# D.8307, D.8306,
	str	x1, [sp, 24]	;# D.8307, argv
	ldr	d31, [x0]	;# tmp110, MEM[(double *)_11]
	str	d31, [sp, 40]	;# tmp110, a
;# varargs-dll.c:237:   double b = va_arg (argv, double);
	ldr	x0, [sp, 24]	;# D.8308, argv
	add	x1, x0, 8	;# D.8309, D.8308,
	str	x1, [sp, 24]	;# D.8309, argv
	ldr	d31, [x0]	;# tmp111, MEM[(double *)_14]
	str	d31, [sp, 32]	;# tmp111, b
;# varargs-dll.c:239:   return a + b;
	ldr	d30, [sp, 40]	;# tmp112, a
	ldr	d31, [sp, 32]	;# tmp113, b
	fadd	d31, d30, d31	;# _1, tmp112, tmp113
	fcvtzs	w0, d31	;# _9, _1
;# varargs-dll.c:240: }
	add	sp, sp, 112	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_doubles
	.def	use_va_list_few_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_doubles
use_va_list_few_doubles:
	sub	sp, sp, #32	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# name, name
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:245:   double a = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8310, argv
	add	x1, x0, 8	;# D.8311, D.8310,
	str	x1, [sp]	;# D.8311, argv
	ldr	d31, [x0]	;# tmp108, MEM[(double *)_8]
	str	d31, [sp, 24]	;# tmp108, a
;# varargs-dll.c:246:   double b = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8312, argv
	add	x1, x0, 8	;# D.8313, D.8312,
	str	x1, [sp]	;# D.8313, argv
	ldr	d31, [x0]	;# tmp109, MEM[(double *)_11]
	str	d31, [sp, 16]	;# tmp109, b
;# varargs-dll.c:247:   return a + b;
	ldr	d30, [sp, 24]	;# tmp110, a
	ldr	d31, [sp, 16]	;# tmp111, b
	fadd	d31, d30, d31	;# _1, tmp110, tmp111
	fcvtzs	w0, d31	;# _7, _1
;# varargs-dll.c:248: }
	add	sp, sp, 32	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_doubles
	.def	use_va_args_several_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_doubles
use_va_args_several_doubles:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# name, name
	str	x1, [sp, 104]	;#,
	str	x2, [sp, 112]	;#,
	str	x3, [sp, 120]	;#,
	str	x4, [sp, 128]	;#,
	str	x5, [sp, 136]	;#,
	str	x6, [sp, 144]	;#,
	str	x7, [sp, 152]	;#,
;# varargs-dll.c:254:   va_start (argv, name);
	add	x0, sp, 160	;# tmp129,,
	sub	x0, x0, #56	;# tmp130, tmp129,
	str	x0, [sp, 16]	;# tmp130, MEM[(char * *)&argv]
;# varargs-dll.c:255:   double a = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8314, argv
	add	x1, x0, 8	;# D.8315, D.8314,
	str	x1, [sp, 16]	;# D.8315, argv
	ldr	d31, [x0]	;# tmp131, MEM[(double *)_32]
	str	d31, [sp, 88]	;# tmp131, a
;# varargs-dll.c:256:   double b = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8316, argv
	add	x1, x0, 8	;# D.8317, D.8316,
	str	x1, [sp, 16]	;# D.8317, argv
	ldr	d31, [x0]	;# tmp132, MEM[(double *)_35]
	str	d31, [sp, 80]	;# tmp132, b
;# varargs-dll.c:257:   double c = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8318, argv
	add	x1, x0, 8	;# D.8319, D.8318,
	str	x1, [sp, 16]	;# D.8319, argv
	ldr	d31, [x0]	;# tmp133, MEM[(double *)_38]
	str	d31, [sp, 72]	;# tmp133, c
;# varargs-dll.c:258:   double d = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8320, argv
	add	x1, x0, 8	;# D.8321, D.8320,
	str	x1, [sp, 16]	;# D.8321, argv
	ldr	d31, [x0]	;# tmp134, MEM[(double *)_41]
	str	d31, [sp, 64]	;# tmp134, d
;# varargs-dll.c:259:   double e = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8322, argv
	add	x1, x0, 8	;# D.8323, D.8322,
	str	x1, [sp, 16]	;# D.8323, argv
	ldr	d31, [x0]	;# tmp135, MEM[(double *)_44]
	str	d31, [sp, 56]	;# tmp135, e
;# varargs-dll.c:260:   double f = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8324, argv
	add	x1, x0, 8	;# D.8325, D.8324,
	str	x1, [sp, 16]	;# D.8325, argv
	ldr	d31, [x0]	;# tmp136, MEM[(double *)_47]
	str	d31, [sp, 48]	;# tmp136, f
;# varargs-dll.c:261:   double g = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8326, argv
	add	x1, x0, 8	;# D.8327, D.8326,
	str	x1, [sp, 16]	;# D.8327, argv
	ldr	d31, [x0]	;# tmp137, MEM[(double *)_50]
	str	d31, [sp, 40]	;# tmp137, g
;# varargs-dll.c:262:   double h = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8328, argv
	add	x1, x0, 8	;# D.8329, D.8328,
	str	x1, [sp, 16]	;# D.8329, argv
	ldr	d31, [x0]	;# tmp138, MEM[(double *)_53]
	str	d31, [sp, 32]	;# tmp138, h
;# varargs-dll.c:263:   double i = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8330, argv
	add	x1, x0, 8	;# D.8331, D.8330,
	str	x1, [sp, 16]	;# D.8331, argv
	ldr	d31, [x0]	;# tmp139, MEM[(double *)_56]
	str	d31, [sp, 24]	;# tmp139, i
;# varargs-dll.c:265:   return a + b + c + d + e + f + g + h + i;
	ldr	d30, [sp, 88]	;# tmp140, a
	ldr	d31, [sp, 80]	;# tmp141, b
	fadd	d30, d30, d31	;# _1, tmp140, tmp141
;# varargs-dll.c:265:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 72]	;# tmp142, c
	fadd	d30, d30, d31	;# _2, _1, tmp142
;# varargs-dll.c:265:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 64]	;# tmp143, d
	fadd	d30, d30, d31	;# _3, _2, tmp143
;# varargs-dll.c:265:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 56]	;# tmp144, e
	fadd	d30, d30, d31	;# _4, _3, tmp144
;# varargs-dll.c:265:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 48]	;# tmp145, f
	fadd	d30, d30, d31	;# _5, _4, tmp145
;# varargs-dll.c:265:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 40]	;# tmp146, g
	fadd	d30, d30, d31	;# _6, _5, tmp146
;# varargs-dll.c:265:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 32]	;# tmp147, h
	fadd	d30, d30, d31	;# _7, _6, tmp147
;# varargs-dll.c:265:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 24]	;# tmp148, i
	fadd	d31, d30, d31	;# _8, _7, tmp148
	fcvtzs	w0, d31	;# _30, _8
;# varargs-dll.c:266: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_doubles
	.def	use_va_list_several_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_doubles
use_va_list_several_doubles:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# name, name
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:271:   double a = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8332, argv
	add	x1, x0, 8	;# D.8333, D.8332,
	str	x1, [sp]	;# D.8333, argv
	ldr	d31, [x0]	;# tmp129, MEM[(double *)_29]
	str	d31, [sp, 88]	;# tmp129, a
;# varargs-dll.c:272:   double b = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8334, argv
	add	x1, x0, 8	;# D.8335, D.8334,
	str	x1, [sp]	;# D.8335, argv
	ldr	d31, [x0]	;# tmp130, MEM[(double *)_32]
	str	d31, [sp, 80]	;# tmp130, b
;# varargs-dll.c:273:   double c = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8336, argv
	add	x1, x0, 8	;# D.8337, D.8336,
	str	x1, [sp]	;# D.8337, argv
	ldr	d31, [x0]	;# tmp131, MEM[(double *)_35]
	str	d31, [sp, 72]	;# tmp131, c
;# varargs-dll.c:274:   double d = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8338, argv
	add	x1, x0, 8	;# D.8339, D.8338,
	str	x1, [sp]	;# D.8339, argv
	ldr	d31, [x0]	;# tmp132, MEM[(double *)_38]
	str	d31, [sp, 64]	;# tmp132, d
;# varargs-dll.c:275:   double e = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8340, argv
	add	x1, x0, 8	;# D.8341, D.8340,
	str	x1, [sp]	;# D.8341, argv
	ldr	d31, [x0]	;# tmp133, MEM[(double *)_41]
	str	d31, [sp, 56]	;# tmp133, e
;# varargs-dll.c:276:   double f = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8342, argv
	add	x1, x0, 8	;# D.8343, D.8342,
	str	x1, [sp]	;# D.8343, argv
	ldr	d31, [x0]	;# tmp134, MEM[(double *)_44]
	str	d31, [sp, 48]	;# tmp134, f
;# varargs-dll.c:277:   double g = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8344, argv
	add	x1, x0, 8	;# D.8345, D.8344,
	str	x1, [sp]	;# D.8345, argv
	ldr	d31, [x0]	;# tmp135, MEM[(double *)_47]
	str	d31, [sp, 40]	;# tmp135, g
;# varargs-dll.c:278:   double h = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8346, argv
	add	x1, x0, 8	;# D.8347, D.8346,
	str	x1, [sp]	;# D.8347, argv
	ldr	d31, [x0]	;# tmp136, MEM[(double *)_50]
	str	d31, [sp, 32]	;# tmp136, h
;# varargs-dll.c:279:   double i = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8348, argv
	add	x1, x0, 8	;# D.8349, D.8348,
	str	x1, [sp]	;# D.8349, argv
	ldr	d31, [x0]	;# tmp137, MEM[(double *)_53]
	str	d31, [sp, 24]	;# tmp137, i
;# varargs-dll.c:280:   return a + b + c + d + e + f + g + h + i;
	ldr	d30, [sp, 88]	;# tmp138, a
	ldr	d31, [sp, 80]	;# tmp139, b
	fadd	d30, d30, d31	;# _1, tmp138, tmp139
;# varargs-dll.c:280:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 72]	;# tmp140, c
	fadd	d30, d30, d31	;# _2, _1, tmp140
;# varargs-dll.c:280:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 64]	;# tmp141, d
	fadd	d30, d30, d31	;# _3, _2, tmp141
;# varargs-dll.c:280:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 56]	;# tmp142, e
	fadd	d30, d30, d31	;# _4, _3, tmp142
;# varargs-dll.c:280:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 48]	;# tmp143, f
	fadd	d30, d30, d31	;# _5, _4, tmp143
;# varargs-dll.c:280:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 40]	;# tmp144, g
	fadd	d30, d30, d31	;# _6, _5, tmp144
;# varargs-dll.c:280:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 32]	;# tmp145, h
	fadd	d30, d30, d31	;# _7, _6, tmp145
;# varargs-dll.c:280:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 24]	;# tmp146, i
	fadd	d31, d30, d31	;# _8, _7, tmp146
	fcvtzs	w0, d31	;# _28, _8
;# varargs-dll.c:281: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_doubles
	.def	use_va_args_many_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_doubles
use_va_args_many_doubles:
	sub	sp, sp, #224	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# name, name
	str	x1, [sp, 168]	;#,
	str	x2, [sp, 176]	;#,
	str	x3, [sp, 184]	;#,
	str	x4, [sp, 192]	;#,
	str	x5, [sp, 200]	;#,
	str	x6, [sp, 208]	;#,
	str	x7, [sp, 216]	;#,
;# varargs-dll.c:287:   va_start (argv, name);
	add	x0, sp, 224	;# tmp153,,
	sub	x0, x0, #56	;# tmp154, tmp153,
	str	x0, [sp, 16]	;# tmp154, MEM[(char * *)&argv]
;# varargs-dll.c:288:   double a = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8350, argv
	add	x1, x0, 8	;# D.8351, D.8350,
	str	x1, [sp, 16]	;# D.8351, argv
	ldr	d31, [x0]	;# tmp155, MEM[(double *)_56]
	str	d31, [sp, 152]	;# tmp155, a
;# varargs-dll.c:289:   double b = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8352, argv
	add	x1, x0, 8	;# D.8353, D.8352,
	str	x1, [sp, 16]	;# D.8353, argv
	ldr	d31, [x0]	;# tmp156, MEM[(double *)_59]
	str	d31, [sp, 144]	;# tmp156, b
;# varargs-dll.c:290:   double c = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8354, argv
	add	x1, x0, 8	;# D.8355, D.8354,
	str	x1, [sp, 16]	;# D.8355, argv
	ldr	d31, [x0]	;# tmp157, MEM[(double *)_62]
	str	d31, [sp, 136]	;# tmp157, c
;# varargs-dll.c:291:   double d = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8356, argv
	add	x1, x0, 8	;# D.8357, D.8356,
	str	x1, [sp, 16]	;# D.8357, argv
	ldr	d31, [x0]	;# tmp158, MEM[(double *)_65]
	str	d31, [sp, 128]	;# tmp158, d
;# varargs-dll.c:292:   double e = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8358, argv
	add	x1, x0, 8	;# D.8359, D.8358,
	str	x1, [sp, 16]	;# D.8359, argv
	ldr	d31, [x0]	;# tmp159, MEM[(double *)_68]
	str	d31, [sp, 120]	;# tmp159, e
;# varargs-dll.c:293:   double f = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8360, argv
	add	x1, x0, 8	;# D.8361, D.8360,
	str	x1, [sp, 16]	;# D.8361, argv
	ldr	d31, [x0]	;# tmp160, MEM[(double *)_71]
	str	d31, [sp, 112]	;# tmp160, f
;# varargs-dll.c:294:   double g = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8362, argv
	add	x1, x0, 8	;# D.8363, D.8362,
	str	x1, [sp, 16]	;# D.8363, argv
	ldr	d31, [x0]	;# tmp161, MEM[(double *)_74]
	str	d31, [sp, 104]	;# tmp161, g
;# varargs-dll.c:295:   double h = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8364, argv
	add	x1, x0, 8	;# D.8365, D.8364,
	str	x1, [sp, 16]	;# D.8365, argv
	ldr	d31, [x0]	;# tmp162, MEM[(double *)_77]
	str	d31, [sp, 96]	;# tmp162, h
;# varargs-dll.c:296:   double i = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8366, argv
	add	x1, x0, 8	;# D.8367, D.8366,
	str	x1, [sp, 16]	;# D.8367, argv
	ldr	d31, [x0]	;# tmp163, MEM[(double *)_80]
	str	d31, [sp, 88]	;# tmp163, i
;# varargs-dll.c:297:   double j = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8368, argv
	add	x1, x0, 8	;# D.8369, D.8368,
	str	x1, [sp, 16]	;# D.8369, argv
	ldr	d31, [x0]	;# tmp164, MEM[(double *)_83]
	str	d31, [sp, 80]	;# tmp164, j
;# varargs-dll.c:298:   double k = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8370, argv
	add	x1, x0, 8	;# D.8371, D.8370,
	str	x1, [sp, 16]	;# D.8371, argv
	ldr	d31, [x0]	;# tmp165, MEM[(double *)_86]
	str	d31, [sp, 72]	;# tmp165, k
;# varargs-dll.c:299:   double l = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8372, argv
	add	x1, x0, 8	;# D.8373, D.8372,
	str	x1, [sp, 16]	;# D.8373, argv
	ldr	d31, [x0]	;# tmp166, MEM[(double *)_89]
	str	d31, [sp, 64]	;# tmp166, l
;# varargs-dll.c:300:   double m = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8374, argv
	add	x1, x0, 8	;# D.8375, D.8374,
	str	x1, [sp, 16]	;# D.8375, argv
	ldr	d31, [x0]	;# tmp167, MEM[(double *)_92]
	str	d31, [sp, 56]	;# tmp167, m
;# varargs-dll.c:301:   double n = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8376, argv
	add	x1, x0, 8	;# D.8377, D.8376,
	str	x1, [sp, 16]	;# D.8377, argv
	ldr	d31, [x0]	;# tmp168, MEM[(double *)_95]
	str	d31, [sp, 48]	;# tmp168, n
;# varargs-dll.c:302:   double o = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8378, argv
	add	x1, x0, 8	;# D.8379, D.8378,
	str	x1, [sp, 16]	;# D.8379, argv
	ldr	d31, [x0]	;# tmp169, MEM[(double *)_98]
	str	d31, [sp, 40]	;# tmp169, o
;# varargs-dll.c:303:   double p = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8380, argv
	add	x1, x0, 8	;# D.8381, D.8380,
	str	x1, [sp, 16]	;# D.8381, argv
	ldr	d31, [x0]	;# tmp170, MEM[(double *)_101]
	str	d31, [sp, 32]	;# tmp170, p
;# varargs-dll.c:304:   double q = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8382, argv
	add	x1, x0, 8	;# D.8383, D.8382,
	str	x1, [sp, 16]	;# D.8383, argv
	ldr	d31, [x0]	;# tmp171, MEM[(double *)_104]
	str	d31, [sp, 24]	;# tmp171, q
;# varargs-dll.c:306:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d30, [sp, 152]	;# tmp172, a
	ldr	d31, [sp, 144]	;# tmp173, b
	fadd	d30, d30, d31	;# _1, tmp172, tmp173
;# varargs-dll.c:306:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 136]	;# tmp174, c
	fadd	d30, d30, d31	;# _2, _1, tmp174
;# varargs-dll.c:306:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 128]	;# tmp175, d
	fadd	d30, d30, d31	;# _3, _2, tmp175
;# varargs-dll.c:306:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 120]	;# tmp176, e
	fadd	d30, d30, d31	;# _4, _3, tmp176
;# varargs-dll.c:306:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 112]	;# tmp177, f
	fadd	d30, d30, d31	;# _5, _4, tmp177
;# varargs-dll.c:306:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 104]	;# tmp178, g
	fadd	d30, d30, d31	;# _6, _5, tmp178
;# varargs-dll.c:306:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 96]	;# tmp179, h
	fadd	d30, d30, d31	;# _7, _6, tmp179
;# varargs-dll.c:306:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 88]	;# tmp180, i
	fadd	d30, d30, d31	;# _8, _7, tmp180
;# varargs-dll.c:306:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 80]	;# tmp181, j
	fadd	d30, d30, d31	;# _9, _8, tmp181
;# varargs-dll.c:306:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 72]	;# tmp182, k
	fadd	d30, d30, d31	;# _10, _9, tmp182
;# varargs-dll.c:306:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 64]	;# tmp183, l
	fadd	d30, d30, d31	;# _11, _10, tmp183
;# varargs-dll.c:306:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 56]	;# tmp184, m
	fadd	d30, d30, d31	;# _12, _11, tmp184
;# varargs-dll.c:306:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 48]	;# tmp185, n
	fadd	d30, d30, d31	;# _13, _12, tmp185
;# varargs-dll.c:306:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 40]	;# tmp186, o
	fadd	d30, d30, d31	;# _14, _13, tmp186
;# varargs-dll.c:306:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 32]	;# tmp187, p
	fadd	d30, d30, d31	;# _15, _14, tmp187
;# varargs-dll.c:306:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 24]	;# tmp188, q
	fadd	d31, d30, d31	;# _16, _15, tmp188
	fcvtzs	w0, d31	;# _54, _16
;# varargs-dll.c:307: }
	add	sp, sp, 224	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_doubles
	.def	use_va_list_many_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_doubles
use_va_list_many_doubles:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# name, name
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:312:   double a = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8384, argv
	add	x1, x0, 8	;# D.8385, D.8384,
	str	x1, [sp]	;# D.8385, argv
	ldr	d31, [x0]	;# tmp153, MEM[(double *)_53]
	str	d31, [sp, 152]	;# tmp153, a
;# varargs-dll.c:313:   double b = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8386, argv
	add	x1, x0, 8	;# D.8387, D.8386,
	str	x1, [sp]	;# D.8387, argv
	ldr	d31, [x0]	;# tmp154, MEM[(double *)_56]
	str	d31, [sp, 144]	;# tmp154, b
;# varargs-dll.c:314:   double c = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8388, argv
	add	x1, x0, 8	;# D.8389, D.8388,
	str	x1, [sp]	;# D.8389, argv
	ldr	d31, [x0]	;# tmp155, MEM[(double *)_59]
	str	d31, [sp, 136]	;# tmp155, c
;# varargs-dll.c:315:   double d = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8390, argv
	add	x1, x0, 8	;# D.8391, D.8390,
	str	x1, [sp]	;# D.8391, argv
	ldr	d31, [x0]	;# tmp156, MEM[(double *)_62]
	str	d31, [sp, 128]	;# tmp156, d
;# varargs-dll.c:316:   double e = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8392, argv
	add	x1, x0, 8	;# D.8393, D.8392,
	str	x1, [sp]	;# D.8393, argv
	ldr	d31, [x0]	;# tmp157, MEM[(double *)_65]
	str	d31, [sp, 120]	;# tmp157, e
;# varargs-dll.c:317:   double f = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8394, argv
	add	x1, x0, 8	;# D.8395, D.8394,
	str	x1, [sp]	;# D.8395, argv
	ldr	d31, [x0]	;# tmp158, MEM[(double *)_68]
	str	d31, [sp, 112]	;# tmp158, f
;# varargs-dll.c:318:   double g = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8396, argv
	add	x1, x0, 8	;# D.8397, D.8396,
	str	x1, [sp]	;# D.8397, argv
	ldr	d31, [x0]	;# tmp159, MEM[(double *)_71]
	str	d31, [sp, 104]	;# tmp159, g
;# varargs-dll.c:319:   double h = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8398, argv
	add	x1, x0, 8	;# D.8399, D.8398,
	str	x1, [sp]	;# D.8399, argv
	ldr	d31, [x0]	;# tmp160, MEM[(double *)_74]
	str	d31, [sp, 96]	;# tmp160, h
;# varargs-dll.c:320:   double i = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8400, argv
	add	x1, x0, 8	;# D.8401, D.8400,
	str	x1, [sp]	;# D.8401, argv
	ldr	d31, [x0]	;# tmp161, MEM[(double *)_77]
	str	d31, [sp, 88]	;# tmp161, i
;# varargs-dll.c:321:   double j = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8402, argv
	add	x1, x0, 8	;# D.8403, D.8402,
	str	x1, [sp]	;# D.8403, argv
	ldr	d31, [x0]	;# tmp162, MEM[(double *)_80]
	str	d31, [sp, 80]	;# tmp162, j
;# varargs-dll.c:322:   double k = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8404, argv
	add	x1, x0, 8	;# D.8405, D.8404,
	str	x1, [sp]	;# D.8405, argv
	ldr	d31, [x0]	;# tmp163, MEM[(double *)_83]
	str	d31, [sp, 72]	;# tmp163, k
;# varargs-dll.c:323:   double l = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8406, argv
	add	x1, x0, 8	;# D.8407, D.8406,
	str	x1, [sp]	;# D.8407, argv
	ldr	d31, [x0]	;# tmp164, MEM[(double *)_86]
	str	d31, [sp, 64]	;# tmp164, l
;# varargs-dll.c:324:   double m = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8408, argv
	add	x1, x0, 8	;# D.8409, D.8408,
	str	x1, [sp]	;# D.8409, argv
	ldr	d31, [x0]	;# tmp165, MEM[(double *)_89]
	str	d31, [sp, 56]	;# tmp165, m
;# varargs-dll.c:325:   double n = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8410, argv
	add	x1, x0, 8	;# D.8411, D.8410,
	str	x1, [sp]	;# D.8411, argv
	ldr	d31, [x0]	;# tmp166, MEM[(double *)_92]
	str	d31, [sp, 48]	;# tmp166, n
;# varargs-dll.c:326:   double o = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8412, argv
	add	x1, x0, 8	;# D.8413, D.8412,
	str	x1, [sp]	;# D.8413, argv
	ldr	d31, [x0]	;# tmp167, MEM[(double *)_95]
	str	d31, [sp, 40]	;# tmp167, o
;# varargs-dll.c:327:   double p = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8414, argv
	add	x1, x0, 8	;# D.8415, D.8414,
	str	x1, [sp]	;# D.8415, argv
	ldr	d31, [x0]	;# tmp168, MEM[(double *)_98]
	str	d31, [sp, 32]	;# tmp168, p
;# varargs-dll.c:328:   double q = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8416, argv
	add	x1, x0, 8	;# D.8417, D.8416,
	str	x1, [sp]	;# D.8417, argv
	ldr	d31, [x0]	;# tmp169, MEM[(double *)_101]
	str	d31, [sp, 24]	;# tmp169, q
;# varargs-dll.c:329:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d30, [sp, 152]	;# tmp170, a
	ldr	d31, [sp, 144]	;# tmp171, b
	fadd	d30, d30, d31	;# _1, tmp170, tmp171
;# varargs-dll.c:329:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 136]	;# tmp172, c
	fadd	d30, d30, d31	;# _2, _1, tmp172
;# varargs-dll.c:329:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 128]	;# tmp173, d
	fadd	d30, d30, d31	;# _3, _2, tmp173
;# varargs-dll.c:329:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 120]	;# tmp174, e
	fadd	d30, d30, d31	;# _4, _3, tmp174
;# varargs-dll.c:329:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 112]	;# tmp175, f
	fadd	d30, d30, d31	;# _5, _4, tmp175
;# varargs-dll.c:329:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 104]	;# tmp176, g
	fadd	d30, d30, d31	;# _6, _5, tmp176
;# varargs-dll.c:329:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 96]	;# tmp177, h
	fadd	d30, d30, d31	;# _7, _6, tmp177
;# varargs-dll.c:329:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 88]	;# tmp178, i
	fadd	d30, d30, d31	;# _8, _7, tmp178
;# varargs-dll.c:329:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 80]	;# tmp179, j
	fadd	d30, d30, d31	;# _9, _8, tmp179
;# varargs-dll.c:329:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 72]	;# tmp180, k
	fadd	d30, d30, d31	;# _10, _9, tmp180
;# varargs-dll.c:329:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 64]	;# tmp181, l
	fadd	d30, d30, d31	;# _11, _10, tmp181
;# varargs-dll.c:329:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 56]	;# tmp182, m
	fadd	d30, d30, d31	;# _12, _11, tmp182
;# varargs-dll.c:329:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 48]	;# tmp183, n
	fadd	d30, d30, d31	;# _13, _12, tmp183
;# varargs-dll.c:329:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 40]	;# tmp184, o
	fadd	d30, d30, d31	;# _14, _13, tmp184
;# varargs-dll.c:329:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 32]	;# tmp185, p
	fadd	d30, d30, d31	;# _15, _14, tmp185
;# varargs-dll.c:329:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 24]	;# tmp186, q
	fadd	d31, d30, d31	;# _16, _15, tmp186
	fcvtzs	w0, d31	;# _52, _16
;# varargs-dll.c:330: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_floats
	.def	use_va_args_few_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_floats
use_va_args_few_floats:
	sub	sp, sp, #112	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# name, name
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-dll.c:337:   va_start (argv, name);
	add	x0, sp, 112	;# tmp108,,
	sub	x0, x0, #56	;# tmp109, tmp108,
	str	x0, [sp, 24]	;# tmp109, MEM[(char * *)&argv]
;# varargs-dll.c:338:   double a = va_arg (argv, double);
	ldr	x0, [sp, 24]	;# D.8418, argv
	add	x1, x0, 8	;# D.8419, D.8418,
	str	x1, [sp, 24]	;# D.8419, argv
	ldr	d31, [x0]	;# tmp110, MEM[(double *)_11]
	str	d31, [sp, 40]	;# tmp110, a
;# varargs-dll.c:339:   double b = va_arg (argv, double);
	ldr	x0, [sp, 24]	;# D.8420, argv
	add	x1, x0, 8	;# D.8421, D.8420,
	str	x1, [sp, 24]	;# D.8421, argv
	ldr	d31, [x0]	;# tmp111, MEM[(double *)_14]
	str	d31, [sp, 32]	;# tmp111, b
;# varargs-dll.c:341:   return a + b;
	ldr	d30, [sp, 40]	;# tmp112, a
	ldr	d31, [sp, 32]	;# tmp113, b
	fadd	d31, d30, d31	;# _1, tmp112, tmp113
	fcvtzs	w0, d31	;# _9, _1
;# varargs-dll.c:342: }
	add	sp, sp, 112	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_floats
	.def	use_va_list_few_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_floats
use_va_list_few_floats:
	sub	sp, sp, #32	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# name, name
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:348:   double a = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8422, argv
	add	x1, x0, 8	;# D.8423, D.8422,
	str	x1, [sp]	;# D.8423, argv
	ldr	d31, [x0]	;# tmp108, MEM[(double *)_8]
	str	d31, [sp, 24]	;# tmp108, a
;# varargs-dll.c:349:   double b = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8424, argv
	add	x1, x0, 8	;# D.8425, D.8424,
	str	x1, [sp]	;# D.8425, argv
	ldr	d31, [x0]	;# tmp109, MEM[(double *)_11]
	str	d31, [sp, 16]	;# tmp109, b
;# varargs-dll.c:350:   return a + b;
	ldr	d30, [sp, 24]	;# tmp110, a
	ldr	d31, [sp, 16]	;# tmp111, b
	fadd	d31, d30, d31	;# _1, tmp110, tmp111
	fcvtzs	w0, d31	;# _7, _1
;# varargs-dll.c:351: }
	add	sp, sp, 32	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_floats
	.def	use_va_args_several_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_floats
use_va_args_several_floats:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# name, name
	str	x1, [sp, 104]	;#,
	str	x2, [sp, 112]	;#,
	str	x3, [sp, 120]	;#,
	str	x4, [sp, 128]	;#,
	str	x5, [sp, 136]	;#,
	str	x6, [sp, 144]	;#,
	str	x7, [sp, 152]	;#,
;# varargs-dll.c:358:   va_start (argv, name);
	add	x0, sp, 160	;# tmp129,,
	sub	x0, x0, #56	;# tmp130, tmp129,
	str	x0, [sp, 16]	;# tmp130, MEM[(char * *)&argv]
;# varargs-dll.c:359:   double a = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8426, argv
	add	x1, x0, 8	;# D.8427, D.8426,
	str	x1, [sp, 16]	;# D.8427, argv
	ldr	d31, [x0]	;# tmp131, MEM[(double *)_32]
	str	d31, [sp, 88]	;# tmp131, a
;# varargs-dll.c:360:   double b = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8428, argv
	add	x1, x0, 8	;# D.8429, D.8428,
	str	x1, [sp, 16]	;# D.8429, argv
	ldr	d31, [x0]	;# tmp132, MEM[(double *)_35]
	str	d31, [sp, 80]	;# tmp132, b
;# varargs-dll.c:361:   double c = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8430, argv
	add	x1, x0, 8	;# D.8431, D.8430,
	str	x1, [sp, 16]	;# D.8431, argv
	ldr	d31, [x0]	;# tmp133, MEM[(double *)_38]
	str	d31, [sp, 72]	;# tmp133, c
;# varargs-dll.c:362:   double d = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8432, argv
	add	x1, x0, 8	;# D.8433, D.8432,
	str	x1, [sp, 16]	;# D.8433, argv
	ldr	d31, [x0]	;# tmp134, MEM[(double *)_41]
	str	d31, [sp, 64]	;# tmp134, d
;# varargs-dll.c:363:   double e = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8434, argv
	add	x1, x0, 8	;# D.8435, D.8434,
	str	x1, [sp, 16]	;# D.8435, argv
	ldr	d31, [x0]	;# tmp135, MEM[(double *)_44]
	str	d31, [sp, 56]	;# tmp135, e
;# varargs-dll.c:364:   double f = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8436, argv
	add	x1, x0, 8	;# D.8437, D.8436,
	str	x1, [sp, 16]	;# D.8437, argv
	ldr	d31, [x0]	;# tmp136, MEM[(double *)_47]
	str	d31, [sp, 48]	;# tmp136, f
;# varargs-dll.c:365:   double g = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8438, argv
	add	x1, x0, 8	;# D.8439, D.8438,
	str	x1, [sp, 16]	;# D.8439, argv
	ldr	d31, [x0]	;# tmp137, MEM[(double *)_50]
	str	d31, [sp, 40]	;# tmp137, g
;# varargs-dll.c:366:   double h = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8440, argv
	add	x1, x0, 8	;# D.8441, D.8440,
	str	x1, [sp, 16]	;# D.8441, argv
	ldr	d31, [x0]	;# tmp138, MEM[(double *)_53]
	str	d31, [sp, 32]	;# tmp138, h
;# varargs-dll.c:367:   double i = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8442, argv
	add	x1, x0, 8	;# D.8443, D.8442,
	str	x1, [sp, 16]	;# D.8443, argv
	ldr	d31, [x0]	;# tmp139, MEM[(double *)_56]
	str	d31, [sp, 24]	;# tmp139, i
;# varargs-dll.c:369:   return a + b + c + d + e + f + g + h + i;
	ldr	d30, [sp, 88]	;# tmp140, a
	ldr	d31, [sp, 80]	;# tmp141, b
	fadd	d30, d30, d31	;# _1, tmp140, tmp141
;# varargs-dll.c:369:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 72]	;# tmp142, c
	fadd	d30, d30, d31	;# _2, _1, tmp142
;# varargs-dll.c:369:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 64]	;# tmp143, d
	fadd	d30, d30, d31	;# _3, _2, tmp143
;# varargs-dll.c:369:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 56]	;# tmp144, e
	fadd	d30, d30, d31	;# _4, _3, tmp144
;# varargs-dll.c:369:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 48]	;# tmp145, f
	fadd	d30, d30, d31	;# _5, _4, tmp145
;# varargs-dll.c:369:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 40]	;# tmp146, g
	fadd	d30, d30, d31	;# _6, _5, tmp146
;# varargs-dll.c:369:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 32]	;# tmp147, h
	fadd	d30, d30, d31	;# _7, _6, tmp147
;# varargs-dll.c:369:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 24]	;# tmp148, i
	fadd	d31, d30, d31	;# _8, _7, tmp148
	fcvtzs	w0, d31	;# _30, _8
;# varargs-dll.c:370: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_floats
	.def	use_va_list_several_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_floats
use_va_list_several_floats:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# name, name
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:376:   double a = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8444, argv
	add	x1, x0, 8	;# D.8445, D.8444,
	str	x1, [sp]	;# D.8445, argv
	ldr	d31, [x0]	;# tmp129, MEM[(double *)_29]
	str	d31, [sp, 88]	;# tmp129, a
;# varargs-dll.c:377:   double b = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8446, argv
	add	x1, x0, 8	;# D.8447, D.8446,
	str	x1, [sp]	;# D.8447, argv
	ldr	d31, [x0]	;# tmp130, MEM[(double *)_32]
	str	d31, [sp, 80]	;# tmp130, b
;# varargs-dll.c:378:   double c = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8448, argv
	add	x1, x0, 8	;# D.8449, D.8448,
	str	x1, [sp]	;# D.8449, argv
	ldr	d31, [x0]	;# tmp131, MEM[(double *)_35]
	str	d31, [sp, 72]	;# tmp131, c
;# varargs-dll.c:379:   double d = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8450, argv
	add	x1, x0, 8	;# D.8451, D.8450,
	str	x1, [sp]	;# D.8451, argv
	ldr	d31, [x0]	;# tmp132, MEM[(double *)_38]
	str	d31, [sp, 64]	;# tmp132, d
;# varargs-dll.c:380:   double e = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8452, argv
	add	x1, x0, 8	;# D.8453, D.8452,
	str	x1, [sp]	;# D.8453, argv
	ldr	d31, [x0]	;# tmp133, MEM[(double *)_41]
	str	d31, [sp, 56]	;# tmp133, e
;# varargs-dll.c:381:   double f = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8454, argv
	add	x1, x0, 8	;# D.8455, D.8454,
	str	x1, [sp]	;# D.8455, argv
	ldr	d31, [x0]	;# tmp134, MEM[(double *)_44]
	str	d31, [sp, 48]	;# tmp134, f
;# varargs-dll.c:382:   double g = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8456, argv
	add	x1, x0, 8	;# D.8457, D.8456,
	str	x1, [sp]	;# D.8457, argv
	ldr	d31, [x0]	;# tmp135, MEM[(double *)_47]
	str	d31, [sp, 40]	;# tmp135, g
;# varargs-dll.c:383:   double h = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8458, argv
	add	x1, x0, 8	;# D.8459, D.8458,
	str	x1, [sp]	;# D.8459, argv
	ldr	d31, [x0]	;# tmp136, MEM[(double *)_50]
	str	d31, [sp, 32]	;# tmp136, h
;# varargs-dll.c:384:   double i = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8460, argv
	add	x1, x0, 8	;# D.8461, D.8460,
	str	x1, [sp]	;# D.8461, argv
	ldr	d31, [x0]	;# tmp137, MEM[(double *)_53]
	str	d31, [sp, 24]	;# tmp137, i
;# varargs-dll.c:385:   return a + b + c + d + e + f + g + h + i;
	ldr	d30, [sp, 88]	;# tmp138, a
	ldr	d31, [sp, 80]	;# tmp139, b
	fadd	d30, d30, d31	;# _1, tmp138, tmp139
;# varargs-dll.c:385:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 72]	;# tmp140, c
	fadd	d30, d30, d31	;# _2, _1, tmp140
;# varargs-dll.c:385:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 64]	;# tmp141, d
	fadd	d30, d30, d31	;# _3, _2, tmp141
;# varargs-dll.c:385:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 56]	;# tmp142, e
	fadd	d30, d30, d31	;# _4, _3, tmp142
;# varargs-dll.c:385:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 48]	;# tmp143, f
	fadd	d30, d30, d31	;# _5, _4, tmp143
;# varargs-dll.c:385:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 40]	;# tmp144, g
	fadd	d30, d30, d31	;# _6, _5, tmp144
;# varargs-dll.c:385:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 32]	;# tmp145, h
	fadd	d30, d30, d31	;# _7, _6, tmp145
;# varargs-dll.c:385:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 24]	;# tmp146, i
	fadd	d31, d30, d31	;# _8, _7, tmp146
	fcvtzs	w0, d31	;# _28, _8
;# varargs-dll.c:386: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_floats
	.def	use_va_args_many_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_floats
use_va_args_many_floats:
	sub	sp, sp, #224	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# name, name
	str	x1, [sp, 168]	;#,
	str	x2, [sp, 176]	;#,
	str	x3, [sp, 184]	;#,
	str	x4, [sp, 192]	;#,
	str	x5, [sp, 200]	;#,
	str	x6, [sp, 208]	;#,
	str	x7, [sp, 216]	;#,
;# varargs-dll.c:393:   va_start (argv, name);
	add	x0, sp, 224	;# tmp153,,
	sub	x0, x0, #56	;# tmp154, tmp153,
	str	x0, [sp, 16]	;# tmp154, MEM[(char * *)&argv]
;# varargs-dll.c:394:   double a = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8462, argv
	add	x1, x0, 8	;# D.8463, D.8462,
	str	x1, [sp, 16]	;# D.8463, argv
	ldr	d31, [x0]	;# tmp155, MEM[(double *)_56]
	str	d31, [sp, 152]	;# tmp155, a
;# varargs-dll.c:395:   double b = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8464, argv
	add	x1, x0, 8	;# D.8465, D.8464,
	str	x1, [sp, 16]	;# D.8465, argv
	ldr	d31, [x0]	;# tmp156, MEM[(double *)_59]
	str	d31, [sp, 144]	;# tmp156, b
;# varargs-dll.c:396:   double c = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8466, argv
	add	x1, x0, 8	;# D.8467, D.8466,
	str	x1, [sp, 16]	;# D.8467, argv
	ldr	d31, [x0]	;# tmp157, MEM[(double *)_62]
	str	d31, [sp, 136]	;# tmp157, c
;# varargs-dll.c:397:   double d = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8468, argv
	add	x1, x0, 8	;# D.8469, D.8468,
	str	x1, [sp, 16]	;# D.8469, argv
	ldr	d31, [x0]	;# tmp158, MEM[(double *)_65]
	str	d31, [sp, 128]	;# tmp158, d
;# varargs-dll.c:398:   double e = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8470, argv
	add	x1, x0, 8	;# D.8471, D.8470,
	str	x1, [sp, 16]	;# D.8471, argv
	ldr	d31, [x0]	;# tmp159, MEM[(double *)_68]
	str	d31, [sp, 120]	;# tmp159, e
;# varargs-dll.c:399:   double f = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8472, argv
	add	x1, x0, 8	;# D.8473, D.8472,
	str	x1, [sp, 16]	;# D.8473, argv
	ldr	d31, [x0]	;# tmp160, MEM[(double *)_71]
	str	d31, [sp, 112]	;# tmp160, f
;# varargs-dll.c:400:   double g = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8474, argv
	add	x1, x0, 8	;# D.8475, D.8474,
	str	x1, [sp, 16]	;# D.8475, argv
	ldr	d31, [x0]	;# tmp161, MEM[(double *)_74]
	str	d31, [sp, 104]	;# tmp161, g
;# varargs-dll.c:401:   double h = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8476, argv
	add	x1, x0, 8	;# D.8477, D.8476,
	str	x1, [sp, 16]	;# D.8477, argv
	ldr	d31, [x0]	;# tmp162, MEM[(double *)_77]
	str	d31, [sp, 96]	;# tmp162, h
;# varargs-dll.c:402:   double i = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8478, argv
	add	x1, x0, 8	;# D.8479, D.8478,
	str	x1, [sp, 16]	;# D.8479, argv
	ldr	d31, [x0]	;# tmp163, MEM[(double *)_80]
	str	d31, [sp, 88]	;# tmp163, i
;# varargs-dll.c:403:   double j = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8480, argv
	add	x1, x0, 8	;# D.8481, D.8480,
	str	x1, [sp, 16]	;# D.8481, argv
	ldr	d31, [x0]	;# tmp164, MEM[(double *)_83]
	str	d31, [sp, 80]	;# tmp164, j
;# varargs-dll.c:404:   double k = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8482, argv
	add	x1, x0, 8	;# D.8483, D.8482,
	str	x1, [sp, 16]	;# D.8483, argv
	ldr	d31, [x0]	;# tmp165, MEM[(double *)_86]
	str	d31, [sp, 72]	;# tmp165, k
;# varargs-dll.c:405:   double l = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8484, argv
	add	x1, x0, 8	;# D.8485, D.8484,
	str	x1, [sp, 16]	;# D.8485, argv
	ldr	d31, [x0]	;# tmp166, MEM[(double *)_89]
	str	d31, [sp, 64]	;# tmp166, l
;# varargs-dll.c:406:   double m = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8486, argv
	add	x1, x0, 8	;# D.8487, D.8486,
	str	x1, [sp, 16]	;# D.8487, argv
	ldr	d31, [x0]	;# tmp167, MEM[(double *)_92]
	str	d31, [sp, 56]	;# tmp167, m
;# varargs-dll.c:407:   double n = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8488, argv
	add	x1, x0, 8	;# D.8489, D.8488,
	str	x1, [sp, 16]	;# D.8489, argv
	ldr	d31, [x0]	;# tmp168, MEM[(double *)_95]
	str	d31, [sp, 48]	;# tmp168, n
;# varargs-dll.c:408:   double o = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8490, argv
	add	x1, x0, 8	;# D.8491, D.8490,
	str	x1, [sp, 16]	;# D.8491, argv
	ldr	d31, [x0]	;# tmp169, MEM[(double *)_98]
	str	d31, [sp, 40]	;# tmp169, o
;# varargs-dll.c:409:   double p = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8492, argv
	add	x1, x0, 8	;# D.8493, D.8492,
	str	x1, [sp, 16]	;# D.8493, argv
	ldr	d31, [x0]	;# tmp170, MEM[(double *)_101]
	str	d31, [sp, 32]	;# tmp170, p
;# varargs-dll.c:410:   double q = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.8494, argv
	add	x1, x0, 8	;# D.8495, D.8494,
	str	x1, [sp, 16]	;# D.8495, argv
	ldr	d31, [x0]	;# tmp171, MEM[(double *)_104]
	str	d31, [sp, 24]	;# tmp171, q
;# varargs-dll.c:412:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d30, [sp, 152]	;# tmp172, a
	ldr	d31, [sp, 144]	;# tmp173, b
	fadd	d30, d30, d31	;# _1, tmp172, tmp173
;# varargs-dll.c:412:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 136]	;# tmp174, c
	fadd	d30, d30, d31	;# _2, _1, tmp174
;# varargs-dll.c:412:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 128]	;# tmp175, d
	fadd	d30, d30, d31	;# _3, _2, tmp175
;# varargs-dll.c:412:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 120]	;# tmp176, e
	fadd	d30, d30, d31	;# _4, _3, tmp176
;# varargs-dll.c:412:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 112]	;# tmp177, f
	fadd	d30, d30, d31	;# _5, _4, tmp177
;# varargs-dll.c:412:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 104]	;# tmp178, g
	fadd	d30, d30, d31	;# _6, _5, tmp178
;# varargs-dll.c:412:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 96]	;# tmp179, h
	fadd	d30, d30, d31	;# _7, _6, tmp179
;# varargs-dll.c:412:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 88]	;# tmp180, i
	fadd	d30, d30, d31	;# _8, _7, tmp180
;# varargs-dll.c:412:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 80]	;# tmp181, j
	fadd	d30, d30, d31	;# _9, _8, tmp181
;# varargs-dll.c:412:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 72]	;# tmp182, k
	fadd	d30, d30, d31	;# _10, _9, tmp182
;# varargs-dll.c:412:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 64]	;# tmp183, l
	fadd	d30, d30, d31	;# _11, _10, tmp183
;# varargs-dll.c:412:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 56]	;# tmp184, m
	fadd	d30, d30, d31	;# _12, _11, tmp184
;# varargs-dll.c:412:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 48]	;# tmp185, n
	fadd	d30, d30, d31	;# _13, _12, tmp185
;# varargs-dll.c:412:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 40]	;# tmp186, o
	fadd	d30, d30, d31	;# _14, _13, tmp186
;# varargs-dll.c:412:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 32]	;# tmp187, p
	fadd	d30, d30, d31	;# _15, _14, tmp187
;# varargs-dll.c:412:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 24]	;# tmp188, q
	fadd	d31, d30, d31	;# _16, _15, tmp188
	fcvtzs	w0, d31	;# _54, _16
;# varargs-dll.c:413: }
	add	sp, sp, 224	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_floats
	.def	use_va_list_many_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_floats
use_va_list_many_floats:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# name, name
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:419:   double a = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8496, argv
	add	x1, x0, 8	;# D.8497, D.8496,
	str	x1, [sp]	;# D.8497, argv
	ldr	d31, [x0]	;# tmp153, MEM[(double *)_53]
	str	d31, [sp, 152]	;# tmp153, a
;# varargs-dll.c:420:   double b = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8498, argv
	add	x1, x0, 8	;# D.8499, D.8498,
	str	x1, [sp]	;# D.8499, argv
	ldr	d31, [x0]	;# tmp154, MEM[(double *)_56]
	str	d31, [sp, 144]	;# tmp154, b
;# varargs-dll.c:421:   double c = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8500, argv
	add	x1, x0, 8	;# D.8501, D.8500,
	str	x1, [sp]	;# D.8501, argv
	ldr	d31, [x0]	;# tmp155, MEM[(double *)_59]
	str	d31, [sp, 136]	;# tmp155, c
;# varargs-dll.c:422:   double d = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8502, argv
	add	x1, x0, 8	;# D.8503, D.8502,
	str	x1, [sp]	;# D.8503, argv
	ldr	d31, [x0]	;# tmp156, MEM[(double *)_62]
	str	d31, [sp, 128]	;# tmp156, d
;# varargs-dll.c:423:   double e = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8504, argv
	add	x1, x0, 8	;# D.8505, D.8504,
	str	x1, [sp]	;# D.8505, argv
	ldr	d31, [x0]	;# tmp157, MEM[(double *)_65]
	str	d31, [sp, 120]	;# tmp157, e
;# varargs-dll.c:424:   double f = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8506, argv
	add	x1, x0, 8	;# D.8507, D.8506,
	str	x1, [sp]	;# D.8507, argv
	ldr	d31, [x0]	;# tmp158, MEM[(double *)_68]
	str	d31, [sp, 112]	;# tmp158, f
;# varargs-dll.c:425:   double g = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8508, argv
	add	x1, x0, 8	;# D.8509, D.8508,
	str	x1, [sp]	;# D.8509, argv
	ldr	d31, [x0]	;# tmp159, MEM[(double *)_71]
	str	d31, [sp, 104]	;# tmp159, g
;# varargs-dll.c:426:   double h = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8510, argv
	add	x1, x0, 8	;# D.8511, D.8510,
	str	x1, [sp]	;# D.8511, argv
	ldr	d31, [x0]	;# tmp160, MEM[(double *)_74]
	str	d31, [sp, 96]	;# tmp160, h
;# varargs-dll.c:427:   double i = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8512, argv
	add	x1, x0, 8	;# D.8513, D.8512,
	str	x1, [sp]	;# D.8513, argv
	ldr	d31, [x0]	;# tmp161, MEM[(double *)_77]
	str	d31, [sp, 88]	;# tmp161, i
;# varargs-dll.c:428:   double j = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8514, argv
	add	x1, x0, 8	;# D.8515, D.8514,
	str	x1, [sp]	;# D.8515, argv
	ldr	d31, [x0]	;# tmp162, MEM[(double *)_80]
	str	d31, [sp, 80]	;# tmp162, j
;# varargs-dll.c:429:   double k = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8516, argv
	add	x1, x0, 8	;# D.8517, D.8516,
	str	x1, [sp]	;# D.8517, argv
	ldr	d31, [x0]	;# tmp163, MEM[(double *)_83]
	str	d31, [sp, 72]	;# tmp163, k
;# varargs-dll.c:430:   double l = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8518, argv
	add	x1, x0, 8	;# D.8519, D.8518,
	str	x1, [sp]	;# D.8519, argv
	ldr	d31, [x0]	;# tmp164, MEM[(double *)_86]
	str	d31, [sp, 64]	;# tmp164, l
;# varargs-dll.c:431:   double m = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8520, argv
	add	x1, x0, 8	;# D.8521, D.8520,
	str	x1, [sp]	;# D.8521, argv
	ldr	d31, [x0]	;# tmp165, MEM[(double *)_89]
	str	d31, [sp, 56]	;# tmp165, m
;# varargs-dll.c:432:   double n = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8522, argv
	add	x1, x0, 8	;# D.8523, D.8522,
	str	x1, [sp]	;# D.8523, argv
	ldr	d31, [x0]	;# tmp166, MEM[(double *)_92]
	str	d31, [sp, 48]	;# tmp166, n
;# varargs-dll.c:433:   double o = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8524, argv
	add	x1, x0, 8	;# D.8525, D.8524,
	str	x1, [sp]	;# D.8525, argv
	ldr	d31, [x0]	;# tmp167, MEM[(double *)_95]
	str	d31, [sp, 40]	;# tmp167, o
;# varargs-dll.c:434:   double p = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8526, argv
	add	x1, x0, 8	;# D.8527, D.8526,
	str	x1, [sp]	;# D.8527, argv
	ldr	d31, [x0]	;# tmp168, MEM[(double *)_98]
	str	d31, [sp, 32]	;# tmp168, p
;# varargs-dll.c:435:   double q = va_arg (argv, double);
	ldr	x0, [sp]	;# D.8528, argv
	add	x1, x0, 8	;# D.8529, D.8528,
	str	x1, [sp]	;# D.8529, argv
	ldr	d31, [x0]	;# tmp169, MEM[(double *)_101]
	str	d31, [sp, 24]	;# tmp169, q
;# varargs-dll.c:436:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d30, [sp, 152]	;# tmp170, a
	ldr	d31, [sp, 144]	;# tmp171, b
	fadd	d30, d30, d31	;# _1, tmp170, tmp171
;# varargs-dll.c:436:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 136]	;# tmp172, c
	fadd	d30, d30, d31	;# _2, _1, tmp172
;# varargs-dll.c:436:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 128]	;# tmp173, d
	fadd	d30, d30, d31	;# _3, _2, tmp173
;# varargs-dll.c:436:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 120]	;# tmp174, e
	fadd	d30, d30, d31	;# _4, _3, tmp174
;# varargs-dll.c:436:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 112]	;# tmp175, f
	fadd	d30, d30, d31	;# _5, _4, tmp175
;# varargs-dll.c:436:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 104]	;# tmp176, g
	fadd	d30, d30, d31	;# _6, _5, tmp176
;# varargs-dll.c:436:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 96]	;# tmp177, h
	fadd	d30, d30, d31	;# _7, _6, tmp177
;# varargs-dll.c:436:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 88]	;# tmp178, i
	fadd	d30, d30, d31	;# _8, _7, tmp178
;# varargs-dll.c:436:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 80]	;# tmp179, j
	fadd	d30, d30, d31	;# _9, _8, tmp179
;# varargs-dll.c:436:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 72]	;# tmp180, k
	fadd	d30, d30, d31	;# _10, _9, tmp180
;# varargs-dll.c:436:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 64]	;# tmp181, l
	fadd	d30, d30, d31	;# _11, _10, tmp181
;# varargs-dll.c:436:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 56]	;# tmp182, m
	fadd	d30, d30, d31	;# _12, _11, tmp182
;# varargs-dll.c:436:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 48]	;# tmp183, n
	fadd	d30, d30, d31	;# _13, _12, tmp183
;# varargs-dll.c:436:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 40]	;# tmp184, o
	fadd	d30, d30, d31	;# _14, _13, tmp184
;# varargs-dll.c:436:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 32]	;# tmp185, p
	fadd	d30, d30, d31	;# _15, _14, tmp185
;# varargs-dll.c:436:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 24]	;# tmp186, q
	fadd	d31, d30, d31	;# _16, _15, tmp186
	fcvtzs	w0, d31	;# _52, _16
;# varargs-dll.c:437: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_strings
	.def	use_va_args_few_strings;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_strings
use_va_args_few_strings:
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
;# varargs-dll.c:443:   va_start (argv, format);
	add	x0, sp, 112	;# tmp109,,
	sub	x0, x0, #56	;# tmp110, tmp109,
	str	x0, [sp, 32]	;# tmp110, MEM[(char * *)&argv]
;# varargs-dll.c:444:   int a = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8530, argv
	add	x1, x0, 8	;# D.8531, D.8530,
	str	x1, [sp, 32]	;# D.8531, argv
	ldr	x0, [x0]	;# _1, MEM[(const char * *)_14]
	bl	atoi		;#
	str	w0, [sp, 44]	;#, a
;# varargs-dll.c:445:   int b = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8532, argv
	add	x1, x0, 8	;# D.8533, D.8532,
	str	x1, [sp, 32]	;# D.8533, argv
	ldr	x0, [x0]	;# _2, MEM[(const char * *)_17]
	bl	atoi		;#
	str	w0, [sp, 40]	;#, b
;# varargs-dll.c:447:   return a + b;
	ldr	w1, [sp, 44]	;# tmp111, a
	ldr	w0, [sp, 40]	;# tmp112, b
	add	w0, w1, w0	;# _12, tmp111, tmp112
;# varargs-dll.c:448: }
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_strings
	.def	use_va_list_few_strings;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_strings
use_va_list_few_strings:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4048]	;#,
	stp	x29, x30, [sp, -48]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 16]	;# argv, argv
;# varargs-dll.c:453:   int a = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8534, argv
	add	x1, x0, 8	;# D.8535, D.8534,
	str	x1, [sp, 16]	;# D.8535, argv
	ldr	x0, [x0]	;# _1, MEM[(const char * *)_11]
	bl	atoi		;#
	str	w0, [sp, 44]	;#, a
;# varargs-dll.c:454:   int b = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8536, argv
	add	x1, x0, 8	;# D.8537, D.8536,
	str	x1, [sp, 16]	;# D.8537, argv
	ldr	x0, [x0]	;# _2, MEM[(const char * *)_14]
	bl	atoi		;#
	str	w0, [sp, 40]	;#, b
;# varargs-dll.c:455:   return a + b;
	ldr	w1, [sp, 44]	;# tmp109, a
	ldr	w0, [sp, 40]	;# tmp110, b
	add	w0, w1, w0	;# _10, tmp109, tmp110
;# varargs-dll.c:456: }
	ldp	x29, x30, [sp], 48	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_strings
	.def	use_va_args_several_strings;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_strings
use_va_args_several_strings:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3952]	;#,
	stp	x29, x30, [sp, -144]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 88]	;#,
	str	x2, [sp, 96]	;#,
	str	x3, [sp, 104]	;#,
	str	x4, [sp, 112]	;#,
	str	x5, [sp, 120]	;#,
	str	x6, [sp, 128]	;#,
	str	x7, [sp, 136]	;#,
;# varargs-dll.c:462:   va_start (argv, format);
	add	x0, sp, 144	;# tmp137,,
	sub	x0, x0, #56	;# tmp138, tmp137,
	str	x0, [sp, 32]	;# tmp138, MEM[(char * *)&argv]
;# varargs-dll.c:463:   int a = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8538, argv
	add	x1, x0, 8	;# D.8539, D.8538,
	str	x1, [sp, 32]	;# D.8539, argv
	ldr	x0, [x0]	;# _1, MEM[(const char * *)_49]
	bl	atoi		;#
	str	w0, [sp, 76]	;#, a
;# varargs-dll.c:464:   int b = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8540, argv
	add	x1, x0, 8	;# D.8541, D.8540,
	str	x1, [sp, 32]	;# D.8541, argv
	ldr	x0, [x0]	;# _2, MEM[(const char * *)_52]
	bl	atoi		;#
	str	w0, [sp, 72]	;#, b
;# varargs-dll.c:465:   int c = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8542, argv
	add	x1, x0, 8	;# D.8543, D.8542,
	str	x1, [sp, 32]	;# D.8543, argv
	ldr	x0, [x0]	;# _3, MEM[(const char * *)_55]
	bl	atoi		;#
	str	w0, [sp, 68]	;#, c
;# varargs-dll.c:466:   int d = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8544, argv
	add	x1, x0, 8	;# D.8545, D.8544,
	str	x1, [sp, 32]	;# D.8545, argv
	ldr	x0, [x0]	;# _4, MEM[(const char * *)_58]
	bl	atoi		;#
	str	w0, [sp, 64]	;#, d
;# varargs-dll.c:467:   int e = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8546, argv
	add	x1, x0, 8	;# D.8547, D.8546,
	str	x1, [sp, 32]	;# D.8547, argv
	ldr	x0, [x0]	;# _5, MEM[(const char * *)_61]
	bl	atoi		;#
	str	w0, [sp, 60]	;#, e
;# varargs-dll.c:468:   int f = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8548, argv
	add	x1, x0, 8	;# D.8549, D.8548,
	str	x1, [sp, 32]	;# D.8549, argv
	ldr	x0, [x0]	;# _6, MEM[(const char * *)_64]
	bl	atoi		;#
	str	w0, [sp, 56]	;#, f
;# varargs-dll.c:469:   int g = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8550, argv
	add	x1, x0, 8	;# D.8551, D.8550,
	str	x1, [sp, 32]	;# D.8551, argv
	ldr	x0, [x0]	;# _7, MEM[(const char * *)_67]
	bl	atoi		;#
	str	w0, [sp, 52]	;#, g
;# varargs-dll.c:470:   int h = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8552, argv
	add	x1, x0, 8	;# D.8553, D.8552,
	str	x1, [sp, 32]	;# D.8553, argv
	ldr	x0, [x0]	;# _8, MEM[(const char * *)_70]
	bl	atoi		;#
	str	w0, [sp, 48]	;#, h
;# varargs-dll.c:471:   int i = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8554, argv
	add	x1, x0, 8	;# D.8555, D.8554,
	str	x1, [sp, 32]	;# D.8555, argv
	ldr	x0, [x0]	;# _9, MEM[(const char * *)_73]
	bl	atoi		;#
	str	w0, [sp, 44]	;#, i
;# varargs-dll.c:473:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 76]	;# tmp139, a
	ldr	w0, [sp, 72]	;# tmp140, b
	add	w1, w1, w0	;# _10, tmp139, tmp140
;# varargs-dll.c:473:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 68]	;# tmp141, c
	add	w1, w1, w0	;# _11, _10, tmp141
;# varargs-dll.c:473:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 64]	;# tmp142, d
	add	w1, w1, w0	;# _12, _11, tmp142
;# varargs-dll.c:473:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 60]	;# tmp143, e
	add	w1, w1, w0	;# _13, _12, tmp143
;# varargs-dll.c:473:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 56]	;# tmp144, f
	add	w1, w1, w0	;# _14, _13, tmp144
;# varargs-dll.c:473:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 52]	;# tmp145, g
	add	w1, w1, w0	;# _15, _14, tmp145
;# varargs-dll.c:473:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 48]	;# tmp146, h
	add	w1, w1, w0	;# _16, _15, tmp146
;# varargs-dll.c:473:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 44]	;# tmp147, i
	add	w0, w1, w0	;# _47, _16, tmp147
;# varargs-dll.c:474: }
	ldp	x29, x30, [sp], 144	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_strings
	.def	use_va_list_several_strings;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_strings
use_va_list_several_strings:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4016]	;#,
	stp	x29, x30, [sp, -80]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 16]	;# argv, argv
;# varargs-dll.c:479:   int a = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8556, argv
	add	x1, x0, 8	;# D.8557, D.8556,
	str	x1, [sp, 16]	;# D.8557, argv
	ldr	x0, [x0]	;# _1, MEM[(const char * *)_46]
	bl	atoi		;#
	str	w0, [sp, 76]	;#, a
;# varargs-dll.c:480:   int b = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8558, argv
	add	x1, x0, 8	;# D.8559, D.8558,
	str	x1, [sp, 16]	;# D.8559, argv
	ldr	x0, [x0]	;# _2, MEM[(const char * *)_49]
	bl	atoi		;#
	str	w0, [sp, 72]	;#, b
;# varargs-dll.c:481:   int c = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8560, argv
	add	x1, x0, 8	;# D.8561, D.8560,
	str	x1, [sp, 16]	;# D.8561, argv
	ldr	x0, [x0]	;# _3, MEM[(const char * *)_52]
	bl	atoi		;#
	str	w0, [sp, 68]	;#, c
;# varargs-dll.c:482:   int d = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8562, argv
	add	x1, x0, 8	;# D.8563, D.8562,
	str	x1, [sp, 16]	;# D.8563, argv
	ldr	x0, [x0]	;# _4, MEM[(const char * *)_55]
	bl	atoi		;#
	str	w0, [sp, 64]	;#, d
;# varargs-dll.c:483:   int e = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8564, argv
	add	x1, x0, 8	;# D.8565, D.8564,
	str	x1, [sp, 16]	;# D.8565, argv
	ldr	x0, [x0]	;# _5, MEM[(const char * *)_58]
	bl	atoi		;#
	str	w0, [sp, 60]	;#, e
;# varargs-dll.c:484:   int f = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8566, argv
	add	x1, x0, 8	;# D.8567, D.8566,
	str	x1, [sp, 16]	;# D.8567, argv
	ldr	x0, [x0]	;# _6, MEM[(const char * *)_61]
	bl	atoi		;#
	str	w0, [sp, 56]	;#, f
;# varargs-dll.c:485:   int g = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8568, argv
	add	x1, x0, 8	;# D.8569, D.8568,
	str	x1, [sp, 16]	;# D.8569, argv
	ldr	x0, [x0]	;# _7, MEM[(const char * *)_64]
	bl	atoi		;#
	str	w0, [sp, 52]	;#, g
;# varargs-dll.c:486:   int h = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8570, argv
	add	x1, x0, 8	;# D.8571, D.8570,
	str	x1, [sp, 16]	;# D.8571, argv
	ldr	x0, [x0]	;# _8, MEM[(const char * *)_67]
	bl	atoi		;#
	str	w0, [sp, 48]	;#, h
;# varargs-dll.c:487:   int i = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8572, argv
	add	x1, x0, 8	;# D.8573, D.8572,
	str	x1, [sp, 16]	;# D.8573, argv
	ldr	x0, [x0]	;# _9, MEM[(const char * *)_70]
	bl	atoi		;#
	str	w0, [sp, 44]	;#, i
;# varargs-dll.c:488:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 76]	;# tmp137, a
	ldr	w0, [sp, 72]	;# tmp138, b
	add	w1, w1, w0	;# _10, tmp137, tmp138
;# varargs-dll.c:488:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 68]	;# tmp139, c
	add	w1, w1, w0	;# _11, _10, tmp139
;# varargs-dll.c:488:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 64]	;# tmp140, d
	add	w1, w1, w0	;# _12, _11, tmp140
;# varargs-dll.c:488:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 60]	;# tmp141, e
	add	w1, w1, w0	;# _13, _12, tmp141
;# varargs-dll.c:488:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 56]	;# tmp142, f
	add	w1, w1, w0	;# _14, _13, tmp142
;# varargs-dll.c:488:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 52]	;# tmp143, g
	add	w1, w1, w0	;# _15, _14, tmp143
;# varargs-dll.c:488:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 48]	;# tmp144, h
	add	w1, w1, w0	;# _16, _15, tmp144
;# varargs-dll.c:488:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 44]	;# tmp145, i
	add	w0, w1, w0	;# _45, _16, tmp145
;# varargs-dll.c:489: }
	ldp	x29, x30, [sp], 80	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_strings
	.def	use_va_args_many_strings;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_strings
use_va_args_many_strings:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3920]	;#,
	stp	x29, x30, [sp, -176]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 120]	;#,
	str	x2, [sp, 128]	;#,
	str	x3, [sp, 136]	;#,
	str	x4, [sp, 144]	;#,
	str	x5, [sp, 152]	;#,
	str	x6, [sp, 160]	;#,
	str	x7, [sp, 168]	;#,
;# varargs-dll.c:495:   va_start (argv, format);
	add	x0, sp, 176	;# tmp169,,
	sub	x0, x0, #56	;# tmp170, tmp169,
	str	x0, [sp, 32]	;# tmp170, MEM[(char * *)&argv]
;# varargs-dll.c:496:   int a = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8574, argv
	add	x1, x0, 8	;# D.8575, D.8574,
	str	x1, [sp, 32]	;# D.8575, argv
	ldr	x0, [x0]	;# _1, MEM[(const char * *)_89]
	bl	atoi		;#
	str	w0, [sp, 108]	;#, a
;# varargs-dll.c:497:   int b = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8576, argv
	add	x1, x0, 8	;# D.8577, D.8576,
	str	x1, [sp, 32]	;# D.8577, argv
	ldr	x0, [x0]	;# _2, MEM[(const char * *)_92]
	bl	atoi		;#
	str	w0, [sp, 104]	;#, b
;# varargs-dll.c:498:   int c = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8578, argv
	add	x1, x0, 8	;# D.8579, D.8578,
	str	x1, [sp, 32]	;# D.8579, argv
	ldr	x0, [x0]	;# _3, MEM[(const char * *)_95]
	bl	atoi		;#
	str	w0, [sp, 100]	;#, c
;# varargs-dll.c:499:   int d = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8580, argv
	add	x1, x0, 8	;# D.8581, D.8580,
	str	x1, [sp, 32]	;# D.8581, argv
	ldr	x0, [x0]	;# _4, MEM[(const char * *)_98]
	bl	atoi		;#
	str	w0, [sp, 96]	;#, d
;# varargs-dll.c:500:   int e = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8582, argv
	add	x1, x0, 8	;# D.8583, D.8582,
	str	x1, [sp, 32]	;# D.8583, argv
	ldr	x0, [x0]	;# _5, MEM[(const char * *)_101]
	bl	atoi		;#
	str	w0, [sp, 92]	;#, e
;# varargs-dll.c:501:   int f = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8584, argv
	add	x1, x0, 8	;# D.8585, D.8584,
	str	x1, [sp, 32]	;# D.8585, argv
	ldr	x0, [x0]	;# _6, MEM[(const char * *)_104]
	bl	atoi		;#
	str	w0, [sp, 88]	;#, f
;# varargs-dll.c:502:   int g = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8586, argv
	add	x1, x0, 8	;# D.8587, D.8586,
	str	x1, [sp, 32]	;# D.8587, argv
	ldr	x0, [x0]	;# _7, MEM[(const char * *)_107]
	bl	atoi		;#
	str	w0, [sp, 84]	;#, g
;# varargs-dll.c:503:   int h = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8588, argv
	add	x1, x0, 8	;# D.8589, D.8588,
	str	x1, [sp, 32]	;# D.8589, argv
	ldr	x0, [x0]	;# _8, MEM[(const char * *)_110]
	bl	atoi		;#
	str	w0, [sp, 80]	;#, h
;# varargs-dll.c:504:   int i = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8590, argv
	add	x1, x0, 8	;# D.8591, D.8590,
	str	x1, [sp, 32]	;# D.8591, argv
	ldr	x0, [x0]	;# _9, MEM[(const char * *)_113]
	bl	atoi		;#
	str	w0, [sp, 76]	;#, i
;# varargs-dll.c:505:   int j = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8592, argv
	add	x1, x0, 8	;# D.8593, D.8592,
	str	x1, [sp, 32]	;# D.8593, argv
	ldr	x0, [x0]	;# _10, MEM[(const char * *)_116]
	bl	atoi		;#
	str	w0, [sp, 72]	;#, j
;# varargs-dll.c:506:   int k = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8594, argv
	add	x1, x0, 8	;# D.8595, D.8594,
	str	x1, [sp, 32]	;# D.8595, argv
	ldr	x0, [x0]	;# _11, MEM[(const char * *)_119]
	bl	atoi		;#
	str	w0, [sp, 68]	;#, k
;# varargs-dll.c:507:   int l = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8596, argv
	add	x1, x0, 8	;# D.8597, D.8596,
	str	x1, [sp, 32]	;# D.8597, argv
	ldr	x0, [x0]	;# _12, MEM[(const char * *)_122]
	bl	atoi		;#
	str	w0, [sp, 64]	;#, l
;# varargs-dll.c:508:   int m = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8598, argv
	add	x1, x0, 8	;# D.8599, D.8598,
	str	x1, [sp, 32]	;# D.8599, argv
	ldr	x0, [x0]	;# _13, MEM[(const char * *)_125]
	bl	atoi		;#
	str	w0, [sp, 60]	;#, m
;# varargs-dll.c:509:   int n = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8600, argv
	add	x1, x0, 8	;# D.8601, D.8600,
	str	x1, [sp, 32]	;# D.8601, argv
	ldr	x0, [x0]	;# _14, MEM[(const char * *)_128]
	bl	atoi		;#
	str	w0, [sp, 56]	;#, n
;# varargs-dll.c:510:   int o = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8602, argv
	add	x1, x0, 8	;# D.8603, D.8602,
	str	x1, [sp, 32]	;# D.8603, argv
	ldr	x0, [x0]	;# _15, MEM[(const char * *)_131]
	bl	atoi		;#
	str	w0, [sp, 52]	;#, o
;# varargs-dll.c:511:   int p = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8604, argv
	add	x1, x0, 8	;# D.8605, D.8604,
	str	x1, [sp, 32]	;# D.8605, argv
	ldr	x0, [x0]	;# _16, MEM[(const char * *)_134]
	bl	atoi		;#
	str	w0, [sp, 48]	;#, p
;# varargs-dll.c:512:   int q = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 32]	;# D.8606, argv
	add	x1, x0, 8	;# D.8607, D.8606,
	str	x1, [sp, 32]	;# D.8607, argv
	ldr	x0, [x0]	;# _17, MEM[(const char * *)_137]
	bl	atoi		;#
	str	w0, [sp, 44]	;#, q
;# varargs-dll.c:514:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 108]	;# tmp171, a
	ldr	w0, [sp, 104]	;# tmp172, b
	add	w1, w1, w0	;# _18, tmp171, tmp172
;# varargs-dll.c:514:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 100]	;# tmp173, c
	add	w1, w1, w0	;# _19, _18, tmp173
;# varargs-dll.c:514:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 96]	;# tmp174, d
	add	w1, w1, w0	;# _20, _19, tmp174
;# varargs-dll.c:514:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 92]	;# tmp175, e
	add	w1, w1, w0	;# _21, _20, tmp175
;# varargs-dll.c:514:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 88]	;# tmp176, f
	add	w1, w1, w0	;# _22, _21, tmp176
;# varargs-dll.c:514:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 84]	;# tmp177, g
	add	w1, w1, w0	;# _23, _22, tmp177
;# varargs-dll.c:514:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 80]	;# tmp178, h
	add	w1, w1, w0	;# _24, _23, tmp178
;# varargs-dll.c:514:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 76]	;# tmp179, i
	add	w1, w1, w0	;# _25, _24, tmp179
;# varargs-dll.c:514:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 72]	;# tmp180, j
	add	w1, w1, w0	;# _26, _25, tmp180
;# varargs-dll.c:514:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 68]	;# tmp181, k
	add	w1, w1, w0	;# _27, _26, tmp181
;# varargs-dll.c:514:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 64]	;# tmp182, l
	add	w1, w1, w0	;# _28, _27, tmp182
;# varargs-dll.c:514:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 60]	;# tmp183, m
	add	w1, w1, w0	;# _29, _28, tmp183
;# varargs-dll.c:514:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 56]	;# tmp184, n
	add	w1, w1, w0	;# _30, _29, tmp184
;# varargs-dll.c:514:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 52]	;# tmp185, o
	add	w1, w1, w0	;# _31, _30, tmp185
;# varargs-dll.c:514:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 48]	;# tmp186, p
	add	w1, w1, w0	;# _32, _31, tmp186
;# varargs-dll.c:514:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 44]	;# tmp187, q
	add	w0, w1, w0	;# _87, _32, tmp187
;# varargs-dll.c:515: }
	ldp	x29, x30, [sp], 176	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_strings
	.def	use_va_list_many_strings;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_strings
use_va_list_many_strings:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3984]	;#,
	stp	x29, x30, [sp, -112]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 16]	;# argv, argv
;# varargs-dll.c:520:   int a = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8608, argv
	add	x1, x0, 8	;# D.8609, D.8608,
	str	x1, [sp, 16]	;# D.8609, argv
	ldr	x0, [x0]	;# _1, MEM[(const char * *)_86]
	bl	atoi		;#
	str	w0, [sp, 108]	;#, a
;# varargs-dll.c:521:   int b = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8610, argv
	add	x1, x0, 8	;# D.8611, D.8610,
	str	x1, [sp, 16]	;# D.8611, argv
	ldr	x0, [x0]	;# _2, MEM[(const char * *)_89]
	bl	atoi		;#
	str	w0, [sp, 104]	;#, b
;# varargs-dll.c:522:   int c = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8612, argv
	add	x1, x0, 8	;# D.8613, D.8612,
	str	x1, [sp, 16]	;# D.8613, argv
	ldr	x0, [x0]	;# _3, MEM[(const char * *)_92]
	bl	atoi		;#
	str	w0, [sp, 100]	;#, c
;# varargs-dll.c:523:   int d = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8614, argv
	add	x1, x0, 8	;# D.8615, D.8614,
	str	x1, [sp, 16]	;# D.8615, argv
	ldr	x0, [x0]	;# _4, MEM[(const char * *)_95]
	bl	atoi		;#
	str	w0, [sp, 96]	;#, d
;# varargs-dll.c:524:   int e = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8616, argv
	add	x1, x0, 8	;# D.8617, D.8616,
	str	x1, [sp, 16]	;# D.8617, argv
	ldr	x0, [x0]	;# _5, MEM[(const char * *)_98]
	bl	atoi		;#
	str	w0, [sp, 92]	;#, e
;# varargs-dll.c:525:   int f = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8618, argv
	add	x1, x0, 8	;# D.8619, D.8618,
	str	x1, [sp, 16]	;# D.8619, argv
	ldr	x0, [x0]	;# _6, MEM[(const char * *)_101]
	bl	atoi		;#
	str	w0, [sp, 88]	;#, f
;# varargs-dll.c:526:   int g = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8620, argv
	add	x1, x0, 8	;# D.8621, D.8620,
	str	x1, [sp, 16]	;# D.8621, argv
	ldr	x0, [x0]	;# _7, MEM[(const char * *)_104]
	bl	atoi		;#
	str	w0, [sp, 84]	;#, g
;# varargs-dll.c:527:   int h = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8622, argv
	add	x1, x0, 8	;# D.8623, D.8622,
	str	x1, [sp, 16]	;# D.8623, argv
	ldr	x0, [x0]	;# _8, MEM[(const char * *)_107]
	bl	atoi		;#
	str	w0, [sp, 80]	;#, h
;# varargs-dll.c:528:   int i = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8624, argv
	add	x1, x0, 8	;# D.8625, D.8624,
	str	x1, [sp, 16]	;# D.8625, argv
	ldr	x0, [x0]	;# _9, MEM[(const char * *)_110]
	bl	atoi		;#
	str	w0, [sp, 76]	;#, i
;# varargs-dll.c:529:   int j = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8626, argv
	add	x1, x0, 8	;# D.8627, D.8626,
	str	x1, [sp, 16]	;# D.8627, argv
	ldr	x0, [x0]	;# _10, MEM[(const char * *)_113]
	bl	atoi		;#
	str	w0, [sp, 72]	;#, j
;# varargs-dll.c:530:   int k = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8628, argv
	add	x1, x0, 8	;# D.8629, D.8628,
	str	x1, [sp, 16]	;# D.8629, argv
	ldr	x0, [x0]	;# _11, MEM[(const char * *)_116]
	bl	atoi		;#
	str	w0, [sp, 68]	;#, k
;# varargs-dll.c:531:   int l = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8630, argv
	add	x1, x0, 8	;# D.8631, D.8630,
	str	x1, [sp, 16]	;# D.8631, argv
	ldr	x0, [x0]	;# _12, MEM[(const char * *)_119]
	bl	atoi		;#
	str	w0, [sp, 64]	;#, l
;# varargs-dll.c:532:   int m = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8632, argv
	add	x1, x0, 8	;# D.8633, D.8632,
	str	x1, [sp, 16]	;# D.8633, argv
	ldr	x0, [x0]	;# _13, MEM[(const char * *)_122]
	bl	atoi		;#
	str	w0, [sp, 60]	;#, m
;# varargs-dll.c:533:   int n = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8634, argv
	add	x1, x0, 8	;# D.8635, D.8634,
	str	x1, [sp, 16]	;# D.8635, argv
	ldr	x0, [x0]	;# _14, MEM[(const char * *)_125]
	bl	atoi		;#
	str	w0, [sp, 56]	;#, n
;# varargs-dll.c:534:   int o = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8636, argv
	add	x1, x0, 8	;# D.8637, D.8636,
	str	x1, [sp, 16]	;# D.8637, argv
	ldr	x0, [x0]	;# _15, MEM[(const char * *)_128]
	bl	atoi		;#
	str	w0, [sp, 52]	;#, o
;# varargs-dll.c:535:   int p = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8638, argv
	add	x1, x0, 8	;# D.8639, D.8638,
	str	x1, [sp, 16]	;# D.8639, argv
	ldr	x0, [x0]	;# _16, MEM[(const char * *)_131]
	bl	atoi		;#
	str	w0, [sp, 48]	;#, p
;# varargs-dll.c:536:   int q = atoi (va_arg (argv, const char *));
	ldr	x0, [sp, 16]	;# D.8640, argv
	add	x1, x0, 8	;# D.8641, D.8640,
	str	x1, [sp, 16]	;# D.8641, argv
	ldr	x0, [x0]	;# _17, MEM[(const char * *)_134]
	bl	atoi		;#
	str	w0, [sp, 44]	;#, q
;# varargs-dll.c:537:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 108]	;# tmp169, a
	ldr	w0, [sp, 104]	;# tmp170, b
	add	w1, w1, w0	;# _18, tmp169, tmp170
;# varargs-dll.c:537:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 100]	;# tmp171, c
	add	w1, w1, w0	;# _19, _18, tmp171
;# varargs-dll.c:537:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 96]	;# tmp172, d
	add	w1, w1, w0	;# _20, _19, tmp172
;# varargs-dll.c:537:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 92]	;# tmp173, e
	add	w1, w1, w0	;# _21, _20, tmp173
;# varargs-dll.c:537:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 88]	;# tmp174, f
	add	w1, w1, w0	;# _22, _21, tmp174
;# varargs-dll.c:537:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 84]	;# tmp175, g
	add	w1, w1, w0	;# _23, _22, tmp175
;# varargs-dll.c:537:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 80]	;# tmp176, h
	add	w1, w1, w0	;# _24, _23, tmp176
;# varargs-dll.c:537:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 76]	;# tmp177, i
	add	w1, w1, w0	;# _25, _24, tmp177
;# varargs-dll.c:537:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 72]	;# tmp178, j
	add	w1, w1, w0	;# _26, _25, tmp178
;# varargs-dll.c:537:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 68]	;# tmp179, k
	add	w1, w1, w0	;# _27, _26, tmp179
;# varargs-dll.c:537:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 64]	;# tmp180, l
	add	w1, w1, w0	;# _28, _27, tmp180
;# varargs-dll.c:537:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 60]	;# tmp181, m
	add	w1, w1, w0	;# _29, _28, tmp181
;# varargs-dll.c:537:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 56]	;# tmp182, n
	add	w1, w1, w0	;# _30, _29, tmp182
;# varargs-dll.c:537:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 52]	;# tmp183, o
	add	w1, w1, w0	;# _31, _30, tmp183
;# varargs-dll.c:537:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 48]	;# tmp184, p
	add	w1, w1, w0	;# _32, _31, tmp184
;# varargs-dll.c:537:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 44]	;# tmp185, q
	add	w0, w1, w0	;# _85, _32, tmp185
;# varargs-dll.c:538: }
	ldp	x29, x30, [sp], 112	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_composites
	.def	use_va_args_few_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_composites
use_va_args_few_composites:
	sub	sp, sp, #224	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 168]	;#,
	str	x2, [sp, 176]	;#,
	str	x3, [sp, 184]	;#,
	str	x4, [sp, 192]	;#,
	str	x5, [sp, 200]	;#,
	str	x6, [sp, 208]	;#,
	str	x7, [sp, 216]	;#,
;# varargs-dll.c:544:   va_start (argv, format);
	add	x0, sp, 224	;# tmp110,,
	sub	x0, x0, #56	;# tmp111, tmp110,
	str	x0, [sp, 16]	;# tmp111, MEM[(char * *)&argv]
;# varargs-dll.c:545:   char a = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 16]	;# D.8642, argv
	add	x1, x0, 8	;# D.8643, D.8642,
	str	x1, [sp, 16]	;# D.8643, argv
	ldr	x1, [x0]	;# D.8644, MEM[(struct composite * *)_11]
	add	x0, sp, 24	;# tmp112,,
	ldr	q28, [x1]	;# tmp114, *_14
	ldr	q29, [x1, 16]	;# tmp115, *_14
	ldr	q30, [x1, 32]	;# tmp116, *_14
	ldr	q31, [x1, 48]	;# tmp117, *_14
	str	q28, [x0]	;# tmp114, D.7089
	str	q29, [x0, 16]	;# tmp115, D.7089
	str	q30, [x0, 32]	;# tmp116, D.7089
	str	q31, [x0, 48]	;# tmp117, D.7089
;# varargs-dll.c:545:   char a = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 24]	;# tmp118, D.7089.a
	strb	w0, [sp, 159]	;# tmp118, a
;# varargs-dll.c:546:   int b = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 16]	;# D.8645, argv
	add	x1, x0, 8	;# D.8646, D.8645,
	str	x1, [sp, 16]	;# D.8646, argv
	ldr	x1, [x0]	;# D.8647, MEM[(struct composite * *)_16]
	add	x0, sp, 88	;# tmp119,,
	ldr	q28, [x1]	;# tmp121, *_19
	ldr	q29, [x1, 16]	;# tmp122, *_19
	ldr	q30, [x1, 32]	;# tmp123, *_19
	ldr	q31, [x1, 48]	;# tmp124, *_19
	str	q28, [x0]	;# tmp121, D.7090
	str	q29, [x0, 16]	;# tmp122, D.7090
	str	q30, [x0, 32]	;# tmp123, D.7090
	str	q31, [x0, 48]	;# tmp124, D.7090
;# varargs-dll.c:546:   int b = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 92]	;# tmp125, D.7090.b
	str	w0, [sp, 152]	;# tmp125, b
;# varargs-dll.c:548:   return a + b;
	ldrsb	w1, [sp, 159]	;# _1, a
	ldr	w0, [sp, 152]	;# tmp126, b
	add	w0, w1, w0	;# _9, _1, tmp126
;# varargs-dll.c:549: }
	add	sp, sp, 224	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_composites
	.def	use_va_list_few_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_composites
use_va_list_few_composites:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:554:   char a = va_arg (argv, struct composite).a;
	ldr	x0, [sp]	;# D.8648, argv
	add	x1, x0, 8	;# D.8649, D.8648,
	str	x1, [sp]	;# D.8649, argv
	ldr	x1, [x0]	;# D.8650, MEM[(struct composite * *)_8]
	add	x0, sp, 24	;# tmp110,,
	ldr	q28, [x1]	;# tmp112, *_11
	ldr	q29, [x1, 16]	;# tmp113, *_11
	ldr	q30, [x1, 32]	;# tmp114, *_11
	ldr	q31, [x1, 48]	;# tmp115, *_11
	str	q28, [x0]	;# tmp112, D.7094
	str	q29, [x0, 16]	;# tmp113, D.7094
	str	q30, [x0, 32]	;# tmp114, D.7094
	str	q31, [x0, 48]	;# tmp115, D.7094
;# varargs-dll.c:554:   char a = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 24]	;# tmp116, D.7094.a
	strb	w0, [sp, 159]	;# tmp116, a
;# varargs-dll.c:555:   int b = va_arg (argv, struct composite).b;
	ldr	x0, [sp]	;# D.8651, argv
	add	x1, x0, 8	;# D.8652, D.8651,
	str	x1, [sp]	;# D.8652, argv
	ldr	x1, [x0]	;# D.8653, MEM[(struct composite * *)_13]
	add	x0, sp, 88	;# tmp117,,
	ldr	q28, [x1]	;# tmp119, *_16
	ldr	q29, [x1, 16]	;# tmp120, *_16
	ldr	q30, [x1, 32]	;# tmp121, *_16
	ldr	q31, [x1, 48]	;# tmp122, *_16
	str	q28, [x0]	;# tmp119, D.7095
	str	q29, [x0, 16]	;# tmp120, D.7095
	str	q30, [x0, 32]	;# tmp121, D.7095
	str	q31, [x0, 48]	;# tmp122, D.7095
;# varargs-dll.c:555:   int b = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 92]	;# tmp123, D.7095.b
	str	w0, [sp, 152]	;# tmp123, b
;# varargs-dll.c:556:   return a + b;
	ldrsb	w1, [sp, 159]	;# _1, a
	ldr	w0, [sp, 152]	;# tmp124, b
	add	w0, w1, w0	;# _7, _1, tmp124
;# varargs-dll.c:557: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_composites
	.def	use_va_args_several_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_composites
use_va_args_several_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3376]	;#,
	sub	sp, sp, #720	;#,,
	stp	x29, x30, [sp]	;#,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 664]	;#,
	str	x2, [sp, 672]	;#,
	str	x3, [sp, 680]	;#,
	str	x4, [sp, 688]	;#,
	str	x5, [sp, 696]	;#,
	str	x6, [sp, 704]	;#,
	str	x7, [sp, 712]	;#,
;# varargs-dll.c:563:   va_start (argv, format);
	add	x0, sp, 720	;# tmp143,,
	sub	x0, x0, #56	;# tmp144, tmp143,
	str	x0, [sp, 32]	;# tmp144, MEM[(char * *)&argv]
;# varargs-dll.c:564:   char a = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 32]	;# D.8654, argv
	add	x1, x0, 8	;# D.8655, D.8654,
	str	x1, [sp, 32]	;# D.8655, argv
	ldr	x1, [x0]	;# D.8656, MEM[(struct composite * *)_40]
	add	x0, sp, 40	;# tmp145,,
	ldr	q28, [x1]	;# tmp147, *_43
	ldr	q29, [x1, 16]	;# tmp148, *_43
	ldr	q30, [x1, 32]	;# tmp149, *_43
	ldr	q31, [x1, 48]	;# tmp150, *_43
	str	q28, [x0]	;# tmp147, D.7098
	str	q29, [x0, 16]	;# tmp148, D.7098
	str	q30, [x0, 32]	;# tmp149, D.7098
	str	q31, [x0, 48]	;# tmp150, D.7098
;# varargs-dll.c:564:   char a = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 40]	;# tmp151, D.7098.a
	strb	w0, [sp, 655]	;# tmp151, a
;# varargs-dll.c:565:   int b = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 32]	;# D.8657, argv
	add	x1, x0, 8	;# D.8658, D.8657,
	str	x1, [sp, 32]	;# D.8658, argv
	ldr	x1, [x0]	;# D.8659, MEM[(struct composite * *)_45]
	add	x0, sp, 104	;# tmp152,,
	ldr	q28, [x1]	;# tmp154, *_48
	ldr	q29, [x1, 16]	;# tmp155, *_48
	ldr	q30, [x1, 32]	;# tmp156, *_48
	ldr	q31, [x1, 48]	;# tmp157, *_48
	str	q28, [x0]	;# tmp154, D.7099
	str	q29, [x0, 16]	;# tmp155, D.7099
	str	q30, [x0, 32]	;# tmp156, D.7099
	str	q31, [x0, 48]	;# tmp157, D.7099
;# varargs-dll.c:565:   int b = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 108]	;# tmp158, D.7099.b
	str	w0, [sp, 648]	;# tmp158, b
;# varargs-dll.c:566:   int c = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 32]	;# D.8660, argv
	add	x1, x0, 8	;# D.8661, D.8660,
	str	x1, [sp, 32]	;# D.8661, argv
	ldr	x1, [x0]	;# D.8662, MEM[(struct composite * *)_50]
	add	x0, sp, 168	;# tmp159,,
	ldr	q28, [x1]	;# tmp161, *_53
	ldr	q29, [x1, 16]	;# tmp162, *_53
	ldr	q30, [x1, 32]	;# tmp163, *_53
	ldr	q31, [x1, 48]	;# tmp164, *_53
	str	q28, [x0]	;# tmp161, D.7100
	str	q29, [x0, 16]	;# tmp162, D.7100
	str	q30, [x0, 32]	;# tmp163, D.7100
	str	q31, [x0, 48]	;# tmp164, D.7100
;# varargs-dll.c:566:   int c = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 176]	;# _1, D.7100.c
	bl	atoi		;#
	str	w0, [sp, 644]	;#, c
;# varargs-dll.c:567:   char d = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 32]	;# D.8663, argv
	add	x1, x0, 8	;# D.8664, D.8663,
	str	x1, [sp, 32]	;# D.8664, argv
	ldr	x1, [x0]	;# D.8665, MEM[(struct composite * *)_55]
	add	x0, sp, 232	;# tmp165,,
	ldr	q28, [x1]	;# tmp167, *_58
	ldr	q29, [x1, 16]	;# tmp168, *_58
	ldr	q30, [x1, 32]	;# tmp169, *_58
	ldr	q31, [x1, 48]	;# tmp170, *_58
	str	q28, [x0]	;# tmp167, D.7101
	str	q29, [x0, 16]	;# tmp168, D.7101
	str	q30, [x0, 32]	;# tmp169, D.7101
	str	q31, [x0, 48]	;# tmp170, D.7101
;# varargs-dll.c:567:   char d = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 232]	;# tmp171, D.7101.a
	strb	w0, [sp, 643]	;# tmp171, d
;# varargs-dll.c:568:   int e = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 32]	;# D.8666, argv
	add	x1, x0, 8	;# D.8667, D.8666,
	str	x1, [sp, 32]	;# D.8667, argv
	ldr	x1, [x0]	;# D.8668, MEM[(struct composite * *)_60]
	add	x0, sp, 296	;# tmp172,,
	ldr	q28, [x1]	;# tmp174, *_63
	ldr	q29, [x1, 16]	;# tmp175, *_63
	ldr	q30, [x1, 32]	;# tmp176, *_63
	ldr	q31, [x1, 48]	;# tmp177, *_63
	str	q28, [x0]	;# tmp174, D.7102
	str	q29, [x0, 16]	;# tmp175, D.7102
	str	q30, [x0, 32]	;# tmp176, D.7102
	str	q31, [x0, 48]	;# tmp177, D.7102
;# varargs-dll.c:568:   int e = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 300]	;# tmp178, D.7102.b
	str	w0, [sp, 636]	;# tmp178, e
;# varargs-dll.c:569:   int f = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 32]	;# D.8669, argv
	add	x1, x0, 8	;# D.8670, D.8669,
	str	x1, [sp, 32]	;# D.8670, argv
	ldr	x1, [x0]	;# D.8671, MEM[(struct composite * *)_65]
	add	x0, sp, 360	;# tmp179,,
	ldr	q28, [x1]	;# tmp181, *_68
	ldr	q29, [x1, 16]	;# tmp182, *_68
	ldr	q30, [x1, 32]	;# tmp183, *_68
	ldr	q31, [x1, 48]	;# tmp184, *_68
	str	q28, [x0]	;# tmp181, D.7103
	str	q29, [x0, 16]	;# tmp182, D.7103
	str	q30, [x0, 32]	;# tmp183, D.7103
	str	q31, [x0, 48]	;# tmp184, D.7103
;# varargs-dll.c:569:   int f = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 368]	;# _2, D.7103.c
	bl	atoi		;#
	str	w0, [sp, 632]	;#, f
;# varargs-dll.c:570:   char g = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 32]	;# D.8672, argv
	add	x1, x0, 8	;# D.8673, D.8672,
	str	x1, [sp, 32]	;# D.8673, argv
	ldr	x1, [x0]	;# D.8674, MEM[(struct composite * *)_70]
	add	x0, sp, 424	;# tmp185,,
	ldr	q28, [x1]	;# tmp187, *_73
	ldr	q29, [x1, 16]	;# tmp188, *_73
	ldr	q30, [x1, 32]	;# tmp189, *_73
	ldr	q31, [x1, 48]	;# tmp190, *_73
	str	q28, [x0]	;# tmp187, D.7104
	str	q29, [x0, 16]	;# tmp188, D.7104
	str	q30, [x0, 32]	;# tmp189, D.7104
	str	q31, [x0, 48]	;# tmp190, D.7104
;# varargs-dll.c:570:   char g = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 424]	;# tmp191, D.7104.a
	strb	w0, [sp, 631]	;# tmp191, g
;# varargs-dll.c:571:   int h = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 32]	;# D.8675, argv
	add	x1, x0, 8	;# D.8676, D.8675,
	str	x1, [sp, 32]	;# D.8676, argv
	ldr	x1, [x0]	;# D.8677, MEM[(struct composite * *)_75]
	add	x0, sp, 488	;# tmp192,,
	ldr	q28, [x1]	;# tmp194, *_78
	ldr	q29, [x1, 16]	;# tmp195, *_78
	ldr	q30, [x1, 32]	;# tmp196, *_78
	ldr	q31, [x1, 48]	;# tmp197, *_78
	str	q28, [x0]	;# tmp194, D.7105
	str	q29, [x0, 16]	;# tmp195, D.7105
	str	q30, [x0, 32]	;# tmp196, D.7105
	str	q31, [x0, 48]	;# tmp197, D.7105
;# varargs-dll.c:571:   int h = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 492]	;# tmp198, D.7105.b
	str	w0, [sp, 624]	;# tmp198, h
;# varargs-dll.c:572:   int i = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 32]	;# D.8678, argv
	add	x1, x0, 8	;# D.8679, D.8678,
	str	x1, [sp, 32]	;# D.8679, argv
	ldr	x1, [x0]	;# D.8680, MEM[(struct composite * *)_80]
	add	x0, sp, 552	;# tmp199,,
	ldr	q28, [x1]	;# tmp201, *_83
	ldr	q29, [x1, 16]	;# tmp202, *_83
	ldr	q30, [x1, 32]	;# tmp203, *_83
	ldr	q31, [x1, 48]	;# tmp204, *_83
	str	q28, [x0]	;# tmp201, D.7106
	str	q29, [x0, 16]	;# tmp202, D.7106
	str	q30, [x0, 32]	;# tmp203, D.7106
	str	q31, [x0, 48]	;# tmp204, D.7106
;# varargs-dll.c:572:   int i = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 560]	;# _3, D.7106.c
	bl	atoi		;#
	str	w0, [sp, 620]	;#, i
;# varargs-dll.c:574:   return a + b + c + d + e + f + g + h + i;
	ldrsb	w1, [sp, 655]	;# _4, a
	ldr	w0, [sp, 648]	;# tmp205, b
	add	w1, w1, w0	;# _5, _4, tmp205
;# varargs-dll.c:574:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 644]	;# tmp206, c
	add	w1, w1, w0	;# _6, _5, tmp206
;# varargs-dll.c:574:   return a + b + c + d + e + f + g + h + i;
	ldrsb	w0, [sp, 643]	;# _7, d
	add	w1, w1, w0	;# _8, _6, _7
;# varargs-dll.c:574:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 636]	;# tmp207, e
	add	w1, w1, w0	;# _9, _8, tmp207
;# varargs-dll.c:574:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 632]	;# tmp208, f
	add	w1, w1, w0	;# _10, _9, tmp208
;# varargs-dll.c:574:   return a + b + c + d + e + f + g + h + i;
	ldrsb	w0, [sp, 631]	;# _11, g
	add	w1, w1, w0	;# _12, _10, _11
;# varargs-dll.c:574:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 624]	;# tmp209, h
	add	w1, w1, w0	;# _13, _12, tmp209
;# varargs-dll.c:574:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 620]	;# tmp210, i
	add	w0, w1, w0	;# _38, _13, tmp210
;# varargs-dll.c:575: }
	ldp	x29, x30, [sp]	;#,,
	add	sp, sp, 720	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_composites
	.def	use_va_list_several_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_composites
use_va_list_several_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3440]	;#,
	sub	sp, sp, #656	;#,,
	stp	x29, x30, [sp]	;#,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 16]	;# argv, argv
;# varargs-dll.c:580:   char a = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 16]	;# D.8681, argv
	add	x1, x0, 8	;# D.8682, D.8681,
	str	x1, [sp, 16]	;# D.8682, argv
	ldr	x1, [x0]	;# D.8683, MEM[(struct composite * *)_37]
	add	x0, sp, 40	;# tmp143,,
	ldr	q28, [x1]	;# tmp145, *_40
	ldr	q29, [x1, 16]	;# tmp146, *_40
	ldr	q30, [x1, 32]	;# tmp147, *_40
	ldr	q31, [x1, 48]	;# tmp148, *_40
	str	q28, [x0]	;# tmp145, D.7110
	str	q29, [x0, 16]	;# tmp146, D.7110
	str	q30, [x0, 32]	;# tmp147, D.7110
	str	q31, [x0, 48]	;# tmp148, D.7110
;# varargs-dll.c:580:   char a = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 40]	;# tmp149, D.7110.a
	strb	w0, [sp, 655]	;# tmp149, a
;# varargs-dll.c:581:   int b = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 16]	;# D.8684, argv
	add	x1, x0, 8	;# D.8685, D.8684,
	str	x1, [sp, 16]	;# D.8685, argv
	ldr	x1, [x0]	;# D.8686, MEM[(struct composite * *)_42]
	add	x0, sp, 104	;# tmp150,,
	ldr	q28, [x1]	;# tmp152, *_45
	ldr	q29, [x1, 16]	;# tmp153, *_45
	ldr	q30, [x1, 32]	;# tmp154, *_45
	ldr	q31, [x1, 48]	;# tmp155, *_45
	str	q28, [x0]	;# tmp152, D.7111
	str	q29, [x0, 16]	;# tmp153, D.7111
	str	q30, [x0, 32]	;# tmp154, D.7111
	str	q31, [x0, 48]	;# tmp155, D.7111
;# varargs-dll.c:581:   int b = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 108]	;# tmp156, D.7111.b
	str	w0, [sp, 648]	;# tmp156, b
;# varargs-dll.c:582:   int c = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 16]	;# D.8687, argv
	add	x1, x0, 8	;# D.8688, D.8687,
	str	x1, [sp, 16]	;# D.8688, argv
	ldr	x1, [x0]	;# D.8689, MEM[(struct composite * *)_47]
	add	x0, sp, 168	;# tmp157,,
	ldr	q28, [x1]	;# tmp159, *_50
	ldr	q29, [x1, 16]	;# tmp160, *_50
	ldr	q30, [x1, 32]	;# tmp161, *_50
	ldr	q31, [x1, 48]	;# tmp162, *_50
	str	q28, [x0]	;# tmp159, D.7112
	str	q29, [x0, 16]	;# tmp160, D.7112
	str	q30, [x0, 32]	;# tmp161, D.7112
	str	q31, [x0, 48]	;# tmp162, D.7112
;# varargs-dll.c:582:   int c = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 176]	;# _1, D.7112.c
	bl	atoi		;#
	str	w0, [sp, 644]	;#, c
;# varargs-dll.c:583:   char d = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 16]	;# D.8690, argv
	add	x1, x0, 8	;# D.8691, D.8690,
	str	x1, [sp, 16]	;# D.8691, argv
	ldr	x1, [x0]	;# D.8692, MEM[(struct composite * *)_52]
	add	x0, sp, 232	;# tmp163,,
	ldr	q28, [x1]	;# tmp165, *_55
	ldr	q29, [x1, 16]	;# tmp166, *_55
	ldr	q30, [x1, 32]	;# tmp167, *_55
	ldr	q31, [x1, 48]	;# tmp168, *_55
	str	q28, [x0]	;# tmp165, D.7113
	str	q29, [x0, 16]	;# tmp166, D.7113
	str	q30, [x0, 32]	;# tmp167, D.7113
	str	q31, [x0, 48]	;# tmp168, D.7113
;# varargs-dll.c:583:   char d = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 232]	;# tmp169, D.7113.a
	strb	w0, [sp, 643]	;# tmp169, d
;# varargs-dll.c:584:   int e = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 16]	;# D.8693, argv
	add	x1, x0, 8	;# D.8694, D.8693,
	str	x1, [sp, 16]	;# D.8694, argv
	ldr	x1, [x0]	;# D.8695, MEM[(struct composite * *)_57]
	add	x0, sp, 296	;# tmp170,,
	ldr	q28, [x1]	;# tmp172, *_60
	ldr	q29, [x1, 16]	;# tmp173, *_60
	ldr	q30, [x1, 32]	;# tmp174, *_60
	ldr	q31, [x1, 48]	;# tmp175, *_60
	str	q28, [x0]	;# tmp172, D.7114
	str	q29, [x0, 16]	;# tmp173, D.7114
	str	q30, [x0, 32]	;# tmp174, D.7114
	str	q31, [x0, 48]	;# tmp175, D.7114
;# varargs-dll.c:584:   int e = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 300]	;# tmp176, D.7114.b
	str	w0, [sp, 636]	;# tmp176, e
;# varargs-dll.c:585:   int f = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 16]	;# D.8696, argv
	add	x1, x0, 8	;# D.8697, D.8696,
	str	x1, [sp, 16]	;# D.8697, argv
	ldr	x1, [x0]	;# D.8698, MEM[(struct composite * *)_62]
	add	x0, sp, 360	;# tmp177,,
	ldr	q28, [x1]	;# tmp179, *_65
	ldr	q29, [x1, 16]	;# tmp180, *_65
	ldr	q30, [x1, 32]	;# tmp181, *_65
	ldr	q31, [x1, 48]	;# tmp182, *_65
	str	q28, [x0]	;# tmp179, D.7115
	str	q29, [x0, 16]	;# tmp180, D.7115
	str	q30, [x0, 32]	;# tmp181, D.7115
	str	q31, [x0, 48]	;# tmp182, D.7115
;# varargs-dll.c:585:   int f = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 368]	;# _2, D.7115.c
	bl	atoi		;#
	str	w0, [sp, 632]	;#, f
;# varargs-dll.c:586:   char g = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 16]	;# D.8699, argv
	add	x1, x0, 8	;# D.8700, D.8699,
	str	x1, [sp, 16]	;# D.8700, argv
	ldr	x1, [x0]	;# D.8701, MEM[(struct composite * *)_67]
	add	x0, sp, 424	;# tmp183,,
	ldr	q28, [x1]	;# tmp185, *_70
	ldr	q29, [x1, 16]	;# tmp186, *_70
	ldr	q30, [x1, 32]	;# tmp187, *_70
	ldr	q31, [x1, 48]	;# tmp188, *_70
	str	q28, [x0]	;# tmp185, D.7116
	str	q29, [x0, 16]	;# tmp186, D.7116
	str	q30, [x0, 32]	;# tmp187, D.7116
	str	q31, [x0, 48]	;# tmp188, D.7116
;# varargs-dll.c:586:   char g = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 424]	;# tmp189, D.7116.a
	strb	w0, [sp, 631]	;# tmp189, g
;# varargs-dll.c:587:   int h = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 16]	;# D.8702, argv
	add	x1, x0, 8	;# D.8703, D.8702,
	str	x1, [sp, 16]	;# D.8703, argv
	ldr	x1, [x0]	;# D.8704, MEM[(struct composite * *)_72]
	add	x0, sp, 488	;# tmp190,,
	ldr	q28, [x1]	;# tmp192, *_75
	ldr	q29, [x1, 16]	;# tmp193, *_75
	ldr	q30, [x1, 32]	;# tmp194, *_75
	ldr	q31, [x1, 48]	;# tmp195, *_75
	str	q28, [x0]	;# tmp192, D.7117
	str	q29, [x0, 16]	;# tmp193, D.7117
	str	q30, [x0, 32]	;# tmp194, D.7117
	str	q31, [x0, 48]	;# tmp195, D.7117
;# varargs-dll.c:587:   int h = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 492]	;# tmp196, D.7117.b
	str	w0, [sp, 624]	;# tmp196, h
;# varargs-dll.c:588:   int i = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 16]	;# D.8705, argv
	add	x1, x0, 8	;# D.8706, D.8705,
	str	x1, [sp, 16]	;# D.8706, argv
	ldr	x1, [x0]	;# D.8707, MEM[(struct composite * *)_77]
	add	x0, sp, 552	;# tmp197,,
	ldr	q28, [x1]	;# tmp199, *_80
	ldr	q29, [x1, 16]	;# tmp200, *_80
	ldr	q30, [x1, 32]	;# tmp201, *_80
	ldr	q31, [x1, 48]	;# tmp202, *_80
	str	q28, [x0]	;# tmp199, D.7118
	str	q29, [x0, 16]	;# tmp200, D.7118
	str	q30, [x0, 32]	;# tmp201, D.7118
	str	q31, [x0, 48]	;# tmp202, D.7118
;# varargs-dll.c:588:   int i = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 560]	;# _3, D.7118.c
	bl	atoi		;#
	str	w0, [sp, 620]	;#, i
;# varargs-dll.c:589:   return a + b + c + d + e + f + g + h + i;
	ldrsb	w1, [sp, 655]	;# _4, a
	ldr	w0, [sp, 648]	;# tmp203, b
	add	w1, w1, w0	;# _5, _4, tmp203
;# varargs-dll.c:589:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 644]	;# tmp204, c
	add	w1, w1, w0	;# _6, _5, tmp204
;# varargs-dll.c:589:   return a + b + c + d + e + f + g + h + i;
	ldrsb	w0, [sp, 643]	;# _7, d
	add	w1, w1, w0	;# _8, _6, _7
;# varargs-dll.c:589:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 636]	;# tmp205, e
	add	w1, w1, w0	;# _9, _8, tmp205
;# varargs-dll.c:589:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 632]	;# tmp206, f
	add	w1, w1, w0	;# _10, _9, tmp206
;# varargs-dll.c:589:   return a + b + c + d + e + f + g + h + i;
	ldrsb	w0, [sp, 631]	;# _11, g
	add	w1, w1, w0	;# _12, _10, _11
;# varargs-dll.c:589:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 624]	;# tmp207, h
	add	w1, w1, w0	;# _13, _12, tmp207
;# varargs-dll.c:589:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 620]	;# tmp208, i
	add	w0, w1, w0	;# _36, _13, tmp208
;# varargs-dll.c:590: }
	ldp	x29, x30, [sp]	;#,,
	add	sp, sp, 656	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_composites
	.def	use_va_args_many_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_composites
use_va_args_many_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 2832]	;#,
	sub	sp, sp, #1264	;#,,
	stp	x29, x30, [sp]	;#,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 1208]	;#,
	str	x2, [sp, 1216]	;#,
	str	x3, [sp, 1224]	;#,
	str	x4, [sp, 1232]	;#,
	str	x5, [sp, 1240]	;#,
	str	x6, [sp, 1248]	;#,
	str	x7, [sp, 1256]	;#,
;# varargs-dll.c:596:   va_start (argv, format);
	add	x0, sp, 1264	;# tmp178,,
	sub	x0, x0, #56	;# tmp179, tmp178,
	str	x0, [sp, 32]	;# tmp179, MEM[(char * *)&argv]
;# varargs-dll.c:597:   char a = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 32]	;# D.8708, argv
	add	x1, x0, 8	;# D.8709, D.8708,
	str	x1, [sp, 32]	;# D.8709, argv
	ldr	x1, [x0]	;# D.8710, MEM[(struct composite * *)_69]
	add	x0, sp, 40	;# tmp180,,
	ldr	q28, [x1]	;# tmp182, *_72
	ldr	q29, [x1, 16]	;# tmp183, *_72
	ldr	q30, [x1, 32]	;# tmp184, *_72
	ldr	q31, [x1, 48]	;# tmp185, *_72
	str	q28, [x0]	;# tmp182, D.7121
	str	q29, [x0, 16]	;# tmp183, D.7121
	str	q30, [x0, 32]	;# tmp184, D.7121
	str	q31, [x0, 48]	;# tmp185, D.7121
;# varargs-dll.c:597:   char a = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 40]	;# tmp186, D.7121.a
	strb	w0, [sp, 1199]	;# tmp186, a
;# varargs-dll.c:598:   int b = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 32]	;# D.8711, argv
	add	x1, x0, 8	;# D.8712, D.8711,
	str	x1, [sp, 32]	;# D.8712, argv
	ldr	x1, [x0]	;# D.8713, MEM[(struct composite * *)_74]
	add	x0, sp, 104	;# tmp187,,
	ldr	q28, [x1]	;# tmp189, *_77
	ldr	q29, [x1, 16]	;# tmp190, *_77
	ldr	q30, [x1, 32]	;# tmp191, *_77
	ldr	q31, [x1, 48]	;# tmp192, *_77
	str	q28, [x0]	;# tmp189, D.7122
	str	q29, [x0, 16]	;# tmp190, D.7122
	str	q30, [x0, 32]	;# tmp191, D.7122
	str	q31, [x0, 48]	;# tmp192, D.7122
;# varargs-dll.c:598:   int b = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 108]	;# tmp193, D.7122.b
	str	w0, [sp, 1192]	;# tmp193, b
;# varargs-dll.c:599:   int c = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 32]	;# D.8714, argv
	add	x1, x0, 8	;# D.8715, D.8714,
	str	x1, [sp, 32]	;# D.8715, argv
	ldr	x1, [x0]	;# D.8716, MEM[(struct composite * *)_79]
	add	x0, sp, 168	;# tmp194,,
	ldr	q28, [x1]	;# tmp196, *_82
	ldr	q29, [x1, 16]	;# tmp197, *_82
	ldr	q30, [x1, 32]	;# tmp198, *_82
	ldr	q31, [x1, 48]	;# tmp199, *_82
	str	q28, [x0]	;# tmp196, D.7123
	str	q29, [x0, 16]	;# tmp197, D.7123
	str	q30, [x0, 32]	;# tmp198, D.7123
	str	q31, [x0, 48]	;# tmp199, D.7123
;# varargs-dll.c:599:   int c = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 176]	;# _1, D.7123.c
	bl	atoi		;#
	str	w0, [sp, 1188]	;#, c
;# varargs-dll.c:600:   char d = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 32]	;# D.8717, argv
	add	x1, x0, 8	;# D.8718, D.8717,
	str	x1, [sp, 32]	;# D.8718, argv
	ldr	x1, [x0]	;# D.8719, MEM[(struct composite * *)_84]
	add	x0, sp, 232	;# tmp200,,
	ldr	q28, [x1]	;# tmp202, *_87
	ldr	q29, [x1, 16]	;# tmp203, *_87
	ldr	q30, [x1, 32]	;# tmp204, *_87
	ldr	q31, [x1, 48]	;# tmp205, *_87
	str	q28, [x0]	;# tmp202, D.7124
	str	q29, [x0, 16]	;# tmp203, D.7124
	str	q30, [x0, 32]	;# tmp204, D.7124
	str	q31, [x0, 48]	;# tmp205, D.7124
;# varargs-dll.c:600:   char d = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 232]	;# tmp206, D.7124.a
	strb	w0, [sp, 1187]	;# tmp206, d
;# varargs-dll.c:601:   int e = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 32]	;# D.8720, argv
	add	x1, x0, 8	;# D.8721, D.8720,
	str	x1, [sp, 32]	;# D.8721, argv
	ldr	x1, [x0]	;# D.8722, MEM[(struct composite * *)_89]
	add	x0, sp, 296	;# tmp207,,
	ldr	q28, [x1]	;# tmp209, *_92
	ldr	q29, [x1, 16]	;# tmp210, *_92
	ldr	q30, [x1, 32]	;# tmp211, *_92
	ldr	q31, [x1, 48]	;# tmp212, *_92
	str	q28, [x0]	;# tmp209, D.7125
	str	q29, [x0, 16]	;# tmp210, D.7125
	str	q30, [x0, 32]	;# tmp211, D.7125
	str	q31, [x0, 48]	;# tmp212, D.7125
;# varargs-dll.c:601:   int e = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 300]	;# tmp213, D.7125.b
	str	w0, [sp, 1180]	;# tmp213, e
;# varargs-dll.c:602:   int f = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 32]	;# D.8723, argv
	add	x1, x0, 8	;# D.8724, D.8723,
	str	x1, [sp, 32]	;# D.8724, argv
	ldr	x1, [x0]	;# D.8725, MEM[(struct composite * *)_94]
	add	x0, sp, 360	;# tmp214,,
	ldr	q28, [x1]	;# tmp216, *_97
	ldr	q29, [x1, 16]	;# tmp217, *_97
	ldr	q30, [x1, 32]	;# tmp218, *_97
	ldr	q31, [x1, 48]	;# tmp219, *_97
	str	q28, [x0]	;# tmp216, D.7126
	str	q29, [x0, 16]	;# tmp217, D.7126
	str	q30, [x0, 32]	;# tmp218, D.7126
	str	q31, [x0, 48]	;# tmp219, D.7126
;# varargs-dll.c:602:   int f = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 368]	;# _2, D.7126.c
	bl	atoi		;#
	str	w0, [sp, 1176]	;#, f
;# varargs-dll.c:603:   char g = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 32]	;# D.8726, argv
	add	x1, x0, 8	;# D.8727, D.8726,
	str	x1, [sp, 32]	;# D.8727, argv
	ldr	x1, [x0]	;# D.8728, MEM[(struct composite * *)_99]
	add	x0, sp, 424	;# tmp220,,
	ldr	q28, [x1]	;# tmp222, *_102
	ldr	q29, [x1, 16]	;# tmp223, *_102
	ldr	q30, [x1, 32]	;# tmp224, *_102
	ldr	q31, [x1, 48]	;# tmp225, *_102
	str	q28, [x0]	;# tmp222, D.7127
	str	q29, [x0, 16]	;# tmp223, D.7127
	str	q30, [x0, 32]	;# tmp224, D.7127
	str	q31, [x0, 48]	;# tmp225, D.7127
;# varargs-dll.c:603:   char g = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 424]	;# tmp226, D.7127.a
	strb	w0, [sp, 1175]	;# tmp226, g
;# varargs-dll.c:604:   int h = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 32]	;# D.8729, argv
	add	x1, x0, 8	;# D.8730, D.8729,
	str	x1, [sp, 32]	;# D.8730, argv
	ldr	x1, [x0]	;# D.8731, MEM[(struct composite * *)_104]
	add	x0, sp, 488	;# tmp227,,
	ldr	q28, [x1]	;# tmp229, *_107
	ldr	q29, [x1, 16]	;# tmp230, *_107
	ldr	q30, [x1, 32]	;# tmp231, *_107
	ldr	q31, [x1, 48]	;# tmp232, *_107
	str	q28, [x0]	;# tmp229, D.7128
	str	q29, [x0, 16]	;# tmp230, D.7128
	str	q30, [x0, 32]	;# tmp231, D.7128
	str	q31, [x0, 48]	;# tmp232, D.7128
;# varargs-dll.c:604:   int h = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 492]	;# tmp233, D.7128.b
	str	w0, [sp, 1168]	;# tmp233, h
;# varargs-dll.c:605:   int i = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 32]	;# D.8732, argv
	add	x1, x0, 8	;# D.8733, D.8732,
	str	x1, [sp, 32]	;# D.8733, argv
	ldr	x1, [x0]	;# D.8734, MEM[(struct composite * *)_109]
	add	x0, sp, 552	;# tmp234,,
	ldr	q28, [x1]	;# tmp236, *_112
	ldr	q29, [x1, 16]	;# tmp237, *_112
	ldr	q30, [x1, 32]	;# tmp238, *_112
	ldr	q31, [x1, 48]	;# tmp239, *_112
	str	q28, [x0]	;# tmp236, D.7129
	str	q29, [x0, 16]	;# tmp237, D.7129
	str	q30, [x0, 32]	;# tmp238, D.7129
	str	q31, [x0, 48]	;# tmp239, D.7129
;# varargs-dll.c:605:   int i = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 560]	;# _3, D.7129.c
	bl	atoi		;#
	str	w0, [sp, 1164]	;#, i
;# varargs-dll.c:606:   char j = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 32]	;# D.8735, argv
	add	x1, x0, 8	;# D.8736, D.8735,
	str	x1, [sp, 32]	;# D.8736, argv
	ldr	x1, [x0]	;# D.8737, MEM[(struct composite * *)_114]
	add	x0, sp, 616	;# tmp240,,
	ldr	q28, [x1]	;# tmp242, *_117
	ldr	q29, [x1, 16]	;# tmp243, *_117
	ldr	q30, [x1, 32]	;# tmp244, *_117
	ldr	q31, [x1, 48]	;# tmp245, *_117
	str	q28, [x0]	;# tmp242, D.7130
	str	q29, [x0, 16]	;# tmp243, D.7130
	str	q30, [x0, 32]	;# tmp244, D.7130
	str	q31, [x0, 48]	;# tmp245, D.7130
;# varargs-dll.c:606:   char j = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 616]	;# tmp246, D.7130.a
	strb	w0, [sp, 1163]	;# tmp246, j
;# varargs-dll.c:607:   int k = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 32]	;# D.8738, argv
	add	x1, x0, 8	;# D.8739, D.8738,
	str	x1, [sp, 32]	;# D.8739, argv
	ldr	x1, [x0]	;# D.8740, MEM[(struct composite * *)_119]
	add	x0, sp, 680	;# tmp247,,
	ldr	q28, [x1]	;# tmp249, *_122
	ldr	q29, [x1, 16]	;# tmp250, *_122
	ldr	q30, [x1, 32]	;# tmp251, *_122
	ldr	q31, [x1, 48]	;# tmp252, *_122
	str	q28, [x0]	;# tmp249, D.7131
	str	q29, [x0, 16]	;# tmp250, D.7131
	str	q30, [x0, 32]	;# tmp251, D.7131
	str	q31, [x0, 48]	;# tmp252, D.7131
;# varargs-dll.c:607:   int k = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 684]	;# tmp253, D.7131.b
	str	w0, [sp, 1156]	;# tmp253, k
;# varargs-dll.c:608:   int l = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 32]	;# D.8741, argv
	add	x1, x0, 8	;# D.8742, D.8741,
	str	x1, [sp, 32]	;# D.8742, argv
	ldr	x1, [x0]	;# D.8743, MEM[(struct composite * *)_124]
	add	x0, sp, 744	;# tmp254,,
	ldr	q28, [x1]	;# tmp256, *_127
	ldr	q29, [x1, 16]	;# tmp257, *_127
	ldr	q30, [x1, 32]	;# tmp258, *_127
	ldr	q31, [x1, 48]	;# tmp259, *_127
	str	q28, [x0]	;# tmp256, D.7132
	str	q29, [x0, 16]	;# tmp257, D.7132
	str	q30, [x0, 32]	;# tmp258, D.7132
	str	q31, [x0, 48]	;# tmp259, D.7132
;# varargs-dll.c:608:   int l = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 752]	;# _4, D.7132.c
	bl	atoi		;#
	str	w0, [sp, 1152]	;#, l
;# varargs-dll.c:609:   int m = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 32]	;# D.8744, argv
	add	x1, x0, 8	;# D.8745, D.8744,
	str	x1, [sp, 32]	;# D.8745, argv
	ldr	x1, [x0]	;# D.8746, MEM[(struct composite * *)_129]
	add	x0, sp, 808	;# tmp260,,
	ldr	q28, [x1]	;# tmp262, *_132
	ldr	q29, [x1, 16]	;# tmp263, *_132
	ldr	q30, [x1, 32]	;# tmp264, *_132
	ldr	q31, [x1, 48]	;# tmp265, *_132
	str	q28, [x0]	;# tmp262, D.7133
	str	q29, [x0, 16]	;# tmp263, D.7133
	str	q30, [x0, 32]	;# tmp264, D.7133
	str	q31, [x0, 48]	;# tmp265, D.7133
;# varargs-dll.c:609:   int m = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 812]	;# tmp266, D.7133.b
	str	w0, [sp, 1148]	;# tmp266, m
;# varargs-dll.c:610:   int n = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 32]	;# D.8747, argv
	add	x1, x0, 8	;# D.8748, D.8747,
	str	x1, [sp, 32]	;# D.8748, argv
	ldr	x1, [x0]	;# D.8749, MEM[(struct composite * *)_134]
	add	x0, sp, 872	;# tmp267,,
	ldr	q28, [x1]	;# tmp269, *_137
	ldr	q29, [x1, 16]	;# tmp270, *_137
	ldr	q30, [x1, 32]	;# tmp271, *_137
	ldr	q31, [x1, 48]	;# tmp272, *_137
	str	q28, [x0]	;# tmp269, D.7134
	str	q29, [x0, 16]	;# tmp270, D.7134
	str	q30, [x0, 32]	;# tmp271, D.7134
	str	q31, [x0, 48]	;# tmp272, D.7134
;# varargs-dll.c:610:   int n = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 876]	;# tmp273, D.7134.b
	str	w0, [sp, 1144]	;# tmp273, n
;# varargs-dll.c:611:   int o = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 32]	;# D.8750, argv
	add	x1, x0, 8	;# D.8751, D.8750,
	str	x1, [sp, 32]	;# D.8751, argv
	ldr	x1, [x0]	;# D.8752, MEM[(struct composite * *)_139]
	add	x0, sp, 936	;# tmp274,,
	ldr	q28, [x1]	;# tmp276, *_142
	ldr	q29, [x1, 16]	;# tmp277, *_142
	ldr	q30, [x1, 32]	;# tmp278, *_142
	ldr	q31, [x1, 48]	;# tmp279, *_142
	str	q28, [x0]	;# tmp276, D.7135
	str	q29, [x0, 16]	;# tmp277, D.7135
	str	q30, [x0, 32]	;# tmp278, D.7135
	str	q31, [x0, 48]	;# tmp279, D.7135
;# varargs-dll.c:611:   int o = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 944]	;# _5, D.7135.c
	bl	atoi		;#
	str	w0, [sp, 1140]	;#, o
;# varargs-dll.c:612:   int p = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 32]	;# D.8753, argv
	add	x1, x0, 8	;# D.8754, D.8753,
	str	x1, [sp, 32]	;# D.8754, argv
	ldr	x1, [x0]	;# D.8755, MEM[(struct composite * *)_144]
	add	x0, sp, 1000	;# tmp280,,
	ldr	q28, [x1]	;# tmp282, *_147
	ldr	q29, [x1, 16]	;# tmp283, *_147
	ldr	q30, [x1, 32]	;# tmp284, *_147
	ldr	q31, [x1, 48]	;# tmp285, *_147
	str	q28, [x0]	;# tmp282, D.7136
	str	q29, [x0, 16]	;# tmp283, D.7136
	str	q30, [x0, 32]	;# tmp284, D.7136
	str	q31, [x0, 48]	;# tmp285, D.7136
;# varargs-dll.c:612:   int p = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 1004]	;# tmp286, D.7136.b
	str	w0, [sp, 1136]	;# tmp286, p
;# varargs-dll.c:613:   int q = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 32]	;# D.8756, argv
	add	x1, x0, 8	;# D.8757, D.8756,
	str	x1, [sp, 32]	;# D.8757, argv
	ldr	x1, [x0]	;# D.8758, MEM[(struct composite * *)_149]
	add	x0, sp, 1064	;# tmp287,,
	ldr	q28, [x1]	;# tmp289, *_152
	ldr	q29, [x1, 16]	;# tmp290, *_152
	ldr	q30, [x1, 32]	;# tmp291, *_152
	ldr	q31, [x1, 48]	;# tmp292, *_152
	str	q28, [x0]	;# tmp289, D.7137
	str	q29, [x0, 16]	;# tmp290, D.7137
	str	q30, [x0, 32]	;# tmp291, D.7137
	str	q31, [x0, 48]	;# tmp292, D.7137
;# varargs-dll.c:613:   int q = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 1068]	;# tmp293, D.7137.b
	str	w0, [sp, 1132]	;# tmp293, q
;# varargs-dll.c:615:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldrsb	w1, [sp, 1199]	;# _6, a
	ldr	w0, [sp, 1192]	;# tmp294, b
	add	w1, w1, w0	;# _7, _6, tmp294
;# varargs-dll.c:615:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1188]	;# tmp295, c
	add	w1, w1, w0	;# _8, _7, tmp295
;# varargs-dll.c:615:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldrsb	w0, [sp, 1187]	;# _9, d
	add	w1, w1, w0	;# _10, _8, _9
;# varargs-dll.c:615:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1180]	;# tmp296, e
	add	w1, w1, w0	;# _11, _10, tmp296
;# varargs-dll.c:615:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1176]	;# tmp297, f
	add	w1, w1, w0	;# _12, _11, tmp297
;# varargs-dll.c:615:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldrsb	w0, [sp, 1175]	;# _13, g
	add	w1, w1, w0	;# _14, _12, _13
;# varargs-dll.c:615:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1168]	;# tmp298, h
	add	w1, w1, w0	;# _15, _14, tmp298
;# varargs-dll.c:615:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1164]	;# tmp299, i
	add	w1, w1, w0	;# _16, _15, tmp299
;# varargs-dll.c:615:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldrsb	w0, [sp, 1163]	;# _17, j
	add	w1, w1, w0	;# _18, _16, _17
;# varargs-dll.c:615:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1156]	;# tmp300, k
	add	w1, w1, w0	;# _19, _18, tmp300
;# varargs-dll.c:615:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1152]	;# tmp301, l
	add	w1, w1, w0	;# _20, _19, tmp301
;# varargs-dll.c:615:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1148]	;# tmp302, m
	add	w1, w1, w0	;# _21, _20, tmp302
;# varargs-dll.c:615:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1144]	;# tmp303, n
	add	w1, w1, w0	;# _22, _21, tmp303
;# varargs-dll.c:615:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1140]	;# tmp304, o
	add	w1, w1, w0	;# _23, _22, tmp304
;# varargs-dll.c:615:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1136]	;# tmp305, p
	add	w1, w1, w0	;# _24, _23, tmp305
;# varargs-dll.c:615:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1132]	;# tmp306, q
	add	w0, w1, w0	;# _67, _24, tmp306
;# varargs-dll.c:616: }
	ldp	x29, x30, [sp]	;#,,
	add	sp, sp, 1264	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_composites
	.def	use_va_list_many_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_composites
use_va_list_many_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 2896]	;#,
	sub	sp, sp, #1200	;#,,
	stp	x29, x30, [sp]	;#,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 16]	;# argv, argv
;# varargs-dll.c:621:   char a = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 16]	;# D.8759, argv
	add	x1, x0, 8	;# D.8760, D.8759,
	str	x1, [sp, 16]	;# D.8760, argv
	ldr	x1, [x0]	;# D.8761, MEM[(struct composite * *)_66]
	add	x0, sp, 40	;# tmp178,,
	ldr	q28, [x1]	;# tmp180, *_69
	ldr	q29, [x1, 16]	;# tmp181, *_69
	ldr	q30, [x1, 32]	;# tmp182, *_69
	ldr	q31, [x1, 48]	;# tmp183, *_69
	str	q28, [x0]	;# tmp180, D.7141
	str	q29, [x0, 16]	;# tmp181, D.7141
	str	q30, [x0, 32]	;# tmp182, D.7141
	str	q31, [x0, 48]	;# tmp183, D.7141
;# varargs-dll.c:621:   char a = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 40]	;# tmp184, D.7141.a
	strb	w0, [sp, 1199]	;# tmp184, a
;# varargs-dll.c:622:   int b = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 16]	;# D.8762, argv
	add	x1, x0, 8	;# D.8763, D.8762,
	str	x1, [sp, 16]	;# D.8763, argv
	ldr	x1, [x0]	;# D.8764, MEM[(struct composite * *)_71]
	add	x0, sp, 104	;# tmp185,,
	ldr	q28, [x1]	;# tmp187, *_74
	ldr	q29, [x1, 16]	;# tmp188, *_74
	ldr	q30, [x1, 32]	;# tmp189, *_74
	ldr	q31, [x1, 48]	;# tmp190, *_74
	str	q28, [x0]	;# tmp187, D.7142
	str	q29, [x0, 16]	;# tmp188, D.7142
	str	q30, [x0, 32]	;# tmp189, D.7142
	str	q31, [x0, 48]	;# tmp190, D.7142
;# varargs-dll.c:622:   int b = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 108]	;# tmp191, D.7142.b
	str	w0, [sp, 1192]	;# tmp191, b
;# varargs-dll.c:623:   int c = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 16]	;# D.8765, argv
	add	x1, x0, 8	;# D.8766, D.8765,
	str	x1, [sp, 16]	;# D.8766, argv
	ldr	x1, [x0]	;# D.8767, MEM[(struct composite * *)_76]
	add	x0, sp, 168	;# tmp192,,
	ldr	q28, [x1]	;# tmp194, *_79
	ldr	q29, [x1, 16]	;# tmp195, *_79
	ldr	q30, [x1, 32]	;# tmp196, *_79
	ldr	q31, [x1, 48]	;# tmp197, *_79
	str	q28, [x0]	;# tmp194, D.7143
	str	q29, [x0, 16]	;# tmp195, D.7143
	str	q30, [x0, 32]	;# tmp196, D.7143
	str	q31, [x0, 48]	;# tmp197, D.7143
;# varargs-dll.c:623:   int c = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 176]	;# _1, D.7143.c
	bl	atoi		;#
	str	w0, [sp, 1188]	;#, c
;# varargs-dll.c:624:   char d = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 16]	;# D.8768, argv
	add	x1, x0, 8	;# D.8769, D.8768,
	str	x1, [sp, 16]	;# D.8769, argv
	ldr	x1, [x0]	;# D.8770, MEM[(struct composite * *)_81]
	add	x0, sp, 232	;# tmp198,,
	ldr	q28, [x1]	;# tmp200, *_84
	ldr	q29, [x1, 16]	;# tmp201, *_84
	ldr	q30, [x1, 32]	;# tmp202, *_84
	ldr	q31, [x1, 48]	;# tmp203, *_84
	str	q28, [x0]	;# tmp200, D.7144
	str	q29, [x0, 16]	;# tmp201, D.7144
	str	q30, [x0, 32]	;# tmp202, D.7144
	str	q31, [x0, 48]	;# tmp203, D.7144
;# varargs-dll.c:624:   char d = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 232]	;# tmp204, D.7144.a
	strb	w0, [sp, 1187]	;# tmp204, d
;# varargs-dll.c:625:   int e = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 16]	;# D.8771, argv
	add	x1, x0, 8	;# D.8772, D.8771,
	str	x1, [sp, 16]	;# D.8772, argv
	ldr	x1, [x0]	;# D.8773, MEM[(struct composite * *)_86]
	add	x0, sp, 296	;# tmp205,,
	ldr	q28, [x1]	;# tmp207, *_89
	ldr	q29, [x1, 16]	;# tmp208, *_89
	ldr	q30, [x1, 32]	;# tmp209, *_89
	ldr	q31, [x1, 48]	;# tmp210, *_89
	str	q28, [x0]	;# tmp207, D.7145
	str	q29, [x0, 16]	;# tmp208, D.7145
	str	q30, [x0, 32]	;# tmp209, D.7145
	str	q31, [x0, 48]	;# tmp210, D.7145
;# varargs-dll.c:625:   int e = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 300]	;# tmp211, D.7145.b
	str	w0, [sp, 1180]	;# tmp211, e
;# varargs-dll.c:626:   int f = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 16]	;# D.8774, argv
	add	x1, x0, 8	;# D.8775, D.8774,
	str	x1, [sp, 16]	;# D.8775, argv
	ldr	x1, [x0]	;# D.8776, MEM[(struct composite * *)_91]
	add	x0, sp, 360	;# tmp212,,
	ldr	q28, [x1]	;# tmp214, *_94
	ldr	q29, [x1, 16]	;# tmp215, *_94
	ldr	q30, [x1, 32]	;# tmp216, *_94
	ldr	q31, [x1, 48]	;# tmp217, *_94
	str	q28, [x0]	;# tmp214, D.7146
	str	q29, [x0, 16]	;# tmp215, D.7146
	str	q30, [x0, 32]	;# tmp216, D.7146
	str	q31, [x0, 48]	;# tmp217, D.7146
;# varargs-dll.c:626:   int f = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 368]	;# _2, D.7146.c
	bl	atoi		;#
	str	w0, [sp, 1176]	;#, f
;# varargs-dll.c:627:   char g = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 16]	;# D.8777, argv
	add	x1, x0, 8	;# D.8778, D.8777,
	str	x1, [sp, 16]	;# D.8778, argv
	ldr	x1, [x0]	;# D.8779, MEM[(struct composite * *)_96]
	add	x0, sp, 424	;# tmp218,,
	ldr	q28, [x1]	;# tmp220, *_99
	ldr	q29, [x1, 16]	;# tmp221, *_99
	ldr	q30, [x1, 32]	;# tmp222, *_99
	ldr	q31, [x1, 48]	;# tmp223, *_99
	str	q28, [x0]	;# tmp220, D.7147
	str	q29, [x0, 16]	;# tmp221, D.7147
	str	q30, [x0, 32]	;# tmp222, D.7147
	str	q31, [x0, 48]	;# tmp223, D.7147
;# varargs-dll.c:627:   char g = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 424]	;# tmp224, D.7147.a
	strb	w0, [sp, 1175]	;# tmp224, g
;# varargs-dll.c:628:   int h = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 16]	;# D.8780, argv
	add	x1, x0, 8	;# D.8781, D.8780,
	str	x1, [sp, 16]	;# D.8781, argv
	ldr	x1, [x0]	;# D.8782, MEM[(struct composite * *)_101]
	add	x0, sp, 488	;# tmp225,,
	ldr	q28, [x1]	;# tmp227, *_104
	ldr	q29, [x1, 16]	;# tmp228, *_104
	ldr	q30, [x1, 32]	;# tmp229, *_104
	ldr	q31, [x1, 48]	;# tmp230, *_104
	str	q28, [x0]	;# tmp227, D.7148
	str	q29, [x0, 16]	;# tmp228, D.7148
	str	q30, [x0, 32]	;# tmp229, D.7148
	str	q31, [x0, 48]	;# tmp230, D.7148
;# varargs-dll.c:628:   int h = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 492]	;# tmp231, D.7148.b
	str	w0, [sp, 1168]	;# tmp231, h
;# varargs-dll.c:629:   int i = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 16]	;# D.8783, argv
	add	x1, x0, 8	;# D.8784, D.8783,
	str	x1, [sp, 16]	;# D.8784, argv
	ldr	x1, [x0]	;# D.8785, MEM[(struct composite * *)_106]
	add	x0, sp, 552	;# tmp232,,
	ldr	q28, [x1]	;# tmp234, *_109
	ldr	q29, [x1, 16]	;# tmp235, *_109
	ldr	q30, [x1, 32]	;# tmp236, *_109
	ldr	q31, [x1, 48]	;# tmp237, *_109
	str	q28, [x0]	;# tmp234, D.7149
	str	q29, [x0, 16]	;# tmp235, D.7149
	str	q30, [x0, 32]	;# tmp236, D.7149
	str	q31, [x0, 48]	;# tmp237, D.7149
;# varargs-dll.c:629:   int i = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 560]	;# _3, D.7149.c
	bl	atoi		;#
	str	w0, [sp, 1164]	;#, i
;# varargs-dll.c:630:   char j = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 16]	;# D.8786, argv
	add	x1, x0, 8	;# D.8787, D.8786,
	str	x1, [sp, 16]	;# D.8787, argv
	ldr	x1, [x0]	;# D.8788, MEM[(struct composite * *)_111]
	add	x0, sp, 616	;# tmp238,,
	ldr	q28, [x1]	;# tmp240, *_114
	ldr	q29, [x1, 16]	;# tmp241, *_114
	ldr	q30, [x1, 32]	;# tmp242, *_114
	ldr	q31, [x1, 48]	;# tmp243, *_114
	str	q28, [x0]	;# tmp240, D.7150
	str	q29, [x0, 16]	;# tmp241, D.7150
	str	q30, [x0, 32]	;# tmp242, D.7150
	str	q31, [x0, 48]	;# tmp243, D.7150
;# varargs-dll.c:630:   char j = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 616]	;# tmp244, D.7150.a
	strb	w0, [sp, 1163]	;# tmp244, j
;# varargs-dll.c:631:   int k = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 16]	;# D.8789, argv
	add	x1, x0, 8	;# D.8790, D.8789,
	str	x1, [sp, 16]	;# D.8790, argv
	ldr	x1, [x0]	;# D.8791, MEM[(struct composite * *)_116]
	add	x0, sp, 680	;# tmp245,,
	ldr	q28, [x1]	;# tmp247, *_119
	ldr	q29, [x1, 16]	;# tmp248, *_119
	ldr	q30, [x1, 32]	;# tmp249, *_119
	ldr	q31, [x1, 48]	;# tmp250, *_119
	str	q28, [x0]	;# tmp247, D.7151
	str	q29, [x0, 16]	;# tmp248, D.7151
	str	q30, [x0, 32]	;# tmp249, D.7151
	str	q31, [x0, 48]	;# tmp250, D.7151
;# varargs-dll.c:631:   int k = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 684]	;# tmp251, D.7151.b
	str	w0, [sp, 1156]	;# tmp251, k
;# varargs-dll.c:632:   int l = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 16]	;# D.8792, argv
	add	x1, x0, 8	;# D.8793, D.8792,
	str	x1, [sp, 16]	;# D.8793, argv
	ldr	x1, [x0]	;# D.8794, MEM[(struct composite * *)_121]
	add	x0, sp, 744	;# tmp252,,
	ldr	q28, [x1]	;# tmp254, *_124
	ldr	q29, [x1, 16]	;# tmp255, *_124
	ldr	q30, [x1, 32]	;# tmp256, *_124
	ldr	q31, [x1, 48]	;# tmp257, *_124
	str	q28, [x0]	;# tmp254, D.7152
	str	q29, [x0, 16]	;# tmp255, D.7152
	str	q30, [x0, 32]	;# tmp256, D.7152
	str	q31, [x0, 48]	;# tmp257, D.7152
;# varargs-dll.c:632:   int l = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 752]	;# _4, D.7152.c
	bl	atoi		;#
	str	w0, [sp, 1152]	;#, l
;# varargs-dll.c:633:   int m = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 16]	;# D.8795, argv
	add	x1, x0, 8	;# D.8796, D.8795,
	str	x1, [sp, 16]	;# D.8796, argv
	ldr	x1, [x0]	;# D.8797, MEM[(struct composite * *)_126]
	add	x0, sp, 808	;# tmp258,,
	ldr	q28, [x1]	;# tmp260, *_129
	ldr	q29, [x1, 16]	;# tmp261, *_129
	ldr	q30, [x1, 32]	;# tmp262, *_129
	ldr	q31, [x1, 48]	;# tmp263, *_129
	str	q28, [x0]	;# tmp260, D.7153
	str	q29, [x0, 16]	;# tmp261, D.7153
	str	q30, [x0, 32]	;# tmp262, D.7153
	str	q31, [x0, 48]	;# tmp263, D.7153
;# varargs-dll.c:633:   int m = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 812]	;# tmp264, D.7153.b
	str	w0, [sp, 1148]	;# tmp264, m
;# varargs-dll.c:634:   int n = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 16]	;# D.8798, argv
	add	x1, x0, 8	;# D.8799, D.8798,
	str	x1, [sp, 16]	;# D.8799, argv
	ldr	x1, [x0]	;# D.8800, MEM[(struct composite * *)_131]
	add	x0, sp, 872	;# tmp265,,
	ldr	q28, [x1]	;# tmp267, *_134
	ldr	q29, [x1, 16]	;# tmp268, *_134
	ldr	q30, [x1, 32]	;# tmp269, *_134
	ldr	q31, [x1, 48]	;# tmp270, *_134
	str	q28, [x0]	;# tmp267, D.7154
	str	q29, [x0, 16]	;# tmp268, D.7154
	str	q30, [x0, 32]	;# tmp269, D.7154
	str	q31, [x0, 48]	;# tmp270, D.7154
;# varargs-dll.c:634:   int n = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 876]	;# tmp271, D.7154.b
	str	w0, [sp, 1144]	;# tmp271, n
;# varargs-dll.c:635:   int o = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 16]	;# D.8801, argv
	add	x1, x0, 8	;# D.8802, D.8801,
	str	x1, [sp, 16]	;# D.8802, argv
	ldr	x1, [x0]	;# D.8803, MEM[(struct composite * *)_136]
	add	x0, sp, 936	;# tmp272,,
	ldr	q28, [x1]	;# tmp274, *_139
	ldr	q29, [x1, 16]	;# tmp275, *_139
	ldr	q30, [x1, 32]	;# tmp276, *_139
	ldr	q31, [x1, 48]	;# tmp277, *_139
	str	q28, [x0]	;# tmp274, D.7155
	str	q29, [x0, 16]	;# tmp275, D.7155
	str	q30, [x0, 32]	;# tmp276, D.7155
	str	q31, [x0, 48]	;# tmp277, D.7155
;# varargs-dll.c:635:   int o = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 944]	;# _5, D.7155.c
	bl	atoi		;#
	str	w0, [sp, 1140]	;#, o
;# varargs-dll.c:636:   int p = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 16]	;# D.8804, argv
	add	x1, x0, 8	;# D.8805, D.8804,
	str	x1, [sp, 16]	;# D.8805, argv
	ldr	x1, [x0]	;# D.8806, MEM[(struct composite * *)_141]
	add	x0, sp, 1000	;# tmp278,,
	ldr	q28, [x1]	;# tmp280, *_144
	ldr	q29, [x1, 16]	;# tmp281, *_144
	ldr	q30, [x1, 32]	;# tmp282, *_144
	ldr	q31, [x1, 48]	;# tmp283, *_144
	str	q28, [x0]	;# tmp280, D.7156
	str	q29, [x0, 16]	;# tmp281, D.7156
	str	q30, [x0, 32]	;# tmp282, D.7156
	str	q31, [x0, 48]	;# tmp283, D.7156
;# varargs-dll.c:636:   int p = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 1004]	;# tmp284, D.7156.b
	str	w0, [sp, 1136]	;# tmp284, p
;# varargs-dll.c:637:   int q = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 16]	;# D.8807, argv
	add	x1, x0, 8	;# D.8808, D.8807,
	str	x1, [sp, 16]	;# D.8808, argv
	ldr	x1, [x0]	;# D.8809, MEM[(struct composite * *)_146]
	add	x0, sp, 1064	;# tmp285,,
	ldr	q28, [x1]	;# tmp287, *_149
	ldr	q29, [x1, 16]	;# tmp288, *_149
	ldr	q30, [x1, 32]	;# tmp289, *_149
	ldr	q31, [x1, 48]	;# tmp290, *_149
	str	q28, [x0]	;# tmp287, D.7157
	str	q29, [x0, 16]	;# tmp288, D.7157
	str	q30, [x0, 32]	;# tmp289, D.7157
	str	q31, [x0, 48]	;# tmp290, D.7157
;# varargs-dll.c:637:   int q = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 1068]	;# tmp291, D.7157.b
	str	w0, [sp, 1132]	;# tmp291, q
;# varargs-dll.c:638:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldrsb	w1, [sp, 1199]	;# _6, a
	ldr	w0, [sp, 1192]	;# tmp292, b
	add	w1, w1, w0	;# _7, _6, tmp292
;# varargs-dll.c:638:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1188]	;# tmp293, c
	add	w1, w1, w0	;# _8, _7, tmp293
;# varargs-dll.c:638:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldrsb	w0, [sp, 1187]	;# _9, d
	add	w1, w1, w0	;# _10, _8, _9
;# varargs-dll.c:638:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1180]	;# tmp294, e
	add	w1, w1, w0	;# _11, _10, tmp294
;# varargs-dll.c:638:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1176]	;# tmp295, f
	add	w1, w1, w0	;# _12, _11, tmp295
;# varargs-dll.c:638:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldrsb	w0, [sp, 1175]	;# _13, g
	add	w1, w1, w0	;# _14, _12, _13
;# varargs-dll.c:638:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1168]	;# tmp296, h
	add	w1, w1, w0	;# _15, _14, tmp296
;# varargs-dll.c:638:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1164]	;# tmp297, i
	add	w1, w1, w0	;# _16, _15, tmp297
;# varargs-dll.c:638:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldrsb	w0, [sp, 1163]	;# _17, j
	add	w1, w1, w0	;# _18, _16, _17
;# varargs-dll.c:638:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1156]	;# tmp298, k
	add	w1, w1, w0	;# _19, _18, tmp298
;# varargs-dll.c:638:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1152]	;# tmp299, l
	add	w1, w1, w0	;# _20, _19, tmp299
;# varargs-dll.c:638:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1148]	;# tmp300, m
	add	w1, w1, w0	;# _21, _20, tmp300
;# varargs-dll.c:638:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1144]	;# tmp301, n
	add	w1, w1, w0	;# _22, _21, tmp301
;# varargs-dll.c:638:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1140]	;# tmp302, o
	add	w1, w1, w0	;# _23, _22, tmp302
;# varargs-dll.c:638:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1136]	;# tmp303, p
	add	w1, w1, w0	;# _24, _23, tmp303
;# varargs-dll.c:638:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1132]	;# tmp304, q
	add	w0, w1, w0	;# _65, _24, tmp304
;# varargs-dll.c:639: }
	ldp	x29, x30, [sp]	;#,,
	add	sp, sp, 1200	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_short_vector_8_bytes
	.def	use_va_args_few_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_short_vector_8_bytes
use_va_args_few_short_vector_8_bytes:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 40]	;#,
	str	x2, [sp, 48]	;#,
	str	x3, [sp, 56]	;#,
	str	x4, [sp, 64]	;#,
	str	x5, [sp, 72]	;#,
	str	x6, [sp, 80]	;#,
	str	x7, [sp, 88]	;#,
;# varargs-dll.c:645:   va_start (argv, format);
	add	x0, sp, 96	;# tmp109,,
	sub	x0, x0, #56	;# tmp110, tmp109,
	str	x0, [sp, 16]	;# tmp110, MEM[(char * *)&argv]
;# varargs-dll.c:646:   int a = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp, 16]	;# D.8810, argv
	add	x1, x0, 8	;# D.8811, D.8810,
	str	x1, [sp, 16]	;# D.8811, argv
	ldr	x0, [x0]	;# D.7160, MEM[(struct short_vector_8_bytes *)_10]
;# varargs-dll.c:646:   int a = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 28]	;# tmp111, a
;# varargs-dll.c:647:   int b = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp, 16]	;# D.8812, argv
	add	x1, x0, 8	;# D.8813, D.8812,
	str	x1, [sp, 16]	;# D.8813, argv
	ldr	x0, [x0]	;# D.7161, MEM[(struct short_vector_8_bytes *)_14]
;# varargs-dll.c:647:   int b = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp113, D.7161,
	str	w0, [sp, 24]	;# tmp114, b
;# varargs-dll.c:649:   return a + b;
	ldr	w1, [sp, 28]	;# tmp115, a
	ldr	w0, [sp, 24]	;# tmp116, b
	add	w0, w1, w0	;# _8, tmp115, tmp116
;# varargs-dll.c:650: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_short_vector_8_bytes
	.def	use_va_list_few_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_short_vector_8_bytes
use_va_list_few_short_vector_8_bytes:
	sub	sp, sp, #32	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:655:   int a = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp]	;# D.8814, argv
	add	x1, x0, 8	;# D.8815, D.8814,
	str	x1, [sp]	;# D.8815, argv
	ldr	x0, [x0]	;# D.7165, MEM[(struct short_vector_8_bytes *)_7]
;# varargs-dll.c:655:   int a = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 28]	;# tmp109, a
;# varargs-dll.c:656:   int b = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp]	;# D.8816, argv
	add	x1, x0, 8	;# D.8817, D.8816,
	str	x1, [sp]	;# D.8817, argv
	ldr	x0, [x0]	;# D.7166, MEM[(struct short_vector_8_bytes *)_11]
;# varargs-dll.c:656:   int b = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp111, D.7166,
	str	w0, [sp, 24]	;# tmp112, b
;# varargs-dll.c:657:   return a + b;
	ldr	w1, [sp, 28]	;# tmp113, a
	ldr	w0, [sp, 24]	;# tmp114, b
	add	w0, w1, w0	;# _6, tmp113, tmp114
;# varargs-dll.c:658: }
	add	sp, sp, 32	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_short_vector_8_bytes
	.def	use_va_args_several_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_short_vector_8_bytes
use_va_args_several_short_vector_8_bytes:
	sub	sp, sp, #128	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 72]	;#,
	str	x2, [sp, 80]	;#,
	str	x3, [sp, 88]	;#,
	str	x4, [sp, 96]	;#,
	str	x5, [sp, 104]	;#,
	str	x6, [sp, 112]	;#,
	str	x7, [sp, 120]	;#,
;# varargs-dll.c:664:   va_start (argv, format);
	add	x0, sp, 128	;# tmp137,,
	sub	x0, x0, #56	;# tmp138, tmp137,
	str	x0, [sp, 16]	;# tmp138, MEM[(char * *)&argv]
;# varargs-dll.c:665:   int a = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp, 16]	;# D.8818, argv
	add	x1, x0, 8	;# D.8819, D.8818,
	str	x1, [sp, 16]	;# D.8819, argv
	ldr	x0, [x0]	;# D.7169, MEM[(struct short_vector_8_bytes *)_31]
;# varargs-dll.c:665:   int a = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 60]	;# tmp139, a
;# varargs-dll.c:666:   int b = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp, 16]	;# D.8820, argv
	add	x1, x0, 8	;# D.8821, D.8820,
	str	x1, [sp, 16]	;# D.8821, argv
	ldr	x0, [x0]	;# D.7170, MEM[(struct short_vector_8_bytes *)_35]
;# varargs-dll.c:666:   int b = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp141, D.7170,
	str	w0, [sp, 56]	;# tmp142, b
;# varargs-dll.c:667:   int c = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp, 16]	;# D.8822, argv
	add	x1, x0, 8	;# D.8823, D.8822,
	str	x1, [sp, 16]	;# D.8823, argv
	ldr	x0, [x0]	;# D.7171, MEM[(struct short_vector_8_bytes *)_39]
;# varargs-dll.c:667:   int c = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 52]	;# tmp143, c
;# varargs-dll.c:668:   int d = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp, 16]	;# D.8824, argv
	add	x1, x0, 8	;# D.8825, D.8824,
	str	x1, [sp, 16]	;# D.8825, argv
	ldr	x0, [x0]	;# D.7172, MEM[(struct short_vector_8_bytes *)_43]
;# varargs-dll.c:668:   int d = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp145, D.7172,
	str	w0, [sp, 48]	;# tmp146, d
;# varargs-dll.c:669:   int e = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp, 16]	;# D.8826, argv
	add	x1, x0, 8	;# D.8827, D.8826,
	str	x1, [sp, 16]	;# D.8827, argv
	ldr	x0, [x0]	;# D.7173, MEM[(struct short_vector_8_bytes *)_47]
;# varargs-dll.c:669:   int e = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 44]	;# tmp147, e
;# varargs-dll.c:670:   int f = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp, 16]	;# D.8828, argv
	add	x1, x0, 8	;# D.8829, D.8828,
	str	x1, [sp, 16]	;# D.8829, argv
	ldr	x0, [x0]	;# D.7174, MEM[(struct short_vector_8_bytes *)_51]
;# varargs-dll.c:670:   int f = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp149, D.7174,
	str	w0, [sp, 40]	;# tmp150, f
;# varargs-dll.c:671:   int g = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp, 16]	;# D.8830, argv
	add	x1, x0, 8	;# D.8831, D.8830,
	str	x1, [sp, 16]	;# D.8831, argv
	ldr	x0, [x0]	;# D.7175, MEM[(struct short_vector_8_bytes *)_55]
;# varargs-dll.c:671:   int g = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 36]	;# tmp151, g
;# varargs-dll.c:672:   int h = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp, 16]	;# D.8832, argv
	add	x1, x0, 8	;# D.8833, D.8832,
	str	x1, [sp, 16]	;# D.8833, argv
	ldr	x0, [x0]	;# D.7176, MEM[(struct short_vector_8_bytes *)_59]
;# varargs-dll.c:672:   int h = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp153, D.7176,
	str	w0, [sp, 32]	;# tmp154, h
;# varargs-dll.c:673:   int i = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp, 16]	;# D.8834, argv
	add	x1, x0, 8	;# D.8835, D.8834,
	str	x1, [sp, 16]	;# D.8835, argv
	ldr	x0, [x0]	;# D.7177, MEM[(struct short_vector_8_bytes *)_63]
;# varargs-dll.c:673:   int i = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 28]	;# tmp155, i
;# varargs-dll.c:675:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 60]	;# tmp156, a
	ldr	w0, [sp, 56]	;# tmp157, b
	add	w1, w1, w0	;# _1, tmp156, tmp157
;# varargs-dll.c:675:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 52]	;# tmp158, c
	add	w1, w1, w0	;# _2, _1, tmp158
;# varargs-dll.c:675:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 48]	;# tmp159, d
	add	w1, w1, w0	;# _3, _2, tmp159
;# varargs-dll.c:675:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 44]	;# tmp160, e
	add	w1, w1, w0	;# _4, _3, tmp160
;# varargs-dll.c:675:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 40]	;# tmp161, f
	add	w1, w1, w0	;# _5, _4, tmp161
;# varargs-dll.c:675:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 36]	;# tmp162, g
	add	w1, w1, w0	;# _6, _5, tmp162
;# varargs-dll.c:675:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 32]	;# tmp163, h
	add	w1, w1, w0	;# _7, _6, tmp163
;# varargs-dll.c:675:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 28]	;# tmp164, i
	add	w0, w1, w0	;# _29, _7, tmp164
;# varargs-dll.c:676: }
	add	sp, sp, 128	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_short_vector_8_bytes
	.def	use_va_list_several_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_short_vector_8_bytes
use_va_list_several_short_vector_8_bytes:
	sub	sp, sp, #64	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:681:   int a = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp]	;# D.8836, argv
	add	x1, x0, 8	;# D.8837, D.8836,
	str	x1, [sp]	;# D.8837, argv
	ldr	x0, [x0]	;# D.7181, MEM[(struct short_vector_8_bytes *)_28]
;# varargs-dll.c:681:   int a = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 60]	;# tmp137, a
;# varargs-dll.c:682:   int b = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp]	;# D.8838, argv
	add	x1, x0, 8	;# D.8839, D.8838,
	str	x1, [sp]	;# D.8839, argv
	ldr	x0, [x0]	;# D.7182, MEM[(struct short_vector_8_bytes *)_32]
;# varargs-dll.c:682:   int b = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp139, D.7182,
	str	w0, [sp, 56]	;# tmp140, b
;# varargs-dll.c:683:   int c = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp]	;# D.8840, argv
	add	x1, x0, 8	;# D.8841, D.8840,
	str	x1, [sp]	;# D.8841, argv
	ldr	x0, [x0]	;# D.7183, MEM[(struct short_vector_8_bytes *)_36]
;# varargs-dll.c:683:   int c = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 52]	;# tmp141, c
;# varargs-dll.c:684:   int d = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp]	;# D.8842, argv
	add	x1, x0, 8	;# D.8843, D.8842,
	str	x1, [sp]	;# D.8843, argv
	ldr	x0, [x0]	;# D.7184, MEM[(struct short_vector_8_bytes *)_40]
;# varargs-dll.c:684:   int d = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp143, D.7184,
	str	w0, [sp, 48]	;# tmp144, d
;# varargs-dll.c:685:   int e = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp]	;# D.8844, argv
	add	x1, x0, 8	;# D.8845, D.8844,
	str	x1, [sp]	;# D.8845, argv
	ldr	x0, [x0]	;# D.7185, MEM[(struct short_vector_8_bytes *)_44]
;# varargs-dll.c:685:   int e = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 44]	;# tmp145, e
;# varargs-dll.c:686:   int f = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp]	;# D.8846, argv
	add	x1, x0, 8	;# D.8847, D.8846,
	str	x1, [sp]	;# D.8847, argv
	ldr	x0, [x0]	;# D.7186, MEM[(struct short_vector_8_bytes *)_48]
;# varargs-dll.c:686:   int f = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp147, D.7186,
	str	w0, [sp, 40]	;# tmp148, f
;# varargs-dll.c:687:   int g = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp]	;# D.8848, argv
	add	x1, x0, 8	;# D.8849, D.8848,
	str	x1, [sp]	;# D.8849, argv
	ldr	x0, [x0]	;# D.7187, MEM[(struct short_vector_8_bytes *)_52]
;# varargs-dll.c:687:   int g = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 36]	;# tmp149, g
;# varargs-dll.c:688:   int h = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp]	;# D.8850, argv
	add	x1, x0, 8	;# D.8851, D.8850,
	str	x1, [sp]	;# D.8851, argv
	ldr	x0, [x0]	;# D.7188, MEM[(struct short_vector_8_bytes *)_56]
;# varargs-dll.c:688:   int h = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp151, D.7188,
	str	w0, [sp, 32]	;# tmp152, h
;# varargs-dll.c:689:   int i = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp]	;# D.8852, argv
	add	x1, x0, 8	;# D.8853, D.8852,
	str	x1, [sp]	;# D.8853, argv
	ldr	x0, [x0]	;# D.7189, MEM[(struct short_vector_8_bytes *)_60]
;# varargs-dll.c:689:   int i = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 28]	;# tmp153, i
;# varargs-dll.c:690:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 60]	;# tmp154, a
	ldr	w0, [sp, 56]	;# tmp155, b
	add	w1, w1, w0	;# _1, tmp154, tmp155
;# varargs-dll.c:690:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 52]	;# tmp156, c
	add	w1, w1, w0	;# _2, _1, tmp156
;# varargs-dll.c:690:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 48]	;# tmp157, d
	add	w1, w1, w0	;# _3, _2, tmp157
;# varargs-dll.c:690:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 44]	;# tmp158, e
	add	w1, w1, w0	;# _4, _3, tmp158
;# varargs-dll.c:690:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 40]	;# tmp159, f
	add	w1, w1, w0	;# _5, _4, tmp159
;# varargs-dll.c:690:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 36]	;# tmp160, g
	add	w1, w1, w0	;# _6, _5, tmp160
;# varargs-dll.c:690:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 32]	;# tmp161, h
	add	w1, w1, w0	;# _7, _6, tmp161
;# varargs-dll.c:690:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 28]	;# tmp162, i
	add	w0, w1, w0	;# _27, _7, tmp162
;# varargs-dll.c:691: }
	add	sp, sp, 64	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_short_vector_8_bytes
	.def	use_va_args_many_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_short_vector_8_bytes
use_va_args_many_short_vector_8_bytes:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 104]	;#,
	str	x2, [sp, 112]	;#,
	str	x3, [sp, 120]	;#,
	str	x4, [sp, 128]	;#,
	str	x5, [sp, 136]	;#,
	str	x6, [sp, 144]	;#,
	str	x7, [sp, 152]	;#,
;# varargs-dll.c:697:   va_start (argv, format);
	add	x0, sp, 160	;# tmp169,,
	sub	x0, x0, #56	;# tmp170, tmp169,
	str	x0, [sp, 16]	;# tmp170, MEM[(char * *)&argv]
;# varargs-dll.c:698:   int a = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp, 16]	;# D.8854, argv
	add	x1, x0, 8	;# D.8855, D.8854,
	str	x1, [sp, 16]	;# D.8855, argv
	ldr	x0, [x0]	;# D.7192, MEM[(struct short_vector_8_bytes *)_55]
;# varargs-dll.c:698:   int a = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 92]	;# tmp171, a
;# varargs-dll.c:699:   int b = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp, 16]	;# D.8856, argv
	add	x1, x0, 8	;# D.8857, D.8856,
	str	x1, [sp, 16]	;# D.8857, argv
	ldr	x0, [x0]	;# D.7193, MEM[(struct short_vector_8_bytes *)_59]
;# varargs-dll.c:699:   int b = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp173, D.7193,
	str	w0, [sp, 88]	;# tmp174, b
;# varargs-dll.c:700:   int c = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp, 16]	;# D.8858, argv
	add	x1, x0, 8	;# D.8859, D.8858,
	str	x1, [sp, 16]	;# D.8859, argv
	ldr	x0, [x0]	;# D.7194, MEM[(struct short_vector_8_bytes *)_63]
;# varargs-dll.c:700:   int c = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 84]	;# tmp175, c
;# varargs-dll.c:701:   int d = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp, 16]	;# D.8860, argv
	add	x1, x0, 8	;# D.8861, D.8860,
	str	x1, [sp, 16]	;# D.8861, argv
	ldr	x0, [x0]	;# D.7195, MEM[(struct short_vector_8_bytes *)_67]
;# varargs-dll.c:701:   int d = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp177, D.7195,
	str	w0, [sp, 80]	;# tmp178, d
;# varargs-dll.c:702:   int e = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp, 16]	;# D.8862, argv
	add	x1, x0, 8	;# D.8863, D.8862,
	str	x1, [sp, 16]	;# D.8863, argv
	ldr	x0, [x0]	;# D.7196, MEM[(struct short_vector_8_bytes *)_71]
;# varargs-dll.c:702:   int e = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 76]	;# tmp179, e
;# varargs-dll.c:703:   int f = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp, 16]	;# D.8864, argv
	add	x1, x0, 8	;# D.8865, D.8864,
	str	x1, [sp, 16]	;# D.8865, argv
	ldr	x0, [x0]	;# D.7197, MEM[(struct short_vector_8_bytes *)_75]
;# varargs-dll.c:703:   int f = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp181, D.7197,
	str	w0, [sp, 72]	;# tmp182, f
;# varargs-dll.c:704:   int g = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp, 16]	;# D.8866, argv
	add	x1, x0, 8	;# D.8867, D.8866,
	str	x1, [sp, 16]	;# D.8867, argv
	ldr	x0, [x0]	;# D.7198, MEM[(struct short_vector_8_bytes *)_79]
;# varargs-dll.c:704:   int g = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 68]	;# tmp183, g
;# varargs-dll.c:705:   int h = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp, 16]	;# D.8868, argv
	add	x1, x0, 8	;# D.8869, D.8868,
	str	x1, [sp, 16]	;# D.8869, argv
	ldr	x0, [x0]	;# D.7199, MEM[(struct short_vector_8_bytes *)_83]
;# varargs-dll.c:705:   int h = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp185, D.7199,
	str	w0, [sp, 64]	;# tmp186, h
;# varargs-dll.c:706:   int i = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp, 16]	;# D.8870, argv
	add	x1, x0, 8	;# D.8871, D.8870,
	str	x1, [sp, 16]	;# D.8871, argv
	ldr	x0, [x0]	;# D.7200, MEM[(struct short_vector_8_bytes *)_87]
;# varargs-dll.c:706:   int i = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 60]	;# tmp187, i
;# varargs-dll.c:707:   int j = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp, 16]	;# D.8872, argv
	add	x1, x0, 8	;# D.8873, D.8872,
	str	x1, [sp, 16]	;# D.8873, argv
	ldr	x0, [x0]	;# D.7201, MEM[(struct short_vector_8_bytes *)_91]
;# varargs-dll.c:707:   int j = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp189, D.7201,
	str	w0, [sp, 56]	;# tmp190, j
;# varargs-dll.c:708:   int k = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp, 16]	;# D.8874, argv
	add	x1, x0, 8	;# D.8875, D.8874,
	str	x1, [sp, 16]	;# D.8875, argv
	ldr	x0, [x0]	;# D.7202, MEM[(struct short_vector_8_bytes *)_95]
;# varargs-dll.c:708:   int k = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 52]	;# tmp191, k
;# varargs-dll.c:709:   int l = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp, 16]	;# D.8876, argv
	add	x1, x0, 8	;# D.8877, D.8876,
	str	x1, [sp, 16]	;# D.8877, argv
	ldr	x0, [x0]	;# D.7203, MEM[(struct short_vector_8_bytes *)_99]
;# varargs-dll.c:709:   int l = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp193, D.7203,
	str	w0, [sp, 48]	;# tmp194, l
;# varargs-dll.c:710:   int m = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp, 16]	;# D.8878, argv
	add	x1, x0, 8	;# D.8879, D.8878,
	str	x1, [sp, 16]	;# D.8879, argv
	ldr	x0, [x0]	;# D.7204, MEM[(struct short_vector_8_bytes *)_103]
;# varargs-dll.c:710:   int m = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 44]	;# tmp195, m
;# varargs-dll.c:711:   int n = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp, 16]	;# D.8880, argv
	add	x1, x0, 8	;# D.8881, D.8880,
	str	x1, [sp, 16]	;# D.8881, argv
	ldr	x0, [x0]	;# D.7205, MEM[(struct short_vector_8_bytes *)_107]
;# varargs-dll.c:711:   int n = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp197, D.7205,
	str	w0, [sp, 40]	;# tmp198, n
;# varargs-dll.c:712:   int o = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp, 16]	;# D.8882, argv
	add	x1, x0, 8	;# D.8883, D.8882,
	str	x1, [sp, 16]	;# D.8883, argv
	ldr	x0, [x0]	;# D.7206, MEM[(struct short_vector_8_bytes *)_111]
;# varargs-dll.c:712:   int o = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 36]	;# tmp199, o
;# varargs-dll.c:713:   int p = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp, 16]	;# D.8884, argv
	add	x1, x0, 8	;# D.8885, D.8884,
	str	x1, [sp, 16]	;# D.8885, argv
	ldr	x0, [x0]	;# D.7207, MEM[(struct short_vector_8_bytes *)_115]
;# varargs-dll.c:713:   int p = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp201, D.7207,
	str	w0, [sp, 32]	;# tmp202, p
;# varargs-dll.c:714:   int q = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp, 16]	;# D.8886, argv
	add	x1, x0, 8	;# D.8887, D.8886,
	str	x1, [sp, 16]	;# D.8887, argv
	ldr	x0, [x0]	;# D.7208, MEM[(struct short_vector_8_bytes *)_119]
;# varargs-dll.c:714:   int q = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 28]	;# tmp203, q
;# varargs-dll.c:716:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 92]	;# tmp204, a
	ldr	w0, [sp, 88]	;# tmp205, b
	add	w1, w1, w0	;# _1, tmp204, tmp205
;# varargs-dll.c:716:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 84]	;# tmp206, c
	add	w1, w1, w0	;# _2, _1, tmp206
;# varargs-dll.c:716:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 80]	;# tmp207, d
	add	w1, w1, w0	;# _3, _2, tmp207
;# varargs-dll.c:716:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 76]	;# tmp208, e
	add	w1, w1, w0	;# _4, _3, tmp208
;# varargs-dll.c:716:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 72]	;# tmp209, f
	add	w1, w1, w0	;# _5, _4, tmp209
;# varargs-dll.c:716:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 68]	;# tmp210, g
	add	w1, w1, w0	;# _6, _5, tmp210
;# varargs-dll.c:716:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 64]	;# tmp211, h
	add	w1, w1, w0	;# _7, _6, tmp211
;# varargs-dll.c:716:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 60]	;# tmp212, i
	add	w1, w1, w0	;# _8, _7, tmp212
;# varargs-dll.c:716:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 56]	;# tmp213, j
	add	w1, w1, w0	;# _9, _8, tmp213
;# varargs-dll.c:716:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 52]	;# tmp214, k
	add	w1, w1, w0	;# _10, _9, tmp214
;# varargs-dll.c:716:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 48]	;# tmp215, l
	add	w1, w1, w0	;# _11, _10, tmp215
;# varargs-dll.c:716:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 44]	;# tmp216, m
	add	w1, w1, w0	;# _12, _11, tmp216
;# varargs-dll.c:716:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 40]	;# tmp217, n
	add	w1, w1, w0	;# _13, _12, tmp217
;# varargs-dll.c:716:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 36]	;# tmp218, o
	add	w1, w1, w0	;# _14, _13, tmp218
;# varargs-dll.c:716:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 32]	;# tmp219, p
	add	w1, w1, w0	;# _15, _14, tmp219
;# varargs-dll.c:716:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 28]	;# tmp220, q
	add	w0, w1, w0	;# _53, _15, tmp220
;# varargs-dll.c:717: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_short_vector_8_bytes
	.def	use_va_list_many_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_short_vector_8_bytes
use_va_list_many_short_vector_8_bytes:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:722:   int a = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp]	;# D.8888, argv
	add	x1, x0, 8	;# D.8889, D.8888,
	str	x1, [sp]	;# D.8889, argv
	ldr	x0, [x0]	;# D.7212, MEM[(struct short_vector_8_bytes *)_52]
;# varargs-dll.c:722:   int a = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 92]	;# tmp169, a
;# varargs-dll.c:723:   int b = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp]	;# D.8890, argv
	add	x1, x0, 8	;# D.8891, D.8890,
	str	x1, [sp]	;# D.8891, argv
	ldr	x0, [x0]	;# D.7213, MEM[(struct short_vector_8_bytes *)_56]
;# varargs-dll.c:723:   int b = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp171, D.7213,
	str	w0, [sp, 88]	;# tmp172, b
;# varargs-dll.c:724:   int c = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp]	;# D.8892, argv
	add	x1, x0, 8	;# D.8893, D.8892,
	str	x1, [sp]	;# D.8893, argv
	ldr	x0, [x0]	;# D.7214, MEM[(struct short_vector_8_bytes *)_60]
;# varargs-dll.c:724:   int c = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 84]	;# tmp173, c
;# varargs-dll.c:725:   int d = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp]	;# D.8894, argv
	add	x1, x0, 8	;# D.8895, D.8894,
	str	x1, [sp]	;# D.8895, argv
	ldr	x0, [x0]	;# D.7215, MEM[(struct short_vector_8_bytes *)_64]
;# varargs-dll.c:725:   int d = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp175, D.7215,
	str	w0, [sp, 80]	;# tmp176, d
;# varargs-dll.c:726:   int e = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp]	;# D.8896, argv
	add	x1, x0, 8	;# D.8897, D.8896,
	str	x1, [sp]	;# D.8897, argv
	ldr	x0, [x0]	;# D.7216, MEM[(struct short_vector_8_bytes *)_68]
;# varargs-dll.c:726:   int e = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 76]	;# tmp177, e
;# varargs-dll.c:727:   int f = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp]	;# D.8898, argv
	add	x1, x0, 8	;# D.8899, D.8898,
	str	x1, [sp]	;# D.8899, argv
	ldr	x0, [x0]	;# D.7217, MEM[(struct short_vector_8_bytes *)_72]
;# varargs-dll.c:727:   int f = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp179, D.7217,
	str	w0, [sp, 72]	;# tmp180, f
;# varargs-dll.c:728:   int g = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp]	;# D.8900, argv
	add	x1, x0, 8	;# D.8901, D.8900,
	str	x1, [sp]	;# D.8901, argv
	ldr	x0, [x0]	;# D.7218, MEM[(struct short_vector_8_bytes *)_76]
;# varargs-dll.c:728:   int g = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 68]	;# tmp181, g
;# varargs-dll.c:729:   int h = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp]	;# D.8902, argv
	add	x1, x0, 8	;# D.8903, D.8902,
	str	x1, [sp]	;# D.8903, argv
	ldr	x0, [x0]	;# D.7219, MEM[(struct short_vector_8_bytes *)_80]
;# varargs-dll.c:729:   int h = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp183, D.7219,
	str	w0, [sp, 64]	;# tmp184, h
;# varargs-dll.c:730:   int i = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp]	;# D.8904, argv
	add	x1, x0, 8	;# D.8905, D.8904,
	str	x1, [sp]	;# D.8905, argv
	ldr	x0, [x0]	;# D.7220, MEM[(struct short_vector_8_bytes *)_84]
;# varargs-dll.c:730:   int i = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 60]	;# tmp185, i
;# varargs-dll.c:731:   int j = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp]	;# D.8906, argv
	add	x1, x0, 8	;# D.8907, D.8906,
	str	x1, [sp]	;# D.8907, argv
	ldr	x0, [x0]	;# D.7221, MEM[(struct short_vector_8_bytes *)_88]
;# varargs-dll.c:731:   int j = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp187, D.7221,
	str	w0, [sp, 56]	;# tmp188, j
;# varargs-dll.c:732:   int k = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp]	;# D.8908, argv
	add	x1, x0, 8	;# D.8909, D.8908,
	str	x1, [sp]	;# D.8909, argv
	ldr	x0, [x0]	;# D.7222, MEM[(struct short_vector_8_bytes *)_92]
;# varargs-dll.c:732:   int k = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 52]	;# tmp189, k
;# varargs-dll.c:733:   int l = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp]	;# D.8910, argv
	add	x1, x0, 8	;# D.8911, D.8910,
	str	x1, [sp]	;# D.8911, argv
	ldr	x0, [x0]	;# D.7223, MEM[(struct short_vector_8_bytes *)_96]
;# varargs-dll.c:733:   int l = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp191, D.7223,
	str	w0, [sp, 48]	;# tmp192, l
;# varargs-dll.c:734:   int m = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp]	;# D.8912, argv
	add	x1, x0, 8	;# D.8913, D.8912,
	str	x1, [sp]	;# D.8913, argv
	ldr	x0, [x0]	;# D.7224, MEM[(struct short_vector_8_bytes *)_100]
;# varargs-dll.c:734:   int m = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 44]	;# tmp193, m
;# varargs-dll.c:735:   int n = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp]	;# D.8914, argv
	add	x1, x0, 8	;# D.8915, D.8914,
	str	x1, [sp]	;# D.8915, argv
	ldr	x0, [x0]	;# D.7225, MEM[(struct short_vector_8_bytes *)_104]
;# varargs-dll.c:735:   int n = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp195, D.7225,
	str	w0, [sp, 40]	;# tmp196, n
;# varargs-dll.c:736:   int o = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp]	;# D.8916, argv
	add	x1, x0, 8	;# D.8917, D.8916,
	str	x1, [sp]	;# D.8917, argv
	ldr	x0, [x0]	;# D.7226, MEM[(struct short_vector_8_bytes *)_108]
;# varargs-dll.c:736:   int o = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 36]	;# tmp197, o
;# varargs-dll.c:737:   int p = va_arg (argv, struct short_vector_8_bytes).b;
	ldr	x0, [sp]	;# D.8918, argv
	add	x1, x0, 8	;# D.8919, D.8918,
	str	x1, [sp]	;# D.8919, argv
	ldr	x0, [x0]	;# D.7227, MEM[(struct short_vector_8_bytes *)_112]
;# varargs-dll.c:737:   int p = va_arg (argv, struct short_vector_8_bytes).b;
	asr	x0, x0, 32	;# tmp199, D.7227,
	str	w0, [sp, 32]	;# tmp200, p
;# varargs-dll.c:738:   int q = va_arg (argv, struct short_vector_8_bytes).a;
	ldr	x0, [sp]	;# D.8920, argv
	add	x1, x0, 8	;# D.8921, D.8920,
	str	x1, [sp]	;# D.8921, argv
	ldr	x0, [x0]	;# D.7228, MEM[(struct short_vector_8_bytes *)_116]
;# varargs-dll.c:738:   int q = va_arg (argv, struct short_vector_8_bytes).a;
	str	w0, [sp, 28]	;# tmp201, q
;# varargs-dll.c:739:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 92]	;# tmp202, a
	ldr	w0, [sp, 88]	;# tmp203, b
	add	w1, w1, w0	;# _1, tmp202, tmp203
;# varargs-dll.c:739:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 84]	;# tmp204, c
	add	w1, w1, w0	;# _2, _1, tmp204
;# varargs-dll.c:739:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 80]	;# tmp205, d
	add	w1, w1, w0	;# _3, _2, tmp205
;# varargs-dll.c:739:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 76]	;# tmp206, e
	add	w1, w1, w0	;# _4, _3, tmp206
;# varargs-dll.c:739:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 72]	;# tmp207, f
	add	w1, w1, w0	;# _5, _4, tmp207
;# varargs-dll.c:739:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 68]	;# tmp208, g
	add	w1, w1, w0	;# _6, _5, tmp208
;# varargs-dll.c:739:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 64]	;# tmp209, h
	add	w1, w1, w0	;# _7, _6, tmp209
;# varargs-dll.c:739:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 60]	;# tmp210, i
	add	w1, w1, w0	;# _8, _7, tmp210
;# varargs-dll.c:739:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 56]	;# tmp211, j
	add	w1, w1, w0	;# _9, _8, tmp211
;# varargs-dll.c:739:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 52]	;# tmp212, k
	add	w1, w1, w0	;# _10, _9, tmp212
;# varargs-dll.c:739:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 48]	;# tmp213, l
	add	w1, w1, w0	;# _11, _10, tmp213
;# varargs-dll.c:739:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 44]	;# tmp214, m
	add	w1, w1, w0	;# _12, _11, tmp214
;# varargs-dll.c:739:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 40]	;# tmp215, n
	add	w1, w1, w0	;# _13, _12, tmp215
;# varargs-dll.c:739:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 36]	;# tmp216, o
	add	w1, w1, w0	;# _14, _13, tmp216
;# varargs-dll.c:739:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 32]	;# tmp217, p
	add	w1, w1, w0	;# _15, _14, tmp217
;# varargs-dll.c:739:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 28]	;# tmp218, q
	add	w0, w1, w0	;# _51, _15, tmp218
;# varargs-dll.c:740: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_not_short_vector_12_bytes
	.def	use_va_args_few_not_short_vector_12_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_not_short_vector_12_bytes
use_va_args_few_not_short_vector_12_bytes:
	sub	sp, sp, #128	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 72]	;#,
	str	x2, [sp, 80]	;#,
	str	x3, [sp, 88]	;#,
	str	x4, [sp, 96]	;#,
	str	x5, [sp, 104]	;#,
	str	x6, [sp, 112]	;#,
	str	x7, [sp, 120]	;#,
;# varargs-dll.c:746:   va_start (argv, format);
	add	x0, sp, 128	;# tmp107,,
	sub	x0, x0, #56	;# tmp108, tmp107,
	str	x0, [sp, 16]	;# tmp108, MEM[(char * *)&argv]
;# varargs-dll.c:747:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp, 16]	;# D.8922, argv
	add	x0, x1, 16	;# D.8923, D.8922,
	str	x0, [sp, 16]	;# D.8923, argv
	add	x0, sp, 24	;# tmp109,,
	ldr	x2, [x1]	;# tmp111, MEM[(struct not_short_vector_12_bytes *)_10]
	ldr	w1, [x1, 8]	;# tmp112, MEM[(struct not_short_vector_12_bytes *)_10]
	str	x2, [x0]	;# tmp111, D.7231
	str	w1, [x0, 8]	;# tmp112, D.7231
;# varargs-dll.c:747:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 24]	;# tmp113, D.7231.a
	str	w0, [sp, 60]	;# tmp113, a
;# varargs-dll.c:748:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp, 16]	;# D.8924, argv
	add	x0, x1, 16	;# D.8925, D.8924,
	str	x0, [sp, 16]	;# D.8925, argv
	add	x0, sp, 40	;# tmp114,,
	ldr	x2, [x1]	;# tmp116, MEM[(struct not_short_vector_12_bytes *)_14]
	ldr	w1, [x1, 8]	;# tmp117, MEM[(struct not_short_vector_12_bytes *)_14]
	str	x2, [x0]	;# tmp116, D.7232
	str	w1, [x0, 8]	;# tmp117, D.7232
;# varargs-dll.c:748:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 44]	;# tmp118, D.7232.b
	str	w0, [sp, 56]	;# tmp118, b
;# varargs-dll.c:750:   return a + b;
	ldr	w1, [sp, 60]	;# tmp119, a
	ldr	w0, [sp, 56]	;# tmp120, b
	add	w0, w1, w0	;# _8, tmp119, tmp120
;# varargs-dll.c:751: }
	add	sp, sp, 128	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_not_short_vector_12_bytes
	.def	use_va_list_few_not_short_vector_12_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_not_short_vector_12_bytes
use_va_list_few_not_short_vector_12_bytes:
	sub	sp, sp, #64	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:756:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp]	;# D.8926, argv
	add	x0, x1, 16	;# D.8927, D.8926,
	str	x0, [sp]	;# D.8927, argv
	add	x0, sp, 24	;# tmp107,,
	ldr	x2, [x1]	;# tmp109, MEM[(struct not_short_vector_12_bytes *)_7]
	ldr	w1, [x1, 8]	;# tmp110, MEM[(struct not_short_vector_12_bytes *)_7]
	str	x2, [x0]	;# tmp109, D.7236
	str	w1, [x0, 8]	;# tmp110, D.7236
;# varargs-dll.c:756:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 24]	;# tmp111, D.7236.a
	str	w0, [sp, 60]	;# tmp111, a
;# varargs-dll.c:757:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp]	;# D.8928, argv
	add	x0, x1, 16	;# D.8929, D.8928,
	str	x0, [sp]	;# D.8929, argv
	add	x0, sp, 40	;# tmp112,,
	ldr	x2, [x1]	;# tmp114, MEM[(struct not_short_vector_12_bytes *)_11]
	ldr	w1, [x1, 8]	;# tmp115, MEM[(struct not_short_vector_12_bytes *)_11]
	str	x2, [x0]	;# tmp114, D.7237
	str	w1, [x0, 8]	;# tmp115, D.7237
;# varargs-dll.c:757:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 44]	;# tmp116, D.7237.b
	str	w0, [sp, 56]	;# tmp116, b
;# varargs-dll.c:758:   return a + b;
	ldr	w1, [sp, 60]	;# tmp117, a
	ldr	w0, [sp, 56]	;# tmp118, b
	add	w0, w1, w0	;# _6, tmp117, tmp118
;# varargs-dll.c:759: }
	add	sp, sp, 64	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_not_short_vector_12_bytes
	.def	use_va_args_several_not_short_vector_12_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_not_short_vector_12_bytes
use_va_args_several_not_short_vector_12_bytes:
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
;# varargs-dll.c:765:   va_start (argv, format);
	add	x0, sp, 272	;# tmp128,,
	sub	x0, x0, #56	;# tmp129, tmp128,
	str	x0, [sp, 24]	;# tmp129, MEM[(char * *)&argv]
;# varargs-dll.c:766:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp, 24]	;# D.8930, argv
	add	x0, x1, 16	;# D.8931, D.8930,
	str	x0, [sp, 24]	;# D.8931, argv
	add	x0, sp, 32	;# tmp130,,
	ldr	x2, [x1]	;# tmp132, MEM[(struct not_short_vector_12_bytes *)_31]
	ldr	w1, [x1, 8]	;# tmp133, MEM[(struct not_short_vector_12_bytes *)_31]
	str	x2, [x0]	;# tmp132, D.7240
	str	w1, [x0, 8]	;# tmp133, D.7240
;# varargs-dll.c:766:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 32]	;# tmp134, D.7240.a
	str	w0, [sp, 204]	;# tmp134, a
;# varargs-dll.c:767:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp, 24]	;# D.8932, argv
	add	x0, x1, 16	;# D.8933, D.8932,
	str	x0, [sp, 24]	;# D.8933, argv
	add	x0, sp, 48	;# tmp135,,
	ldr	x2, [x1]	;# tmp137, MEM[(struct not_short_vector_12_bytes *)_35]
	ldr	w1, [x1, 8]	;# tmp138, MEM[(struct not_short_vector_12_bytes *)_35]
	str	x2, [x0]	;# tmp137, D.7241
	str	w1, [x0, 8]	;# tmp138, D.7241
;# varargs-dll.c:767:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 52]	;# tmp139, D.7241.b
	str	w0, [sp, 200]	;# tmp139, b
;# varargs-dll.c:768:   int c = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp, 24]	;# D.8934, argv
	add	x0, x1, 16	;# D.8935, D.8934,
	str	x0, [sp, 24]	;# D.8935, argv
	add	x0, sp, 64	;# tmp140,,
	ldr	x2, [x1]	;# tmp142, MEM[(struct not_short_vector_12_bytes *)_39]
	ldr	w1, [x1, 8]	;# tmp143, MEM[(struct not_short_vector_12_bytes *)_39]
	str	x2, [x0]	;# tmp142, D.7242
	str	w1, [x0, 8]	;# tmp143, D.7242
;# varargs-dll.c:768:   int c = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 72]	;# tmp144, D.7242.c
	str	w0, [sp, 196]	;# tmp144, c
;# varargs-dll.c:769:   int d = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp, 24]	;# D.8936, argv
	add	x0, x1, 16	;# D.8937, D.8936,
	str	x0, [sp, 24]	;# D.8937, argv
	add	x0, sp, 80	;# tmp145,,
	ldr	x2, [x1]	;# tmp147, MEM[(struct not_short_vector_12_bytes *)_43]
	ldr	w1, [x1, 8]	;# tmp148, MEM[(struct not_short_vector_12_bytes *)_43]
	str	x2, [x0]	;# tmp147, D.7243
	str	w1, [x0, 8]	;# tmp148, D.7243
;# varargs-dll.c:769:   int d = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 80]	;# tmp149, D.7243.a
	str	w0, [sp, 192]	;# tmp149, d
;# varargs-dll.c:770:   int e = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp, 24]	;# D.8938, argv
	add	x0, x1, 16	;# D.8939, D.8938,
	str	x0, [sp, 24]	;# D.8939, argv
	add	x0, sp, 96	;# tmp150,,
	ldr	x2, [x1]	;# tmp152, MEM[(struct not_short_vector_12_bytes *)_47]
	ldr	w1, [x1, 8]	;# tmp153, MEM[(struct not_short_vector_12_bytes *)_47]
	str	x2, [x0]	;# tmp152, D.7244
	str	w1, [x0, 8]	;# tmp153, D.7244
;# varargs-dll.c:770:   int e = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 100]	;# tmp154, D.7244.b
	str	w0, [sp, 188]	;# tmp154, e
;# varargs-dll.c:771:   int f = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp, 24]	;# D.8940, argv
	add	x0, x1, 16	;# D.8941, D.8940,
	str	x0, [sp, 24]	;# D.8941, argv
	add	x0, sp, 112	;# tmp155,,
	ldr	x2, [x1]	;# tmp157, MEM[(struct not_short_vector_12_bytes *)_51]
	ldr	w1, [x1, 8]	;# tmp158, MEM[(struct not_short_vector_12_bytes *)_51]
	str	x2, [x0]	;# tmp157, D.7245
	str	w1, [x0, 8]	;# tmp158, D.7245
;# varargs-dll.c:771:   int f = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 120]	;# tmp159, D.7245.c
	str	w0, [sp, 184]	;# tmp159, f
;# varargs-dll.c:772:   int g = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp, 24]	;# D.8942, argv
	add	x0, x1, 16	;# D.8943, D.8942,
	str	x0, [sp, 24]	;# D.8943, argv
	add	x0, sp, 128	;# tmp160,,
	ldr	x2, [x1]	;# tmp162, MEM[(struct not_short_vector_12_bytes *)_55]
	ldr	w1, [x1, 8]	;# tmp163, MEM[(struct not_short_vector_12_bytes *)_55]
	str	x2, [x0]	;# tmp162, D.7246
	str	w1, [x0, 8]	;# tmp163, D.7246
;# varargs-dll.c:772:   int g = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 128]	;# tmp164, D.7246.a
	str	w0, [sp, 180]	;# tmp164, g
;# varargs-dll.c:773:   int h = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp, 24]	;# D.8944, argv
	add	x0, x1, 16	;# D.8945, D.8944,
	str	x0, [sp, 24]	;# D.8945, argv
	add	x0, sp, 144	;# tmp165,,
	ldr	x2, [x1]	;# tmp167, MEM[(struct not_short_vector_12_bytes *)_59]
	ldr	w1, [x1, 8]	;# tmp168, MEM[(struct not_short_vector_12_bytes *)_59]
	str	x2, [x0]	;# tmp167, D.7247
	str	w1, [x0, 8]	;# tmp168, D.7247
;# varargs-dll.c:773:   int h = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 148]	;# tmp169, D.7247.b
	str	w0, [sp, 176]	;# tmp169, h
;# varargs-dll.c:774:   int i = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp, 24]	;# D.8946, argv
	add	x0, x1, 16	;# D.8947, D.8946,
	str	x0, [sp, 24]	;# D.8947, argv
	add	x0, sp, 160	;# tmp170,,
	ldr	x2, [x1]	;# tmp172, MEM[(struct not_short_vector_12_bytes *)_63]
	ldr	w1, [x1, 8]	;# tmp173, MEM[(struct not_short_vector_12_bytes *)_63]
	str	x2, [x0]	;# tmp172, D.7248
	str	w1, [x0, 8]	;# tmp173, D.7248
;# varargs-dll.c:774:   int i = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 168]	;# tmp174, D.7248.c
	str	w0, [sp, 172]	;# tmp174, i
;# varargs-dll.c:776:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 204]	;# tmp175, a
	ldr	w0, [sp, 200]	;# tmp176, b
	add	w1, w1, w0	;# _1, tmp175, tmp176
;# varargs-dll.c:776:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 196]	;# tmp177, c
	add	w1, w1, w0	;# _2, _1, tmp177
;# varargs-dll.c:776:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 192]	;# tmp178, d
	add	w1, w1, w0	;# _3, _2, tmp178
;# varargs-dll.c:776:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 188]	;# tmp179, e
	add	w1, w1, w0	;# _4, _3, tmp179
;# varargs-dll.c:776:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 184]	;# tmp180, f
	add	w1, w1, w0	;# _5, _4, tmp180
;# varargs-dll.c:776:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 180]	;# tmp181, g
	add	w1, w1, w0	;# _6, _5, tmp181
;# varargs-dll.c:776:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 176]	;# tmp182, h
	add	w1, w1, w0	;# _7, _6, tmp182
;# varargs-dll.c:776:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 172]	;# tmp183, i
	add	w0, w1, w0	;# _29, _7, tmp183
;# varargs-dll.c:777: }
	add	sp, sp, 272	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_not_short_vector_12_bytes
	.def	use_va_list_several_not_short_vector_12_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_not_short_vector_12_bytes
use_va_list_several_not_short_vector_12_bytes:
	sub	sp, sp, #192	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:783:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp]	;# D.8948, argv
	add	x0, x1, 16	;# D.8949, D.8948,
	str	x0, [sp]	;# D.8949, argv
	add	x0, sp, 16	;# tmp128,,
	ldr	x2, [x1]	;# tmp130, MEM[(struct not_short_vector_12_bytes *)_28]
	ldr	w1, [x1, 8]	;# tmp131, MEM[(struct not_short_vector_12_bytes *)_28]
	str	x2, [x0]	;# tmp130, D.7252
	str	w1, [x0, 8]	;# tmp131, D.7252
;# varargs-dll.c:783:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 16]	;# tmp132, D.7252.a
	str	w0, [sp, 188]	;# tmp132, a
;# varargs-dll.c:784:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp]	;# D.8950, argv
	add	x0, x1, 16	;# D.8951, D.8950,
	str	x0, [sp]	;# D.8951, argv
	add	x0, sp, 32	;# tmp133,,
	ldr	x2, [x1]	;# tmp135, MEM[(struct not_short_vector_12_bytes *)_32]
	ldr	w1, [x1, 8]	;# tmp136, MEM[(struct not_short_vector_12_bytes *)_32]
	str	x2, [x0]	;# tmp135, D.7253
	str	w1, [x0, 8]	;# tmp136, D.7253
;# varargs-dll.c:784:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 36]	;# tmp137, D.7253.b
	str	w0, [sp, 184]	;# tmp137, b
;# varargs-dll.c:785:   int c = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp]	;# D.8952, argv
	add	x0, x1, 16	;# D.8953, D.8952,
	str	x0, [sp]	;# D.8953, argv
	add	x0, sp, 48	;# tmp138,,
	ldr	x2, [x1]	;# tmp140, MEM[(struct not_short_vector_12_bytes *)_36]
	ldr	w1, [x1, 8]	;# tmp141, MEM[(struct not_short_vector_12_bytes *)_36]
	str	x2, [x0]	;# tmp140, D.7254
	str	w1, [x0, 8]	;# tmp141, D.7254
;# varargs-dll.c:785:   int c = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 56]	;# tmp142, D.7254.c
	str	w0, [sp, 180]	;# tmp142, c
;# varargs-dll.c:786:   int d = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp]	;# D.8954, argv
	add	x0, x1, 16	;# D.8955, D.8954,
	str	x0, [sp]	;# D.8955, argv
	add	x0, sp, 64	;# tmp143,,
	ldr	x2, [x1]	;# tmp145, MEM[(struct not_short_vector_12_bytes *)_40]
	ldr	w1, [x1, 8]	;# tmp146, MEM[(struct not_short_vector_12_bytes *)_40]
	str	x2, [x0]	;# tmp145, D.7255
	str	w1, [x0, 8]	;# tmp146, D.7255
;# varargs-dll.c:786:   int d = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 64]	;# tmp147, D.7255.a
	str	w0, [sp, 176]	;# tmp147, d
;# varargs-dll.c:787:   int e = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp]	;# D.8956, argv
	add	x0, x1, 16	;# D.8957, D.8956,
	str	x0, [sp]	;# D.8957, argv
	add	x0, sp, 80	;# tmp148,,
	ldr	x2, [x1]	;# tmp150, MEM[(struct not_short_vector_12_bytes *)_44]
	ldr	w1, [x1, 8]	;# tmp151, MEM[(struct not_short_vector_12_bytes *)_44]
	str	x2, [x0]	;# tmp150, D.7256
	str	w1, [x0, 8]	;# tmp151, D.7256
;# varargs-dll.c:787:   int e = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 84]	;# tmp152, D.7256.b
	str	w0, [sp, 172]	;# tmp152, e
;# varargs-dll.c:788:   int f = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp]	;# D.8958, argv
	add	x0, x1, 16	;# D.8959, D.8958,
	str	x0, [sp]	;# D.8959, argv
	add	x0, sp, 96	;# tmp153,,
	ldr	x2, [x1]	;# tmp155, MEM[(struct not_short_vector_12_bytes *)_48]
	ldr	w1, [x1, 8]	;# tmp156, MEM[(struct not_short_vector_12_bytes *)_48]
	str	x2, [x0]	;# tmp155, D.7257
	str	w1, [x0, 8]	;# tmp156, D.7257
;# varargs-dll.c:788:   int f = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 104]	;# tmp157, D.7257.c
	str	w0, [sp, 168]	;# tmp157, f
;# varargs-dll.c:789:   int g = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp]	;# D.8960, argv
	add	x0, x1, 16	;# D.8961, D.8960,
	str	x0, [sp]	;# D.8961, argv
	add	x0, sp, 112	;# tmp158,,
	ldr	x2, [x1]	;# tmp160, MEM[(struct not_short_vector_12_bytes *)_52]
	ldr	w1, [x1, 8]	;# tmp161, MEM[(struct not_short_vector_12_bytes *)_52]
	str	x2, [x0]	;# tmp160, D.7258
	str	w1, [x0, 8]	;# tmp161, D.7258
;# varargs-dll.c:789:   int g = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 112]	;# tmp162, D.7258.a
	str	w0, [sp, 164]	;# tmp162, g
;# varargs-dll.c:790:   int h = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp]	;# D.8962, argv
	add	x0, x1, 16	;# D.8963, D.8962,
	str	x0, [sp]	;# D.8963, argv
	add	x0, sp, 128	;# tmp163,,
	ldr	x2, [x1]	;# tmp165, MEM[(struct not_short_vector_12_bytes *)_56]
	ldr	w1, [x1, 8]	;# tmp166, MEM[(struct not_short_vector_12_bytes *)_56]
	str	x2, [x0]	;# tmp165, D.7259
	str	w1, [x0, 8]	;# tmp166, D.7259
;# varargs-dll.c:790:   int h = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 132]	;# tmp167, D.7259.b
	str	w0, [sp, 160]	;# tmp167, h
;# varargs-dll.c:791:   int i = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp]	;# D.8964, argv
	add	x0, x1, 16	;# D.8965, D.8964,
	str	x0, [sp]	;# D.8965, argv
	add	x0, sp, 144	;# tmp168,,
	ldr	x2, [x1]	;# tmp170, MEM[(struct not_short_vector_12_bytes *)_60]
	ldr	w1, [x1, 8]	;# tmp171, MEM[(struct not_short_vector_12_bytes *)_60]
	str	x2, [x0]	;# tmp170, D.7260
	str	w1, [x0, 8]	;# tmp171, D.7260
;# varargs-dll.c:791:   int i = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 152]	;# tmp172, D.7260.c
	str	w0, [sp, 156]	;# tmp172, i
;# varargs-dll.c:792:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 188]	;# tmp173, a
	ldr	w0, [sp, 184]	;# tmp174, b
	add	w1, w1, w0	;# _1, tmp173, tmp174
;# varargs-dll.c:792:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 180]	;# tmp175, c
	add	w1, w1, w0	;# _2, _1, tmp175
;# varargs-dll.c:792:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 176]	;# tmp176, d
	add	w1, w1, w0	;# _3, _2, tmp176
;# varargs-dll.c:792:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 172]	;# tmp177, e
	add	w1, w1, w0	;# _4, _3, tmp177
;# varargs-dll.c:792:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 168]	;# tmp178, f
	add	w1, w1, w0	;# _5, _4, tmp178
;# varargs-dll.c:792:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 164]	;# tmp179, g
	add	w1, w1, w0	;# _6, _5, tmp179
;# varargs-dll.c:792:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 160]	;# tmp180, h
	add	w1, w1, w0	;# _7, _6, tmp180
;# varargs-dll.c:792:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 156]	;# tmp181, i
	add	w0, w1, w0	;# _27, _7, tmp181
;# varargs-dll.c:793: }
	add	sp, sp, 192	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_not_short_vector_12_bytes
	.def	use_va_args_many_not_short_vector_12_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_not_short_vector_12_bytes
use_va_args_many_not_short_vector_12_bytes:
	sub	sp, sp, #432	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 376]	;#,
	str	x2, [sp, 384]	;#,
	str	x3, [sp, 392]	;#,
	str	x4, [sp, 400]	;#,
	str	x5, [sp, 408]	;#,
	str	x6, [sp, 416]	;#,
	str	x7, [sp, 424]	;#,
;# varargs-dll.c:799:   va_start (argv, format);
	add	x0, sp, 432	;# tmp152,,
	sub	x0, x0, #56	;# tmp153, tmp152,
	str	x0, [sp, 24]	;# tmp153, MEM[(char * *)&argv]
;# varargs-dll.c:800:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp, 24]	;# D.8966, argv
	add	x0, x1, 16	;# D.8967, D.8966,
	str	x0, [sp, 24]	;# D.8967, argv
	add	x0, sp, 32	;# tmp154,,
	ldr	x2, [x1]	;# tmp156, MEM[(struct not_short_vector_12_bytes *)_55]
	ldr	w1, [x1, 8]	;# tmp157, MEM[(struct not_short_vector_12_bytes *)_55]
	str	x2, [x0]	;# tmp156, D.7263
	str	w1, [x0, 8]	;# tmp157, D.7263
;# varargs-dll.c:800:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 32]	;# tmp158, D.7263.a
	str	w0, [sp, 364]	;# tmp158, a
;# varargs-dll.c:801:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp, 24]	;# D.8968, argv
	add	x0, x1, 16	;# D.8969, D.8968,
	str	x0, [sp, 24]	;# D.8969, argv
	add	x0, sp, 48	;# tmp159,,
	ldr	x2, [x1]	;# tmp161, MEM[(struct not_short_vector_12_bytes *)_59]
	ldr	w1, [x1, 8]	;# tmp162, MEM[(struct not_short_vector_12_bytes *)_59]
	str	x2, [x0]	;# tmp161, D.7264
	str	w1, [x0, 8]	;# tmp162, D.7264
;# varargs-dll.c:801:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 52]	;# tmp163, D.7264.b
	str	w0, [sp, 360]	;# tmp163, b
;# varargs-dll.c:802:   int c = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp, 24]	;# D.8970, argv
	add	x0, x1, 16	;# D.8971, D.8970,
	str	x0, [sp, 24]	;# D.8971, argv
	add	x0, sp, 64	;# tmp164,,
	ldr	x2, [x1]	;# tmp166, MEM[(struct not_short_vector_12_bytes *)_63]
	ldr	w1, [x1, 8]	;# tmp167, MEM[(struct not_short_vector_12_bytes *)_63]
	str	x2, [x0]	;# tmp166, D.7265
	str	w1, [x0, 8]	;# tmp167, D.7265
;# varargs-dll.c:802:   int c = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 72]	;# tmp168, D.7265.c
	str	w0, [sp, 356]	;# tmp168, c
;# varargs-dll.c:803:   int d = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp, 24]	;# D.8972, argv
	add	x0, x1, 16	;# D.8973, D.8972,
	str	x0, [sp, 24]	;# D.8973, argv
	add	x0, sp, 80	;# tmp169,,
	ldr	x2, [x1]	;# tmp171, MEM[(struct not_short_vector_12_bytes *)_67]
	ldr	w1, [x1, 8]	;# tmp172, MEM[(struct not_short_vector_12_bytes *)_67]
	str	x2, [x0]	;# tmp171, D.7266
	str	w1, [x0, 8]	;# tmp172, D.7266
;# varargs-dll.c:803:   int d = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 80]	;# tmp173, D.7266.a
	str	w0, [sp, 352]	;# tmp173, d
;# varargs-dll.c:804:   int e = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp, 24]	;# D.8974, argv
	add	x0, x1, 16	;# D.8975, D.8974,
	str	x0, [sp, 24]	;# D.8975, argv
	add	x0, sp, 96	;# tmp174,,
	ldr	x2, [x1]	;# tmp176, MEM[(struct not_short_vector_12_bytes *)_71]
	ldr	w1, [x1, 8]	;# tmp177, MEM[(struct not_short_vector_12_bytes *)_71]
	str	x2, [x0]	;# tmp176, D.7267
	str	w1, [x0, 8]	;# tmp177, D.7267
;# varargs-dll.c:804:   int e = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 100]	;# tmp178, D.7267.b
	str	w0, [sp, 348]	;# tmp178, e
;# varargs-dll.c:805:   int f = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp, 24]	;# D.8976, argv
	add	x0, x1, 16	;# D.8977, D.8976,
	str	x0, [sp, 24]	;# D.8977, argv
	add	x0, sp, 112	;# tmp179,,
	ldr	x2, [x1]	;# tmp181, MEM[(struct not_short_vector_12_bytes *)_75]
	ldr	w1, [x1, 8]	;# tmp182, MEM[(struct not_short_vector_12_bytes *)_75]
	str	x2, [x0]	;# tmp181, D.7268
	str	w1, [x0, 8]	;# tmp182, D.7268
;# varargs-dll.c:805:   int f = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 120]	;# tmp183, D.7268.c
	str	w0, [sp, 344]	;# tmp183, f
;# varargs-dll.c:806:   int g = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp, 24]	;# D.8978, argv
	add	x0, x1, 16	;# D.8979, D.8978,
	str	x0, [sp, 24]	;# D.8979, argv
	add	x0, sp, 128	;# tmp184,,
	ldr	x2, [x1]	;# tmp186, MEM[(struct not_short_vector_12_bytes *)_79]
	ldr	w1, [x1, 8]	;# tmp187, MEM[(struct not_short_vector_12_bytes *)_79]
	str	x2, [x0]	;# tmp186, D.7269
	str	w1, [x0, 8]	;# tmp187, D.7269
;# varargs-dll.c:806:   int g = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 128]	;# tmp188, D.7269.a
	str	w0, [sp, 340]	;# tmp188, g
;# varargs-dll.c:807:   int h = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp, 24]	;# D.8980, argv
	add	x0, x1, 16	;# D.8981, D.8980,
	str	x0, [sp, 24]	;# D.8981, argv
	add	x0, sp, 144	;# tmp189,,
	ldr	x2, [x1]	;# tmp191, MEM[(struct not_short_vector_12_bytes *)_83]
	ldr	w1, [x1, 8]	;# tmp192, MEM[(struct not_short_vector_12_bytes *)_83]
	str	x2, [x0]	;# tmp191, D.7270
	str	w1, [x0, 8]	;# tmp192, D.7270
;# varargs-dll.c:807:   int h = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 148]	;# tmp193, D.7270.b
	str	w0, [sp, 336]	;# tmp193, h
;# varargs-dll.c:808:   int i = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp, 24]	;# D.8982, argv
	add	x0, x1, 16	;# D.8983, D.8982,
	str	x0, [sp, 24]	;# D.8983, argv
	add	x0, sp, 160	;# tmp194,,
	ldr	x2, [x1]	;# tmp196, MEM[(struct not_short_vector_12_bytes *)_87]
	ldr	w1, [x1, 8]	;# tmp197, MEM[(struct not_short_vector_12_bytes *)_87]
	str	x2, [x0]	;# tmp196, D.7271
	str	w1, [x0, 8]	;# tmp197, D.7271
;# varargs-dll.c:808:   int i = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 168]	;# tmp198, D.7271.c
	str	w0, [sp, 332]	;# tmp198, i
;# varargs-dll.c:809:   int j = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp, 24]	;# D.8984, argv
	add	x0, x1, 16	;# D.8985, D.8984,
	str	x0, [sp, 24]	;# D.8985, argv
	add	x0, sp, 176	;# tmp199,,
	ldr	x2, [x1]	;# tmp201, MEM[(struct not_short_vector_12_bytes *)_91]
	ldr	w1, [x1, 8]	;# tmp202, MEM[(struct not_short_vector_12_bytes *)_91]
	str	x2, [x0]	;# tmp201, D.7272
	str	w1, [x0, 8]	;# tmp202, D.7272
;# varargs-dll.c:809:   int j = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 176]	;# tmp203, D.7272.a
	str	w0, [sp, 328]	;# tmp203, j
;# varargs-dll.c:810:   int k = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp, 24]	;# D.8986, argv
	add	x0, x1, 16	;# D.8987, D.8986,
	str	x0, [sp, 24]	;# D.8987, argv
	add	x0, sp, 192	;# tmp204,,
	ldr	x2, [x1]	;# tmp206, MEM[(struct not_short_vector_12_bytes *)_95]
	ldr	w1, [x1, 8]	;# tmp207, MEM[(struct not_short_vector_12_bytes *)_95]
	str	x2, [x0]	;# tmp206, D.7273
	str	w1, [x0, 8]	;# tmp207, D.7273
;# varargs-dll.c:810:   int k = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 196]	;# tmp208, D.7273.b
	str	w0, [sp, 324]	;# tmp208, k
;# varargs-dll.c:811:   int l = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp, 24]	;# D.8988, argv
	add	x0, x1, 16	;# D.8989, D.8988,
	str	x0, [sp, 24]	;# D.8989, argv
	add	x0, sp, 208	;# tmp209,,
	ldr	x2, [x1]	;# tmp211, MEM[(struct not_short_vector_12_bytes *)_99]
	ldr	w1, [x1, 8]	;# tmp212, MEM[(struct not_short_vector_12_bytes *)_99]
	str	x2, [x0]	;# tmp211, D.7274
	str	w1, [x0, 8]	;# tmp212, D.7274
;# varargs-dll.c:811:   int l = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 216]	;# tmp213, D.7274.c
	str	w0, [sp, 320]	;# tmp213, l
;# varargs-dll.c:812:   int m = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp, 24]	;# D.8990, argv
	add	x0, x1, 16	;# D.8991, D.8990,
	str	x0, [sp, 24]	;# D.8991, argv
	add	x0, sp, 224	;# tmp214,,
	ldr	x2, [x1]	;# tmp216, MEM[(struct not_short_vector_12_bytes *)_103]
	ldr	w1, [x1, 8]	;# tmp217, MEM[(struct not_short_vector_12_bytes *)_103]
	str	x2, [x0]	;# tmp216, D.7275
	str	w1, [x0, 8]	;# tmp217, D.7275
;# varargs-dll.c:812:   int m = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 224]	;# tmp218, D.7275.a
	str	w0, [sp, 316]	;# tmp218, m
;# varargs-dll.c:813:   int n = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp, 24]	;# D.8992, argv
	add	x0, x1, 16	;# D.8993, D.8992,
	str	x0, [sp, 24]	;# D.8993, argv
	add	x0, sp, 240	;# tmp219,,
	ldr	x2, [x1]	;# tmp221, MEM[(struct not_short_vector_12_bytes *)_107]
	ldr	w1, [x1, 8]	;# tmp222, MEM[(struct not_short_vector_12_bytes *)_107]
	str	x2, [x0]	;# tmp221, D.7276
	str	w1, [x0, 8]	;# tmp222, D.7276
;# varargs-dll.c:813:   int n = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 244]	;# tmp223, D.7276.b
	str	w0, [sp, 312]	;# tmp223, n
;# varargs-dll.c:814:   int o = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp, 24]	;# D.8994, argv
	add	x0, x1, 16	;# D.8995, D.8994,
	str	x0, [sp, 24]	;# D.8995, argv
	add	x0, sp, 256	;# tmp224,,
	ldr	x2, [x1]	;# tmp226, MEM[(struct not_short_vector_12_bytes *)_111]
	ldr	w1, [x1, 8]	;# tmp227, MEM[(struct not_short_vector_12_bytes *)_111]
	str	x2, [x0]	;# tmp226, D.7277
	str	w1, [x0, 8]	;# tmp227, D.7277
;# varargs-dll.c:814:   int o = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 264]	;# tmp228, D.7277.c
	str	w0, [sp, 308]	;# tmp228, o
;# varargs-dll.c:815:   int p = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp, 24]	;# D.8996, argv
	add	x0, x1, 16	;# D.8997, D.8996,
	str	x0, [sp, 24]	;# D.8997, argv
	add	x0, sp, 272	;# tmp229,,
	ldr	x2, [x1]	;# tmp231, MEM[(struct not_short_vector_12_bytes *)_115]
	ldr	w1, [x1, 8]	;# tmp232, MEM[(struct not_short_vector_12_bytes *)_115]
	str	x2, [x0]	;# tmp231, D.7278
	str	w1, [x0, 8]	;# tmp232, D.7278
;# varargs-dll.c:815:   int p = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 272]	;# tmp233, D.7278.a
	str	w0, [sp, 304]	;# tmp233, p
;# varargs-dll.c:816:   int q = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp, 24]	;# D.8998, argv
	add	x0, x1, 16	;# D.8999, D.8998,
	str	x0, [sp, 24]	;# D.8999, argv
	add	x0, sp, 288	;# tmp234,,
	ldr	x2, [x1]	;# tmp236, MEM[(struct not_short_vector_12_bytes *)_119]
	ldr	w1, [x1, 8]	;# tmp237, MEM[(struct not_short_vector_12_bytes *)_119]
	str	x2, [x0]	;# tmp236, D.7279
	str	w1, [x0, 8]	;# tmp237, D.7279
;# varargs-dll.c:816:   int q = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 292]	;# tmp238, D.7279.b
	str	w0, [sp, 300]	;# tmp238, q
;# varargs-dll.c:818:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 364]	;# tmp239, a
	ldr	w0, [sp, 360]	;# tmp240, b
	add	w1, w1, w0	;# _1, tmp239, tmp240
;# varargs-dll.c:818:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 356]	;# tmp241, c
	add	w1, w1, w0	;# _2, _1, tmp241
;# varargs-dll.c:818:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 352]	;# tmp242, d
	add	w1, w1, w0	;# _3, _2, tmp242
;# varargs-dll.c:818:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 348]	;# tmp243, e
	add	w1, w1, w0	;# _4, _3, tmp243
;# varargs-dll.c:818:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 344]	;# tmp244, f
	add	w1, w1, w0	;# _5, _4, tmp244
;# varargs-dll.c:818:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 340]	;# tmp245, g
	add	w1, w1, w0	;# _6, _5, tmp245
;# varargs-dll.c:818:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 336]	;# tmp246, h
	add	w1, w1, w0	;# _7, _6, tmp246
;# varargs-dll.c:818:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 332]	;# tmp247, i
	add	w1, w1, w0	;# _8, _7, tmp247
;# varargs-dll.c:818:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 328]	;# tmp248, j
	add	w1, w1, w0	;# _9, _8, tmp248
;# varargs-dll.c:818:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 324]	;# tmp249, k
	add	w1, w1, w0	;# _10, _9, tmp249
;# varargs-dll.c:818:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 320]	;# tmp250, l
	add	w1, w1, w0	;# _11, _10, tmp250
;# varargs-dll.c:818:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 316]	;# tmp251, m
	add	w1, w1, w0	;# _12, _11, tmp251
;# varargs-dll.c:818:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 312]	;# tmp252, n
	add	w1, w1, w0	;# _13, _12, tmp252
;# varargs-dll.c:818:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 308]	;# tmp253, o
	add	w1, w1, w0	;# _14, _13, tmp253
;# varargs-dll.c:818:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 304]	;# tmp254, p
	add	w1, w1, w0	;# _15, _14, tmp254
;# varargs-dll.c:818:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 300]	;# tmp255, q
	add	w0, w1, w0	;# _53, _15, tmp255
;# varargs-dll.c:819: }
	add	sp, sp, 432	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_not_short_vector_12_bytes
	.def	use_va_list_many_not_short_vector_12_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_not_short_vector_12_bytes
use_va_list_many_not_short_vector_12_bytes:
	sub	sp, sp, #352	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:824:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp]	;# D.9000, argv
	add	x0, x1, 16	;# D.9001, D.9000,
	str	x0, [sp]	;# D.9001, argv
	add	x0, sp, 16	;# tmp152,,
	ldr	x2, [x1]	;# tmp154, MEM[(struct not_short_vector_12_bytes *)_52]
	ldr	w1, [x1, 8]	;# tmp155, MEM[(struct not_short_vector_12_bytes *)_52]
	str	x2, [x0]	;# tmp154, D.7283
	str	w1, [x0, 8]	;# tmp155, D.7283
;# varargs-dll.c:824:   int a = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 16]	;# tmp156, D.7283.a
	str	w0, [sp, 348]	;# tmp156, a
;# varargs-dll.c:825:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp]	;# D.9002, argv
	add	x0, x1, 16	;# D.9003, D.9002,
	str	x0, [sp]	;# D.9003, argv
	add	x0, sp, 32	;# tmp157,,
	ldr	x2, [x1]	;# tmp159, MEM[(struct not_short_vector_12_bytes *)_56]
	ldr	w1, [x1, 8]	;# tmp160, MEM[(struct not_short_vector_12_bytes *)_56]
	str	x2, [x0]	;# tmp159, D.7284
	str	w1, [x0, 8]	;# tmp160, D.7284
;# varargs-dll.c:825:   int b = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 36]	;# tmp161, D.7284.b
	str	w0, [sp, 344]	;# tmp161, b
;# varargs-dll.c:826:   int c = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp]	;# D.9004, argv
	add	x0, x1, 16	;# D.9005, D.9004,
	str	x0, [sp]	;# D.9005, argv
	add	x0, sp, 48	;# tmp162,,
	ldr	x2, [x1]	;# tmp164, MEM[(struct not_short_vector_12_bytes *)_60]
	ldr	w1, [x1, 8]	;# tmp165, MEM[(struct not_short_vector_12_bytes *)_60]
	str	x2, [x0]	;# tmp164, D.7285
	str	w1, [x0, 8]	;# tmp165, D.7285
;# varargs-dll.c:826:   int c = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 56]	;# tmp166, D.7285.c
	str	w0, [sp, 340]	;# tmp166, c
;# varargs-dll.c:827:   int d = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp]	;# D.9006, argv
	add	x0, x1, 16	;# D.9007, D.9006,
	str	x0, [sp]	;# D.9007, argv
	add	x0, sp, 64	;# tmp167,,
	ldr	x2, [x1]	;# tmp169, MEM[(struct not_short_vector_12_bytes *)_64]
	ldr	w1, [x1, 8]	;# tmp170, MEM[(struct not_short_vector_12_bytes *)_64]
	str	x2, [x0]	;# tmp169, D.7286
	str	w1, [x0, 8]	;# tmp170, D.7286
;# varargs-dll.c:827:   int d = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 64]	;# tmp171, D.7286.a
	str	w0, [sp, 336]	;# tmp171, d
;# varargs-dll.c:828:   int e = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp]	;# D.9008, argv
	add	x0, x1, 16	;# D.9009, D.9008,
	str	x0, [sp]	;# D.9009, argv
	add	x0, sp, 80	;# tmp172,,
	ldr	x2, [x1]	;# tmp174, MEM[(struct not_short_vector_12_bytes *)_68]
	ldr	w1, [x1, 8]	;# tmp175, MEM[(struct not_short_vector_12_bytes *)_68]
	str	x2, [x0]	;# tmp174, D.7287
	str	w1, [x0, 8]	;# tmp175, D.7287
;# varargs-dll.c:828:   int e = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 84]	;# tmp176, D.7287.b
	str	w0, [sp, 332]	;# tmp176, e
;# varargs-dll.c:829:   int f = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp]	;# D.9010, argv
	add	x0, x1, 16	;# D.9011, D.9010,
	str	x0, [sp]	;# D.9011, argv
	add	x0, sp, 96	;# tmp177,,
	ldr	x2, [x1]	;# tmp179, MEM[(struct not_short_vector_12_bytes *)_72]
	ldr	w1, [x1, 8]	;# tmp180, MEM[(struct not_short_vector_12_bytes *)_72]
	str	x2, [x0]	;# tmp179, D.7288
	str	w1, [x0, 8]	;# tmp180, D.7288
;# varargs-dll.c:829:   int f = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 104]	;# tmp181, D.7288.c
	str	w0, [sp, 328]	;# tmp181, f
;# varargs-dll.c:830:   int g = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp]	;# D.9012, argv
	add	x0, x1, 16	;# D.9013, D.9012,
	str	x0, [sp]	;# D.9013, argv
	add	x0, sp, 112	;# tmp182,,
	ldr	x2, [x1]	;# tmp184, MEM[(struct not_short_vector_12_bytes *)_76]
	ldr	w1, [x1, 8]	;# tmp185, MEM[(struct not_short_vector_12_bytes *)_76]
	str	x2, [x0]	;# tmp184, D.7289
	str	w1, [x0, 8]	;# tmp185, D.7289
;# varargs-dll.c:830:   int g = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 112]	;# tmp186, D.7289.a
	str	w0, [sp, 324]	;# tmp186, g
;# varargs-dll.c:831:   int h = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp]	;# D.9014, argv
	add	x0, x1, 16	;# D.9015, D.9014,
	str	x0, [sp]	;# D.9015, argv
	add	x0, sp, 128	;# tmp187,,
	ldr	x2, [x1]	;# tmp189, MEM[(struct not_short_vector_12_bytes *)_80]
	ldr	w1, [x1, 8]	;# tmp190, MEM[(struct not_short_vector_12_bytes *)_80]
	str	x2, [x0]	;# tmp189, D.7290
	str	w1, [x0, 8]	;# tmp190, D.7290
;# varargs-dll.c:831:   int h = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 132]	;# tmp191, D.7290.b
	str	w0, [sp, 320]	;# tmp191, h
;# varargs-dll.c:832:   int i = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp]	;# D.9016, argv
	add	x0, x1, 16	;# D.9017, D.9016,
	str	x0, [sp]	;# D.9017, argv
	add	x0, sp, 144	;# tmp192,,
	ldr	x2, [x1]	;# tmp194, MEM[(struct not_short_vector_12_bytes *)_84]
	ldr	w1, [x1, 8]	;# tmp195, MEM[(struct not_short_vector_12_bytes *)_84]
	str	x2, [x0]	;# tmp194, D.7291
	str	w1, [x0, 8]	;# tmp195, D.7291
;# varargs-dll.c:832:   int i = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 152]	;# tmp196, D.7291.c
	str	w0, [sp, 316]	;# tmp196, i
;# varargs-dll.c:833:   int j = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp]	;# D.9018, argv
	add	x0, x1, 16	;# D.9019, D.9018,
	str	x0, [sp]	;# D.9019, argv
	add	x0, sp, 160	;# tmp197,,
	ldr	x2, [x1]	;# tmp199, MEM[(struct not_short_vector_12_bytes *)_88]
	ldr	w1, [x1, 8]	;# tmp200, MEM[(struct not_short_vector_12_bytes *)_88]
	str	x2, [x0]	;# tmp199, D.7292
	str	w1, [x0, 8]	;# tmp200, D.7292
;# varargs-dll.c:833:   int j = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 160]	;# tmp201, D.7292.a
	str	w0, [sp, 312]	;# tmp201, j
;# varargs-dll.c:834:   int k = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp]	;# D.9020, argv
	add	x0, x1, 16	;# D.9021, D.9020,
	str	x0, [sp]	;# D.9021, argv
	add	x0, sp, 176	;# tmp202,,
	ldr	x2, [x1]	;# tmp204, MEM[(struct not_short_vector_12_bytes *)_92]
	ldr	w1, [x1, 8]	;# tmp205, MEM[(struct not_short_vector_12_bytes *)_92]
	str	x2, [x0]	;# tmp204, D.7293
	str	w1, [x0, 8]	;# tmp205, D.7293
;# varargs-dll.c:834:   int k = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 180]	;# tmp206, D.7293.b
	str	w0, [sp, 308]	;# tmp206, k
;# varargs-dll.c:835:   int l = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp]	;# D.9022, argv
	add	x0, x1, 16	;# D.9023, D.9022,
	str	x0, [sp]	;# D.9023, argv
	add	x0, sp, 192	;# tmp207,,
	ldr	x2, [x1]	;# tmp209, MEM[(struct not_short_vector_12_bytes *)_96]
	ldr	w1, [x1, 8]	;# tmp210, MEM[(struct not_short_vector_12_bytes *)_96]
	str	x2, [x0]	;# tmp209, D.7294
	str	w1, [x0, 8]	;# tmp210, D.7294
;# varargs-dll.c:835:   int l = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 200]	;# tmp211, D.7294.c
	str	w0, [sp, 304]	;# tmp211, l
;# varargs-dll.c:836:   int m = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp]	;# D.9024, argv
	add	x0, x1, 16	;# D.9025, D.9024,
	str	x0, [sp]	;# D.9025, argv
	add	x0, sp, 208	;# tmp212,,
	ldr	x2, [x1]	;# tmp214, MEM[(struct not_short_vector_12_bytes *)_100]
	ldr	w1, [x1, 8]	;# tmp215, MEM[(struct not_short_vector_12_bytes *)_100]
	str	x2, [x0]	;# tmp214, D.7295
	str	w1, [x0, 8]	;# tmp215, D.7295
;# varargs-dll.c:836:   int m = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 208]	;# tmp216, D.7295.a
	str	w0, [sp, 300]	;# tmp216, m
;# varargs-dll.c:837:   int n = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp]	;# D.9026, argv
	add	x0, x1, 16	;# D.9027, D.9026,
	str	x0, [sp]	;# D.9027, argv
	add	x0, sp, 224	;# tmp217,,
	ldr	x2, [x1]	;# tmp219, MEM[(struct not_short_vector_12_bytes *)_104]
	ldr	w1, [x1, 8]	;# tmp220, MEM[(struct not_short_vector_12_bytes *)_104]
	str	x2, [x0]	;# tmp219, D.7296
	str	w1, [x0, 8]	;# tmp220, D.7296
;# varargs-dll.c:837:   int n = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 228]	;# tmp221, D.7296.b
	str	w0, [sp, 296]	;# tmp221, n
;# varargs-dll.c:838:   int o = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	x1, [sp]	;# D.9028, argv
	add	x0, x1, 16	;# D.9029, D.9028,
	str	x0, [sp]	;# D.9029, argv
	add	x0, sp, 240	;# tmp222,,
	ldr	x2, [x1]	;# tmp224, MEM[(struct not_short_vector_12_bytes *)_108]
	ldr	w1, [x1, 8]	;# tmp225, MEM[(struct not_short_vector_12_bytes *)_108]
	str	x2, [x0]	;# tmp224, D.7297
	str	w1, [x0, 8]	;# tmp225, D.7297
;# varargs-dll.c:838:   int o = va_arg (argv, struct not_short_vector_12_bytes).c;
	ldr	w0, [sp, 248]	;# tmp226, D.7297.c
	str	w0, [sp, 292]	;# tmp226, o
;# varargs-dll.c:839:   int p = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	x1, [sp]	;# D.9030, argv
	add	x0, x1, 16	;# D.9031, D.9030,
	str	x0, [sp]	;# D.9031, argv
	add	x0, sp, 256	;# tmp227,,
	ldr	x2, [x1]	;# tmp229, MEM[(struct not_short_vector_12_bytes *)_112]
	ldr	w1, [x1, 8]	;# tmp230, MEM[(struct not_short_vector_12_bytes *)_112]
	str	x2, [x0]	;# tmp229, D.7298
	str	w1, [x0, 8]	;# tmp230, D.7298
;# varargs-dll.c:839:   int p = va_arg (argv, struct not_short_vector_12_bytes).a;
	ldr	w0, [sp, 256]	;# tmp231, D.7298.a
	str	w0, [sp, 288]	;# tmp231, p
;# varargs-dll.c:840:   int q = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	x1, [sp]	;# D.9032, argv
	add	x0, x1, 16	;# D.9033, D.9032,
	str	x0, [sp]	;# D.9033, argv
	add	x0, sp, 272	;# tmp232,,
	ldr	x2, [x1]	;# tmp234, MEM[(struct not_short_vector_12_bytes *)_116]
	ldr	w1, [x1, 8]	;# tmp235, MEM[(struct not_short_vector_12_bytes *)_116]
	str	x2, [x0]	;# tmp234, D.7299
	str	w1, [x0, 8]	;# tmp235, D.7299
;# varargs-dll.c:840:   int q = va_arg (argv, struct not_short_vector_12_bytes).b;
	ldr	w0, [sp, 276]	;# tmp236, D.7299.b
	str	w0, [sp, 284]	;# tmp236, q
;# varargs-dll.c:841:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 348]	;# tmp237, a
	ldr	w0, [sp, 344]	;# tmp238, b
	add	w1, w1, w0	;# _1, tmp237, tmp238
;# varargs-dll.c:841:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 340]	;# tmp239, c
	add	w1, w1, w0	;# _2, _1, tmp239
;# varargs-dll.c:841:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 336]	;# tmp240, d
	add	w1, w1, w0	;# _3, _2, tmp240
;# varargs-dll.c:841:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 332]	;# tmp241, e
	add	w1, w1, w0	;# _4, _3, tmp241
;# varargs-dll.c:841:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 328]	;# tmp242, f
	add	w1, w1, w0	;# _5, _4, tmp242
;# varargs-dll.c:841:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 324]	;# tmp243, g
	add	w1, w1, w0	;# _6, _5, tmp243
;# varargs-dll.c:841:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 320]	;# tmp244, h
	add	w1, w1, w0	;# _7, _6, tmp244
;# varargs-dll.c:841:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 316]	;# tmp245, i
	add	w1, w1, w0	;# _8, _7, tmp245
;# varargs-dll.c:841:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 312]	;# tmp246, j
	add	w1, w1, w0	;# _9, _8, tmp246
;# varargs-dll.c:841:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 308]	;# tmp247, k
	add	w1, w1, w0	;# _10, _9, tmp247
;# varargs-dll.c:841:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 304]	;# tmp248, l
	add	w1, w1, w0	;# _11, _10, tmp248
;# varargs-dll.c:841:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 300]	;# tmp249, m
	add	w1, w1, w0	;# _12, _11, tmp249
;# varargs-dll.c:841:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 296]	;# tmp250, n
	add	w1, w1, w0	;# _13, _12, tmp250
;# varargs-dll.c:841:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 292]	;# tmp251, o
	add	w1, w1, w0	;# _14, _13, tmp251
;# varargs-dll.c:841:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 288]	;# tmp252, p
	add	w1, w1, w0	;# _15, _14, tmp252
;# varargs-dll.c:841:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 284]	;# tmp253, q
	add	w0, w1, w0	;# _51, _15, tmp253
;# varargs-dll.c:842: }
	add	sp, sp, 352	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_short_vector_16_bytes
	.def	use_va_args_few_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_short_vector_16_bytes
use_va_args_few_short_vector_16_bytes:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 40]	;#,
	str	x2, [sp, 48]	;#,
	str	x3, [sp, 56]	;#,
	str	x4, [sp, 64]	;#,
	str	x5, [sp, 72]	;#,
	str	x6, [sp, 80]	;#,
	str	x7, [sp, 88]	;#,
;# varargs-dll.c:848:   va_start (argv, format);
	add	x0, sp, 96	;# tmp109,,
	sub	x0, x0, #56	;# tmp110, tmp109,
	str	x0, [sp, 16]	;# tmp110, MEM[(char * *)&argv]
;# varargs-dll.c:849:   int a = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp, 16]	;# D.9034, argv
	add	x1, x0, 16	;# D.9035, D.9034,
	str	x1, [sp, 16]	;# D.9035, argv
	ldp	x0, x1, [x0]	;# D.7302, MEM[(struct short_vector_16_bytes *)_10]
;# varargs-dll.c:849:   int a = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 28]	;# tmp111, a
;# varargs-dll.c:850:   int b = va_arg (argv, struct short_vector_16_bytes).b;
	ldr	x0, [sp, 16]	;# D.9036, argv
	add	x1, x0, 16	;# D.9037, D.9036,
	str	x1, [sp, 16]	;# D.9037, argv
	ldp	x0, x1, [x0]	;# D.7303, MEM[(struct short_vector_16_bytes *)_14]
;# varargs-dll.c:850:   int b = va_arg (argv, struct short_vector_16_bytes).b;
	asr	x0, x0, 32	;# tmp114, tmp113,
	str	w0, [sp, 24]	;# tmp115, b
;# varargs-dll.c:852:   return a + b;
	ldr	w1, [sp, 28]	;# tmp116, a
	ldr	w0, [sp, 24]	;# tmp117, b
	add	w0, w1, w0	;# _8, tmp116, tmp117
;# varargs-dll.c:853: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_short_vector_16_bytes
	.def	use_va_list_few_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_short_vector_16_bytes
use_va_list_few_short_vector_16_bytes:
	sub	sp, sp, #32	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:858:   int a = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp]	;# D.9038, argv
	add	x1, x0, 16	;# D.9039, D.9038,
	str	x1, [sp]	;# D.9039, argv
	ldp	x0, x1, [x0]	;# D.7307, MEM[(struct short_vector_16_bytes *)_7]
;# varargs-dll.c:858:   int a = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 28]	;# tmp109, a
;# varargs-dll.c:859:   int b = va_arg (argv, struct short_vector_16_bytes).b;
	ldr	x0, [sp]	;# D.9040, argv
	add	x1, x0, 16	;# D.9041, D.9040,
	str	x1, [sp]	;# D.9041, argv
	ldp	x0, x1, [x0]	;# D.7308, MEM[(struct short_vector_16_bytes *)_11]
;# varargs-dll.c:859:   int b = va_arg (argv, struct short_vector_16_bytes).b;
	asr	x0, x0, 32	;# tmp112, tmp111,
	str	w0, [sp, 24]	;# tmp113, b
;# varargs-dll.c:860:   return a + b;
	ldr	w1, [sp, 28]	;# tmp114, a
	ldr	w0, [sp, 24]	;# tmp115, b
	add	w0, w1, w0	;# _6, tmp114, tmp115
;# varargs-dll.c:861: }
	add	sp, sp, 32	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_short_vector_16_bytes
	.def	use_va_args_several_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_short_vector_16_bytes
use_va_args_several_short_vector_16_bytes:
	sub	sp, sp, #128	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 72]	;#,
	str	x2, [sp, 80]	;#,
	str	x3, [sp, 88]	;#,
	str	x4, [sp, 96]	;#,
	str	x5, [sp, 104]	;#,
	str	x6, [sp, 112]	;#,
	str	x7, [sp, 120]	;#,
;# varargs-dll.c:867:   va_start (argv, format);
	add	x0, sp, 128	;# tmp137,,
	sub	x0, x0, #56	;# tmp138, tmp137,
	str	x0, [sp, 16]	;# tmp138, MEM[(char * *)&argv]
;# varargs-dll.c:868:   int a = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp, 16]	;# D.9042, argv
	add	x1, x0, 16	;# D.9043, D.9042,
	str	x1, [sp, 16]	;# D.9043, argv
	ldp	x0, x1, [x0]	;# D.7311, MEM[(struct short_vector_16_bytes *)_31]
;# varargs-dll.c:868:   int a = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 60]	;# tmp139, a
;# varargs-dll.c:869:   int b = va_arg (argv, struct short_vector_16_bytes).b;
	ldr	x0, [sp, 16]	;# D.9044, argv
	add	x1, x0, 16	;# D.9045, D.9044,
	str	x1, [sp, 16]	;# D.9045, argv
	ldp	x0, x1, [x0]	;# D.7312, MEM[(struct short_vector_16_bytes *)_35]
;# varargs-dll.c:869:   int b = va_arg (argv, struct short_vector_16_bytes).b;
	asr	x0, x0, 32	;# tmp142, tmp141,
	str	w0, [sp, 56]	;# tmp143, b
;# varargs-dll.c:870:   int c = va_arg (argv, struct short_vector_16_bytes).c;
	ldr	x0, [sp, 16]	;# D.9046, argv
	add	x1, x0, 16	;# D.9047, D.9046,
	str	x1, [sp, 16]	;# D.9047, argv
	ldp	x0, x1, [x0]	;# D.7313, MEM[(struct short_vector_16_bytes *)_39]
;# varargs-dll.c:870:   int c = va_arg (argv, struct short_vector_16_bytes).c;
	mov	w0, w1	;# tmp144, D.7313
	str	w0, [sp, 52]	;# tmp144, c
;# varargs-dll.c:871:   int d = va_arg (argv, struct short_vector_16_bytes).d;
	ldr	x0, [sp, 16]	;# D.9048, argv
	add	x1, x0, 16	;# D.9049, D.9048,
	str	x1, [sp, 16]	;# D.9049, argv
	ldp	x0, x1, [x0]	;# D.7314, MEM[(struct short_vector_16_bytes *)_43]
;# varargs-dll.c:871:   int d = va_arg (argv, struct short_vector_16_bytes).d;
	mov	x0, x1	;# tmp146, D.7314
	asr	x0, x0, 32	;# tmp147, tmp146,
	str	w0, [sp, 48]	;# tmp148, d
;# varargs-dll.c:872:   int e = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp, 16]	;# D.9050, argv
	add	x1, x0, 16	;# D.9051, D.9050,
	str	x1, [sp, 16]	;# D.9051, argv
	ldp	x0, x1, [x0]	;# D.7315, MEM[(struct short_vector_16_bytes *)_47]
;# varargs-dll.c:872:   int e = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 44]	;# tmp149, e
;# varargs-dll.c:873:   int f = va_arg (argv, struct short_vector_16_bytes).b;
	ldr	x0, [sp, 16]	;# D.9052, argv
	add	x1, x0, 16	;# D.9053, D.9052,
	str	x1, [sp, 16]	;# D.9053, argv
	ldp	x0, x1, [x0]	;# D.7316, MEM[(struct short_vector_16_bytes *)_51]
;# varargs-dll.c:873:   int f = va_arg (argv, struct short_vector_16_bytes).b;
	asr	x0, x0, 32	;# tmp152, tmp151,
	str	w0, [sp, 40]	;# tmp153, f
;# varargs-dll.c:874:   int g = va_arg (argv, struct short_vector_16_bytes).c;
	ldr	x0, [sp, 16]	;# D.9054, argv
	add	x1, x0, 16	;# D.9055, D.9054,
	str	x1, [sp, 16]	;# D.9055, argv
	ldp	x0, x1, [x0]	;# D.7317, MEM[(struct short_vector_16_bytes *)_55]
;# varargs-dll.c:874:   int g = va_arg (argv, struct short_vector_16_bytes).c;
	mov	w0, w1	;# tmp154, D.7317
	str	w0, [sp, 36]	;# tmp154, g
;# varargs-dll.c:875:   int h = va_arg (argv, struct short_vector_16_bytes).d;
	ldr	x0, [sp, 16]	;# D.9056, argv
	add	x1, x0, 16	;# D.9057, D.9056,
	str	x1, [sp, 16]	;# D.9057, argv
	ldp	x0, x1, [x0]	;# D.7318, MEM[(struct short_vector_16_bytes *)_59]
;# varargs-dll.c:875:   int h = va_arg (argv, struct short_vector_16_bytes).d;
	mov	x0, x1	;# tmp156, D.7318
	asr	x0, x0, 32	;# tmp157, tmp156,
	str	w0, [sp, 32]	;# tmp158, h
;# varargs-dll.c:876:   int i = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp, 16]	;# D.9058, argv
	add	x1, x0, 16	;# D.9059, D.9058,
	str	x1, [sp, 16]	;# D.9059, argv
	ldp	x0, x1, [x0]	;# D.7319, MEM[(struct short_vector_16_bytes *)_63]
;# varargs-dll.c:876:   int i = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 28]	;# tmp159, i
;# varargs-dll.c:878:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 60]	;# tmp160, a
	ldr	w0, [sp, 56]	;# tmp161, b
	add	w1, w1, w0	;# _1, tmp160, tmp161
;# varargs-dll.c:878:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 52]	;# tmp162, c
	add	w1, w1, w0	;# _2, _1, tmp162
;# varargs-dll.c:878:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 48]	;# tmp163, d
	add	w1, w1, w0	;# _3, _2, tmp163
;# varargs-dll.c:878:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 44]	;# tmp164, e
	add	w1, w1, w0	;# _4, _3, tmp164
;# varargs-dll.c:878:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 40]	;# tmp165, f
	add	w1, w1, w0	;# _5, _4, tmp165
;# varargs-dll.c:878:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 36]	;# tmp166, g
	add	w1, w1, w0	;# _6, _5, tmp166
;# varargs-dll.c:878:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 32]	;# tmp167, h
	add	w1, w1, w0	;# _7, _6, tmp167
;# varargs-dll.c:878:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 28]	;# tmp168, i
	add	w0, w1, w0	;# _29, _7, tmp168
;# varargs-dll.c:879: }
	add	sp, sp, 128	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_short_vector_16_bytes
	.def	use_va_list_several_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_short_vector_16_bytes
use_va_list_several_short_vector_16_bytes:
	sub	sp, sp, #64	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:884:   int a = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp]	;# D.9060, argv
	add	x1, x0, 16	;# D.9061, D.9060,
	str	x1, [sp]	;# D.9061, argv
	ldp	x0, x1, [x0]	;# D.7323, MEM[(struct short_vector_16_bytes *)_28]
;# varargs-dll.c:884:   int a = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 60]	;# tmp137, a
;# varargs-dll.c:885:   int b = va_arg (argv, struct short_vector_16_bytes).b;
	ldr	x0, [sp]	;# D.9062, argv
	add	x1, x0, 16	;# D.9063, D.9062,
	str	x1, [sp]	;# D.9063, argv
	ldp	x0, x1, [x0]	;# D.7324, MEM[(struct short_vector_16_bytes *)_32]
;# varargs-dll.c:885:   int b = va_arg (argv, struct short_vector_16_bytes).b;
	asr	x0, x0, 32	;# tmp140, tmp139,
	str	w0, [sp, 56]	;# tmp141, b
;# varargs-dll.c:886:   int c = va_arg (argv, struct short_vector_16_bytes).c;
	ldr	x0, [sp]	;# D.9064, argv
	add	x1, x0, 16	;# D.9065, D.9064,
	str	x1, [sp]	;# D.9065, argv
	ldp	x0, x1, [x0]	;# D.7325, MEM[(struct short_vector_16_bytes *)_36]
;# varargs-dll.c:886:   int c = va_arg (argv, struct short_vector_16_bytes).c;
	mov	w0, w1	;# tmp142, D.7325
	str	w0, [sp, 52]	;# tmp142, c
;# varargs-dll.c:887:   int d = va_arg (argv, struct short_vector_16_bytes).d;
	ldr	x0, [sp]	;# D.9066, argv
	add	x1, x0, 16	;# D.9067, D.9066,
	str	x1, [sp]	;# D.9067, argv
	ldp	x0, x1, [x0]	;# D.7326, MEM[(struct short_vector_16_bytes *)_40]
;# varargs-dll.c:887:   int d = va_arg (argv, struct short_vector_16_bytes).d;
	mov	x0, x1	;# tmp144, D.7326
	asr	x0, x0, 32	;# tmp145, tmp144,
	str	w0, [sp, 48]	;# tmp146, d
;# varargs-dll.c:888:   int e = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp]	;# D.9068, argv
	add	x1, x0, 16	;# D.9069, D.9068,
	str	x1, [sp]	;# D.9069, argv
	ldp	x0, x1, [x0]	;# D.7327, MEM[(struct short_vector_16_bytes *)_44]
;# varargs-dll.c:888:   int e = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 44]	;# tmp147, e
;# varargs-dll.c:889:   int f = va_arg (argv, struct short_vector_16_bytes).b;
	ldr	x0, [sp]	;# D.9070, argv
	add	x1, x0, 16	;# D.9071, D.9070,
	str	x1, [sp]	;# D.9071, argv
	ldp	x0, x1, [x0]	;# D.7328, MEM[(struct short_vector_16_bytes *)_48]
;# varargs-dll.c:889:   int f = va_arg (argv, struct short_vector_16_bytes).b;
	asr	x0, x0, 32	;# tmp150, tmp149,
	str	w0, [sp, 40]	;# tmp151, f
;# varargs-dll.c:890:   int g = va_arg (argv, struct short_vector_16_bytes).c;
	ldr	x0, [sp]	;# D.9072, argv
	add	x1, x0, 16	;# D.9073, D.9072,
	str	x1, [sp]	;# D.9073, argv
	ldp	x0, x1, [x0]	;# D.7329, MEM[(struct short_vector_16_bytes *)_52]
;# varargs-dll.c:890:   int g = va_arg (argv, struct short_vector_16_bytes).c;
	mov	w0, w1	;# tmp152, D.7329
	str	w0, [sp, 36]	;# tmp152, g
;# varargs-dll.c:891:   int h = va_arg (argv, struct short_vector_16_bytes).d;
	ldr	x0, [sp]	;# D.9074, argv
	add	x1, x0, 16	;# D.9075, D.9074,
	str	x1, [sp]	;# D.9075, argv
	ldp	x0, x1, [x0]	;# D.7330, MEM[(struct short_vector_16_bytes *)_56]
;# varargs-dll.c:891:   int h = va_arg (argv, struct short_vector_16_bytes).d;
	mov	x0, x1	;# tmp154, D.7330
	asr	x0, x0, 32	;# tmp155, tmp154,
	str	w0, [sp, 32]	;# tmp156, h
;# varargs-dll.c:892:   int i = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp]	;# D.9076, argv
	add	x1, x0, 16	;# D.9077, D.9076,
	str	x1, [sp]	;# D.9077, argv
	ldp	x0, x1, [x0]	;# D.7331, MEM[(struct short_vector_16_bytes *)_60]
;# varargs-dll.c:892:   int i = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 28]	;# tmp157, i
;# varargs-dll.c:893:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 60]	;# tmp158, a
	ldr	w0, [sp, 56]	;# tmp159, b
	add	w1, w1, w0	;# _1, tmp158, tmp159
;# varargs-dll.c:893:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 52]	;# tmp160, c
	add	w1, w1, w0	;# _2, _1, tmp160
;# varargs-dll.c:893:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 48]	;# tmp161, d
	add	w1, w1, w0	;# _3, _2, tmp161
;# varargs-dll.c:893:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 44]	;# tmp162, e
	add	w1, w1, w0	;# _4, _3, tmp162
;# varargs-dll.c:893:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 40]	;# tmp163, f
	add	w1, w1, w0	;# _5, _4, tmp163
;# varargs-dll.c:893:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 36]	;# tmp164, g
	add	w1, w1, w0	;# _6, _5, tmp164
;# varargs-dll.c:893:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 32]	;# tmp165, h
	add	w1, w1, w0	;# _7, _6, tmp165
;# varargs-dll.c:893:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 28]	;# tmp166, i
	add	w0, w1, w0	;# _27, _7, tmp166
;# varargs-dll.c:894: }
	add	sp, sp, 64	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_short_vector_16_bytes
	.def	use_va_args_many_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_short_vector_16_bytes
use_va_args_many_short_vector_16_bytes:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 104]	;#,
	str	x2, [sp, 112]	;#,
	str	x3, [sp, 120]	;#,
	str	x4, [sp, 128]	;#,
	str	x5, [sp, 136]	;#,
	str	x6, [sp, 144]	;#,
	str	x7, [sp, 152]	;#,
;# varargs-dll.c:900:   va_start (argv, format);
	add	x0, sp, 160	;# tmp169,,
	sub	x0, x0, #56	;# tmp170, tmp169,
	str	x0, [sp, 16]	;# tmp170, MEM[(char * *)&argv]
;# varargs-dll.c:901:   int a = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp, 16]	;# D.9078, argv
	add	x1, x0, 16	;# D.9079, D.9078,
	str	x1, [sp, 16]	;# D.9079, argv
	ldp	x0, x1, [x0]	;# D.7334, MEM[(struct short_vector_16_bytes *)_55]
;# varargs-dll.c:901:   int a = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 92]	;# tmp171, a
;# varargs-dll.c:902:   int b = va_arg (argv, struct short_vector_16_bytes).b;
	ldr	x0, [sp, 16]	;# D.9080, argv
	add	x1, x0, 16	;# D.9081, D.9080,
	str	x1, [sp, 16]	;# D.9081, argv
	ldp	x0, x1, [x0]	;# D.7335, MEM[(struct short_vector_16_bytes *)_59]
;# varargs-dll.c:902:   int b = va_arg (argv, struct short_vector_16_bytes).b;
	asr	x0, x0, 32	;# tmp174, tmp173,
	str	w0, [sp, 88]	;# tmp175, b
;# varargs-dll.c:903:   int c = va_arg (argv, struct short_vector_16_bytes).c;
	ldr	x0, [sp, 16]	;# D.9082, argv
	add	x1, x0, 16	;# D.9083, D.9082,
	str	x1, [sp, 16]	;# D.9083, argv
	ldp	x0, x1, [x0]	;# D.7336, MEM[(struct short_vector_16_bytes *)_63]
;# varargs-dll.c:903:   int c = va_arg (argv, struct short_vector_16_bytes).c;
	mov	w0, w1	;# tmp176, D.7336
	str	w0, [sp, 84]	;# tmp176, c
;# varargs-dll.c:904:   int d = va_arg (argv, struct short_vector_16_bytes).d;
	ldr	x0, [sp, 16]	;# D.9084, argv
	add	x1, x0, 16	;# D.9085, D.9084,
	str	x1, [sp, 16]	;# D.9085, argv
	ldp	x0, x1, [x0]	;# D.7337, MEM[(struct short_vector_16_bytes *)_67]
;# varargs-dll.c:904:   int d = va_arg (argv, struct short_vector_16_bytes).d;
	mov	x0, x1	;# tmp178, D.7337
	asr	x0, x0, 32	;# tmp179, tmp178,
	str	w0, [sp, 80]	;# tmp180, d
;# varargs-dll.c:905:   int e = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp, 16]	;# D.9086, argv
	add	x1, x0, 16	;# D.9087, D.9086,
	str	x1, [sp, 16]	;# D.9087, argv
	ldp	x0, x1, [x0]	;# D.7338, MEM[(struct short_vector_16_bytes *)_71]
;# varargs-dll.c:905:   int e = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 76]	;# tmp181, e
;# varargs-dll.c:906:   int f = va_arg (argv, struct short_vector_16_bytes).b;
	ldr	x0, [sp, 16]	;# D.9088, argv
	add	x1, x0, 16	;# D.9089, D.9088,
	str	x1, [sp, 16]	;# D.9089, argv
	ldp	x0, x1, [x0]	;# D.7339, MEM[(struct short_vector_16_bytes *)_75]
;# varargs-dll.c:906:   int f = va_arg (argv, struct short_vector_16_bytes).b;
	asr	x0, x0, 32	;# tmp184, tmp183,
	str	w0, [sp, 72]	;# tmp185, f
;# varargs-dll.c:907:   int g = va_arg (argv, struct short_vector_16_bytes).c;
	ldr	x0, [sp, 16]	;# D.9090, argv
	add	x1, x0, 16	;# D.9091, D.9090,
	str	x1, [sp, 16]	;# D.9091, argv
	ldp	x0, x1, [x0]	;# D.7340, MEM[(struct short_vector_16_bytes *)_79]
;# varargs-dll.c:907:   int g = va_arg (argv, struct short_vector_16_bytes).c;
	mov	w0, w1	;# tmp186, D.7340
	str	w0, [sp, 68]	;# tmp186, g
;# varargs-dll.c:908:   int h = va_arg (argv, struct short_vector_16_bytes).d;
	ldr	x0, [sp, 16]	;# D.9092, argv
	add	x1, x0, 16	;# D.9093, D.9092,
	str	x1, [sp, 16]	;# D.9093, argv
	ldp	x0, x1, [x0]	;# D.7341, MEM[(struct short_vector_16_bytes *)_83]
;# varargs-dll.c:908:   int h = va_arg (argv, struct short_vector_16_bytes).d;
	mov	x0, x1	;# tmp188, D.7341
	asr	x0, x0, 32	;# tmp189, tmp188,
	str	w0, [sp, 64]	;# tmp190, h
;# varargs-dll.c:909:   int i = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp, 16]	;# D.9094, argv
	add	x1, x0, 16	;# D.9095, D.9094,
	str	x1, [sp, 16]	;# D.9095, argv
	ldp	x0, x1, [x0]	;# D.7342, MEM[(struct short_vector_16_bytes *)_87]
;# varargs-dll.c:909:   int i = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 60]	;# tmp191, i
;# varargs-dll.c:910:   int j = va_arg (argv, struct short_vector_16_bytes).b;
	ldr	x0, [sp, 16]	;# D.9096, argv
	add	x1, x0, 16	;# D.9097, D.9096,
	str	x1, [sp, 16]	;# D.9097, argv
	ldp	x0, x1, [x0]	;# D.7343, MEM[(struct short_vector_16_bytes *)_91]
;# varargs-dll.c:910:   int j = va_arg (argv, struct short_vector_16_bytes).b;
	asr	x0, x0, 32	;# tmp194, tmp193,
	str	w0, [sp, 56]	;# tmp195, j
;# varargs-dll.c:911:   int k = va_arg (argv, struct short_vector_16_bytes).c;
	ldr	x0, [sp, 16]	;# D.9098, argv
	add	x1, x0, 16	;# D.9099, D.9098,
	str	x1, [sp, 16]	;# D.9099, argv
	ldp	x0, x1, [x0]	;# D.7344, MEM[(struct short_vector_16_bytes *)_95]
;# varargs-dll.c:911:   int k = va_arg (argv, struct short_vector_16_bytes).c;
	mov	w0, w1	;# tmp196, D.7344
	str	w0, [sp, 52]	;# tmp196, k
;# varargs-dll.c:912:   int l = va_arg (argv, struct short_vector_16_bytes).d;
	ldr	x0, [sp, 16]	;# D.9100, argv
	add	x1, x0, 16	;# D.9101, D.9100,
	str	x1, [sp, 16]	;# D.9101, argv
	ldp	x0, x1, [x0]	;# D.7345, MEM[(struct short_vector_16_bytes *)_99]
;# varargs-dll.c:912:   int l = va_arg (argv, struct short_vector_16_bytes).d;
	mov	x0, x1	;# tmp198, D.7345
	asr	x0, x0, 32	;# tmp199, tmp198,
	str	w0, [sp, 48]	;# tmp200, l
;# varargs-dll.c:913:   int m = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp, 16]	;# D.9102, argv
	add	x1, x0, 16	;# D.9103, D.9102,
	str	x1, [sp, 16]	;# D.9103, argv
	ldp	x0, x1, [x0]	;# D.7346, MEM[(struct short_vector_16_bytes *)_103]
;# varargs-dll.c:913:   int m = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 44]	;# tmp201, m
;# varargs-dll.c:914:   int n = va_arg (argv, struct short_vector_16_bytes).b;
	ldr	x0, [sp, 16]	;# D.9104, argv
	add	x1, x0, 16	;# D.9105, D.9104,
	str	x1, [sp, 16]	;# D.9105, argv
	ldp	x0, x1, [x0]	;# D.7347, MEM[(struct short_vector_16_bytes *)_107]
;# varargs-dll.c:914:   int n = va_arg (argv, struct short_vector_16_bytes).b;
	asr	x0, x0, 32	;# tmp204, tmp203,
	str	w0, [sp, 40]	;# tmp205, n
;# varargs-dll.c:915:   int o = va_arg (argv, struct short_vector_16_bytes).c;
	ldr	x0, [sp, 16]	;# D.9106, argv
	add	x1, x0, 16	;# D.9107, D.9106,
	str	x1, [sp, 16]	;# D.9107, argv
	ldp	x0, x1, [x0]	;# D.7348, MEM[(struct short_vector_16_bytes *)_111]
;# varargs-dll.c:915:   int o = va_arg (argv, struct short_vector_16_bytes).c;
	mov	w0, w1	;# tmp206, D.7348
	str	w0, [sp, 36]	;# tmp206, o
;# varargs-dll.c:916:   int p = va_arg (argv, struct short_vector_16_bytes).d;
	ldr	x0, [sp, 16]	;# D.9108, argv
	add	x1, x0, 16	;# D.9109, D.9108,
	str	x1, [sp, 16]	;# D.9109, argv
	ldp	x0, x1, [x0]	;# D.7349, MEM[(struct short_vector_16_bytes *)_115]
;# varargs-dll.c:916:   int p = va_arg (argv, struct short_vector_16_bytes).d;
	mov	x0, x1	;# tmp208, D.7349
	asr	x0, x0, 32	;# tmp209, tmp208,
	str	w0, [sp, 32]	;# tmp210, p
;# varargs-dll.c:917:   int q = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp, 16]	;# D.9110, argv
	add	x1, x0, 16	;# D.9111, D.9110,
	str	x1, [sp, 16]	;# D.9111, argv
	ldp	x0, x1, [x0]	;# D.7350, MEM[(struct short_vector_16_bytes *)_119]
;# varargs-dll.c:917:   int q = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 28]	;# tmp211, q
;# varargs-dll.c:919:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 92]	;# tmp212, a
	ldr	w0, [sp, 88]	;# tmp213, b
	add	w1, w1, w0	;# _1, tmp212, tmp213
;# varargs-dll.c:919:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 84]	;# tmp214, c
	add	w1, w1, w0	;# _2, _1, tmp214
;# varargs-dll.c:919:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 80]	;# tmp215, d
	add	w1, w1, w0	;# _3, _2, tmp215
;# varargs-dll.c:919:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 76]	;# tmp216, e
	add	w1, w1, w0	;# _4, _3, tmp216
;# varargs-dll.c:919:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 72]	;# tmp217, f
	add	w1, w1, w0	;# _5, _4, tmp217
;# varargs-dll.c:919:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 68]	;# tmp218, g
	add	w1, w1, w0	;# _6, _5, tmp218
;# varargs-dll.c:919:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 64]	;# tmp219, h
	add	w1, w1, w0	;# _7, _6, tmp219
;# varargs-dll.c:919:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 60]	;# tmp220, i
	add	w1, w1, w0	;# _8, _7, tmp220
;# varargs-dll.c:919:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 56]	;# tmp221, j
	add	w1, w1, w0	;# _9, _8, tmp221
;# varargs-dll.c:919:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 52]	;# tmp222, k
	add	w1, w1, w0	;# _10, _9, tmp222
;# varargs-dll.c:919:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 48]	;# tmp223, l
	add	w1, w1, w0	;# _11, _10, tmp223
;# varargs-dll.c:919:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 44]	;# tmp224, m
	add	w1, w1, w0	;# _12, _11, tmp224
;# varargs-dll.c:919:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 40]	;# tmp225, n
	add	w1, w1, w0	;# _13, _12, tmp225
;# varargs-dll.c:919:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 36]	;# tmp226, o
	add	w1, w1, w0	;# _14, _13, tmp226
;# varargs-dll.c:919:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 32]	;# tmp227, p
	add	w1, w1, w0	;# _15, _14, tmp227
;# varargs-dll.c:919:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 28]	;# tmp228, q
	add	w0, w1, w0	;# _53, _15, tmp228
;# varargs-dll.c:920: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_short_vector_16_bytes
	.def	use_va_list_many_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_short_vector_16_bytes
use_va_list_many_short_vector_16_bytes:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:925:   int a = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp]	;# D.9112, argv
	add	x1, x0, 16	;# D.9113, D.9112,
	str	x1, [sp]	;# D.9113, argv
	ldp	x0, x1, [x0]	;# D.7354, MEM[(struct short_vector_16_bytes *)_52]
;# varargs-dll.c:925:   int a = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 92]	;# tmp169, a
;# varargs-dll.c:926:   int b = va_arg (argv, struct short_vector_16_bytes).b;
	ldr	x0, [sp]	;# D.9114, argv
	add	x1, x0, 16	;# D.9115, D.9114,
	str	x1, [sp]	;# D.9115, argv
	ldp	x0, x1, [x0]	;# D.7355, MEM[(struct short_vector_16_bytes *)_56]
;# varargs-dll.c:926:   int b = va_arg (argv, struct short_vector_16_bytes).b;
	asr	x0, x0, 32	;# tmp172, tmp171,
	str	w0, [sp, 88]	;# tmp173, b
;# varargs-dll.c:927:   int c = va_arg (argv, struct short_vector_16_bytes).c;
	ldr	x0, [sp]	;# D.9116, argv
	add	x1, x0, 16	;# D.9117, D.9116,
	str	x1, [sp]	;# D.9117, argv
	ldp	x0, x1, [x0]	;# D.7356, MEM[(struct short_vector_16_bytes *)_60]
;# varargs-dll.c:927:   int c = va_arg (argv, struct short_vector_16_bytes).c;
	mov	w0, w1	;# tmp174, D.7356
	str	w0, [sp, 84]	;# tmp174, c
;# varargs-dll.c:928:   int d = va_arg (argv, struct short_vector_16_bytes).d;
	ldr	x0, [sp]	;# D.9118, argv
	add	x1, x0, 16	;# D.9119, D.9118,
	str	x1, [sp]	;# D.9119, argv
	ldp	x0, x1, [x0]	;# D.7357, MEM[(struct short_vector_16_bytes *)_64]
;# varargs-dll.c:928:   int d = va_arg (argv, struct short_vector_16_bytes).d;
	mov	x0, x1	;# tmp176, D.7357
	asr	x0, x0, 32	;# tmp177, tmp176,
	str	w0, [sp, 80]	;# tmp178, d
;# varargs-dll.c:929:   int e = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp]	;# D.9120, argv
	add	x1, x0, 16	;# D.9121, D.9120,
	str	x1, [sp]	;# D.9121, argv
	ldp	x0, x1, [x0]	;# D.7358, MEM[(struct short_vector_16_bytes *)_68]
;# varargs-dll.c:929:   int e = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 76]	;# tmp179, e
;# varargs-dll.c:930:   int f = va_arg (argv, struct short_vector_16_bytes).b;
	ldr	x0, [sp]	;# D.9122, argv
	add	x1, x0, 16	;# D.9123, D.9122,
	str	x1, [sp]	;# D.9123, argv
	ldp	x0, x1, [x0]	;# D.7359, MEM[(struct short_vector_16_bytes *)_72]
;# varargs-dll.c:930:   int f = va_arg (argv, struct short_vector_16_bytes).b;
	asr	x0, x0, 32	;# tmp182, tmp181,
	str	w0, [sp, 72]	;# tmp183, f
;# varargs-dll.c:931:   int g = va_arg (argv, struct short_vector_16_bytes).c;
	ldr	x0, [sp]	;# D.9124, argv
	add	x1, x0, 16	;# D.9125, D.9124,
	str	x1, [sp]	;# D.9125, argv
	ldp	x0, x1, [x0]	;# D.7360, MEM[(struct short_vector_16_bytes *)_76]
;# varargs-dll.c:931:   int g = va_arg (argv, struct short_vector_16_bytes).c;
	mov	w0, w1	;# tmp184, D.7360
	str	w0, [sp, 68]	;# tmp184, g
;# varargs-dll.c:932:   int h = va_arg (argv, struct short_vector_16_bytes).d;
	ldr	x0, [sp]	;# D.9126, argv
	add	x1, x0, 16	;# D.9127, D.9126,
	str	x1, [sp]	;# D.9127, argv
	ldp	x0, x1, [x0]	;# D.7361, MEM[(struct short_vector_16_bytes *)_80]
;# varargs-dll.c:932:   int h = va_arg (argv, struct short_vector_16_bytes).d;
	mov	x0, x1	;# tmp186, D.7361
	asr	x0, x0, 32	;# tmp187, tmp186,
	str	w0, [sp, 64]	;# tmp188, h
;# varargs-dll.c:933:   int i = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp]	;# D.9128, argv
	add	x1, x0, 16	;# D.9129, D.9128,
	str	x1, [sp]	;# D.9129, argv
	ldp	x0, x1, [x0]	;# D.7362, MEM[(struct short_vector_16_bytes *)_84]
;# varargs-dll.c:933:   int i = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 60]	;# tmp189, i
;# varargs-dll.c:934:   int j = va_arg (argv, struct short_vector_16_bytes).b;
	ldr	x0, [sp]	;# D.9130, argv
	add	x1, x0, 16	;# D.9131, D.9130,
	str	x1, [sp]	;# D.9131, argv
	ldp	x0, x1, [x0]	;# D.7363, MEM[(struct short_vector_16_bytes *)_88]
;# varargs-dll.c:934:   int j = va_arg (argv, struct short_vector_16_bytes).b;
	asr	x0, x0, 32	;# tmp192, tmp191,
	str	w0, [sp, 56]	;# tmp193, j
;# varargs-dll.c:935:   int k = va_arg (argv, struct short_vector_16_bytes).c;
	ldr	x0, [sp]	;# D.9132, argv
	add	x1, x0, 16	;# D.9133, D.9132,
	str	x1, [sp]	;# D.9133, argv
	ldp	x0, x1, [x0]	;# D.7364, MEM[(struct short_vector_16_bytes *)_92]
;# varargs-dll.c:935:   int k = va_arg (argv, struct short_vector_16_bytes).c;
	mov	w0, w1	;# tmp194, D.7364
	str	w0, [sp, 52]	;# tmp194, k
;# varargs-dll.c:936:   int l = va_arg (argv, struct short_vector_16_bytes).d;
	ldr	x0, [sp]	;# D.9134, argv
	add	x1, x0, 16	;# D.9135, D.9134,
	str	x1, [sp]	;# D.9135, argv
	ldp	x0, x1, [x0]	;# D.7365, MEM[(struct short_vector_16_bytes *)_96]
;# varargs-dll.c:936:   int l = va_arg (argv, struct short_vector_16_bytes).d;
	mov	x0, x1	;# tmp196, D.7365
	asr	x0, x0, 32	;# tmp197, tmp196,
	str	w0, [sp, 48]	;# tmp198, l
;# varargs-dll.c:937:   int m = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp]	;# D.9136, argv
	add	x1, x0, 16	;# D.9137, D.9136,
	str	x1, [sp]	;# D.9137, argv
	ldp	x0, x1, [x0]	;# D.7366, MEM[(struct short_vector_16_bytes *)_100]
;# varargs-dll.c:937:   int m = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 44]	;# tmp199, m
;# varargs-dll.c:938:   int n = va_arg (argv, struct short_vector_16_bytes).b;
	ldr	x0, [sp]	;# D.9138, argv
	add	x1, x0, 16	;# D.9139, D.9138,
	str	x1, [sp]	;# D.9139, argv
	ldp	x0, x1, [x0]	;# D.7367, MEM[(struct short_vector_16_bytes *)_104]
;# varargs-dll.c:938:   int n = va_arg (argv, struct short_vector_16_bytes).b;
	asr	x0, x0, 32	;# tmp202, tmp201,
	str	w0, [sp, 40]	;# tmp203, n
;# varargs-dll.c:939:   int o = va_arg (argv, struct short_vector_16_bytes).c;
	ldr	x0, [sp]	;# D.9140, argv
	add	x1, x0, 16	;# D.9141, D.9140,
	str	x1, [sp]	;# D.9141, argv
	ldp	x0, x1, [x0]	;# D.7368, MEM[(struct short_vector_16_bytes *)_108]
;# varargs-dll.c:939:   int o = va_arg (argv, struct short_vector_16_bytes).c;
	mov	w0, w1	;# tmp204, D.7368
	str	w0, [sp, 36]	;# tmp204, o
;# varargs-dll.c:940:   int p = va_arg (argv, struct short_vector_16_bytes).d;
	ldr	x0, [sp]	;# D.9142, argv
	add	x1, x0, 16	;# D.9143, D.9142,
	str	x1, [sp]	;# D.9143, argv
	ldp	x0, x1, [x0]	;# D.7369, MEM[(struct short_vector_16_bytes *)_112]
;# varargs-dll.c:940:   int p = va_arg (argv, struct short_vector_16_bytes).d;
	mov	x0, x1	;# tmp206, D.7369
	asr	x0, x0, 32	;# tmp207, tmp206,
	str	w0, [sp, 32]	;# tmp208, p
;# varargs-dll.c:941:   int q = va_arg (argv, struct short_vector_16_bytes).a;
	ldr	x0, [sp]	;# D.9144, argv
	add	x1, x0, 16	;# D.9145, D.9144,
	str	x1, [sp]	;# D.9145, argv
	ldp	x0, x1, [x0]	;# D.7370, MEM[(struct short_vector_16_bytes *)_116]
;# varargs-dll.c:941:   int q = va_arg (argv, struct short_vector_16_bytes).a;
	str	w0, [sp, 28]	;# tmp209, q
;# varargs-dll.c:942:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 92]	;# tmp210, a
	ldr	w0, [sp, 88]	;# tmp211, b
	add	w1, w1, w0	;# _1, tmp210, tmp211
;# varargs-dll.c:942:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 84]	;# tmp212, c
	add	w1, w1, w0	;# _2, _1, tmp212
;# varargs-dll.c:942:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 80]	;# tmp213, d
	add	w1, w1, w0	;# _3, _2, tmp213
;# varargs-dll.c:942:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 76]	;# tmp214, e
	add	w1, w1, w0	;# _4, _3, tmp214
;# varargs-dll.c:942:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 72]	;# tmp215, f
	add	w1, w1, w0	;# _5, _4, tmp215
;# varargs-dll.c:942:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 68]	;# tmp216, g
	add	w1, w1, w0	;# _6, _5, tmp216
;# varargs-dll.c:942:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 64]	;# tmp217, h
	add	w1, w1, w0	;# _7, _6, tmp217
;# varargs-dll.c:942:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 60]	;# tmp218, i
	add	w1, w1, w0	;# _8, _7, tmp218
;# varargs-dll.c:942:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 56]	;# tmp219, j
	add	w1, w1, w0	;# _9, _8, tmp219
;# varargs-dll.c:942:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 52]	;# tmp220, k
	add	w1, w1, w0	;# _10, _9, tmp220
;# varargs-dll.c:942:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 48]	;# tmp221, l
	add	w1, w1, w0	;# _11, _10, tmp221
;# varargs-dll.c:942:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 44]	;# tmp222, m
	add	w1, w1, w0	;# _12, _11, tmp222
;# varargs-dll.c:942:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 40]	;# tmp223, n
	add	w1, w1, w0	;# _13, _12, tmp223
;# varargs-dll.c:942:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 36]	;# tmp224, o
	add	w1, w1, w0	;# _14, _13, tmp224
;# varargs-dll.c:942:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 32]	;# tmp225, p
	add	w1, w1, w0	;# _15, _14, tmp225
;# varargs-dll.c:942:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 28]	;# tmp226, q
	add	w0, w1, w0	;# _51, _15, tmp226
;# varargs-dll.c:943: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_hfa_2_floats
	.def	use_va_args_few_hfa_2_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_hfa_2_floats
use_va_args_few_hfa_2_floats:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 40]	;#,
	str	x2, [sp, 48]	;#,
	str	x3, [sp, 56]	;#,
	str	x4, [sp, 64]	;#,
	str	x5, [sp, 72]	;#,
	str	x6, [sp, 80]	;#,
	str	x7, [sp, 88]	;#,
;# varargs-dll.c:949:   va_start (argv, format);
	add	x0, sp, 96	;# tmp110,,
	sub	x0, x0, #56	;# tmp111, tmp110,
	str	x0, [sp, 16]	;# tmp111, MEM[(char * *)&argv]
;# varargs-dll.c:950:   float a = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp, 16]	;# D.9146, argv
	add	x1, x0, 8	;# D.9147, D.9146,
	str	x1, [sp, 16]	;# D.9147, argv
	ldr	x0, [x0]	;# D.7373, MEM[(struct hfa_2_floats *)_11]
;# varargs-dll.c:950:   float a = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp113, D.7373,,
	fmov	s31, w0	;# tmp115, tmp114
	str	s31, [sp, 28]	;# tmp115, a
;# varargs-dll.c:951:   float b = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp, 16]	;# D.9148, argv
	add	x1, x0, 8	;# D.9149, D.9148,
	str	x1, [sp, 16]	;# D.9149, argv
	ldr	x0, [x0]	;# D.7374, MEM[(struct hfa_2_floats *)_15]
;# varargs-dll.c:951:   float b = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp117, D.7374,
	fmov	s31, w0	;# tmp119, tmp118
	str	s31, [sp, 24]	;# tmp119, b
;# varargs-dll.c:953:   return a + b;
	ldr	s30, [sp, 28]	;# tmp120, a
	ldr	s31, [sp, 24]	;# tmp121, b
	fadd	s31, s30, s31	;# _1, tmp120, tmp121
	fcvtzs	s31, s31	;# _9, _1
	fmov	w0, s31	;# <retval>, _9
;# varargs-dll.c:954: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_hfa_2_floats
	.def	use_va_list_few_hfa_2_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_hfa_2_floats
use_va_list_few_hfa_2_floats:
	sub	sp, sp, #32	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:959:   float a = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp]	;# D.9150, argv
	add	x1, x0, 8	;# D.9151, D.9150,
	str	x1, [sp]	;# D.9151, argv
	ldr	x0, [x0]	;# D.7378, MEM[(struct hfa_2_floats *)_8]
;# varargs-dll.c:959:   float a = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp111, D.7378,,
	fmov	s31, w0	;# tmp113, tmp112
	str	s31, [sp, 28]	;# tmp113, a
;# varargs-dll.c:960:   float b = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp]	;# D.9152, argv
	add	x1, x0, 8	;# D.9153, D.9152,
	str	x1, [sp]	;# D.9153, argv
	ldr	x0, [x0]	;# D.7379, MEM[(struct hfa_2_floats *)_12]
;# varargs-dll.c:960:   float b = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp115, D.7379,
	fmov	s31, w0	;# tmp117, tmp116
	str	s31, [sp, 24]	;# tmp117, b
;# varargs-dll.c:961:   return a + b;
	ldr	s30, [sp, 28]	;# tmp118, a
	ldr	s31, [sp, 24]	;# tmp119, b
	fadd	s31, s30, s31	;# _1, tmp118, tmp119
	fcvtzs	s31, s31	;# _7, _1
	fmov	w0, s31	;# <retval>, _7
;# varargs-dll.c:962: }
	add	sp, sp, 32	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_hfa_2_floats
	.def	use_va_args_several_hfa_2_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_hfa_2_floats
use_va_args_several_hfa_2_floats:
	sub	sp, sp, #128	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 72]	;#,
	str	x2, [sp, 80]	;#,
	str	x3, [sp, 88]	;#,
	str	x4, [sp, 96]	;#,
	str	x5, [sp, 104]	;#,
	str	x6, [sp, 112]	;#,
	str	x7, [sp, 120]	;#,
;# varargs-dll.c:968:   va_start (argv, format);
	add	x0, sp, 128	;# tmp138,,
	sub	x0, x0, #56	;# tmp139, tmp138,
	str	x0, [sp, 16]	;# tmp139, MEM[(char * *)&argv]
;# varargs-dll.c:969:   float a = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp, 16]	;# D.9154, argv
	add	x1, x0, 8	;# D.9155, D.9154,
	str	x1, [sp, 16]	;# D.9155, argv
	ldr	x0, [x0]	;# D.7382, MEM[(struct hfa_2_floats *)_32]
;# varargs-dll.c:969:   float a = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp141, D.7382,,
	fmov	s31, w0	;# tmp143, tmp142
	str	s31, [sp, 60]	;# tmp143, a
;# varargs-dll.c:970:   float b = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp, 16]	;# D.9156, argv
	add	x1, x0, 8	;# D.9157, D.9156,
	str	x1, [sp, 16]	;# D.9157, argv
	ldr	x0, [x0]	;# D.7383, MEM[(struct hfa_2_floats *)_36]
;# varargs-dll.c:970:   float b = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp145, D.7383,
	fmov	s31, w0	;# tmp147, tmp146
	str	s31, [sp, 56]	;# tmp147, b
;# varargs-dll.c:971:   float c = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp, 16]	;# D.9158, argv
	add	x1, x0, 8	;# D.9159, D.9158,
	str	x1, [sp, 16]	;# D.9159, argv
	ldr	x0, [x0]	;# D.7384, MEM[(struct hfa_2_floats *)_40]
;# varargs-dll.c:971:   float c = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp149, D.7384,,
	fmov	s31, w0	;# tmp151, tmp150
	str	s31, [sp, 52]	;# tmp151, c
;# varargs-dll.c:972:   float d = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp, 16]	;# D.9160, argv
	add	x1, x0, 8	;# D.9161, D.9160,
	str	x1, [sp, 16]	;# D.9161, argv
	ldr	x0, [x0]	;# D.7385, MEM[(struct hfa_2_floats *)_44]
;# varargs-dll.c:972:   float d = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp153, D.7385,
	fmov	s31, w0	;# tmp155, tmp154
	str	s31, [sp, 48]	;# tmp155, d
;# varargs-dll.c:973:   float e = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp, 16]	;# D.9162, argv
	add	x1, x0, 8	;# D.9163, D.9162,
	str	x1, [sp, 16]	;# D.9163, argv
	ldr	x0, [x0]	;# D.7386, MEM[(struct hfa_2_floats *)_48]
;# varargs-dll.c:973:   float e = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp157, D.7386,,
	fmov	s31, w0	;# tmp159, tmp158
	str	s31, [sp, 44]	;# tmp159, e
;# varargs-dll.c:974:   float f = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp, 16]	;# D.9164, argv
	add	x1, x0, 8	;# D.9165, D.9164,
	str	x1, [sp, 16]	;# D.9165, argv
	ldr	x0, [x0]	;# D.7387, MEM[(struct hfa_2_floats *)_52]
;# varargs-dll.c:974:   float f = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp161, D.7387,
	fmov	s31, w0	;# tmp163, tmp162
	str	s31, [sp, 40]	;# tmp163, f
;# varargs-dll.c:975:   float g = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp, 16]	;# D.9166, argv
	add	x1, x0, 8	;# D.9167, D.9166,
	str	x1, [sp, 16]	;# D.9167, argv
	ldr	x0, [x0]	;# D.7388, MEM[(struct hfa_2_floats *)_56]
;# varargs-dll.c:975:   float g = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp165, D.7388,,
	fmov	s31, w0	;# tmp167, tmp166
	str	s31, [sp, 36]	;# tmp167, g
;# varargs-dll.c:976:   float h = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp, 16]	;# D.9168, argv
	add	x1, x0, 8	;# D.9169, D.9168,
	str	x1, [sp, 16]	;# D.9169, argv
	ldr	x0, [x0]	;# D.7389, MEM[(struct hfa_2_floats *)_60]
;# varargs-dll.c:976:   float h = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp169, D.7389,
	fmov	s31, w0	;# tmp171, tmp170
	str	s31, [sp, 32]	;# tmp171, h
;# varargs-dll.c:977:   float i = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp, 16]	;# D.9170, argv
	add	x1, x0, 8	;# D.9171, D.9170,
	str	x1, [sp, 16]	;# D.9171, argv
	ldr	x0, [x0]	;# D.7390, MEM[(struct hfa_2_floats *)_64]
;# varargs-dll.c:977:   float i = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp173, D.7390,,
	fmov	s31, w0	;# tmp175, tmp174
	str	s31, [sp, 28]	;# tmp175, i
;# varargs-dll.c:979:   return a + b + c + d + e + f + g + h + i;
	ldr	s30, [sp, 60]	;# tmp176, a
	ldr	s31, [sp, 56]	;# tmp177, b
	fadd	s30, s30, s31	;# _1, tmp176, tmp177
;# varargs-dll.c:979:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 52]	;# tmp178, c
	fadd	s30, s30, s31	;# _2, _1, tmp178
;# varargs-dll.c:979:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 48]	;# tmp179, d
	fadd	s30, s30, s31	;# _3, _2, tmp179
;# varargs-dll.c:979:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 44]	;# tmp180, e
	fadd	s30, s30, s31	;# _4, _3, tmp180
;# varargs-dll.c:979:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 40]	;# tmp181, f
	fadd	s30, s30, s31	;# _5, _4, tmp181
;# varargs-dll.c:979:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 36]	;# tmp182, g
	fadd	s30, s30, s31	;# _6, _5, tmp182
;# varargs-dll.c:979:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 32]	;# tmp183, h
	fadd	s30, s30, s31	;# _7, _6, tmp183
;# varargs-dll.c:979:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 28]	;# tmp184, i
	fadd	s31, s30, s31	;# _8, _7, tmp184
	fcvtzs	s31, s31	;# _30, _8
	fmov	w0, s31	;# <retval>, _30
;# varargs-dll.c:980: }
	add	sp, sp, 128	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_hfa_2_floats
	.def	use_va_list_several_hfa_2_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_hfa_2_floats
use_va_list_several_hfa_2_floats:
	sub	sp, sp, #64	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:985:   float a = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp]	;# D.9172, argv
	add	x1, x0, 8	;# D.9173, D.9172,
	str	x1, [sp]	;# D.9173, argv
	ldr	x0, [x0]	;# D.7394, MEM[(struct hfa_2_floats *)_29]
;# varargs-dll.c:985:   float a = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp139, D.7394,,
	fmov	s31, w0	;# tmp141, tmp140
	str	s31, [sp, 60]	;# tmp141, a
;# varargs-dll.c:986:   float b = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp]	;# D.9174, argv
	add	x1, x0, 8	;# D.9175, D.9174,
	str	x1, [sp]	;# D.9175, argv
	ldr	x0, [x0]	;# D.7395, MEM[(struct hfa_2_floats *)_33]
;# varargs-dll.c:986:   float b = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp143, D.7395,
	fmov	s31, w0	;# tmp145, tmp144
	str	s31, [sp, 56]	;# tmp145, b
;# varargs-dll.c:987:   float c = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp]	;# D.9176, argv
	add	x1, x0, 8	;# D.9177, D.9176,
	str	x1, [sp]	;# D.9177, argv
	ldr	x0, [x0]	;# D.7396, MEM[(struct hfa_2_floats *)_37]
;# varargs-dll.c:987:   float c = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp147, D.7396,,
	fmov	s31, w0	;# tmp149, tmp148
	str	s31, [sp, 52]	;# tmp149, c
;# varargs-dll.c:988:   float d = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp]	;# D.9178, argv
	add	x1, x0, 8	;# D.9179, D.9178,
	str	x1, [sp]	;# D.9179, argv
	ldr	x0, [x0]	;# D.7397, MEM[(struct hfa_2_floats *)_41]
;# varargs-dll.c:988:   float d = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp151, D.7397,
	fmov	s31, w0	;# tmp153, tmp152
	str	s31, [sp, 48]	;# tmp153, d
;# varargs-dll.c:989:   float e = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp]	;# D.9180, argv
	add	x1, x0, 8	;# D.9181, D.9180,
	str	x1, [sp]	;# D.9181, argv
	ldr	x0, [x0]	;# D.7398, MEM[(struct hfa_2_floats *)_45]
;# varargs-dll.c:989:   float e = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp155, D.7398,,
	fmov	s31, w0	;# tmp157, tmp156
	str	s31, [sp, 44]	;# tmp157, e
;# varargs-dll.c:990:   float f = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp]	;# D.9182, argv
	add	x1, x0, 8	;# D.9183, D.9182,
	str	x1, [sp]	;# D.9183, argv
	ldr	x0, [x0]	;# D.7399, MEM[(struct hfa_2_floats *)_49]
;# varargs-dll.c:990:   float f = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp159, D.7399,
	fmov	s31, w0	;# tmp161, tmp160
	str	s31, [sp, 40]	;# tmp161, f
;# varargs-dll.c:991:   float g = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp]	;# D.9184, argv
	add	x1, x0, 8	;# D.9185, D.9184,
	str	x1, [sp]	;# D.9185, argv
	ldr	x0, [x0]	;# D.7400, MEM[(struct hfa_2_floats *)_53]
;# varargs-dll.c:991:   float g = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp163, D.7400,,
	fmov	s31, w0	;# tmp165, tmp164
	str	s31, [sp, 36]	;# tmp165, g
;# varargs-dll.c:992:   float h = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp]	;# D.9186, argv
	add	x1, x0, 8	;# D.9187, D.9186,
	str	x1, [sp]	;# D.9187, argv
	ldr	x0, [x0]	;# D.7401, MEM[(struct hfa_2_floats *)_57]
;# varargs-dll.c:992:   float h = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp167, D.7401,
	fmov	s31, w0	;# tmp169, tmp168
	str	s31, [sp, 32]	;# tmp169, h
;# varargs-dll.c:993:   float i = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp]	;# D.9188, argv
	add	x1, x0, 8	;# D.9189, D.9188,
	str	x1, [sp]	;# D.9189, argv
	ldr	x0, [x0]	;# D.7402, MEM[(struct hfa_2_floats *)_61]
;# varargs-dll.c:993:   float i = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp171, D.7402,,
	fmov	s31, w0	;# tmp173, tmp172
	str	s31, [sp, 28]	;# tmp173, i
;# varargs-dll.c:994:   return a + b + c + d + e + f + g + h + i;
	ldr	s30, [sp, 60]	;# tmp174, a
	ldr	s31, [sp, 56]	;# tmp175, b
	fadd	s30, s30, s31	;# _1, tmp174, tmp175
;# varargs-dll.c:994:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 52]	;# tmp176, c
	fadd	s30, s30, s31	;# _2, _1, tmp176
;# varargs-dll.c:994:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 48]	;# tmp177, d
	fadd	s30, s30, s31	;# _3, _2, tmp177
;# varargs-dll.c:994:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 44]	;# tmp178, e
	fadd	s30, s30, s31	;# _4, _3, tmp178
;# varargs-dll.c:994:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 40]	;# tmp179, f
	fadd	s30, s30, s31	;# _5, _4, tmp179
;# varargs-dll.c:994:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 36]	;# tmp180, g
	fadd	s30, s30, s31	;# _6, _5, tmp180
;# varargs-dll.c:994:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 32]	;# tmp181, h
	fadd	s30, s30, s31	;# _7, _6, tmp181
;# varargs-dll.c:994:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 28]	;# tmp182, i
	fadd	s31, s30, s31	;# _8, _7, tmp182
	fcvtzs	s31, s31	;# _28, _8
	fmov	w0, s31	;# <retval>, _28
;# varargs-dll.c:995: }
	add	sp, sp, 64	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_hfa_2_floats
	.def	use_va_args_many_hfa_2_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_hfa_2_floats
use_va_args_many_hfa_2_floats:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 104]	;#,
	str	x2, [sp, 112]	;#,
	str	x3, [sp, 120]	;#,
	str	x4, [sp, 128]	;#,
	str	x5, [sp, 136]	;#,
	str	x6, [sp, 144]	;#,
	str	x7, [sp, 152]	;#,
;# varargs-dll.c:1001:   va_start (argv, format);
	add	x0, sp, 160	;# tmp170,,
	sub	x0, x0, #56	;# tmp171, tmp170,
	str	x0, [sp, 16]	;# tmp171, MEM[(char * *)&argv]
;# varargs-dll.c:1002:   float a = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp, 16]	;# D.9190, argv
	add	x1, x0, 8	;# D.9191, D.9190,
	str	x1, [sp, 16]	;# D.9191, argv
	ldr	x0, [x0]	;# D.7405, MEM[(struct hfa_2_floats *)_56]
;# varargs-dll.c:1002:   float a = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp173, D.7405,,
	fmov	s31, w0	;# tmp175, tmp174
	str	s31, [sp, 92]	;# tmp175, a
;# varargs-dll.c:1003:   float b = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp, 16]	;# D.9192, argv
	add	x1, x0, 8	;# D.9193, D.9192,
	str	x1, [sp, 16]	;# D.9193, argv
	ldr	x0, [x0]	;# D.7406, MEM[(struct hfa_2_floats *)_60]
;# varargs-dll.c:1003:   float b = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp177, D.7406,
	fmov	s31, w0	;# tmp179, tmp178
	str	s31, [sp, 88]	;# tmp179, b
;# varargs-dll.c:1004:   float c = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp, 16]	;# D.9194, argv
	add	x1, x0, 8	;# D.9195, D.9194,
	str	x1, [sp, 16]	;# D.9195, argv
	ldr	x0, [x0]	;# D.7407, MEM[(struct hfa_2_floats *)_64]
;# varargs-dll.c:1004:   float c = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp181, D.7407,,
	fmov	s31, w0	;# tmp183, tmp182
	str	s31, [sp, 84]	;# tmp183, c
;# varargs-dll.c:1005:   float d = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp, 16]	;# D.9196, argv
	add	x1, x0, 8	;# D.9197, D.9196,
	str	x1, [sp, 16]	;# D.9197, argv
	ldr	x0, [x0]	;# D.7408, MEM[(struct hfa_2_floats *)_68]
;# varargs-dll.c:1005:   float d = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp185, D.7408,
	fmov	s31, w0	;# tmp187, tmp186
	str	s31, [sp, 80]	;# tmp187, d
;# varargs-dll.c:1006:   float e = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp, 16]	;# D.9198, argv
	add	x1, x0, 8	;# D.9199, D.9198,
	str	x1, [sp, 16]	;# D.9199, argv
	ldr	x0, [x0]	;# D.7409, MEM[(struct hfa_2_floats *)_72]
;# varargs-dll.c:1006:   float e = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp189, D.7409,,
	fmov	s31, w0	;# tmp191, tmp190
	str	s31, [sp, 76]	;# tmp191, e
;# varargs-dll.c:1007:   float f = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp, 16]	;# D.9200, argv
	add	x1, x0, 8	;# D.9201, D.9200,
	str	x1, [sp, 16]	;# D.9201, argv
	ldr	x0, [x0]	;# D.7410, MEM[(struct hfa_2_floats *)_76]
;# varargs-dll.c:1007:   float f = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp193, D.7410,
	fmov	s31, w0	;# tmp195, tmp194
	str	s31, [sp, 72]	;# tmp195, f
;# varargs-dll.c:1008:   float g = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp, 16]	;# D.9202, argv
	add	x1, x0, 8	;# D.9203, D.9202,
	str	x1, [sp, 16]	;# D.9203, argv
	ldr	x0, [x0]	;# D.7411, MEM[(struct hfa_2_floats *)_80]
;# varargs-dll.c:1008:   float g = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp197, D.7411,,
	fmov	s31, w0	;# tmp199, tmp198
	str	s31, [sp, 68]	;# tmp199, g
;# varargs-dll.c:1009:   float h = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp, 16]	;# D.9204, argv
	add	x1, x0, 8	;# D.9205, D.9204,
	str	x1, [sp, 16]	;# D.9205, argv
	ldr	x0, [x0]	;# D.7412, MEM[(struct hfa_2_floats *)_84]
;# varargs-dll.c:1009:   float h = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp201, D.7412,
	fmov	s31, w0	;# tmp203, tmp202
	str	s31, [sp, 64]	;# tmp203, h
;# varargs-dll.c:1010:   float i = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp, 16]	;# D.9206, argv
	add	x1, x0, 8	;# D.9207, D.9206,
	str	x1, [sp, 16]	;# D.9207, argv
	ldr	x0, [x0]	;# D.7413, MEM[(struct hfa_2_floats *)_88]
;# varargs-dll.c:1010:   float i = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp205, D.7413,,
	fmov	s31, w0	;# tmp207, tmp206
	str	s31, [sp, 60]	;# tmp207, i
;# varargs-dll.c:1011:   float j = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp, 16]	;# D.9208, argv
	add	x1, x0, 8	;# D.9209, D.9208,
	str	x1, [sp, 16]	;# D.9209, argv
	ldr	x0, [x0]	;# D.7414, MEM[(struct hfa_2_floats *)_92]
;# varargs-dll.c:1011:   float j = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp209, D.7414,
	fmov	s31, w0	;# tmp211, tmp210
	str	s31, [sp, 56]	;# tmp211, j
;# varargs-dll.c:1012:   float k = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp, 16]	;# D.9210, argv
	add	x1, x0, 8	;# D.9211, D.9210,
	str	x1, [sp, 16]	;# D.9211, argv
	ldr	x0, [x0]	;# D.7415, MEM[(struct hfa_2_floats *)_96]
;# varargs-dll.c:1012:   float k = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp213, D.7415,,
	fmov	s31, w0	;# tmp215, tmp214
	str	s31, [sp, 52]	;# tmp215, k
;# varargs-dll.c:1013:   float l = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp, 16]	;# D.9212, argv
	add	x1, x0, 8	;# D.9213, D.9212,
	str	x1, [sp, 16]	;# D.9213, argv
	ldr	x0, [x0]	;# D.7416, MEM[(struct hfa_2_floats *)_100]
;# varargs-dll.c:1013:   float l = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp217, D.7416,
	fmov	s31, w0	;# tmp219, tmp218
	str	s31, [sp, 48]	;# tmp219, l
;# varargs-dll.c:1014:   float m = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp, 16]	;# D.9214, argv
	add	x1, x0, 8	;# D.9215, D.9214,
	str	x1, [sp, 16]	;# D.9215, argv
	ldr	x0, [x0]	;# D.7417, MEM[(struct hfa_2_floats *)_104]
;# varargs-dll.c:1014:   float m = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp221, D.7417,,
	fmov	s31, w0	;# tmp223, tmp222
	str	s31, [sp, 44]	;# tmp223, m
;# varargs-dll.c:1015:   float n = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp, 16]	;# D.9216, argv
	add	x1, x0, 8	;# D.9217, D.9216,
	str	x1, [sp, 16]	;# D.9217, argv
	ldr	x0, [x0]	;# D.7418, MEM[(struct hfa_2_floats *)_108]
;# varargs-dll.c:1015:   float n = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp225, D.7418,
	fmov	s31, w0	;# tmp227, tmp226
	str	s31, [sp, 40]	;# tmp227, n
;# varargs-dll.c:1016:   float o = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp, 16]	;# D.9218, argv
	add	x1, x0, 8	;# D.9219, D.9218,
	str	x1, [sp, 16]	;# D.9219, argv
	ldr	x0, [x0]	;# D.7419, MEM[(struct hfa_2_floats *)_112]
;# varargs-dll.c:1016:   float o = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp229, D.7419,,
	fmov	s31, w0	;# tmp231, tmp230
	str	s31, [sp, 36]	;# tmp231, o
;# varargs-dll.c:1017:   float p = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp, 16]	;# D.9220, argv
	add	x1, x0, 8	;# D.9221, D.9220,
	str	x1, [sp, 16]	;# D.9221, argv
	ldr	x0, [x0]	;# D.7420, MEM[(struct hfa_2_floats *)_116]
;# varargs-dll.c:1017:   float p = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp233, D.7420,
	fmov	s31, w0	;# tmp235, tmp234
	str	s31, [sp, 32]	;# tmp235, p
;# varargs-dll.c:1018:   float q = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp, 16]	;# D.9222, argv
	add	x1, x0, 8	;# D.9223, D.9222,
	str	x1, [sp, 16]	;# D.9223, argv
	ldr	x0, [x0]	;# D.7421, MEM[(struct hfa_2_floats *)_120]
;# varargs-dll.c:1018:   float q = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp237, D.7421,,
	fmov	s31, w0	;# tmp239, tmp238
	str	s31, [sp, 28]	;# tmp239, q
;# varargs-dll.c:1020:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s30, [sp, 92]	;# tmp240, a
	ldr	s31, [sp, 88]	;# tmp241, b
	fadd	s30, s30, s31	;# _1, tmp240, tmp241
;# varargs-dll.c:1020:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 84]	;# tmp242, c
	fadd	s30, s30, s31	;# _2, _1, tmp242
;# varargs-dll.c:1020:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 80]	;# tmp243, d
	fadd	s30, s30, s31	;# _3, _2, tmp243
;# varargs-dll.c:1020:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 76]	;# tmp244, e
	fadd	s30, s30, s31	;# _4, _3, tmp244
;# varargs-dll.c:1020:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 72]	;# tmp245, f
	fadd	s30, s30, s31	;# _5, _4, tmp245
;# varargs-dll.c:1020:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 68]	;# tmp246, g
	fadd	s30, s30, s31	;# _6, _5, tmp246
;# varargs-dll.c:1020:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 64]	;# tmp247, h
	fadd	s30, s30, s31	;# _7, _6, tmp247
;# varargs-dll.c:1020:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 60]	;# tmp248, i
	fadd	s30, s30, s31	;# _8, _7, tmp248
;# varargs-dll.c:1020:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 56]	;# tmp249, j
	fadd	s30, s30, s31	;# _9, _8, tmp249
;# varargs-dll.c:1020:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 52]	;# tmp250, k
	fadd	s30, s30, s31	;# _10, _9, tmp250
;# varargs-dll.c:1020:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 48]	;# tmp251, l
	fadd	s30, s30, s31	;# _11, _10, tmp251
;# varargs-dll.c:1020:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 44]	;# tmp252, m
	fadd	s30, s30, s31	;# _12, _11, tmp252
;# varargs-dll.c:1020:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 40]	;# tmp253, n
	fadd	s30, s30, s31	;# _13, _12, tmp253
;# varargs-dll.c:1020:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 36]	;# tmp254, o
	fadd	s30, s30, s31	;# _14, _13, tmp254
;# varargs-dll.c:1020:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 32]	;# tmp255, p
	fadd	s30, s30, s31	;# _15, _14, tmp255
;# varargs-dll.c:1020:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 28]	;# tmp256, q
	fadd	s31, s30, s31	;# _16, _15, tmp256
	fcvtzs	s31, s31	;# _54, _16
	fmov	w0, s31	;# <retval>, _54
;# varargs-dll.c:1021: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_hfa_2_floats
	.def	use_va_list_many_hfa_2_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_hfa_2_floats
use_va_list_many_hfa_2_floats:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1026:   float a = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp]	;# D.9224, argv
	add	x1, x0, 8	;# D.9225, D.9224,
	str	x1, [sp]	;# D.9225, argv
	ldr	x0, [x0]	;# D.7425, MEM[(struct hfa_2_floats *)_53]
;# varargs-dll.c:1026:   float a = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp171, D.7425,,
	fmov	s31, w0	;# tmp173, tmp172
	str	s31, [sp, 92]	;# tmp173, a
;# varargs-dll.c:1027:   float b = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp]	;# D.9226, argv
	add	x1, x0, 8	;# D.9227, D.9226,
	str	x1, [sp]	;# D.9227, argv
	ldr	x0, [x0]	;# D.7426, MEM[(struct hfa_2_floats *)_57]
;# varargs-dll.c:1027:   float b = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp175, D.7426,
	fmov	s31, w0	;# tmp177, tmp176
	str	s31, [sp, 88]	;# tmp177, b
;# varargs-dll.c:1028:   float c = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp]	;# D.9228, argv
	add	x1, x0, 8	;# D.9229, D.9228,
	str	x1, [sp]	;# D.9229, argv
	ldr	x0, [x0]	;# D.7427, MEM[(struct hfa_2_floats *)_61]
;# varargs-dll.c:1028:   float c = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp179, D.7427,,
	fmov	s31, w0	;# tmp181, tmp180
	str	s31, [sp, 84]	;# tmp181, c
;# varargs-dll.c:1029:   float d = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp]	;# D.9230, argv
	add	x1, x0, 8	;# D.9231, D.9230,
	str	x1, [sp]	;# D.9231, argv
	ldr	x0, [x0]	;# D.7428, MEM[(struct hfa_2_floats *)_65]
;# varargs-dll.c:1029:   float d = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp183, D.7428,
	fmov	s31, w0	;# tmp185, tmp184
	str	s31, [sp, 80]	;# tmp185, d
;# varargs-dll.c:1030:   float e = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp]	;# D.9232, argv
	add	x1, x0, 8	;# D.9233, D.9232,
	str	x1, [sp]	;# D.9233, argv
	ldr	x0, [x0]	;# D.7429, MEM[(struct hfa_2_floats *)_69]
;# varargs-dll.c:1030:   float e = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp187, D.7429,,
	fmov	s31, w0	;# tmp189, tmp188
	str	s31, [sp, 76]	;# tmp189, e
;# varargs-dll.c:1031:   float f = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp]	;# D.9234, argv
	add	x1, x0, 8	;# D.9235, D.9234,
	str	x1, [sp]	;# D.9235, argv
	ldr	x0, [x0]	;# D.7430, MEM[(struct hfa_2_floats *)_73]
;# varargs-dll.c:1031:   float f = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp191, D.7430,
	fmov	s31, w0	;# tmp193, tmp192
	str	s31, [sp, 72]	;# tmp193, f
;# varargs-dll.c:1032:   float g = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp]	;# D.9236, argv
	add	x1, x0, 8	;# D.9237, D.9236,
	str	x1, [sp]	;# D.9237, argv
	ldr	x0, [x0]	;# D.7431, MEM[(struct hfa_2_floats *)_77]
;# varargs-dll.c:1032:   float g = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp195, D.7431,,
	fmov	s31, w0	;# tmp197, tmp196
	str	s31, [sp, 68]	;# tmp197, g
;# varargs-dll.c:1033:   float h = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp]	;# D.9238, argv
	add	x1, x0, 8	;# D.9239, D.9238,
	str	x1, [sp]	;# D.9239, argv
	ldr	x0, [x0]	;# D.7432, MEM[(struct hfa_2_floats *)_81]
;# varargs-dll.c:1033:   float h = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp199, D.7432,
	fmov	s31, w0	;# tmp201, tmp200
	str	s31, [sp, 64]	;# tmp201, h
;# varargs-dll.c:1034:   float i = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp]	;# D.9240, argv
	add	x1, x0, 8	;# D.9241, D.9240,
	str	x1, [sp]	;# D.9241, argv
	ldr	x0, [x0]	;# D.7433, MEM[(struct hfa_2_floats *)_85]
;# varargs-dll.c:1034:   float i = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp203, D.7433,,
	fmov	s31, w0	;# tmp205, tmp204
	str	s31, [sp, 60]	;# tmp205, i
;# varargs-dll.c:1035:   float j = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp]	;# D.9242, argv
	add	x1, x0, 8	;# D.9243, D.9242,
	str	x1, [sp]	;# D.9243, argv
	ldr	x0, [x0]	;# D.7434, MEM[(struct hfa_2_floats *)_89]
;# varargs-dll.c:1035:   float j = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp207, D.7434,
	fmov	s31, w0	;# tmp209, tmp208
	str	s31, [sp, 56]	;# tmp209, j
;# varargs-dll.c:1036:   float k = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp]	;# D.9244, argv
	add	x1, x0, 8	;# D.9245, D.9244,
	str	x1, [sp]	;# D.9245, argv
	ldr	x0, [x0]	;# D.7435, MEM[(struct hfa_2_floats *)_93]
;# varargs-dll.c:1036:   float k = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp211, D.7435,,
	fmov	s31, w0	;# tmp213, tmp212
	str	s31, [sp, 52]	;# tmp213, k
;# varargs-dll.c:1037:   float l = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp]	;# D.9246, argv
	add	x1, x0, 8	;# D.9247, D.9246,
	str	x1, [sp]	;# D.9247, argv
	ldr	x0, [x0]	;# D.7436, MEM[(struct hfa_2_floats *)_97]
;# varargs-dll.c:1037:   float l = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp215, D.7436,
	fmov	s31, w0	;# tmp217, tmp216
	str	s31, [sp, 48]	;# tmp217, l
;# varargs-dll.c:1038:   float m = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp]	;# D.9248, argv
	add	x1, x0, 8	;# D.9249, D.9248,
	str	x1, [sp]	;# D.9249, argv
	ldr	x0, [x0]	;# D.7437, MEM[(struct hfa_2_floats *)_101]
;# varargs-dll.c:1038:   float m = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp219, D.7437,,
	fmov	s31, w0	;# tmp221, tmp220
	str	s31, [sp, 44]	;# tmp221, m
;# varargs-dll.c:1039:   float n = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp]	;# D.9250, argv
	add	x1, x0, 8	;# D.9251, D.9250,
	str	x1, [sp]	;# D.9251, argv
	ldr	x0, [x0]	;# D.7438, MEM[(struct hfa_2_floats *)_105]
;# varargs-dll.c:1039:   float n = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp223, D.7438,
	fmov	s31, w0	;# tmp225, tmp224
	str	s31, [sp, 40]	;# tmp225, n
;# varargs-dll.c:1040:   float o = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp]	;# D.9252, argv
	add	x1, x0, 8	;# D.9253, D.9252,
	str	x1, [sp]	;# D.9253, argv
	ldr	x0, [x0]	;# D.7439, MEM[(struct hfa_2_floats *)_109]
;# varargs-dll.c:1040:   float o = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp227, D.7439,,
	fmov	s31, w0	;# tmp229, tmp228
	str	s31, [sp, 36]	;# tmp229, o
;# varargs-dll.c:1041:   float p = va_arg (argv, struct hfa_2_floats).b;
	ldr	x0, [sp]	;# D.9254, argv
	add	x1, x0, 8	;# D.9255, D.9254,
	str	x1, [sp]	;# D.9255, argv
	ldr	x0, [x0]	;# D.7440, MEM[(struct hfa_2_floats *)_113]
;# varargs-dll.c:1041:   float p = va_arg (argv, struct hfa_2_floats).b;
	asr	x0, x0, 32	;# tmp231, D.7440,
	fmov	s31, w0	;# tmp233, tmp232
	str	s31, [sp, 32]	;# tmp233, p
;# varargs-dll.c:1042:   float q = va_arg (argv, struct hfa_2_floats).a;
	ldr	x0, [sp]	;# D.9256, argv
	add	x1, x0, 8	;# D.9257, D.9256,
	str	x1, [sp]	;# D.9257, argv
	ldr	x0, [x0]	;# D.7441, MEM[(struct hfa_2_floats *)_117]
;# varargs-dll.c:1042:   float q = va_arg (argv, struct hfa_2_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp235, D.7441,,
	fmov	s31, w0	;# tmp237, tmp236
	str	s31, [sp, 28]	;# tmp237, q
;# varargs-dll.c:1043:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s30, [sp, 92]	;# tmp238, a
	ldr	s31, [sp, 88]	;# tmp239, b
	fadd	s30, s30, s31	;# _1, tmp238, tmp239
;# varargs-dll.c:1043:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 84]	;# tmp240, c
	fadd	s30, s30, s31	;# _2, _1, tmp240
;# varargs-dll.c:1043:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 80]	;# tmp241, d
	fadd	s30, s30, s31	;# _3, _2, tmp241
;# varargs-dll.c:1043:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 76]	;# tmp242, e
	fadd	s30, s30, s31	;# _4, _3, tmp242
;# varargs-dll.c:1043:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 72]	;# tmp243, f
	fadd	s30, s30, s31	;# _5, _4, tmp243
;# varargs-dll.c:1043:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 68]	;# tmp244, g
	fadd	s30, s30, s31	;# _6, _5, tmp244
;# varargs-dll.c:1043:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 64]	;# tmp245, h
	fadd	s30, s30, s31	;# _7, _6, tmp245
;# varargs-dll.c:1043:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 60]	;# tmp246, i
	fadd	s30, s30, s31	;# _8, _7, tmp246
;# varargs-dll.c:1043:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 56]	;# tmp247, j
	fadd	s30, s30, s31	;# _9, _8, tmp247
;# varargs-dll.c:1043:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 52]	;# tmp248, k
	fadd	s30, s30, s31	;# _10, _9, tmp248
;# varargs-dll.c:1043:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 48]	;# tmp249, l
	fadd	s30, s30, s31	;# _11, _10, tmp249
;# varargs-dll.c:1043:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 44]	;# tmp250, m
	fadd	s30, s30, s31	;# _12, _11, tmp250
;# varargs-dll.c:1043:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 40]	;# tmp251, n
	fadd	s30, s30, s31	;# _13, _12, tmp251
;# varargs-dll.c:1043:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 36]	;# tmp252, o
	fadd	s30, s30, s31	;# _14, _13, tmp252
;# varargs-dll.c:1043:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 32]	;# tmp253, p
	fadd	s30, s30, s31	;# _15, _14, tmp253
;# varargs-dll.c:1043:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 28]	;# tmp254, q
	fadd	s31, s30, s31	;# _16, _15, tmp254
	fcvtzs	s31, s31	;# _52, _16
	fmov	w0, s31	;# <retval>, _52
;# varargs-dll.c:1044: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_hfa_4_floats
	.def	use_va_args_few_hfa_4_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_hfa_4_floats
use_va_args_few_hfa_4_floats:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 40]	;#,
	str	x2, [sp, 48]	;#,
	str	x3, [sp, 56]	;#,
	str	x4, [sp, 64]	;#,
	str	x5, [sp, 72]	;#,
	str	x6, [sp, 80]	;#,
	str	x7, [sp, 88]	;#,
;# varargs-dll.c:1050:   va_start (argv, format);
	add	x0, sp, 96	;# tmp110,,
	sub	x0, x0, #56	;# tmp111, tmp110,
	str	x0, [sp, 16]	;# tmp111, MEM[(char * *)&argv]
;# varargs-dll.c:1051:   float a = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp, 16]	;# D.9258, argv
	add	x1, x0, 16	;# D.9259, D.9258,
	str	x1, [sp, 16]	;# D.9259, argv
	ldp	x0, x1, [x0]	;# D.7444, MEM[(struct hfa_4_floats *)_11]
;# varargs-dll.c:1051:   float a = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp113, D.7444,,
	fmov	s31, w0	;# tmp115, tmp114
	str	s31, [sp, 28]	;# tmp115, a
;# varargs-dll.c:1052:   float b = va_arg (argv, struct hfa_4_floats).b;
	ldr	x0, [sp, 16]	;# D.9260, argv
	add	x1, x0, 16	;# D.9261, D.9260,
	str	x1, [sp, 16]	;# D.9261, argv
	ldp	x0, x1, [x0]	;# D.7445, MEM[(struct hfa_4_floats *)_15]
;# varargs-dll.c:1052:   float b = va_arg (argv, struct hfa_4_floats).b;
	asr	x0, x0, 32	;# tmp118, tmp117,
	fmov	s31, w0	;# tmp120, tmp119
	str	s31, [sp, 24]	;# tmp120, b
;# varargs-dll.c:1054:   return a + b;
	ldr	s30, [sp, 28]	;# tmp121, a
	ldr	s31, [sp, 24]	;# tmp122, b
	fadd	s31, s30, s31	;# _1, tmp121, tmp122
	fcvtzs	s31, s31	;# _9, _1
	fmov	w0, s31	;# <retval>, _9
;# varargs-dll.c:1055: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_hfa_4_floats
	.def	use_va_list_few_hfa_4_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_hfa_4_floats
use_va_list_few_hfa_4_floats:
	sub	sp, sp, #32	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1060:   float a = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp]	;# D.9262, argv
	add	x1, x0, 16	;# D.9263, D.9262,
	str	x1, [sp]	;# D.9263, argv
	ldp	x0, x1, [x0]	;# D.7449, MEM[(struct hfa_4_floats *)_8]
;# varargs-dll.c:1060:   float a = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp111, D.7449,,
	fmov	s31, w0	;# tmp113, tmp112
	str	s31, [sp, 28]	;# tmp113, a
;# varargs-dll.c:1061:   float b = va_arg (argv, struct hfa_4_floats).b;
	ldr	x0, [sp]	;# D.9264, argv
	add	x1, x0, 16	;# D.9265, D.9264,
	str	x1, [sp]	;# D.9265, argv
	ldp	x0, x1, [x0]	;# D.7450, MEM[(struct hfa_4_floats *)_12]
;# varargs-dll.c:1061:   float b = va_arg (argv, struct hfa_4_floats).b;
	asr	x0, x0, 32	;# tmp116, tmp115,
	fmov	s31, w0	;# tmp118, tmp117
	str	s31, [sp, 24]	;# tmp118, b
;# varargs-dll.c:1062:   return a + b;
	ldr	s30, [sp, 28]	;# tmp119, a
	ldr	s31, [sp, 24]	;# tmp120, b
	fadd	s31, s30, s31	;# _1, tmp119, tmp120
	fcvtzs	s31, s31	;# _7, _1
	fmov	w0, s31	;# <retval>, _7
;# varargs-dll.c:1063: }
	add	sp, sp, 32	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_hfa_4_floats
	.def	use_va_args_several_hfa_4_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_hfa_4_floats
use_va_args_several_hfa_4_floats:
	sub	sp, sp, #128	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 72]	;#,
	str	x2, [sp, 80]	;#,
	str	x3, [sp, 88]	;#,
	str	x4, [sp, 96]	;#,
	str	x5, [sp, 104]	;#,
	str	x6, [sp, 112]	;#,
	str	x7, [sp, 120]	;#,
;# varargs-dll.c:1069:   va_start (argv, format);
	add	x0, sp, 128	;# tmp138,,
	sub	x0, x0, #56	;# tmp139, tmp138,
	str	x0, [sp, 16]	;# tmp139, MEM[(char * *)&argv]
;# varargs-dll.c:1070:   float a = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp, 16]	;# D.9266, argv
	add	x1, x0, 16	;# D.9267, D.9266,
	str	x1, [sp, 16]	;# D.9267, argv
	ldp	x0, x1, [x0]	;# D.7453, MEM[(struct hfa_4_floats *)_32]
;# varargs-dll.c:1070:   float a = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp141, D.7453,,
	fmov	s31, w0	;# tmp143, tmp142
	str	s31, [sp, 60]	;# tmp143, a
;# varargs-dll.c:1071:   float b = va_arg (argv, struct hfa_4_floats).b;
	ldr	x0, [sp, 16]	;# D.9268, argv
	add	x1, x0, 16	;# D.9269, D.9268,
	str	x1, [sp, 16]	;# D.9269, argv
	ldp	x0, x1, [x0]	;# D.7454, MEM[(struct hfa_4_floats *)_36]
;# varargs-dll.c:1071:   float b = va_arg (argv, struct hfa_4_floats).b;
	asr	x0, x0, 32	;# tmp146, tmp145,
	fmov	s31, w0	;# tmp148, tmp147
	str	s31, [sp, 56]	;# tmp148, b
;# varargs-dll.c:1072:   float c = va_arg (argv, struct hfa_4_floats).c;
	ldr	x0, [sp, 16]	;# D.9270, argv
	add	x1, x0, 16	;# D.9271, D.9270,
	str	x1, [sp, 16]	;# D.9271, argv
	ldp	x0, x1, [x0]	;# D.7455, MEM[(struct hfa_4_floats *)_40]
;# varargs-dll.c:1072:   float c = va_arg (argv, struct hfa_4_floats).c;
	sbfx	x0, x1, 0, 32	;# tmp150, D.7455,,
	fmov	s31, w0	;# tmp152, tmp151
	str	s31, [sp, 52]	;# tmp152, c
;# varargs-dll.c:1073:   float d = va_arg (argv, struct hfa_4_floats).d;
	ldr	x0, [sp, 16]	;# D.9272, argv
	add	x1, x0, 16	;# D.9273, D.9272,
	str	x1, [sp, 16]	;# D.9273, argv
	ldp	x0, x1, [x0]	;# D.7456, MEM[(struct hfa_4_floats *)_44]
;# varargs-dll.c:1073:   float d = va_arg (argv, struct hfa_4_floats).d;
	mov	x0, x1	;# tmp154, D.7456
	asr	x0, x0, 32	;# tmp155, tmp154,
	fmov	s31, w0	;# tmp157, tmp156
	str	s31, [sp, 48]	;# tmp157, d
;# varargs-dll.c:1074:   float e = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp, 16]	;# D.9274, argv
	add	x1, x0, 16	;# D.9275, D.9274,
	str	x1, [sp, 16]	;# D.9275, argv
	ldp	x0, x1, [x0]	;# D.7457, MEM[(struct hfa_4_floats *)_48]
;# varargs-dll.c:1074:   float e = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp159, D.7457,,
	fmov	s31, w0	;# tmp161, tmp160
	str	s31, [sp, 44]	;# tmp161, e
;# varargs-dll.c:1075:   float f = va_arg (argv, struct hfa_4_floats).b;
	ldr	x0, [sp, 16]	;# D.9276, argv
	add	x1, x0, 16	;# D.9277, D.9276,
	str	x1, [sp, 16]	;# D.9277, argv
	ldp	x0, x1, [x0]	;# D.7458, MEM[(struct hfa_4_floats *)_52]
;# varargs-dll.c:1075:   float f = va_arg (argv, struct hfa_4_floats).b;
	asr	x0, x0, 32	;# tmp164, tmp163,
	fmov	s31, w0	;# tmp166, tmp165
	str	s31, [sp, 40]	;# tmp166, f
;# varargs-dll.c:1076:   float g = va_arg (argv, struct hfa_4_floats).c;
	ldr	x0, [sp, 16]	;# D.9278, argv
	add	x1, x0, 16	;# D.9279, D.9278,
	str	x1, [sp, 16]	;# D.9279, argv
	ldp	x0, x1, [x0]	;# D.7459, MEM[(struct hfa_4_floats *)_56]
;# varargs-dll.c:1076:   float g = va_arg (argv, struct hfa_4_floats).c;
	sbfx	x0, x1, 0, 32	;# tmp168, D.7459,,
	fmov	s31, w0	;# tmp170, tmp169
	str	s31, [sp, 36]	;# tmp170, g
;# varargs-dll.c:1077:   float h = va_arg (argv, struct hfa_4_floats).d;
	ldr	x0, [sp, 16]	;# D.9280, argv
	add	x1, x0, 16	;# D.9281, D.9280,
	str	x1, [sp, 16]	;# D.9281, argv
	ldp	x0, x1, [x0]	;# D.7460, MEM[(struct hfa_4_floats *)_60]
;# varargs-dll.c:1077:   float h = va_arg (argv, struct hfa_4_floats).d;
	mov	x0, x1	;# tmp172, D.7460
	asr	x0, x0, 32	;# tmp173, tmp172,
	fmov	s31, w0	;# tmp175, tmp174
	str	s31, [sp, 32]	;# tmp175, h
;# varargs-dll.c:1078:   float i = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp, 16]	;# D.9282, argv
	add	x1, x0, 16	;# D.9283, D.9282,
	str	x1, [sp, 16]	;# D.9283, argv
	ldp	x0, x1, [x0]	;# D.7461, MEM[(struct hfa_4_floats *)_64]
;# varargs-dll.c:1078:   float i = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp177, D.7461,,
	fmov	s31, w0	;# tmp179, tmp178
	str	s31, [sp, 28]	;# tmp179, i
;# varargs-dll.c:1080:   return a + b + c + d + e + f + g + h + i;
	ldr	s30, [sp, 60]	;# tmp180, a
	ldr	s31, [sp, 56]	;# tmp181, b
	fadd	s30, s30, s31	;# _1, tmp180, tmp181
;# varargs-dll.c:1080:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 52]	;# tmp182, c
	fadd	s30, s30, s31	;# _2, _1, tmp182
;# varargs-dll.c:1080:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 48]	;# tmp183, d
	fadd	s30, s30, s31	;# _3, _2, tmp183
;# varargs-dll.c:1080:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 44]	;# tmp184, e
	fadd	s30, s30, s31	;# _4, _3, tmp184
;# varargs-dll.c:1080:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 40]	;# tmp185, f
	fadd	s30, s30, s31	;# _5, _4, tmp185
;# varargs-dll.c:1080:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 36]	;# tmp186, g
	fadd	s30, s30, s31	;# _6, _5, tmp186
;# varargs-dll.c:1080:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 32]	;# tmp187, h
	fadd	s30, s30, s31	;# _7, _6, tmp187
;# varargs-dll.c:1080:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 28]	;# tmp188, i
	fadd	s31, s30, s31	;# _8, _7, tmp188
	fcvtzs	s31, s31	;# _30, _8
	fmov	w0, s31	;# <retval>, _30
;# varargs-dll.c:1081: }
	add	sp, sp, 128	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_hfa_4_floats
	.def	use_va_list_several_hfa_4_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_hfa_4_floats
use_va_list_several_hfa_4_floats:
	sub	sp, sp, #64	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1086:   float a = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp]	;# D.9284, argv
	add	x1, x0, 16	;# D.9285, D.9284,
	str	x1, [sp]	;# D.9285, argv
	ldp	x0, x1, [x0]	;# D.7465, MEM[(struct hfa_4_floats *)_29]
;# varargs-dll.c:1086:   float a = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp139, D.7465,,
	fmov	s31, w0	;# tmp141, tmp140
	str	s31, [sp, 60]	;# tmp141, a
;# varargs-dll.c:1087:   float b = va_arg (argv, struct hfa_4_floats).b;
	ldr	x0, [sp]	;# D.9286, argv
	add	x1, x0, 16	;# D.9287, D.9286,
	str	x1, [sp]	;# D.9287, argv
	ldp	x0, x1, [x0]	;# D.7466, MEM[(struct hfa_4_floats *)_33]
;# varargs-dll.c:1087:   float b = va_arg (argv, struct hfa_4_floats).b;
	asr	x0, x0, 32	;# tmp144, tmp143,
	fmov	s31, w0	;# tmp146, tmp145
	str	s31, [sp, 56]	;# tmp146, b
;# varargs-dll.c:1088:   float c = va_arg (argv, struct hfa_4_floats).c;
	ldr	x0, [sp]	;# D.9288, argv
	add	x1, x0, 16	;# D.9289, D.9288,
	str	x1, [sp]	;# D.9289, argv
	ldp	x0, x1, [x0]	;# D.7467, MEM[(struct hfa_4_floats *)_37]
;# varargs-dll.c:1088:   float c = va_arg (argv, struct hfa_4_floats).c;
	sbfx	x0, x1, 0, 32	;# tmp148, D.7467,,
	fmov	s31, w0	;# tmp150, tmp149
	str	s31, [sp, 52]	;# tmp150, c
;# varargs-dll.c:1089:   float d = va_arg (argv, struct hfa_4_floats).d;
	ldr	x0, [sp]	;# D.9290, argv
	add	x1, x0, 16	;# D.9291, D.9290,
	str	x1, [sp]	;# D.9291, argv
	ldp	x0, x1, [x0]	;# D.7468, MEM[(struct hfa_4_floats *)_41]
;# varargs-dll.c:1089:   float d = va_arg (argv, struct hfa_4_floats).d;
	mov	x0, x1	;# tmp152, D.7468
	asr	x0, x0, 32	;# tmp153, tmp152,
	fmov	s31, w0	;# tmp155, tmp154
	str	s31, [sp, 48]	;# tmp155, d
;# varargs-dll.c:1090:   float e = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp]	;# D.9292, argv
	add	x1, x0, 16	;# D.9293, D.9292,
	str	x1, [sp]	;# D.9293, argv
	ldp	x0, x1, [x0]	;# D.7469, MEM[(struct hfa_4_floats *)_45]
;# varargs-dll.c:1090:   float e = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp157, D.7469,,
	fmov	s31, w0	;# tmp159, tmp158
	str	s31, [sp, 44]	;# tmp159, e
;# varargs-dll.c:1091:   float f = va_arg (argv, struct hfa_4_floats).b;
	ldr	x0, [sp]	;# D.9294, argv
	add	x1, x0, 16	;# D.9295, D.9294,
	str	x1, [sp]	;# D.9295, argv
	ldp	x0, x1, [x0]	;# D.7470, MEM[(struct hfa_4_floats *)_49]
;# varargs-dll.c:1091:   float f = va_arg (argv, struct hfa_4_floats).b;
	asr	x0, x0, 32	;# tmp162, tmp161,
	fmov	s31, w0	;# tmp164, tmp163
	str	s31, [sp, 40]	;# tmp164, f
;# varargs-dll.c:1092:   float g = va_arg (argv, struct hfa_4_floats).c;
	ldr	x0, [sp]	;# D.9296, argv
	add	x1, x0, 16	;# D.9297, D.9296,
	str	x1, [sp]	;# D.9297, argv
	ldp	x0, x1, [x0]	;# D.7471, MEM[(struct hfa_4_floats *)_53]
;# varargs-dll.c:1092:   float g = va_arg (argv, struct hfa_4_floats).c;
	sbfx	x0, x1, 0, 32	;# tmp166, D.7471,,
	fmov	s31, w0	;# tmp168, tmp167
	str	s31, [sp, 36]	;# tmp168, g
;# varargs-dll.c:1093:   float h = va_arg (argv, struct hfa_4_floats).d;
	ldr	x0, [sp]	;# D.9298, argv
	add	x1, x0, 16	;# D.9299, D.9298,
	str	x1, [sp]	;# D.9299, argv
	ldp	x0, x1, [x0]	;# D.7472, MEM[(struct hfa_4_floats *)_57]
;# varargs-dll.c:1093:   float h = va_arg (argv, struct hfa_4_floats).d;
	mov	x0, x1	;# tmp170, D.7472
	asr	x0, x0, 32	;# tmp171, tmp170,
	fmov	s31, w0	;# tmp173, tmp172
	str	s31, [sp, 32]	;# tmp173, h
;# varargs-dll.c:1094:   float i = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp]	;# D.9300, argv
	add	x1, x0, 16	;# D.9301, D.9300,
	str	x1, [sp]	;# D.9301, argv
	ldp	x0, x1, [x0]	;# D.7473, MEM[(struct hfa_4_floats *)_61]
;# varargs-dll.c:1094:   float i = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp175, D.7473,,
	fmov	s31, w0	;# tmp177, tmp176
	str	s31, [sp, 28]	;# tmp177, i
;# varargs-dll.c:1095:   return a + b + c + d + e + f + g + h + i;
	ldr	s30, [sp, 60]	;# tmp178, a
	ldr	s31, [sp, 56]	;# tmp179, b
	fadd	s30, s30, s31	;# _1, tmp178, tmp179
;# varargs-dll.c:1095:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 52]	;# tmp180, c
	fadd	s30, s30, s31	;# _2, _1, tmp180
;# varargs-dll.c:1095:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 48]	;# tmp181, d
	fadd	s30, s30, s31	;# _3, _2, tmp181
;# varargs-dll.c:1095:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 44]	;# tmp182, e
	fadd	s30, s30, s31	;# _4, _3, tmp182
;# varargs-dll.c:1095:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 40]	;# tmp183, f
	fadd	s30, s30, s31	;# _5, _4, tmp183
;# varargs-dll.c:1095:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 36]	;# tmp184, g
	fadd	s30, s30, s31	;# _6, _5, tmp184
;# varargs-dll.c:1095:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 32]	;# tmp185, h
	fadd	s30, s30, s31	;# _7, _6, tmp185
;# varargs-dll.c:1095:   return a + b + c + d + e + f + g + h + i;
	ldr	s31, [sp, 28]	;# tmp186, i
	fadd	s31, s30, s31	;# _8, _7, tmp186
	fcvtzs	s31, s31	;# _28, _8
	fmov	w0, s31	;# <retval>, _28
;# varargs-dll.c:1096: }
	add	sp, sp, 64	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_hfa_4_floats
	.def	use_va_args_many_hfa_4_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_hfa_4_floats
use_va_args_many_hfa_4_floats:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 104]	;#,
	str	x2, [sp, 112]	;#,
	str	x3, [sp, 120]	;#,
	str	x4, [sp, 128]	;#,
	str	x5, [sp, 136]	;#,
	str	x6, [sp, 144]	;#,
	str	x7, [sp, 152]	;#,
;# varargs-dll.c:1102:   va_start (argv, format);
	add	x0, sp, 160	;# tmp170,,
	sub	x0, x0, #56	;# tmp171, tmp170,
	str	x0, [sp, 16]	;# tmp171, MEM[(char * *)&argv]
;# varargs-dll.c:1103:   float a = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp, 16]	;# D.9302, argv
	add	x1, x0, 16	;# D.9303, D.9302,
	str	x1, [sp, 16]	;# D.9303, argv
	ldp	x0, x1, [x0]	;# D.7476, MEM[(struct hfa_4_floats *)_56]
;# varargs-dll.c:1103:   float a = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp173, D.7476,,
	fmov	s31, w0	;# tmp175, tmp174
	str	s31, [sp, 92]	;# tmp175, a
;# varargs-dll.c:1104:   float b = va_arg (argv, struct hfa_4_floats).b;
	ldr	x0, [sp, 16]	;# D.9304, argv
	add	x1, x0, 16	;# D.9305, D.9304,
	str	x1, [sp, 16]	;# D.9305, argv
	ldp	x0, x1, [x0]	;# D.7477, MEM[(struct hfa_4_floats *)_60]
;# varargs-dll.c:1104:   float b = va_arg (argv, struct hfa_4_floats).b;
	asr	x0, x0, 32	;# tmp178, tmp177,
	fmov	s31, w0	;# tmp180, tmp179
	str	s31, [sp, 88]	;# tmp180, b
;# varargs-dll.c:1105:   float c = va_arg (argv, struct hfa_4_floats).c;
	ldr	x0, [sp, 16]	;# D.9306, argv
	add	x1, x0, 16	;# D.9307, D.9306,
	str	x1, [sp, 16]	;# D.9307, argv
	ldp	x0, x1, [x0]	;# D.7478, MEM[(struct hfa_4_floats *)_64]
;# varargs-dll.c:1105:   float c = va_arg (argv, struct hfa_4_floats).c;
	sbfx	x0, x1, 0, 32	;# tmp182, D.7478,,
	fmov	s31, w0	;# tmp184, tmp183
	str	s31, [sp, 84]	;# tmp184, c
;# varargs-dll.c:1106:   float d = va_arg (argv, struct hfa_4_floats).d;
	ldr	x0, [sp, 16]	;# D.9308, argv
	add	x1, x0, 16	;# D.9309, D.9308,
	str	x1, [sp, 16]	;# D.9309, argv
	ldp	x0, x1, [x0]	;# D.7479, MEM[(struct hfa_4_floats *)_68]
;# varargs-dll.c:1106:   float d = va_arg (argv, struct hfa_4_floats).d;
	mov	x0, x1	;# tmp186, D.7479
	asr	x0, x0, 32	;# tmp187, tmp186,
	fmov	s31, w0	;# tmp189, tmp188
	str	s31, [sp, 80]	;# tmp189, d
;# varargs-dll.c:1107:   float e = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp, 16]	;# D.9310, argv
	add	x1, x0, 16	;# D.9311, D.9310,
	str	x1, [sp, 16]	;# D.9311, argv
	ldp	x0, x1, [x0]	;# D.7480, MEM[(struct hfa_4_floats *)_72]
;# varargs-dll.c:1107:   float e = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp191, D.7480,,
	fmov	s31, w0	;# tmp193, tmp192
	str	s31, [sp, 76]	;# tmp193, e
;# varargs-dll.c:1108:   float f = va_arg (argv, struct hfa_4_floats).b;
	ldr	x0, [sp, 16]	;# D.9312, argv
	add	x1, x0, 16	;# D.9313, D.9312,
	str	x1, [sp, 16]	;# D.9313, argv
	ldp	x0, x1, [x0]	;# D.7481, MEM[(struct hfa_4_floats *)_76]
;# varargs-dll.c:1108:   float f = va_arg (argv, struct hfa_4_floats).b;
	asr	x0, x0, 32	;# tmp196, tmp195,
	fmov	s31, w0	;# tmp198, tmp197
	str	s31, [sp, 72]	;# tmp198, f
;# varargs-dll.c:1109:   float g = va_arg (argv, struct hfa_4_floats).c;
	ldr	x0, [sp, 16]	;# D.9314, argv
	add	x1, x0, 16	;# D.9315, D.9314,
	str	x1, [sp, 16]	;# D.9315, argv
	ldp	x0, x1, [x0]	;# D.7482, MEM[(struct hfa_4_floats *)_80]
;# varargs-dll.c:1109:   float g = va_arg (argv, struct hfa_4_floats).c;
	sbfx	x0, x1, 0, 32	;# tmp200, D.7482,,
	fmov	s31, w0	;# tmp202, tmp201
	str	s31, [sp, 68]	;# tmp202, g
;# varargs-dll.c:1110:   float h = va_arg (argv, struct hfa_4_floats).d;
	ldr	x0, [sp, 16]	;# D.9316, argv
	add	x1, x0, 16	;# D.9317, D.9316,
	str	x1, [sp, 16]	;# D.9317, argv
	ldp	x0, x1, [x0]	;# D.7483, MEM[(struct hfa_4_floats *)_84]
;# varargs-dll.c:1110:   float h = va_arg (argv, struct hfa_4_floats).d;
	mov	x0, x1	;# tmp204, D.7483
	asr	x0, x0, 32	;# tmp205, tmp204,
	fmov	s31, w0	;# tmp207, tmp206
	str	s31, [sp, 64]	;# tmp207, h
;# varargs-dll.c:1111:   float i = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp, 16]	;# D.9318, argv
	add	x1, x0, 16	;# D.9319, D.9318,
	str	x1, [sp, 16]	;# D.9319, argv
	ldp	x0, x1, [x0]	;# D.7484, MEM[(struct hfa_4_floats *)_88]
;# varargs-dll.c:1111:   float i = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp209, D.7484,,
	fmov	s31, w0	;# tmp211, tmp210
	str	s31, [sp, 60]	;# tmp211, i
;# varargs-dll.c:1112:   float j = va_arg (argv, struct hfa_4_floats).b;
	ldr	x0, [sp, 16]	;# D.9320, argv
	add	x1, x0, 16	;# D.9321, D.9320,
	str	x1, [sp, 16]	;# D.9321, argv
	ldp	x0, x1, [x0]	;# D.7485, MEM[(struct hfa_4_floats *)_92]
;# varargs-dll.c:1112:   float j = va_arg (argv, struct hfa_4_floats).b;
	asr	x0, x0, 32	;# tmp214, tmp213,
	fmov	s31, w0	;# tmp216, tmp215
	str	s31, [sp, 56]	;# tmp216, j
;# varargs-dll.c:1113:   float k = va_arg (argv, struct hfa_4_floats).c;
	ldr	x0, [sp, 16]	;# D.9322, argv
	add	x1, x0, 16	;# D.9323, D.9322,
	str	x1, [sp, 16]	;# D.9323, argv
	ldp	x0, x1, [x0]	;# D.7486, MEM[(struct hfa_4_floats *)_96]
;# varargs-dll.c:1113:   float k = va_arg (argv, struct hfa_4_floats).c;
	sbfx	x0, x1, 0, 32	;# tmp218, D.7486,,
	fmov	s31, w0	;# tmp220, tmp219
	str	s31, [sp, 52]	;# tmp220, k
;# varargs-dll.c:1114:   float l = va_arg (argv, struct hfa_4_floats).d;
	ldr	x0, [sp, 16]	;# D.9324, argv
	add	x1, x0, 16	;# D.9325, D.9324,
	str	x1, [sp, 16]	;# D.9325, argv
	ldp	x0, x1, [x0]	;# D.7487, MEM[(struct hfa_4_floats *)_100]
;# varargs-dll.c:1114:   float l = va_arg (argv, struct hfa_4_floats).d;
	mov	x0, x1	;# tmp222, D.7487
	asr	x0, x0, 32	;# tmp223, tmp222,
	fmov	s31, w0	;# tmp225, tmp224
	str	s31, [sp, 48]	;# tmp225, l
;# varargs-dll.c:1115:   float m = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp, 16]	;# D.9326, argv
	add	x1, x0, 16	;# D.9327, D.9326,
	str	x1, [sp, 16]	;# D.9327, argv
	ldp	x0, x1, [x0]	;# D.7488, MEM[(struct hfa_4_floats *)_104]
;# varargs-dll.c:1115:   float m = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp227, D.7488,,
	fmov	s31, w0	;# tmp229, tmp228
	str	s31, [sp, 44]	;# tmp229, m
;# varargs-dll.c:1116:   float n = va_arg (argv, struct hfa_4_floats).b;
	ldr	x0, [sp, 16]	;# D.9328, argv
	add	x1, x0, 16	;# D.9329, D.9328,
	str	x1, [sp, 16]	;# D.9329, argv
	ldp	x0, x1, [x0]	;# D.7489, MEM[(struct hfa_4_floats *)_108]
;# varargs-dll.c:1116:   float n = va_arg (argv, struct hfa_4_floats).b;
	asr	x0, x0, 32	;# tmp232, tmp231,
	fmov	s31, w0	;# tmp234, tmp233
	str	s31, [sp, 40]	;# tmp234, n
;# varargs-dll.c:1117:   float o = va_arg (argv, struct hfa_4_floats).c;
	ldr	x0, [sp, 16]	;# D.9330, argv
	add	x1, x0, 16	;# D.9331, D.9330,
	str	x1, [sp, 16]	;# D.9331, argv
	ldp	x0, x1, [x0]	;# D.7490, MEM[(struct hfa_4_floats *)_112]
;# varargs-dll.c:1117:   float o = va_arg (argv, struct hfa_4_floats).c;
	sbfx	x0, x1, 0, 32	;# tmp236, D.7490,,
	fmov	s31, w0	;# tmp238, tmp237
	str	s31, [sp, 36]	;# tmp238, o
;# varargs-dll.c:1118:   float p = va_arg (argv, struct hfa_4_floats).d;
	ldr	x0, [sp, 16]	;# D.9332, argv
	add	x1, x0, 16	;# D.9333, D.9332,
	str	x1, [sp, 16]	;# D.9333, argv
	ldp	x0, x1, [x0]	;# D.7491, MEM[(struct hfa_4_floats *)_116]
;# varargs-dll.c:1118:   float p = va_arg (argv, struct hfa_4_floats).d;
	mov	x0, x1	;# tmp240, D.7491
	asr	x0, x0, 32	;# tmp241, tmp240,
	fmov	s31, w0	;# tmp243, tmp242
	str	s31, [sp, 32]	;# tmp243, p
;# varargs-dll.c:1119:   float q = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp, 16]	;# D.9334, argv
	add	x1, x0, 16	;# D.9335, D.9334,
	str	x1, [sp, 16]	;# D.9335, argv
	ldp	x0, x1, [x0]	;# D.7492, MEM[(struct hfa_4_floats *)_120]
;# varargs-dll.c:1119:   float q = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp245, D.7492,,
	fmov	s31, w0	;# tmp247, tmp246
	str	s31, [sp, 28]	;# tmp247, q
;# varargs-dll.c:1121:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s30, [sp, 92]	;# tmp248, a
	ldr	s31, [sp, 88]	;# tmp249, b
	fadd	s30, s30, s31	;# _1, tmp248, tmp249
;# varargs-dll.c:1121:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 84]	;# tmp250, c
	fadd	s30, s30, s31	;# _2, _1, tmp250
;# varargs-dll.c:1121:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 80]	;# tmp251, d
	fadd	s30, s30, s31	;# _3, _2, tmp251
;# varargs-dll.c:1121:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 76]	;# tmp252, e
	fadd	s30, s30, s31	;# _4, _3, tmp252
;# varargs-dll.c:1121:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 72]	;# tmp253, f
	fadd	s30, s30, s31	;# _5, _4, tmp253
;# varargs-dll.c:1121:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 68]	;# tmp254, g
	fadd	s30, s30, s31	;# _6, _5, tmp254
;# varargs-dll.c:1121:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 64]	;# tmp255, h
	fadd	s30, s30, s31	;# _7, _6, tmp255
;# varargs-dll.c:1121:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 60]	;# tmp256, i
	fadd	s30, s30, s31	;# _8, _7, tmp256
;# varargs-dll.c:1121:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 56]	;# tmp257, j
	fadd	s30, s30, s31	;# _9, _8, tmp257
;# varargs-dll.c:1121:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 52]	;# tmp258, k
	fadd	s30, s30, s31	;# _10, _9, tmp258
;# varargs-dll.c:1121:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 48]	;# tmp259, l
	fadd	s30, s30, s31	;# _11, _10, tmp259
;# varargs-dll.c:1121:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 44]	;# tmp260, m
	fadd	s30, s30, s31	;# _12, _11, tmp260
;# varargs-dll.c:1121:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 40]	;# tmp261, n
	fadd	s30, s30, s31	;# _13, _12, tmp261
;# varargs-dll.c:1121:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 36]	;# tmp262, o
	fadd	s30, s30, s31	;# _14, _13, tmp262
;# varargs-dll.c:1121:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 32]	;# tmp263, p
	fadd	s30, s30, s31	;# _15, _14, tmp263
;# varargs-dll.c:1121:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 28]	;# tmp264, q
	fadd	s31, s30, s31	;# _16, _15, tmp264
	fcvtzs	s31, s31	;# _54, _16
	fmov	w0, s31	;# <retval>, _54
;# varargs-dll.c:1122: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_hfa_4_floats
	.def	use_va_list_many_hfa_4_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_hfa_4_floats
use_va_list_many_hfa_4_floats:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1127:   float a = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp]	;# D.9336, argv
	add	x1, x0, 16	;# D.9337, D.9336,
	str	x1, [sp]	;# D.9337, argv
	ldp	x0, x1, [x0]	;# D.7496, MEM[(struct hfa_4_floats *)_53]
;# varargs-dll.c:1127:   float a = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp171, D.7496,,
	fmov	s31, w0	;# tmp173, tmp172
	str	s31, [sp, 92]	;# tmp173, a
;# varargs-dll.c:1128:   float b = va_arg (argv, struct hfa_4_floats).b;
	ldr	x0, [sp]	;# D.9338, argv
	add	x1, x0, 16	;# D.9339, D.9338,
	str	x1, [sp]	;# D.9339, argv
	ldp	x0, x1, [x0]	;# D.7497, MEM[(struct hfa_4_floats *)_57]
;# varargs-dll.c:1128:   float b = va_arg (argv, struct hfa_4_floats).b;
	asr	x0, x0, 32	;# tmp176, tmp175,
	fmov	s31, w0	;# tmp178, tmp177
	str	s31, [sp, 88]	;# tmp178, b
;# varargs-dll.c:1129:   float c = va_arg (argv, struct hfa_4_floats).c;
	ldr	x0, [sp]	;# D.9340, argv
	add	x1, x0, 16	;# D.9341, D.9340,
	str	x1, [sp]	;# D.9341, argv
	ldp	x0, x1, [x0]	;# D.7498, MEM[(struct hfa_4_floats *)_61]
;# varargs-dll.c:1129:   float c = va_arg (argv, struct hfa_4_floats).c;
	sbfx	x0, x1, 0, 32	;# tmp180, D.7498,,
	fmov	s31, w0	;# tmp182, tmp181
	str	s31, [sp, 84]	;# tmp182, c
;# varargs-dll.c:1130:   float d = va_arg (argv, struct hfa_4_floats).d;
	ldr	x0, [sp]	;# D.9342, argv
	add	x1, x0, 16	;# D.9343, D.9342,
	str	x1, [sp]	;# D.9343, argv
	ldp	x0, x1, [x0]	;# D.7499, MEM[(struct hfa_4_floats *)_65]
;# varargs-dll.c:1130:   float d = va_arg (argv, struct hfa_4_floats).d;
	mov	x0, x1	;# tmp184, D.7499
	asr	x0, x0, 32	;# tmp185, tmp184,
	fmov	s31, w0	;# tmp187, tmp186
	str	s31, [sp, 80]	;# tmp187, d
;# varargs-dll.c:1131:   float e = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp]	;# D.9344, argv
	add	x1, x0, 16	;# D.9345, D.9344,
	str	x1, [sp]	;# D.9345, argv
	ldp	x0, x1, [x0]	;# D.7500, MEM[(struct hfa_4_floats *)_69]
;# varargs-dll.c:1131:   float e = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp189, D.7500,,
	fmov	s31, w0	;# tmp191, tmp190
	str	s31, [sp, 76]	;# tmp191, e
;# varargs-dll.c:1132:   float f = va_arg (argv, struct hfa_4_floats).b;
	ldr	x0, [sp]	;# D.9346, argv
	add	x1, x0, 16	;# D.9347, D.9346,
	str	x1, [sp]	;# D.9347, argv
	ldp	x0, x1, [x0]	;# D.7501, MEM[(struct hfa_4_floats *)_73]
;# varargs-dll.c:1132:   float f = va_arg (argv, struct hfa_4_floats).b;
	asr	x0, x0, 32	;# tmp194, tmp193,
	fmov	s31, w0	;# tmp196, tmp195
	str	s31, [sp, 72]	;# tmp196, f
;# varargs-dll.c:1133:   float g = va_arg (argv, struct hfa_4_floats).c;
	ldr	x0, [sp]	;# D.9348, argv
	add	x1, x0, 16	;# D.9349, D.9348,
	str	x1, [sp]	;# D.9349, argv
	ldp	x0, x1, [x0]	;# D.7502, MEM[(struct hfa_4_floats *)_77]
;# varargs-dll.c:1133:   float g = va_arg (argv, struct hfa_4_floats).c;
	sbfx	x0, x1, 0, 32	;# tmp198, D.7502,,
	fmov	s31, w0	;# tmp200, tmp199
	str	s31, [sp, 68]	;# tmp200, g
;# varargs-dll.c:1134:   float h = va_arg (argv, struct hfa_4_floats).d;
	ldr	x0, [sp]	;# D.9350, argv
	add	x1, x0, 16	;# D.9351, D.9350,
	str	x1, [sp]	;# D.9351, argv
	ldp	x0, x1, [x0]	;# D.7503, MEM[(struct hfa_4_floats *)_81]
;# varargs-dll.c:1134:   float h = va_arg (argv, struct hfa_4_floats).d;
	mov	x0, x1	;# tmp202, D.7503
	asr	x0, x0, 32	;# tmp203, tmp202,
	fmov	s31, w0	;# tmp205, tmp204
	str	s31, [sp, 64]	;# tmp205, h
;# varargs-dll.c:1135:   float i = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp]	;# D.9352, argv
	add	x1, x0, 16	;# D.9353, D.9352,
	str	x1, [sp]	;# D.9353, argv
	ldp	x0, x1, [x0]	;# D.7504, MEM[(struct hfa_4_floats *)_85]
;# varargs-dll.c:1135:   float i = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp207, D.7504,,
	fmov	s31, w0	;# tmp209, tmp208
	str	s31, [sp, 60]	;# tmp209, i
;# varargs-dll.c:1136:   float j = va_arg (argv, struct hfa_4_floats).b;
	ldr	x0, [sp]	;# D.9354, argv
	add	x1, x0, 16	;# D.9355, D.9354,
	str	x1, [sp]	;# D.9355, argv
	ldp	x0, x1, [x0]	;# D.7505, MEM[(struct hfa_4_floats *)_89]
;# varargs-dll.c:1136:   float j = va_arg (argv, struct hfa_4_floats).b;
	asr	x0, x0, 32	;# tmp212, tmp211,
	fmov	s31, w0	;# tmp214, tmp213
	str	s31, [sp, 56]	;# tmp214, j
;# varargs-dll.c:1137:   float k = va_arg (argv, struct hfa_4_floats).c;
	ldr	x0, [sp]	;# D.9356, argv
	add	x1, x0, 16	;# D.9357, D.9356,
	str	x1, [sp]	;# D.9357, argv
	ldp	x0, x1, [x0]	;# D.7506, MEM[(struct hfa_4_floats *)_93]
;# varargs-dll.c:1137:   float k = va_arg (argv, struct hfa_4_floats).c;
	sbfx	x0, x1, 0, 32	;# tmp216, D.7506,,
	fmov	s31, w0	;# tmp218, tmp217
	str	s31, [sp, 52]	;# tmp218, k
;# varargs-dll.c:1138:   float l = va_arg (argv, struct hfa_4_floats).d;
	ldr	x0, [sp]	;# D.9358, argv
	add	x1, x0, 16	;# D.9359, D.9358,
	str	x1, [sp]	;# D.9359, argv
	ldp	x0, x1, [x0]	;# D.7507, MEM[(struct hfa_4_floats *)_97]
;# varargs-dll.c:1138:   float l = va_arg (argv, struct hfa_4_floats).d;
	mov	x0, x1	;# tmp220, D.7507
	asr	x0, x0, 32	;# tmp221, tmp220,
	fmov	s31, w0	;# tmp223, tmp222
	str	s31, [sp, 48]	;# tmp223, l
;# varargs-dll.c:1139:   float m = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp]	;# D.9360, argv
	add	x1, x0, 16	;# D.9361, D.9360,
	str	x1, [sp]	;# D.9361, argv
	ldp	x0, x1, [x0]	;# D.7508, MEM[(struct hfa_4_floats *)_101]
;# varargs-dll.c:1139:   float m = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp225, D.7508,,
	fmov	s31, w0	;# tmp227, tmp226
	str	s31, [sp, 44]	;# tmp227, m
;# varargs-dll.c:1140:   float n = va_arg (argv, struct hfa_4_floats).b;
	ldr	x0, [sp]	;# D.9362, argv
	add	x1, x0, 16	;# D.9363, D.9362,
	str	x1, [sp]	;# D.9363, argv
	ldp	x0, x1, [x0]	;# D.7509, MEM[(struct hfa_4_floats *)_105]
;# varargs-dll.c:1140:   float n = va_arg (argv, struct hfa_4_floats).b;
	asr	x0, x0, 32	;# tmp230, tmp229,
	fmov	s31, w0	;# tmp232, tmp231
	str	s31, [sp, 40]	;# tmp232, n
;# varargs-dll.c:1141:   float o = va_arg (argv, struct hfa_4_floats).c;
	ldr	x0, [sp]	;# D.9364, argv
	add	x1, x0, 16	;# D.9365, D.9364,
	str	x1, [sp]	;# D.9365, argv
	ldp	x0, x1, [x0]	;# D.7510, MEM[(struct hfa_4_floats *)_109]
;# varargs-dll.c:1141:   float o = va_arg (argv, struct hfa_4_floats).c;
	sbfx	x0, x1, 0, 32	;# tmp234, D.7510,,
	fmov	s31, w0	;# tmp236, tmp235
	str	s31, [sp, 36]	;# tmp236, o
;# varargs-dll.c:1142:   float p = va_arg (argv, struct hfa_4_floats).d;
	ldr	x0, [sp]	;# D.9366, argv
	add	x1, x0, 16	;# D.9367, D.9366,
	str	x1, [sp]	;# D.9367, argv
	ldp	x0, x1, [x0]	;# D.7511, MEM[(struct hfa_4_floats *)_113]
;# varargs-dll.c:1142:   float p = va_arg (argv, struct hfa_4_floats).d;
	mov	x0, x1	;# tmp238, D.7511
	asr	x0, x0, 32	;# tmp239, tmp238,
	fmov	s31, w0	;# tmp241, tmp240
	str	s31, [sp, 32]	;# tmp241, p
;# varargs-dll.c:1143:   float q = va_arg (argv, struct hfa_4_floats).a;
	ldr	x0, [sp]	;# D.9368, argv
	add	x1, x0, 16	;# D.9369, D.9368,
	str	x1, [sp]	;# D.9369, argv
	ldp	x0, x1, [x0]	;# D.7512, MEM[(struct hfa_4_floats *)_117]
;# varargs-dll.c:1143:   float q = va_arg (argv, struct hfa_4_floats).a;
	sbfx	x0, x0, 0, 32	;# tmp243, D.7512,,
	fmov	s31, w0	;# tmp245, tmp244
	str	s31, [sp, 28]	;# tmp245, q
;# varargs-dll.c:1144:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s30, [sp, 92]	;# tmp246, a
	ldr	s31, [sp, 88]	;# tmp247, b
	fadd	s30, s30, s31	;# _1, tmp246, tmp247
;# varargs-dll.c:1144:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 84]	;# tmp248, c
	fadd	s30, s30, s31	;# _2, _1, tmp248
;# varargs-dll.c:1144:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 80]	;# tmp249, d
	fadd	s30, s30, s31	;# _3, _2, tmp249
;# varargs-dll.c:1144:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 76]	;# tmp250, e
	fadd	s30, s30, s31	;# _4, _3, tmp250
;# varargs-dll.c:1144:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 72]	;# tmp251, f
	fadd	s30, s30, s31	;# _5, _4, tmp251
;# varargs-dll.c:1144:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 68]	;# tmp252, g
	fadd	s30, s30, s31	;# _6, _5, tmp252
;# varargs-dll.c:1144:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 64]	;# tmp253, h
	fadd	s30, s30, s31	;# _7, _6, tmp253
;# varargs-dll.c:1144:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 60]	;# tmp254, i
	fadd	s30, s30, s31	;# _8, _7, tmp254
;# varargs-dll.c:1144:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 56]	;# tmp255, j
	fadd	s30, s30, s31	;# _9, _8, tmp255
;# varargs-dll.c:1144:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 52]	;# tmp256, k
	fadd	s30, s30, s31	;# _10, _9, tmp256
;# varargs-dll.c:1144:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 48]	;# tmp257, l
	fadd	s30, s30, s31	;# _11, _10, tmp257
;# varargs-dll.c:1144:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 44]	;# tmp258, m
	fadd	s30, s30, s31	;# _12, _11, tmp258
;# varargs-dll.c:1144:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 40]	;# tmp259, n
	fadd	s30, s30, s31	;# _13, _12, tmp259
;# varargs-dll.c:1144:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 36]	;# tmp260, o
	fadd	s30, s30, s31	;# _14, _13, tmp260
;# varargs-dll.c:1144:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 32]	;# tmp261, p
	fadd	s30, s30, s31	;# _15, _14, tmp261
;# varargs-dll.c:1144:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	s31, [sp, 28]	;# tmp262, q
	fadd	s31, s30, s31	;# _16, _15, tmp262
	fcvtzs	s31, s31	;# _52, _16
	fmov	w0, s31	;# <retval>, _52
;# varargs-dll.c:1145: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_hfa_2_doubles
	.def	use_va_args_few_hfa_2_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_hfa_2_doubles
use_va_args_few_hfa_2_doubles:
	sub	sp, sp, #112	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 56]	;#,
	str	x2, [sp, 64]	;#,
	str	x3, [sp, 72]	;#,
	str	x4, [sp, 80]	;#,
	str	x5, [sp, 88]	;#,
	str	x6, [sp, 96]	;#,
	str	x7, [sp, 104]	;#,
;# varargs-dll.c:1151:   va_start (argv, format);
	add	x0, sp, 112	;# tmp110,,
	sub	x0, x0, #56	;# tmp111, tmp110,
	str	x0, [sp, 24]	;# tmp111, MEM[(char * *)&argv]
;# varargs-dll.c:1152:   double a = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp, 24]	;# D.9370, argv
	add	x1, x0, 16	;# D.9371, D.9370,
	str	x1, [sp, 24]	;# D.9371, argv
	ldp	x0, x1, [x0]	;# D.7515, MEM[(struct hfa_2_doubles *)_11]
;# varargs-dll.c:1152:   double a = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp112, D.7515
	str	d31, [sp, 40]	;# tmp112, a
;# varargs-dll.c:1153:   double b = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp, 24]	;# D.9372, argv
	add	x1, x0, 16	;# D.9373, D.9372,
	str	x1, [sp, 24]	;# D.9373, argv
	ldp	x0, x1, [x0]	;# D.7516, MEM[(struct hfa_2_doubles *)_15]
;# varargs-dll.c:1153:   double b = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp113, D.7516
	str	d31, [sp, 32]	;# tmp113, b
;# varargs-dll.c:1155:   return a + b;
	ldr	d30, [sp, 40]	;# tmp114, a
	ldr	d31, [sp, 32]	;# tmp115, b
	fadd	d31, d30, d31	;# _1, tmp114, tmp115
	fcvtzs	w0, d31	;# _9, _1
;# varargs-dll.c:1156: }
	add	sp, sp, 112	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_hfa_2_doubles
	.def	use_va_list_few_hfa_2_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_hfa_2_doubles
use_va_list_few_hfa_2_doubles:
	sub	sp, sp, #32	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1161:   double a = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp]	;# D.9374, argv
	add	x1, x0, 16	;# D.9375, D.9374,
	str	x1, [sp]	;# D.9375, argv
	ldp	x0, x1, [x0]	;# D.7520, MEM[(struct hfa_2_doubles *)_8]
;# varargs-dll.c:1161:   double a = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp110, D.7520
	str	d31, [sp, 24]	;# tmp110, a
;# varargs-dll.c:1162:   double b = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp]	;# D.9376, argv
	add	x1, x0, 16	;# D.9377, D.9376,
	str	x1, [sp]	;# D.9377, argv
	ldp	x0, x1, [x0]	;# D.7521, MEM[(struct hfa_2_doubles *)_12]
;# varargs-dll.c:1162:   double b = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp111, D.7521
	str	d31, [sp, 16]	;# tmp111, b
;# varargs-dll.c:1163:   return a + b;
	ldr	d30, [sp, 24]	;# tmp112, a
	ldr	d31, [sp, 16]	;# tmp113, b
	fadd	d31, d30, d31	;# _1, tmp112, tmp113
	fcvtzs	w0, d31	;# _7, _1
;# varargs-dll.c:1164: }
	add	sp, sp, 32	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_hfa_2_doubles
	.def	use_va_args_several_hfa_2_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_hfa_2_doubles
use_va_args_several_hfa_2_doubles:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 104]	;#,
	str	x2, [sp, 112]	;#,
	str	x3, [sp, 120]	;#,
	str	x4, [sp, 128]	;#,
	str	x5, [sp, 136]	;#,
	str	x6, [sp, 144]	;#,
	str	x7, [sp, 152]	;#,
;# varargs-dll.c:1170:   va_start (argv, format);
	add	x0, sp, 160	;# tmp138,,
	sub	x0, x0, #56	;# tmp139, tmp138,
	str	x0, [sp, 16]	;# tmp139, MEM[(char * *)&argv]
;# varargs-dll.c:1171:   double a = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp, 16]	;# D.9378, argv
	add	x1, x0, 16	;# D.9379, D.9378,
	str	x1, [sp, 16]	;# D.9379, argv
	ldp	x0, x1, [x0]	;# D.7524, MEM[(struct hfa_2_doubles *)_32]
;# varargs-dll.c:1171:   double a = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp140, D.7524
	str	d31, [sp, 88]	;# tmp140, a
;# varargs-dll.c:1172:   double b = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp, 16]	;# D.9380, argv
	add	x1, x0, 16	;# D.9381, D.9380,
	str	x1, [sp, 16]	;# D.9381, argv
	ldp	x0, x1, [x0]	;# D.7525, MEM[(struct hfa_2_doubles *)_36]
;# varargs-dll.c:1172:   double b = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp141, D.7525
	str	d31, [sp, 80]	;# tmp141, b
;# varargs-dll.c:1173:   double c = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp, 16]	;# D.9382, argv
	add	x1, x0, 16	;# D.9383, D.9382,
	str	x1, [sp, 16]	;# D.9383, argv
	ldp	x0, x1, [x0]	;# D.7526, MEM[(struct hfa_2_doubles *)_40]
;# varargs-dll.c:1173:   double c = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp142, D.7526
	str	d31, [sp, 72]	;# tmp142, c
;# varargs-dll.c:1174:   double d = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp, 16]	;# D.9384, argv
	add	x1, x0, 16	;# D.9385, D.9384,
	str	x1, [sp, 16]	;# D.9385, argv
	ldp	x0, x1, [x0]	;# D.7527, MEM[(struct hfa_2_doubles *)_44]
;# varargs-dll.c:1174:   double d = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp143, D.7527
	str	d31, [sp, 64]	;# tmp143, d
;# varargs-dll.c:1175:   double e = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp, 16]	;# D.9386, argv
	add	x1, x0, 16	;# D.9387, D.9386,
	str	x1, [sp, 16]	;# D.9387, argv
	ldp	x0, x1, [x0]	;# D.7528, MEM[(struct hfa_2_doubles *)_48]
;# varargs-dll.c:1175:   double e = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp144, D.7528
	str	d31, [sp, 56]	;# tmp144, e
;# varargs-dll.c:1176:   double f = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp, 16]	;# D.9388, argv
	add	x1, x0, 16	;# D.9389, D.9388,
	str	x1, [sp, 16]	;# D.9389, argv
	ldp	x0, x1, [x0]	;# D.7529, MEM[(struct hfa_2_doubles *)_52]
;# varargs-dll.c:1176:   double f = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp145, D.7529
	str	d31, [sp, 48]	;# tmp145, f
;# varargs-dll.c:1177:   double g = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp, 16]	;# D.9390, argv
	add	x1, x0, 16	;# D.9391, D.9390,
	str	x1, [sp, 16]	;# D.9391, argv
	ldp	x0, x1, [x0]	;# D.7530, MEM[(struct hfa_2_doubles *)_56]
;# varargs-dll.c:1177:   double g = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp146, D.7530
	str	d31, [sp, 40]	;# tmp146, g
;# varargs-dll.c:1178:   double h = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp, 16]	;# D.9392, argv
	add	x1, x0, 16	;# D.9393, D.9392,
	str	x1, [sp, 16]	;# D.9393, argv
	ldp	x0, x1, [x0]	;# D.7531, MEM[(struct hfa_2_doubles *)_60]
;# varargs-dll.c:1178:   double h = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp147, D.7531
	str	d31, [sp, 32]	;# tmp147, h
;# varargs-dll.c:1179:   double i = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp, 16]	;# D.9394, argv
	add	x1, x0, 16	;# D.9395, D.9394,
	str	x1, [sp, 16]	;# D.9395, argv
	ldp	x0, x1, [x0]	;# D.7532, MEM[(struct hfa_2_doubles *)_64]
;# varargs-dll.c:1179:   double i = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp148, D.7532
	str	d31, [sp, 24]	;# tmp148, i
;# varargs-dll.c:1181:   return a + b + c + d + e + f + g + h + i;
	ldr	d30, [sp, 88]	;# tmp149, a
	ldr	d31, [sp, 80]	;# tmp150, b
	fadd	d30, d30, d31	;# _1, tmp149, tmp150
;# varargs-dll.c:1181:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 72]	;# tmp151, c
	fadd	d30, d30, d31	;# _2, _1, tmp151
;# varargs-dll.c:1181:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 64]	;# tmp152, d
	fadd	d30, d30, d31	;# _3, _2, tmp152
;# varargs-dll.c:1181:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 56]	;# tmp153, e
	fadd	d30, d30, d31	;# _4, _3, tmp153
;# varargs-dll.c:1181:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 48]	;# tmp154, f
	fadd	d30, d30, d31	;# _5, _4, tmp154
;# varargs-dll.c:1181:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 40]	;# tmp155, g
	fadd	d30, d30, d31	;# _6, _5, tmp155
;# varargs-dll.c:1181:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 32]	;# tmp156, h
	fadd	d30, d30, d31	;# _7, _6, tmp156
;# varargs-dll.c:1181:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 24]	;# tmp157, i
	fadd	d31, d30, d31	;# _8, _7, tmp157
	fcvtzs	w0, d31	;# _30, _8
;# varargs-dll.c:1182: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_hfa_2_doubles
	.def	use_va_list_several_hfa_2_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_hfa_2_doubles
use_va_list_several_hfa_2_doubles:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1187:   double a = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp]	;# D.9396, argv
	add	x1, x0, 16	;# D.9397, D.9396,
	str	x1, [sp]	;# D.9397, argv
	ldp	x0, x1, [x0]	;# D.7536, MEM[(struct hfa_2_doubles *)_29]
;# varargs-dll.c:1187:   double a = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp138, D.7536
	str	d31, [sp, 88]	;# tmp138, a
;# varargs-dll.c:1188:   double b = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp]	;# D.9398, argv
	add	x1, x0, 16	;# D.9399, D.9398,
	str	x1, [sp]	;# D.9399, argv
	ldp	x0, x1, [x0]	;# D.7537, MEM[(struct hfa_2_doubles *)_33]
;# varargs-dll.c:1188:   double b = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp139, D.7537
	str	d31, [sp, 80]	;# tmp139, b
;# varargs-dll.c:1189:   double c = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp]	;# D.9400, argv
	add	x1, x0, 16	;# D.9401, D.9400,
	str	x1, [sp]	;# D.9401, argv
	ldp	x0, x1, [x0]	;# D.7538, MEM[(struct hfa_2_doubles *)_37]
;# varargs-dll.c:1189:   double c = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp140, D.7538
	str	d31, [sp, 72]	;# tmp140, c
;# varargs-dll.c:1190:   double d = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp]	;# D.9402, argv
	add	x1, x0, 16	;# D.9403, D.9402,
	str	x1, [sp]	;# D.9403, argv
	ldp	x0, x1, [x0]	;# D.7539, MEM[(struct hfa_2_doubles *)_41]
;# varargs-dll.c:1190:   double d = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp141, D.7539
	str	d31, [sp, 64]	;# tmp141, d
;# varargs-dll.c:1191:   double e = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp]	;# D.9404, argv
	add	x1, x0, 16	;# D.9405, D.9404,
	str	x1, [sp]	;# D.9405, argv
	ldp	x0, x1, [x0]	;# D.7540, MEM[(struct hfa_2_doubles *)_45]
;# varargs-dll.c:1191:   double e = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp142, D.7540
	str	d31, [sp, 56]	;# tmp142, e
;# varargs-dll.c:1192:   double f = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp]	;# D.9406, argv
	add	x1, x0, 16	;# D.9407, D.9406,
	str	x1, [sp]	;# D.9407, argv
	ldp	x0, x1, [x0]	;# D.7541, MEM[(struct hfa_2_doubles *)_49]
;# varargs-dll.c:1192:   double f = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp143, D.7541
	str	d31, [sp, 48]	;# tmp143, f
;# varargs-dll.c:1193:   double g = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp]	;# D.9408, argv
	add	x1, x0, 16	;# D.9409, D.9408,
	str	x1, [sp]	;# D.9409, argv
	ldp	x0, x1, [x0]	;# D.7542, MEM[(struct hfa_2_doubles *)_53]
;# varargs-dll.c:1193:   double g = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp144, D.7542
	str	d31, [sp, 40]	;# tmp144, g
;# varargs-dll.c:1194:   double h = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp]	;# D.9410, argv
	add	x1, x0, 16	;# D.9411, D.9410,
	str	x1, [sp]	;# D.9411, argv
	ldp	x0, x1, [x0]	;# D.7543, MEM[(struct hfa_2_doubles *)_57]
;# varargs-dll.c:1194:   double h = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp145, D.7543
	str	d31, [sp, 32]	;# tmp145, h
;# varargs-dll.c:1195:   double i = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp]	;# D.9412, argv
	add	x1, x0, 16	;# D.9413, D.9412,
	str	x1, [sp]	;# D.9413, argv
	ldp	x0, x1, [x0]	;# D.7544, MEM[(struct hfa_2_doubles *)_61]
;# varargs-dll.c:1195:   double i = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp146, D.7544
	str	d31, [sp, 24]	;# tmp146, i
;# varargs-dll.c:1196:   return a + b + c + d + e + f + g + h + i;
	ldr	d30, [sp, 88]	;# tmp147, a
	ldr	d31, [sp, 80]	;# tmp148, b
	fadd	d30, d30, d31	;# _1, tmp147, tmp148
;# varargs-dll.c:1196:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 72]	;# tmp149, c
	fadd	d30, d30, d31	;# _2, _1, tmp149
;# varargs-dll.c:1196:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 64]	;# tmp150, d
	fadd	d30, d30, d31	;# _3, _2, tmp150
;# varargs-dll.c:1196:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 56]	;# tmp151, e
	fadd	d30, d30, d31	;# _4, _3, tmp151
;# varargs-dll.c:1196:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 48]	;# tmp152, f
	fadd	d30, d30, d31	;# _5, _4, tmp152
;# varargs-dll.c:1196:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 40]	;# tmp153, g
	fadd	d30, d30, d31	;# _6, _5, tmp153
;# varargs-dll.c:1196:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 32]	;# tmp154, h
	fadd	d30, d30, d31	;# _7, _6, tmp154
;# varargs-dll.c:1196:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 24]	;# tmp155, i
	fadd	d31, d30, d31	;# _8, _7, tmp155
	fcvtzs	w0, d31	;# _28, _8
;# varargs-dll.c:1197: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_hfa_2_doubles
	.def	use_va_args_many_hfa_2_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_hfa_2_doubles
use_va_args_many_hfa_2_doubles:
	sub	sp, sp, #224	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 168]	;#,
	str	x2, [sp, 176]	;#,
	str	x3, [sp, 184]	;#,
	str	x4, [sp, 192]	;#,
	str	x5, [sp, 200]	;#,
	str	x6, [sp, 208]	;#,
	str	x7, [sp, 216]	;#,
;# varargs-dll.c:1203:   va_start (argv, format);
	add	x0, sp, 224	;# tmp170,,
	sub	x0, x0, #56	;# tmp171, tmp170,
	str	x0, [sp, 16]	;# tmp171, MEM[(char * *)&argv]
;# varargs-dll.c:1204:   double a = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp, 16]	;# D.9414, argv
	add	x1, x0, 16	;# D.9415, D.9414,
	str	x1, [sp, 16]	;# D.9415, argv
	ldp	x0, x1, [x0]	;# D.7547, MEM[(struct hfa_2_doubles *)_56]
;# varargs-dll.c:1204:   double a = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp172, D.7547
	str	d31, [sp, 152]	;# tmp172, a
;# varargs-dll.c:1205:   double b = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp, 16]	;# D.9416, argv
	add	x1, x0, 16	;# D.9417, D.9416,
	str	x1, [sp, 16]	;# D.9417, argv
	ldp	x0, x1, [x0]	;# D.7548, MEM[(struct hfa_2_doubles *)_60]
;# varargs-dll.c:1205:   double b = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp173, D.7548
	str	d31, [sp, 144]	;# tmp173, b
;# varargs-dll.c:1206:   double c = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp, 16]	;# D.9418, argv
	add	x1, x0, 16	;# D.9419, D.9418,
	str	x1, [sp, 16]	;# D.9419, argv
	ldp	x0, x1, [x0]	;# D.7549, MEM[(struct hfa_2_doubles *)_64]
;# varargs-dll.c:1206:   double c = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp174, D.7549
	str	d31, [sp, 136]	;# tmp174, c
;# varargs-dll.c:1207:   double d = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp, 16]	;# D.9420, argv
	add	x1, x0, 16	;# D.9421, D.9420,
	str	x1, [sp, 16]	;# D.9421, argv
	ldp	x0, x1, [x0]	;# D.7550, MEM[(struct hfa_2_doubles *)_68]
;# varargs-dll.c:1207:   double d = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp175, D.7550
	str	d31, [sp, 128]	;# tmp175, d
;# varargs-dll.c:1208:   double e = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp, 16]	;# D.9422, argv
	add	x1, x0, 16	;# D.9423, D.9422,
	str	x1, [sp, 16]	;# D.9423, argv
	ldp	x0, x1, [x0]	;# D.7551, MEM[(struct hfa_2_doubles *)_72]
;# varargs-dll.c:1208:   double e = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp176, D.7551
	str	d31, [sp, 120]	;# tmp176, e
;# varargs-dll.c:1209:   double f = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp, 16]	;# D.9424, argv
	add	x1, x0, 16	;# D.9425, D.9424,
	str	x1, [sp, 16]	;# D.9425, argv
	ldp	x0, x1, [x0]	;# D.7552, MEM[(struct hfa_2_doubles *)_76]
;# varargs-dll.c:1209:   double f = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp177, D.7552
	str	d31, [sp, 112]	;# tmp177, f
;# varargs-dll.c:1210:   double g = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp, 16]	;# D.9426, argv
	add	x1, x0, 16	;# D.9427, D.9426,
	str	x1, [sp, 16]	;# D.9427, argv
	ldp	x0, x1, [x0]	;# D.7553, MEM[(struct hfa_2_doubles *)_80]
;# varargs-dll.c:1210:   double g = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp178, D.7553
	str	d31, [sp, 104]	;# tmp178, g
;# varargs-dll.c:1211:   double h = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp, 16]	;# D.9428, argv
	add	x1, x0, 16	;# D.9429, D.9428,
	str	x1, [sp, 16]	;# D.9429, argv
	ldp	x0, x1, [x0]	;# D.7554, MEM[(struct hfa_2_doubles *)_84]
;# varargs-dll.c:1211:   double h = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp179, D.7554
	str	d31, [sp, 96]	;# tmp179, h
;# varargs-dll.c:1212:   double i = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp, 16]	;# D.9430, argv
	add	x1, x0, 16	;# D.9431, D.9430,
	str	x1, [sp, 16]	;# D.9431, argv
	ldp	x0, x1, [x0]	;# D.7555, MEM[(struct hfa_2_doubles *)_88]
;# varargs-dll.c:1212:   double i = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp180, D.7555
	str	d31, [sp, 88]	;# tmp180, i
;# varargs-dll.c:1213:   double j = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp, 16]	;# D.9432, argv
	add	x1, x0, 16	;# D.9433, D.9432,
	str	x1, [sp, 16]	;# D.9433, argv
	ldp	x0, x1, [x0]	;# D.7556, MEM[(struct hfa_2_doubles *)_92]
;# varargs-dll.c:1213:   double j = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp181, D.7556
	str	d31, [sp, 80]	;# tmp181, j
;# varargs-dll.c:1214:   double k = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp, 16]	;# D.9434, argv
	add	x1, x0, 16	;# D.9435, D.9434,
	str	x1, [sp, 16]	;# D.9435, argv
	ldp	x0, x1, [x0]	;# D.7557, MEM[(struct hfa_2_doubles *)_96]
;# varargs-dll.c:1214:   double k = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp182, D.7557
	str	d31, [sp, 72]	;# tmp182, k
;# varargs-dll.c:1215:   double l = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp, 16]	;# D.9436, argv
	add	x1, x0, 16	;# D.9437, D.9436,
	str	x1, [sp, 16]	;# D.9437, argv
	ldp	x0, x1, [x0]	;# D.7558, MEM[(struct hfa_2_doubles *)_100]
;# varargs-dll.c:1215:   double l = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp183, D.7558
	str	d31, [sp, 64]	;# tmp183, l
;# varargs-dll.c:1216:   double m = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp, 16]	;# D.9438, argv
	add	x1, x0, 16	;# D.9439, D.9438,
	str	x1, [sp, 16]	;# D.9439, argv
	ldp	x0, x1, [x0]	;# D.7559, MEM[(struct hfa_2_doubles *)_104]
;# varargs-dll.c:1216:   double m = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp184, D.7559
	str	d31, [sp, 56]	;# tmp184, m
;# varargs-dll.c:1217:   double n = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp, 16]	;# D.9440, argv
	add	x1, x0, 16	;# D.9441, D.9440,
	str	x1, [sp, 16]	;# D.9441, argv
	ldp	x0, x1, [x0]	;# D.7560, MEM[(struct hfa_2_doubles *)_108]
;# varargs-dll.c:1217:   double n = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp185, D.7560
	str	d31, [sp, 48]	;# tmp185, n
;# varargs-dll.c:1218:   double o = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp, 16]	;# D.9442, argv
	add	x1, x0, 16	;# D.9443, D.9442,
	str	x1, [sp, 16]	;# D.9443, argv
	ldp	x0, x1, [x0]	;# D.7561, MEM[(struct hfa_2_doubles *)_112]
;# varargs-dll.c:1218:   double o = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp186, D.7561
	str	d31, [sp, 40]	;# tmp186, o
;# varargs-dll.c:1219:   double p = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp, 16]	;# D.9444, argv
	add	x1, x0, 16	;# D.9445, D.9444,
	str	x1, [sp, 16]	;# D.9445, argv
	ldp	x0, x1, [x0]	;# D.7562, MEM[(struct hfa_2_doubles *)_116]
;# varargs-dll.c:1219:   double p = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp187, D.7562
	str	d31, [sp, 32]	;# tmp187, p
;# varargs-dll.c:1220:   double q = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp, 16]	;# D.9446, argv
	add	x1, x0, 16	;# D.9447, D.9446,
	str	x1, [sp, 16]	;# D.9447, argv
	ldp	x0, x1, [x0]	;# D.7563, MEM[(struct hfa_2_doubles *)_120]
;# varargs-dll.c:1220:   double q = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp188, D.7563
	str	d31, [sp, 24]	;# tmp188, q
;# varargs-dll.c:1222:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d30, [sp, 152]	;# tmp189, a
	ldr	d31, [sp, 144]	;# tmp190, b
	fadd	d30, d30, d31	;# _1, tmp189, tmp190
;# varargs-dll.c:1222:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 136]	;# tmp191, c
	fadd	d30, d30, d31	;# _2, _1, tmp191
;# varargs-dll.c:1222:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 128]	;# tmp192, d
	fadd	d30, d30, d31	;# _3, _2, tmp192
;# varargs-dll.c:1222:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 120]	;# tmp193, e
	fadd	d30, d30, d31	;# _4, _3, tmp193
;# varargs-dll.c:1222:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 112]	;# tmp194, f
	fadd	d30, d30, d31	;# _5, _4, tmp194
;# varargs-dll.c:1222:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 104]	;# tmp195, g
	fadd	d30, d30, d31	;# _6, _5, tmp195
;# varargs-dll.c:1222:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 96]	;# tmp196, h
	fadd	d30, d30, d31	;# _7, _6, tmp196
;# varargs-dll.c:1222:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 88]	;# tmp197, i
	fadd	d30, d30, d31	;# _8, _7, tmp197
;# varargs-dll.c:1222:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 80]	;# tmp198, j
	fadd	d30, d30, d31	;# _9, _8, tmp198
;# varargs-dll.c:1222:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 72]	;# tmp199, k
	fadd	d30, d30, d31	;# _10, _9, tmp199
;# varargs-dll.c:1222:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 64]	;# tmp200, l
	fadd	d30, d30, d31	;# _11, _10, tmp200
;# varargs-dll.c:1222:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 56]	;# tmp201, m
	fadd	d30, d30, d31	;# _12, _11, tmp201
;# varargs-dll.c:1222:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 48]	;# tmp202, n
	fadd	d30, d30, d31	;# _13, _12, tmp202
;# varargs-dll.c:1222:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 40]	;# tmp203, o
	fadd	d30, d30, d31	;# _14, _13, tmp203
;# varargs-dll.c:1222:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 32]	;# tmp204, p
	fadd	d30, d30, d31	;# _15, _14, tmp204
;# varargs-dll.c:1222:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 24]	;# tmp205, q
	fadd	d31, d30, d31	;# _16, _15, tmp205
	fcvtzs	w0, d31	;# _54, _16
;# varargs-dll.c:1223: }
	add	sp, sp, 224	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_hfa_2_doubles
	.def	use_va_list_many_hfa_2_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_hfa_2_doubles
use_va_list_many_hfa_2_doubles:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1228:   double a = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp]	;# D.9448, argv
	add	x1, x0, 16	;# D.9449, D.9448,
	str	x1, [sp]	;# D.9449, argv
	ldp	x0, x1, [x0]	;# D.7567, MEM[(struct hfa_2_doubles *)_53]
;# varargs-dll.c:1228:   double a = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp170, D.7567
	str	d31, [sp, 152]	;# tmp170, a
;# varargs-dll.c:1229:   double b = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp]	;# D.9450, argv
	add	x1, x0, 16	;# D.9451, D.9450,
	str	x1, [sp]	;# D.9451, argv
	ldp	x0, x1, [x0]	;# D.7568, MEM[(struct hfa_2_doubles *)_57]
;# varargs-dll.c:1229:   double b = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp171, D.7568
	str	d31, [sp, 144]	;# tmp171, b
;# varargs-dll.c:1230:   double c = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp]	;# D.9452, argv
	add	x1, x0, 16	;# D.9453, D.9452,
	str	x1, [sp]	;# D.9453, argv
	ldp	x0, x1, [x0]	;# D.7569, MEM[(struct hfa_2_doubles *)_61]
;# varargs-dll.c:1230:   double c = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp172, D.7569
	str	d31, [sp, 136]	;# tmp172, c
;# varargs-dll.c:1231:   double d = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp]	;# D.9454, argv
	add	x1, x0, 16	;# D.9455, D.9454,
	str	x1, [sp]	;# D.9455, argv
	ldp	x0, x1, [x0]	;# D.7570, MEM[(struct hfa_2_doubles *)_65]
;# varargs-dll.c:1231:   double d = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp173, D.7570
	str	d31, [sp, 128]	;# tmp173, d
;# varargs-dll.c:1232:   double e = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp]	;# D.9456, argv
	add	x1, x0, 16	;# D.9457, D.9456,
	str	x1, [sp]	;# D.9457, argv
	ldp	x0, x1, [x0]	;# D.7571, MEM[(struct hfa_2_doubles *)_69]
;# varargs-dll.c:1232:   double e = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp174, D.7571
	str	d31, [sp, 120]	;# tmp174, e
;# varargs-dll.c:1233:   double f = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp]	;# D.9458, argv
	add	x1, x0, 16	;# D.9459, D.9458,
	str	x1, [sp]	;# D.9459, argv
	ldp	x0, x1, [x0]	;# D.7572, MEM[(struct hfa_2_doubles *)_73]
;# varargs-dll.c:1233:   double f = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp175, D.7572
	str	d31, [sp, 112]	;# tmp175, f
;# varargs-dll.c:1234:   double g = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp]	;# D.9460, argv
	add	x1, x0, 16	;# D.9461, D.9460,
	str	x1, [sp]	;# D.9461, argv
	ldp	x0, x1, [x0]	;# D.7573, MEM[(struct hfa_2_doubles *)_77]
;# varargs-dll.c:1234:   double g = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp176, D.7573
	str	d31, [sp, 104]	;# tmp176, g
;# varargs-dll.c:1235:   double h = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp]	;# D.9462, argv
	add	x1, x0, 16	;# D.9463, D.9462,
	str	x1, [sp]	;# D.9463, argv
	ldp	x0, x1, [x0]	;# D.7574, MEM[(struct hfa_2_doubles *)_81]
;# varargs-dll.c:1235:   double h = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp177, D.7574
	str	d31, [sp, 96]	;# tmp177, h
;# varargs-dll.c:1236:   double i = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp]	;# D.9464, argv
	add	x1, x0, 16	;# D.9465, D.9464,
	str	x1, [sp]	;# D.9465, argv
	ldp	x0, x1, [x0]	;# D.7575, MEM[(struct hfa_2_doubles *)_85]
;# varargs-dll.c:1236:   double i = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp178, D.7575
	str	d31, [sp, 88]	;# tmp178, i
;# varargs-dll.c:1237:   double j = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp]	;# D.9466, argv
	add	x1, x0, 16	;# D.9467, D.9466,
	str	x1, [sp]	;# D.9467, argv
	ldp	x0, x1, [x0]	;# D.7576, MEM[(struct hfa_2_doubles *)_89]
;# varargs-dll.c:1237:   double j = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp179, D.7576
	str	d31, [sp, 80]	;# tmp179, j
;# varargs-dll.c:1238:   double k = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp]	;# D.9468, argv
	add	x1, x0, 16	;# D.9469, D.9468,
	str	x1, [sp]	;# D.9469, argv
	ldp	x0, x1, [x0]	;# D.7577, MEM[(struct hfa_2_doubles *)_93]
;# varargs-dll.c:1238:   double k = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp180, D.7577
	str	d31, [sp, 72]	;# tmp180, k
;# varargs-dll.c:1239:   double l = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp]	;# D.9470, argv
	add	x1, x0, 16	;# D.9471, D.9470,
	str	x1, [sp]	;# D.9471, argv
	ldp	x0, x1, [x0]	;# D.7578, MEM[(struct hfa_2_doubles *)_97]
;# varargs-dll.c:1239:   double l = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp181, D.7578
	str	d31, [sp, 64]	;# tmp181, l
;# varargs-dll.c:1240:   double m = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp]	;# D.9472, argv
	add	x1, x0, 16	;# D.9473, D.9472,
	str	x1, [sp]	;# D.9473, argv
	ldp	x0, x1, [x0]	;# D.7579, MEM[(struct hfa_2_doubles *)_101]
;# varargs-dll.c:1240:   double m = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp182, D.7579
	str	d31, [sp, 56]	;# tmp182, m
;# varargs-dll.c:1241:   double n = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp]	;# D.9474, argv
	add	x1, x0, 16	;# D.9475, D.9474,
	str	x1, [sp]	;# D.9475, argv
	ldp	x0, x1, [x0]	;# D.7580, MEM[(struct hfa_2_doubles *)_105]
;# varargs-dll.c:1241:   double n = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp183, D.7580
	str	d31, [sp, 48]	;# tmp183, n
;# varargs-dll.c:1242:   double o = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp]	;# D.9476, argv
	add	x1, x0, 16	;# D.9477, D.9476,
	str	x1, [sp]	;# D.9477, argv
	ldp	x0, x1, [x0]	;# D.7581, MEM[(struct hfa_2_doubles *)_109]
;# varargs-dll.c:1242:   double o = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp184, D.7581
	str	d31, [sp, 40]	;# tmp184, o
;# varargs-dll.c:1243:   double p = va_arg (argv, struct hfa_2_doubles).b;
	ldr	x0, [sp]	;# D.9478, argv
	add	x1, x0, 16	;# D.9479, D.9478,
	str	x1, [sp]	;# D.9479, argv
	ldp	x0, x1, [x0]	;# D.7582, MEM[(struct hfa_2_doubles *)_113]
;# varargs-dll.c:1243:   double p = va_arg (argv, struct hfa_2_doubles).b;
	fmov	d31, x1	;# tmp185, D.7582
	str	d31, [sp, 32]	;# tmp185, p
;# varargs-dll.c:1244:   double q = va_arg (argv, struct hfa_2_doubles).a;
	ldr	x0, [sp]	;# D.9480, argv
	add	x1, x0, 16	;# D.9481, D.9480,
	str	x1, [sp]	;# D.9481, argv
	ldp	x0, x1, [x0]	;# D.7583, MEM[(struct hfa_2_doubles *)_117]
;# varargs-dll.c:1244:   double q = va_arg (argv, struct hfa_2_doubles).a;
	fmov	d31, x0	;# tmp186, D.7583
	str	d31, [sp, 24]	;# tmp186, q
;# varargs-dll.c:1245:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d30, [sp, 152]	;# tmp187, a
	ldr	d31, [sp, 144]	;# tmp188, b
	fadd	d30, d30, d31	;# _1, tmp187, tmp188
;# varargs-dll.c:1245:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 136]	;# tmp189, c
	fadd	d30, d30, d31	;# _2, _1, tmp189
;# varargs-dll.c:1245:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 128]	;# tmp190, d
	fadd	d30, d30, d31	;# _3, _2, tmp190
;# varargs-dll.c:1245:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 120]	;# tmp191, e
	fadd	d30, d30, d31	;# _4, _3, tmp191
;# varargs-dll.c:1245:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 112]	;# tmp192, f
	fadd	d30, d30, d31	;# _5, _4, tmp192
;# varargs-dll.c:1245:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 104]	;# tmp193, g
	fadd	d30, d30, d31	;# _6, _5, tmp193
;# varargs-dll.c:1245:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 96]	;# tmp194, h
	fadd	d30, d30, d31	;# _7, _6, tmp194
;# varargs-dll.c:1245:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 88]	;# tmp195, i
	fadd	d30, d30, d31	;# _8, _7, tmp195
;# varargs-dll.c:1245:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 80]	;# tmp196, j
	fadd	d30, d30, d31	;# _9, _8, tmp196
;# varargs-dll.c:1245:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 72]	;# tmp197, k
	fadd	d30, d30, d31	;# _10, _9, tmp197
;# varargs-dll.c:1245:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 64]	;# tmp198, l
	fadd	d30, d30, d31	;# _11, _10, tmp198
;# varargs-dll.c:1245:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 56]	;# tmp199, m
	fadd	d30, d30, d31	;# _12, _11, tmp199
;# varargs-dll.c:1245:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 48]	;# tmp200, n
	fadd	d30, d30, d31	;# _13, _12, tmp200
;# varargs-dll.c:1245:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 40]	;# tmp201, o
	fadd	d30, d30, d31	;# _14, _13, tmp201
;# varargs-dll.c:1245:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 32]	;# tmp202, p
	fadd	d30, d30, d31	;# _15, _14, tmp202
;# varargs-dll.c:1245:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 24]	;# tmp203, q
	fadd	d31, d30, d31	;# _16, _15, tmp203
	fcvtzs	w0, d31	;# _52, _16
;# varargs-dll.c:1246: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_hfa_4_doubles
	.def	use_va_args_few_hfa_4_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_hfa_4_doubles
use_va_args_few_hfa_4_doubles:
	sub	sp, sp, #176	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 120]	;#,
	str	x2, [sp, 128]	;#,
	str	x3, [sp, 136]	;#,
	str	x4, [sp, 144]	;#,
	str	x5, [sp, 152]	;#,
	str	x6, [sp, 160]	;#,
	str	x7, [sp, 168]	;#,
;# varargs-dll.c:1252:   va_start (argv, format);
	add	x0, sp, 176	;# tmp108,,
	sub	x0, x0, #56	;# tmp109, tmp108,
	str	x0, [sp, 24]	;# tmp109, MEM[(char * *)&argv]
;# varargs-dll.c:1253:   double a = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp, 24]	;# D.9482, argv
	add	x0, x1, 32	;# D.9483, D.9482,
	str	x0, [sp, 24]	;# D.9483, argv
	add	x0, sp, 32	;# tmp110,,
	ldr	q30, [x1]	;# tmp112, MEM[(struct hfa_4_doubles *)_11]
	ldr	q31, [x1, 16]	;# tmp113, MEM[(struct hfa_4_doubles *)_11]
	str	q30, [x0]	;# tmp112, D.7586
	str	q31, [x0, 16]	;# tmp113, D.7586
;# varargs-dll.c:1253:   double a = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 32]	;# tmp114, D.7586.a
	str	d31, [sp, 104]	;# tmp114, a
;# varargs-dll.c:1254:   double b = va_arg (argv, struct hfa_4_doubles).b;
	ldr	x1, [sp, 24]	;# D.9484, argv
	add	x0, x1, 32	;# D.9485, D.9484,
	str	x0, [sp, 24]	;# D.9485, argv
	add	x0, sp, 64	;# tmp115,,
	ldr	q30, [x1]	;# tmp117, MEM[(struct hfa_4_doubles *)_15]
	ldr	q31, [x1, 16]	;# tmp118, MEM[(struct hfa_4_doubles *)_15]
	str	q30, [x0]	;# tmp117, D.7587
	str	q31, [x0, 16]	;# tmp118, D.7587
;# varargs-dll.c:1254:   double b = va_arg (argv, struct hfa_4_doubles).b;
	ldr	d31, [sp, 72]	;# tmp119, D.7587.b
	str	d31, [sp, 96]	;# tmp119, b
;# varargs-dll.c:1256:   return a + b;
	ldr	d30, [sp, 104]	;# tmp120, a
	ldr	d31, [sp, 96]	;# tmp121, b
	fadd	d31, d30, d31	;# _1, tmp120, tmp121
	fcvtzs	w0, d31	;# _9, _1
;# varargs-dll.c:1257: }
	add	sp, sp, 176	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_hfa_4_doubles
	.def	use_va_list_few_hfa_4_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_hfa_4_doubles
use_va_list_few_hfa_4_doubles:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1262:   double a = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp]	;# D.9486, argv
	add	x0, x1, 32	;# D.9487, D.9486,
	str	x0, [sp]	;# D.9487, argv
	add	x0, sp, 16	;# tmp108,,
	ldr	q30, [x1]	;# tmp110, MEM[(struct hfa_4_doubles *)_8]
	ldr	q31, [x1, 16]	;# tmp111, MEM[(struct hfa_4_doubles *)_8]
	str	q30, [x0]	;# tmp110, D.7591
	str	q31, [x0, 16]	;# tmp111, D.7591
;# varargs-dll.c:1262:   double a = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 16]	;# tmp112, D.7591.a
	str	d31, [sp, 88]	;# tmp112, a
;# varargs-dll.c:1263:   double b = va_arg (argv, struct hfa_4_doubles).b;
	ldr	x1, [sp]	;# D.9488, argv
	add	x0, x1, 32	;# D.9489, D.9488,
	str	x0, [sp]	;# D.9489, argv
	add	x0, sp, 48	;# tmp113,,
	ldr	q30, [x1]	;# tmp115, MEM[(struct hfa_4_doubles *)_12]
	ldr	q31, [x1, 16]	;# tmp116, MEM[(struct hfa_4_doubles *)_12]
	str	q30, [x0]	;# tmp115, D.7592
	str	q31, [x0, 16]	;# tmp116, D.7592
;# varargs-dll.c:1263:   double b = va_arg (argv, struct hfa_4_doubles).b;
	ldr	d31, [sp, 56]	;# tmp117, D.7592.b
	str	d31, [sp, 80]	;# tmp117, b
;# varargs-dll.c:1264:   return a + b;
	ldr	d30, [sp, 88]	;# tmp118, a
	ldr	d31, [sp, 80]	;# tmp119, b
	fadd	d31, d30, d31	;# _1, tmp118, tmp119
	fcvtzs	w0, d31	;# _7, _1
;# varargs-dll.c:1265: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_hfa_4_doubles
	.def	use_va_args_several_hfa_4_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_hfa_4_doubles
use_va_args_several_hfa_4_doubles:
	sub	sp, sp, #448	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 392]	;#,
	str	x2, [sp, 400]	;#,
	str	x3, [sp, 408]	;#,
	str	x4, [sp, 416]	;#,
	str	x5, [sp, 424]	;#,
	str	x6, [sp, 432]	;#,
	str	x7, [sp, 440]	;#,
;# varargs-dll.c:1271:   va_start (argv, format);
	add	x0, sp, 448	;# tmp129,,
	sub	x0, x0, #56	;# tmp130, tmp129,
	str	x0, [sp, 16]	;# tmp130, MEM[(char * *)&argv]
;# varargs-dll.c:1272:   double a = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp, 16]	;# D.9490, argv
	add	x0, x1, 32	;# D.9491, D.9490,
	str	x0, [sp, 16]	;# D.9491, argv
	add	x0, sp, 24	;# tmp131,,
	ldr	q30, [x1]	;# tmp133, MEM[(struct hfa_4_doubles *)_32]
	ldr	q31, [x1, 16]	;# tmp134, MEM[(struct hfa_4_doubles *)_32]
	str	q30, [x0]	;# tmp133, D.7595
	str	q31, [x0, 16]	;# tmp134, D.7595
;# varargs-dll.c:1272:   double a = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 24]	;# tmp135, D.7595.a
	str	d31, [sp, 376]	;# tmp135, a
;# varargs-dll.c:1273:   double b = va_arg (argv, struct hfa_4_doubles).b;
	ldr	x1, [sp, 16]	;# D.9492, argv
	add	x0, x1, 32	;# D.9493, D.9492,
	str	x0, [sp, 16]	;# D.9493, argv
	add	x0, sp, 56	;# tmp136,,
	ldr	q30, [x1]	;# tmp138, MEM[(struct hfa_4_doubles *)_36]
	ldr	q31, [x1, 16]	;# tmp139, MEM[(struct hfa_4_doubles *)_36]
	str	q30, [x0]	;# tmp138, D.7596
	str	q31, [x0, 16]	;# tmp139, D.7596
;# varargs-dll.c:1273:   double b = va_arg (argv, struct hfa_4_doubles).b;
	ldr	d31, [sp, 64]	;# tmp140, D.7596.b
	str	d31, [sp, 368]	;# tmp140, b
;# varargs-dll.c:1274:   double c = va_arg (argv, struct hfa_4_doubles).c;
	ldr	x1, [sp, 16]	;# D.9494, argv
	add	x0, x1, 32	;# D.9495, D.9494,
	str	x0, [sp, 16]	;# D.9495, argv
	add	x0, sp, 88	;# tmp141,,
	ldr	q30, [x1]	;# tmp143, MEM[(struct hfa_4_doubles *)_40]
	ldr	q31, [x1, 16]	;# tmp144, MEM[(struct hfa_4_doubles *)_40]
	str	q30, [x0]	;# tmp143, D.7597
	str	q31, [x0, 16]	;# tmp144, D.7597
;# varargs-dll.c:1274:   double c = va_arg (argv, struct hfa_4_doubles).c;
	ldr	d31, [sp, 104]	;# tmp145, D.7597.c
	str	d31, [sp, 360]	;# tmp145, c
;# varargs-dll.c:1275:   double d = va_arg (argv, struct hfa_4_doubles).d;
	ldr	x1, [sp, 16]	;# D.9496, argv
	add	x0, x1, 32	;# D.9497, D.9496,
	str	x0, [sp, 16]	;# D.9497, argv
	add	x0, sp, 120	;# tmp146,,
	ldr	q30, [x1]	;# tmp148, MEM[(struct hfa_4_doubles *)_44]
	ldr	q31, [x1, 16]	;# tmp149, MEM[(struct hfa_4_doubles *)_44]
	str	q30, [x0]	;# tmp148, D.7598
	str	q31, [x0, 16]	;# tmp149, D.7598
;# varargs-dll.c:1275:   double d = va_arg (argv, struct hfa_4_doubles).d;
	ldr	d31, [sp, 144]	;# tmp150, D.7598.d
	str	d31, [sp, 352]	;# tmp150, d
;# varargs-dll.c:1276:   double e = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp, 16]	;# D.9498, argv
	add	x0, x1, 32	;# D.9499, D.9498,
	str	x0, [sp, 16]	;# D.9499, argv
	add	x0, sp, 152	;# tmp151,,
	ldr	q30, [x1]	;# tmp153, MEM[(struct hfa_4_doubles *)_48]
	ldr	q31, [x1, 16]	;# tmp154, MEM[(struct hfa_4_doubles *)_48]
	str	q30, [x0]	;# tmp153, D.7599
	str	q31, [x0, 16]	;# tmp154, D.7599
;# varargs-dll.c:1276:   double e = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 152]	;# tmp155, D.7599.a
	str	d31, [sp, 344]	;# tmp155, e
;# varargs-dll.c:1277:   double f = va_arg (argv, struct hfa_4_doubles).b;
	ldr	x1, [sp, 16]	;# D.9500, argv
	add	x0, x1, 32	;# D.9501, D.9500,
	str	x0, [sp, 16]	;# D.9501, argv
	add	x0, sp, 184	;# tmp156,,
	ldr	q30, [x1]	;# tmp158, MEM[(struct hfa_4_doubles *)_52]
	ldr	q31, [x1, 16]	;# tmp159, MEM[(struct hfa_4_doubles *)_52]
	str	q30, [x0]	;# tmp158, D.7600
	str	q31, [x0, 16]	;# tmp159, D.7600
;# varargs-dll.c:1277:   double f = va_arg (argv, struct hfa_4_doubles).b;
	ldr	d31, [sp, 192]	;# tmp160, D.7600.b
	str	d31, [sp, 336]	;# tmp160, f
;# varargs-dll.c:1278:   double g = va_arg (argv, struct hfa_4_doubles).c;
	ldr	x1, [sp, 16]	;# D.9502, argv
	add	x0, x1, 32	;# D.9503, D.9502,
	str	x0, [sp, 16]	;# D.9503, argv
	add	x0, sp, 216	;# tmp161,,
	ldr	q30, [x1]	;# tmp163, MEM[(struct hfa_4_doubles *)_56]
	ldr	q31, [x1, 16]	;# tmp164, MEM[(struct hfa_4_doubles *)_56]
	str	q30, [x0]	;# tmp163, D.7601
	str	q31, [x0, 16]	;# tmp164, D.7601
;# varargs-dll.c:1278:   double g = va_arg (argv, struct hfa_4_doubles).c;
	ldr	d31, [sp, 232]	;# tmp165, D.7601.c
	str	d31, [sp, 328]	;# tmp165, g
;# varargs-dll.c:1279:   double h = va_arg (argv, struct hfa_4_doubles).d;
	ldr	x1, [sp, 16]	;# D.9504, argv
	add	x0, x1, 32	;# D.9505, D.9504,
	str	x0, [sp, 16]	;# D.9505, argv
	add	x0, sp, 248	;# tmp166,,
	ldr	q30, [x1]	;# tmp168, MEM[(struct hfa_4_doubles *)_60]
	ldr	q31, [x1, 16]	;# tmp169, MEM[(struct hfa_4_doubles *)_60]
	str	q30, [x0]	;# tmp168, D.7602
	str	q31, [x0, 16]	;# tmp169, D.7602
;# varargs-dll.c:1279:   double h = va_arg (argv, struct hfa_4_doubles).d;
	ldr	d31, [sp, 272]	;# tmp170, D.7602.d
	str	d31, [sp, 320]	;# tmp170, h
;# varargs-dll.c:1280:   double i = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp, 16]	;# D.9506, argv
	add	x0, x1, 32	;# D.9507, D.9506,
	str	x0, [sp, 16]	;# D.9507, argv
	add	x0, sp, 280	;# tmp171,,
	ldr	q30, [x1]	;# tmp173, MEM[(struct hfa_4_doubles *)_64]
	ldr	q31, [x1, 16]	;# tmp174, MEM[(struct hfa_4_doubles *)_64]
	str	q30, [x0]	;# tmp173, D.7603
	str	q31, [x0, 16]	;# tmp174, D.7603
;# varargs-dll.c:1280:   double i = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 280]	;# tmp175, D.7603.a
	str	d31, [sp, 312]	;# tmp175, i
;# varargs-dll.c:1282:   return a + b + c + d + e + f + g + h + i;
	ldr	d30, [sp, 376]	;# tmp176, a
	ldr	d31, [sp, 368]	;# tmp177, b
	fadd	d30, d30, d31	;# _1, tmp176, tmp177
;# varargs-dll.c:1282:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 360]	;# tmp178, c
	fadd	d30, d30, d31	;# _2, _1, tmp178
;# varargs-dll.c:1282:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 352]	;# tmp179, d
	fadd	d30, d30, d31	;# _3, _2, tmp179
;# varargs-dll.c:1282:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 344]	;# tmp180, e
	fadd	d30, d30, d31	;# _4, _3, tmp180
;# varargs-dll.c:1282:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 336]	;# tmp181, f
	fadd	d30, d30, d31	;# _5, _4, tmp181
;# varargs-dll.c:1282:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 328]	;# tmp182, g
	fadd	d30, d30, d31	;# _6, _5, tmp182
;# varargs-dll.c:1282:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 320]	;# tmp183, h
	fadd	d30, d30, d31	;# _7, _6, tmp183
;# varargs-dll.c:1282:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 312]	;# tmp184, i
	fadd	d31, d30, d31	;# _8, _7, tmp184
	fcvtzs	w0, d31	;# _30, _8
;# varargs-dll.c:1283: }
	add	sp, sp, 448	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_hfa_4_doubles
	.def	use_va_list_several_hfa_4_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_hfa_4_doubles
use_va_list_several_hfa_4_doubles:
	sub	sp, sp, #384	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1288:   double a = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp]	;# D.9508, argv
	add	x0, x1, 32	;# D.9509, D.9508,
	str	x0, [sp]	;# D.9509, argv
	add	x0, sp, 24	;# tmp129,,
	ldr	q30, [x1]	;# tmp131, MEM[(struct hfa_4_doubles *)_29]
	ldr	q31, [x1, 16]	;# tmp132, MEM[(struct hfa_4_doubles *)_29]
	str	q30, [x0]	;# tmp131, D.7607
	str	q31, [x0, 16]	;# tmp132, D.7607
;# varargs-dll.c:1288:   double a = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 24]	;# tmp133, D.7607.a
	str	d31, [sp, 376]	;# tmp133, a
;# varargs-dll.c:1289:   double b = va_arg (argv, struct hfa_4_doubles).b;
	ldr	x1, [sp]	;# D.9510, argv
	add	x0, x1, 32	;# D.9511, D.9510,
	str	x0, [sp]	;# D.9511, argv
	add	x0, sp, 56	;# tmp134,,
	ldr	q30, [x1]	;# tmp136, MEM[(struct hfa_4_doubles *)_33]
	ldr	q31, [x1, 16]	;# tmp137, MEM[(struct hfa_4_doubles *)_33]
	str	q30, [x0]	;# tmp136, D.7608
	str	q31, [x0, 16]	;# tmp137, D.7608
;# varargs-dll.c:1289:   double b = va_arg (argv, struct hfa_4_doubles).b;
	ldr	d31, [sp, 64]	;# tmp138, D.7608.b
	str	d31, [sp, 368]	;# tmp138, b
;# varargs-dll.c:1290:   double c = va_arg (argv, struct hfa_4_doubles).c;
	ldr	x1, [sp]	;# D.9512, argv
	add	x0, x1, 32	;# D.9513, D.9512,
	str	x0, [sp]	;# D.9513, argv
	add	x0, sp, 88	;# tmp139,,
	ldr	q30, [x1]	;# tmp141, MEM[(struct hfa_4_doubles *)_37]
	ldr	q31, [x1, 16]	;# tmp142, MEM[(struct hfa_4_doubles *)_37]
	str	q30, [x0]	;# tmp141, D.7609
	str	q31, [x0, 16]	;# tmp142, D.7609
;# varargs-dll.c:1290:   double c = va_arg (argv, struct hfa_4_doubles).c;
	ldr	d31, [sp, 104]	;# tmp143, D.7609.c
	str	d31, [sp, 360]	;# tmp143, c
;# varargs-dll.c:1291:   double d = va_arg (argv, struct hfa_4_doubles).d;
	ldr	x1, [sp]	;# D.9514, argv
	add	x0, x1, 32	;# D.9515, D.9514,
	str	x0, [sp]	;# D.9515, argv
	add	x0, sp, 120	;# tmp144,,
	ldr	q30, [x1]	;# tmp146, MEM[(struct hfa_4_doubles *)_41]
	ldr	q31, [x1, 16]	;# tmp147, MEM[(struct hfa_4_doubles *)_41]
	str	q30, [x0]	;# tmp146, D.7610
	str	q31, [x0, 16]	;# tmp147, D.7610
;# varargs-dll.c:1291:   double d = va_arg (argv, struct hfa_4_doubles).d;
	ldr	d31, [sp, 144]	;# tmp148, D.7610.d
	str	d31, [sp, 352]	;# tmp148, d
;# varargs-dll.c:1292:   double e = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp]	;# D.9516, argv
	add	x0, x1, 32	;# D.9517, D.9516,
	str	x0, [sp]	;# D.9517, argv
	add	x0, sp, 152	;# tmp149,,
	ldr	q30, [x1]	;# tmp151, MEM[(struct hfa_4_doubles *)_45]
	ldr	q31, [x1, 16]	;# tmp152, MEM[(struct hfa_4_doubles *)_45]
	str	q30, [x0]	;# tmp151, D.7611
	str	q31, [x0, 16]	;# tmp152, D.7611
;# varargs-dll.c:1292:   double e = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 152]	;# tmp153, D.7611.a
	str	d31, [sp, 344]	;# tmp153, e
;# varargs-dll.c:1293:   double f = va_arg (argv, struct hfa_4_doubles).b;
	ldr	x1, [sp]	;# D.9518, argv
	add	x0, x1, 32	;# D.9519, D.9518,
	str	x0, [sp]	;# D.9519, argv
	add	x0, sp, 184	;# tmp154,,
	ldr	q30, [x1]	;# tmp156, MEM[(struct hfa_4_doubles *)_49]
	ldr	q31, [x1, 16]	;# tmp157, MEM[(struct hfa_4_doubles *)_49]
	str	q30, [x0]	;# tmp156, D.7612
	str	q31, [x0, 16]	;# tmp157, D.7612
;# varargs-dll.c:1293:   double f = va_arg (argv, struct hfa_4_doubles).b;
	ldr	d31, [sp, 192]	;# tmp158, D.7612.b
	str	d31, [sp, 336]	;# tmp158, f
;# varargs-dll.c:1294:   double g = va_arg (argv, struct hfa_4_doubles).c;
	ldr	x1, [sp]	;# D.9520, argv
	add	x0, x1, 32	;# D.9521, D.9520,
	str	x0, [sp]	;# D.9521, argv
	add	x0, sp, 216	;# tmp159,,
	ldr	q30, [x1]	;# tmp161, MEM[(struct hfa_4_doubles *)_53]
	ldr	q31, [x1, 16]	;# tmp162, MEM[(struct hfa_4_doubles *)_53]
	str	q30, [x0]	;# tmp161, D.7613
	str	q31, [x0, 16]	;# tmp162, D.7613
;# varargs-dll.c:1294:   double g = va_arg (argv, struct hfa_4_doubles).c;
	ldr	d31, [sp, 232]	;# tmp163, D.7613.c
	str	d31, [sp, 328]	;# tmp163, g
;# varargs-dll.c:1295:   double h = va_arg (argv, struct hfa_4_doubles).d;
	ldr	x1, [sp]	;# D.9522, argv
	add	x0, x1, 32	;# D.9523, D.9522,
	str	x0, [sp]	;# D.9523, argv
	add	x0, sp, 248	;# tmp164,,
	ldr	q30, [x1]	;# tmp166, MEM[(struct hfa_4_doubles *)_57]
	ldr	q31, [x1, 16]	;# tmp167, MEM[(struct hfa_4_doubles *)_57]
	str	q30, [x0]	;# tmp166, D.7614
	str	q31, [x0, 16]	;# tmp167, D.7614
;# varargs-dll.c:1295:   double h = va_arg (argv, struct hfa_4_doubles).d;
	ldr	d31, [sp, 272]	;# tmp168, D.7614.d
	str	d31, [sp, 320]	;# tmp168, h
;# varargs-dll.c:1296:   double i = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp]	;# D.9524, argv
	add	x0, x1, 32	;# D.9525, D.9524,
	str	x0, [sp]	;# D.9525, argv
	add	x0, sp, 280	;# tmp169,,
	ldr	q30, [x1]	;# tmp171, MEM[(struct hfa_4_doubles *)_61]
	ldr	q31, [x1, 16]	;# tmp172, MEM[(struct hfa_4_doubles *)_61]
	str	q30, [x0]	;# tmp171, D.7615
	str	q31, [x0, 16]	;# tmp172, D.7615
;# varargs-dll.c:1296:   double i = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 280]	;# tmp173, D.7615.a
	str	d31, [sp, 312]	;# tmp173, i
;# varargs-dll.c:1297:   return a + b + c + d + e + f + g + h + i;
	ldr	d30, [sp, 376]	;# tmp174, a
	ldr	d31, [sp, 368]	;# tmp175, b
	fadd	d30, d30, d31	;# _1, tmp174, tmp175
;# varargs-dll.c:1297:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 360]	;# tmp176, c
	fadd	d30, d30, d31	;# _2, _1, tmp176
;# varargs-dll.c:1297:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 352]	;# tmp177, d
	fadd	d30, d30, d31	;# _3, _2, tmp177
;# varargs-dll.c:1297:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 344]	;# tmp178, e
	fadd	d30, d30, d31	;# _4, _3, tmp178
;# varargs-dll.c:1297:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 336]	;# tmp179, f
	fadd	d30, d30, d31	;# _5, _4, tmp179
;# varargs-dll.c:1297:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 328]	;# tmp180, g
	fadd	d30, d30, d31	;# _6, _5, tmp180
;# varargs-dll.c:1297:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 320]	;# tmp181, h
	fadd	d30, d30, d31	;# _7, _6, tmp181
;# varargs-dll.c:1297:   return a + b + c + d + e + f + g + h + i;
	ldr	d31, [sp, 312]	;# tmp182, i
	fadd	d31, d30, d31	;# _8, _7, tmp182
	fcvtzs	w0, d31	;# _28, _8
;# varargs-dll.c:1298: }
	add	sp, sp, 384	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_hfa_4_doubles
	.def	use_va_args_many_hfa_4_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_hfa_4_doubles
use_va_args_many_hfa_4_doubles:
	sub	sp, sp, #768	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 712]	;#,
	str	x2, [sp, 720]	;#,
	str	x3, [sp, 728]	;#,
	str	x4, [sp, 736]	;#,
	str	x5, [sp, 744]	;#,
	str	x6, [sp, 752]	;#,
	str	x7, [sp, 760]	;#,
;# varargs-dll.c:1304:   va_start (argv, format);
	add	x0, sp, 768	;# tmp153,,
	sub	x0, x0, #56	;# tmp154, tmp153,
	str	x0, [sp, 16]	;# tmp154, MEM[(char * *)&argv]
;# varargs-dll.c:1305:   double a = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp, 16]	;# D.9526, argv
	add	x0, x1, 32	;# D.9527, D.9526,
	str	x0, [sp, 16]	;# D.9527, argv
	add	x0, sp, 24	;# tmp155,,
	ldr	q30, [x1]	;# tmp157, MEM[(struct hfa_4_doubles *)_56]
	ldr	q31, [x1, 16]	;# tmp158, MEM[(struct hfa_4_doubles *)_56]
	str	q30, [x0]	;# tmp157, D.7618
	str	q31, [x0, 16]	;# tmp158, D.7618
;# varargs-dll.c:1305:   double a = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 24]	;# tmp159, D.7618.a
	str	d31, [sp, 696]	;# tmp159, a
;# varargs-dll.c:1306:   double b = va_arg (argv, struct hfa_4_doubles).b;
	ldr	x1, [sp, 16]	;# D.9528, argv
	add	x0, x1, 32	;# D.9529, D.9528,
	str	x0, [sp, 16]	;# D.9529, argv
	add	x0, sp, 56	;# tmp160,,
	ldr	q30, [x1]	;# tmp162, MEM[(struct hfa_4_doubles *)_60]
	ldr	q31, [x1, 16]	;# tmp163, MEM[(struct hfa_4_doubles *)_60]
	str	q30, [x0]	;# tmp162, D.7619
	str	q31, [x0, 16]	;# tmp163, D.7619
;# varargs-dll.c:1306:   double b = va_arg (argv, struct hfa_4_doubles).b;
	ldr	d31, [sp, 64]	;# tmp164, D.7619.b
	str	d31, [sp, 688]	;# tmp164, b
;# varargs-dll.c:1307:   double c = va_arg (argv, struct hfa_4_doubles).c;
	ldr	x1, [sp, 16]	;# D.9530, argv
	add	x0, x1, 32	;# D.9531, D.9530,
	str	x0, [sp, 16]	;# D.9531, argv
	add	x0, sp, 88	;# tmp165,,
	ldr	q30, [x1]	;# tmp167, MEM[(struct hfa_4_doubles *)_64]
	ldr	q31, [x1, 16]	;# tmp168, MEM[(struct hfa_4_doubles *)_64]
	str	q30, [x0]	;# tmp167, D.7620
	str	q31, [x0, 16]	;# tmp168, D.7620
;# varargs-dll.c:1307:   double c = va_arg (argv, struct hfa_4_doubles).c;
	ldr	d31, [sp, 104]	;# tmp169, D.7620.c
	str	d31, [sp, 680]	;# tmp169, c
;# varargs-dll.c:1308:   double d = va_arg (argv, struct hfa_4_doubles).d;
	ldr	x1, [sp, 16]	;# D.9532, argv
	add	x0, x1, 32	;# D.9533, D.9532,
	str	x0, [sp, 16]	;# D.9533, argv
	add	x0, sp, 120	;# tmp170,,
	ldr	q30, [x1]	;# tmp172, MEM[(struct hfa_4_doubles *)_68]
	ldr	q31, [x1, 16]	;# tmp173, MEM[(struct hfa_4_doubles *)_68]
	str	q30, [x0]	;# tmp172, D.7621
	str	q31, [x0, 16]	;# tmp173, D.7621
;# varargs-dll.c:1308:   double d = va_arg (argv, struct hfa_4_doubles).d;
	ldr	d31, [sp, 144]	;# tmp174, D.7621.d
	str	d31, [sp, 672]	;# tmp174, d
;# varargs-dll.c:1309:   double e = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp, 16]	;# D.9534, argv
	add	x0, x1, 32	;# D.9535, D.9534,
	str	x0, [sp, 16]	;# D.9535, argv
	add	x0, sp, 152	;# tmp175,,
	ldr	q30, [x1]	;# tmp177, MEM[(struct hfa_4_doubles *)_72]
	ldr	q31, [x1, 16]	;# tmp178, MEM[(struct hfa_4_doubles *)_72]
	str	q30, [x0]	;# tmp177, D.7622
	str	q31, [x0, 16]	;# tmp178, D.7622
;# varargs-dll.c:1309:   double e = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 152]	;# tmp179, D.7622.a
	str	d31, [sp, 664]	;# tmp179, e
;# varargs-dll.c:1310:   double f = va_arg (argv, struct hfa_4_doubles).b;
	ldr	x1, [sp, 16]	;# D.9536, argv
	add	x0, x1, 32	;# D.9537, D.9536,
	str	x0, [sp, 16]	;# D.9537, argv
	add	x0, sp, 184	;# tmp180,,
	ldr	q30, [x1]	;# tmp182, MEM[(struct hfa_4_doubles *)_76]
	ldr	q31, [x1, 16]	;# tmp183, MEM[(struct hfa_4_doubles *)_76]
	str	q30, [x0]	;# tmp182, D.7623
	str	q31, [x0, 16]	;# tmp183, D.7623
;# varargs-dll.c:1310:   double f = va_arg (argv, struct hfa_4_doubles).b;
	ldr	d31, [sp, 192]	;# tmp184, D.7623.b
	str	d31, [sp, 656]	;# tmp184, f
;# varargs-dll.c:1311:   double g = va_arg (argv, struct hfa_4_doubles).c;
	ldr	x1, [sp, 16]	;# D.9538, argv
	add	x0, x1, 32	;# D.9539, D.9538,
	str	x0, [sp, 16]	;# D.9539, argv
	add	x0, sp, 216	;# tmp185,,
	ldr	q30, [x1]	;# tmp187, MEM[(struct hfa_4_doubles *)_80]
	ldr	q31, [x1, 16]	;# tmp188, MEM[(struct hfa_4_doubles *)_80]
	str	q30, [x0]	;# tmp187, D.7624
	str	q31, [x0, 16]	;# tmp188, D.7624
;# varargs-dll.c:1311:   double g = va_arg (argv, struct hfa_4_doubles).c;
	ldr	d31, [sp, 232]	;# tmp189, D.7624.c
	str	d31, [sp, 648]	;# tmp189, g
;# varargs-dll.c:1312:   double h = va_arg (argv, struct hfa_4_doubles).d;
	ldr	x1, [sp, 16]	;# D.9540, argv
	add	x0, x1, 32	;# D.9541, D.9540,
	str	x0, [sp, 16]	;# D.9541, argv
	add	x0, sp, 248	;# tmp190,,
	ldr	q30, [x1]	;# tmp192, MEM[(struct hfa_4_doubles *)_84]
	ldr	q31, [x1, 16]	;# tmp193, MEM[(struct hfa_4_doubles *)_84]
	str	q30, [x0]	;# tmp192, D.7625
	str	q31, [x0, 16]	;# tmp193, D.7625
;# varargs-dll.c:1312:   double h = va_arg (argv, struct hfa_4_doubles).d;
	ldr	d31, [sp, 272]	;# tmp194, D.7625.d
	str	d31, [sp, 640]	;# tmp194, h
;# varargs-dll.c:1313:   double i = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp, 16]	;# D.9542, argv
	add	x0, x1, 32	;# D.9543, D.9542,
	str	x0, [sp, 16]	;# D.9543, argv
	add	x0, sp, 280	;# tmp195,,
	ldr	q30, [x1]	;# tmp197, MEM[(struct hfa_4_doubles *)_88]
	ldr	q31, [x1, 16]	;# tmp198, MEM[(struct hfa_4_doubles *)_88]
	str	q30, [x0]	;# tmp197, D.7626
	str	q31, [x0, 16]	;# tmp198, D.7626
;# varargs-dll.c:1313:   double i = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 280]	;# tmp199, D.7626.a
	str	d31, [sp, 632]	;# tmp199, i
;# varargs-dll.c:1314:   double j = va_arg (argv, struct hfa_4_doubles).b;
	ldr	x1, [sp, 16]	;# D.9544, argv
	add	x0, x1, 32	;# D.9545, D.9544,
	str	x0, [sp, 16]	;# D.9545, argv
	add	x0, sp, 312	;# tmp200,,
	ldr	q30, [x1]	;# tmp202, MEM[(struct hfa_4_doubles *)_92]
	ldr	q31, [x1, 16]	;# tmp203, MEM[(struct hfa_4_doubles *)_92]
	str	q30, [x0]	;# tmp202, D.7627
	str	q31, [x0, 16]	;# tmp203, D.7627
;# varargs-dll.c:1314:   double j = va_arg (argv, struct hfa_4_doubles).b;
	ldr	d31, [sp, 320]	;# tmp204, D.7627.b
	str	d31, [sp, 624]	;# tmp204, j
;# varargs-dll.c:1315:   double k = va_arg (argv, struct hfa_4_doubles).c;
	ldr	x1, [sp, 16]	;# D.9546, argv
	add	x0, x1, 32	;# D.9547, D.9546,
	str	x0, [sp, 16]	;# D.9547, argv
	add	x0, sp, 344	;# tmp205,,
	ldr	q30, [x1]	;# tmp207, MEM[(struct hfa_4_doubles *)_96]
	ldr	q31, [x1, 16]	;# tmp208, MEM[(struct hfa_4_doubles *)_96]
	str	q30, [x0]	;# tmp207, D.7628
	str	q31, [x0, 16]	;# tmp208, D.7628
;# varargs-dll.c:1315:   double k = va_arg (argv, struct hfa_4_doubles).c;
	ldr	d31, [sp, 360]	;# tmp209, D.7628.c
	str	d31, [sp, 616]	;# tmp209, k
;# varargs-dll.c:1316:   double l = va_arg (argv, struct hfa_4_doubles).d;
	ldr	x1, [sp, 16]	;# D.9548, argv
	add	x0, x1, 32	;# D.9549, D.9548,
	str	x0, [sp, 16]	;# D.9549, argv
	add	x0, sp, 376	;# tmp210,,
	ldr	q30, [x1]	;# tmp212, MEM[(struct hfa_4_doubles *)_100]
	ldr	q31, [x1, 16]	;# tmp213, MEM[(struct hfa_4_doubles *)_100]
	str	q30, [x0]	;# tmp212, D.7629
	str	q31, [x0, 16]	;# tmp213, D.7629
;# varargs-dll.c:1316:   double l = va_arg (argv, struct hfa_4_doubles).d;
	ldr	d31, [sp, 400]	;# tmp214, D.7629.d
	str	d31, [sp, 608]	;# tmp214, l
;# varargs-dll.c:1317:   double m = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp, 16]	;# D.9550, argv
	add	x0, x1, 32	;# D.9551, D.9550,
	str	x0, [sp, 16]	;# D.9551, argv
	add	x0, sp, 408	;# tmp215,,
	ldr	q30, [x1]	;# tmp217, MEM[(struct hfa_4_doubles *)_104]
	ldr	q31, [x1, 16]	;# tmp218, MEM[(struct hfa_4_doubles *)_104]
	str	q30, [x0]	;# tmp217, D.7630
	str	q31, [x0, 16]	;# tmp218, D.7630
;# varargs-dll.c:1317:   double m = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 408]	;# tmp219, D.7630.a
	str	d31, [sp, 600]	;# tmp219, m
;# varargs-dll.c:1318:   double n = va_arg (argv, struct hfa_4_doubles).b;
	ldr	x1, [sp, 16]	;# D.9552, argv
	add	x0, x1, 32	;# D.9553, D.9552,
	str	x0, [sp, 16]	;# D.9553, argv
	add	x0, sp, 440	;# tmp220,,
	ldr	q30, [x1]	;# tmp222, MEM[(struct hfa_4_doubles *)_108]
	ldr	q31, [x1, 16]	;# tmp223, MEM[(struct hfa_4_doubles *)_108]
	str	q30, [x0]	;# tmp222, D.7631
	str	q31, [x0, 16]	;# tmp223, D.7631
;# varargs-dll.c:1318:   double n = va_arg (argv, struct hfa_4_doubles).b;
	ldr	d31, [sp, 448]	;# tmp224, D.7631.b
	str	d31, [sp, 592]	;# tmp224, n
;# varargs-dll.c:1319:   double o = va_arg (argv, struct hfa_4_doubles).c;
	ldr	x1, [sp, 16]	;# D.9554, argv
	add	x0, x1, 32	;# D.9555, D.9554,
	str	x0, [sp, 16]	;# D.9555, argv
	add	x0, sp, 472	;# tmp225,,
	ldr	q30, [x1]	;# tmp227, MEM[(struct hfa_4_doubles *)_112]
	ldr	q31, [x1, 16]	;# tmp228, MEM[(struct hfa_4_doubles *)_112]
	str	q30, [x0]	;# tmp227, D.7632
	str	q31, [x0, 16]	;# tmp228, D.7632
;# varargs-dll.c:1319:   double o = va_arg (argv, struct hfa_4_doubles).c;
	ldr	d31, [sp, 488]	;# tmp229, D.7632.c
	str	d31, [sp, 584]	;# tmp229, o
;# varargs-dll.c:1320:   double p = va_arg (argv, struct hfa_4_doubles).d;
	ldr	x1, [sp, 16]	;# D.9556, argv
	add	x0, x1, 32	;# D.9557, D.9556,
	str	x0, [sp, 16]	;# D.9557, argv
	add	x0, sp, 504	;# tmp230,,
	ldr	q30, [x1]	;# tmp232, MEM[(struct hfa_4_doubles *)_116]
	ldr	q31, [x1, 16]	;# tmp233, MEM[(struct hfa_4_doubles *)_116]
	str	q30, [x0]	;# tmp232, D.7633
	str	q31, [x0, 16]	;# tmp233, D.7633
;# varargs-dll.c:1320:   double p = va_arg (argv, struct hfa_4_doubles).d;
	ldr	d31, [sp, 528]	;# tmp234, D.7633.d
	str	d31, [sp, 576]	;# tmp234, p
;# varargs-dll.c:1321:   double q = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp, 16]	;# D.9558, argv
	add	x0, x1, 32	;# D.9559, D.9558,
	str	x0, [sp, 16]	;# D.9559, argv
	add	x0, sp, 536	;# tmp235,,
	ldr	q30, [x1]	;# tmp237, MEM[(struct hfa_4_doubles *)_120]
	ldr	q31, [x1, 16]	;# tmp238, MEM[(struct hfa_4_doubles *)_120]
	str	q30, [x0]	;# tmp237, D.7634
	str	q31, [x0, 16]	;# tmp238, D.7634
;# varargs-dll.c:1321:   double q = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 536]	;# tmp239, D.7634.a
	str	d31, [sp, 568]	;# tmp239, q
;# varargs-dll.c:1323:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d30, [sp, 696]	;# tmp240, a
	ldr	d31, [sp, 688]	;# tmp241, b
	fadd	d30, d30, d31	;# _1, tmp240, tmp241
;# varargs-dll.c:1323:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 680]	;# tmp242, c
	fadd	d30, d30, d31	;# _2, _1, tmp242
;# varargs-dll.c:1323:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 672]	;# tmp243, d
	fadd	d30, d30, d31	;# _3, _2, tmp243
;# varargs-dll.c:1323:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 664]	;# tmp244, e
	fadd	d30, d30, d31	;# _4, _3, tmp244
;# varargs-dll.c:1323:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 656]	;# tmp245, f
	fadd	d30, d30, d31	;# _5, _4, tmp245
;# varargs-dll.c:1323:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 648]	;# tmp246, g
	fadd	d30, d30, d31	;# _6, _5, tmp246
;# varargs-dll.c:1323:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 640]	;# tmp247, h
	fadd	d30, d30, d31	;# _7, _6, tmp247
;# varargs-dll.c:1323:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 632]	;# tmp248, i
	fadd	d30, d30, d31	;# _8, _7, tmp248
;# varargs-dll.c:1323:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 624]	;# tmp249, j
	fadd	d30, d30, d31	;# _9, _8, tmp249
;# varargs-dll.c:1323:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 616]	;# tmp250, k
	fadd	d30, d30, d31	;# _10, _9, tmp250
;# varargs-dll.c:1323:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 608]	;# tmp251, l
	fadd	d30, d30, d31	;# _11, _10, tmp251
;# varargs-dll.c:1323:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 600]	;# tmp252, m
	fadd	d30, d30, d31	;# _12, _11, tmp252
;# varargs-dll.c:1323:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 592]	;# tmp253, n
	fadd	d30, d30, d31	;# _13, _12, tmp253
;# varargs-dll.c:1323:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 584]	;# tmp254, o
	fadd	d30, d30, d31	;# _14, _13, tmp254
;# varargs-dll.c:1323:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 576]	;# tmp255, p
	fadd	d30, d30, d31	;# _15, _14, tmp255
;# varargs-dll.c:1323:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 568]	;# tmp256, q
	fadd	d31, d30, d31	;# _16, _15, tmp256
	fcvtzs	w0, d31	;# _54, _16
;# varargs-dll.c:1324: }
	add	sp, sp, 768	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_hfa_4_doubles
	.def	use_va_list_many_hfa_4_doubles;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_hfa_4_doubles
use_va_list_many_hfa_4_doubles:
	sub	sp, sp, #704	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1329:   double a = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp]	;# D.9560, argv
	add	x0, x1, 32	;# D.9561, D.9560,
	str	x0, [sp]	;# D.9561, argv
	add	x0, sp, 24	;# tmp153,,
	ldr	q30, [x1]	;# tmp155, MEM[(struct hfa_4_doubles *)_53]
	ldr	q31, [x1, 16]	;# tmp156, MEM[(struct hfa_4_doubles *)_53]
	str	q30, [x0]	;# tmp155, D.7638
	str	q31, [x0, 16]	;# tmp156, D.7638
;# varargs-dll.c:1329:   double a = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 24]	;# tmp157, D.7638.a
	str	d31, [sp, 696]	;# tmp157, a
;# varargs-dll.c:1330:   double b = va_arg (argv, struct hfa_4_doubles).b;
	ldr	x1, [sp]	;# D.9562, argv
	add	x0, x1, 32	;# D.9563, D.9562,
	str	x0, [sp]	;# D.9563, argv
	add	x0, sp, 56	;# tmp158,,
	ldr	q30, [x1]	;# tmp160, MEM[(struct hfa_4_doubles *)_57]
	ldr	q31, [x1, 16]	;# tmp161, MEM[(struct hfa_4_doubles *)_57]
	str	q30, [x0]	;# tmp160, D.7639
	str	q31, [x0, 16]	;# tmp161, D.7639
;# varargs-dll.c:1330:   double b = va_arg (argv, struct hfa_4_doubles).b;
	ldr	d31, [sp, 64]	;# tmp162, D.7639.b
	str	d31, [sp, 688]	;# tmp162, b
;# varargs-dll.c:1331:   double c = va_arg (argv, struct hfa_4_doubles).c;
	ldr	x1, [sp]	;# D.9564, argv
	add	x0, x1, 32	;# D.9565, D.9564,
	str	x0, [sp]	;# D.9565, argv
	add	x0, sp, 88	;# tmp163,,
	ldr	q30, [x1]	;# tmp165, MEM[(struct hfa_4_doubles *)_61]
	ldr	q31, [x1, 16]	;# tmp166, MEM[(struct hfa_4_doubles *)_61]
	str	q30, [x0]	;# tmp165, D.7640
	str	q31, [x0, 16]	;# tmp166, D.7640
;# varargs-dll.c:1331:   double c = va_arg (argv, struct hfa_4_doubles).c;
	ldr	d31, [sp, 104]	;# tmp167, D.7640.c
	str	d31, [sp, 680]	;# tmp167, c
;# varargs-dll.c:1332:   double d = va_arg (argv, struct hfa_4_doubles).d;
	ldr	x1, [sp]	;# D.9566, argv
	add	x0, x1, 32	;# D.9567, D.9566,
	str	x0, [sp]	;# D.9567, argv
	add	x0, sp, 120	;# tmp168,,
	ldr	q30, [x1]	;# tmp170, MEM[(struct hfa_4_doubles *)_65]
	ldr	q31, [x1, 16]	;# tmp171, MEM[(struct hfa_4_doubles *)_65]
	str	q30, [x0]	;# tmp170, D.7641
	str	q31, [x0, 16]	;# tmp171, D.7641
;# varargs-dll.c:1332:   double d = va_arg (argv, struct hfa_4_doubles).d;
	ldr	d31, [sp, 144]	;# tmp172, D.7641.d
	str	d31, [sp, 672]	;# tmp172, d
;# varargs-dll.c:1333:   double e = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp]	;# D.9568, argv
	add	x0, x1, 32	;# D.9569, D.9568,
	str	x0, [sp]	;# D.9569, argv
	add	x0, sp, 152	;# tmp173,,
	ldr	q30, [x1]	;# tmp175, MEM[(struct hfa_4_doubles *)_69]
	ldr	q31, [x1, 16]	;# tmp176, MEM[(struct hfa_4_doubles *)_69]
	str	q30, [x0]	;# tmp175, D.7642
	str	q31, [x0, 16]	;# tmp176, D.7642
;# varargs-dll.c:1333:   double e = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 152]	;# tmp177, D.7642.a
	str	d31, [sp, 664]	;# tmp177, e
;# varargs-dll.c:1334:   double f = va_arg (argv, struct hfa_4_doubles).b;
	ldr	x1, [sp]	;# D.9570, argv
	add	x0, x1, 32	;# D.9571, D.9570,
	str	x0, [sp]	;# D.9571, argv
	add	x0, sp, 184	;# tmp178,,
	ldr	q30, [x1]	;# tmp180, MEM[(struct hfa_4_doubles *)_73]
	ldr	q31, [x1, 16]	;# tmp181, MEM[(struct hfa_4_doubles *)_73]
	str	q30, [x0]	;# tmp180, D.7643
	str	q31, [x0, 16]	;# tmp181, D.7643
;# varargs-dll.c:1334:   double f = va_arg (argv, struct hfa_4_doubles).b;
	ldr	d31, [sp, 192]	;# tmp182, D.7643.b
	str	d31, [sp, 656]	;# tmp182, f
;# varargs-dll.c:1335:   double g = va_arg (argv, struct hfa_4_doubles).c;
	ldr	x1, [sp]	;# D.9572, argv
	add	x0, x1, 32	;# D.9573, D.9572,
	str	x0, [sp]	;# D.9573, argv
	add	x0, sp, 216	;# tmp183,,
	ldr	q30, [x1]	;# tmp185, MEM[(struct hfa_4_doubles *)_77]
	ldr	q31, [x1, 16]	;# tmp186, MEM[(struct hfa_4_doubles *)_77]
	str	q30, [x0]	;# tmp185, D.7644
	str	q31, [x0, 16]	;# tmp186, D.7644
;# varargs-dll.c:1335:   double g = va_arg (argv, struct hfa_4_doubles).c;
	ldr	d31, [sp, 232]	;# tmp187, D.7644.c
	str	d31, [sp, 648]	;# tmp187, g
;# varargs-dll.c:1336:   double h = va_arg (argv, struct hfa_4_doubles).d;
	ldr	x1, [sp]	;# D.9574, argv
	add	x0, x1, 32	;# D.9575, D.9574,
	str	x0, [sp]	;# D.9575, argv
	add	x0, sp, 248	;# tmp188,,
	ldr	q30, [x1]	;# tmp190, MEM[(struct hfa_4_doubles *)_81]
	ldr	q31, [x1, 16]	;# tmp191, MEM[(struct hfa_4_doubles *)_81]
	str	q30, [x0]	;# tmp190, D.7645
	str	q31, [x0, 16]	;# tmp191, D.7645
;# varargs-dll.c:1336:   double h = va_arg (argv, struct hfa_4_doubles).d;
	ldr	d31, [sp, 272]	;# tmp192, D.7645.d
	str	d31, [sp, 640]	;# tmp192, h
;# varargs-dll.c:1337:   double i = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp]	;# D.9576, argv
	add	x0, x1, 32	;# D.9577, D.9576,
	str	x0, [sp]	;# D.9577, argv
	add	x0, sp, 280	;# tmp193,,
	ldr	q30, [x1]	;# tmp195, MEM[(struct hfa_4_doubles *)_85]
	ldr	q31, [x1, 16]	;# tmp196, MEM[(struct hfa_4_doubles *)_85]
	str	q30, [x0]	;# tmp195, D.7646
	str	q31, [x0, 16]	;# tmp196, D.7646
;# varargs-dll.c:1337:   double i = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 280]	;# tmp197, D.7646.a
	str	d31, [sp, 632]	;# tmp197, i
;# varargs-dll.c:1338:   double j = va_arg (argv, struct hfa_4_doubles).b;
	ldr	x1, [sp]	;# D.9578, argv
	add	x0, x1, 32	;# D.9579, D.9578,
	str	x0, [sp]	;# D.9579, argv
	add	x0, sp, 312	;# tmp198,,
	ldr	q30, [x1]	;# tmp200, MEM[(struct hfa_4_doubles *)_89]
	ldr	q31, [x1, 16]	;# tmp201, MEM[(struct hfa_4_doubles *)_89]
	str	q30, [x0]	;# tmp200, D.7647
	str	q31, [x0, 16]	;# tmp201, D.7647
;# varargs-dll.c:1338:   double j = va_arg (argv, struct hfa_4_doubles).b;
	ldr	d31, [sp, 320]	;# tmp202, D.7647.b
	str	d31, [sp, 624]	;# tmp202, j
;# varargs-dll.c:1339:   double k = va_arg (argv, struct hfa_4_doubles).c;
	ldr	x1, [sp]	;# D.9580, argv
	add	x0, x1, 32	;# D.9581, D.9580,
	str	x0, [sp]	;# D.9581, argv
	add	x0, sp, 344	;# tmp203,,
	ldr	q30, [x1]	;# tmp205, MEM[(struct hfa_4_doubles *)_93]
	ldr	q31, [x1, 16]	;# tmp206, MEM[(struct hfa_4_doubles *)_93]
	str	q30, [x0]	;# tmp205, D.7648
	str	q31, [x0, 16]	;# tmp206, D.7648
;# varargs-dll.c:1339:   double k = va_arg (argv, struct hfa_4_doubles).c;
	ldr	d31, [sp, 360]	;# tmp207, D.7648.c
	str	d31, [sp, 616]	;# tmp207, k
;# varargs-dll.c:1340:   double l = va_arg (argv, struct hfa_4_doubles).d;
	ldr	x1, [sp]	;# D.9582, argv
	add	x0, x1, 32	;# D.9583, D.9582,
	str	x0, [sp]	;# D.9583, argv
	add	x0, sp, 376	;# tmp208,,
	ldr	q30, [x1]	;# tmp210, MEM[(struct hfa_4_doubles *)_97]
	ldr	q31, [x1, 16]	;# tmp211, MEM[(struct hfa_4_doubles *)_97]
	str	q30, [x0]	;# tmp210, D.7649
	str	q31, [x0, 16]	;# tmp211, D.7649
;# varargs-dll.c:1340:   double l = va_arg (argv, struct hfa_4_doubles).d;
	ldr	d31, [sp, 400]	;# tmp212, D.7649.d
	str	d31, [sp, 608]	;# tmp212, l
;# varargs-dll.c:1341:   double m = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp]	;# D.9584, argv
	add	x0, x1, 32	;# D.9585, D.9584,
	str	x0, [sp]	;# D.9585, argv
	add	x0, sp, 408	;# tmp213,,
	ldr	q30, [x1]	;# tmp215, MEM[(struct hfa_4_doubles *)_101]
	ldr	q31, [x1, 16]	;# tmp216, MEM[(struct hfa_4_doubles *)_101]
	str	q30, [x0]	;# tmp215, D.7650
	str	q31, [x0, 16]	;# tmp216, D.7650
;# varargs-dll.c:1341:   double m = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 408]	;# tmp217, D.7650.a
	str	d31, [sp, 600]	;# tmp217, m
;# varargs-dll.c:1342:   double n = va_arg (argv, struct hfa_4_doubles).b;
	ldr	x1, [sp]	;# D.9586, argv
	add	x0, x1, 32	;# D.9587, D.9586,
	str	x0, [sp]	;# D.9587, argv
	add	x0, sp, 440	;# tmp218,,
	ldr	q30, [x1]	;# tmp220, MEM[(struct hfa_4_doubles *)_105]
	ldr	q31, [x1, 16]	;# tmp221, MEM[(struct hfa_4_doubles *)_105]
	str	q30, [x0]	;# tmp220, D.7651
	str	q31, [x0, 16]	;# tmp221, D.7651
;# varargs-dll.c:1342:   double n = va_arg (argv, struct hfa_4_doubles).b;
	ldr	d31, [sp, 448]	;# tmp222, D.7651.b
	str	d31, [sp, 592]	;# tmp222, n
;# varargs-dll.c:1343:   double o = va_arg (argv, struct hfa_4_doubles).c;
	ldr	x1, [sp]	;# D.9588, argv
	add	x0, x1, 32	;# D.9589, D.9588,
	str	x0, [sp]	;# D.9589, argv
	add	x0, sp, 472	;# tmp223,,
	ldr	q30, [x1]	;# tmp225, MEM[(struct hfa_4_doubles *)_109]
	ldr	q31, [x1, 16]	;# tmp226, MEM[(struct hfa_4_doubles *)_109]
	str	q30, [x0]	;# tmp225, D.7652
	str	q31, [x0, 16]	;# tmp226, D.7652
;# varargs-dll.c:1343:   double o = va_arg (argv, struct hfa_4_doubles).c;
	ldr	d31, [sp, 488]	;# tmp227, D.7652.c
	str	d31, [sp, 584]	;# tmp227, o
;# varargs-dll.c:1344:   double p = va_arg (argv, struct hfa_4_doubles).d;
	ldr	x1, [sp]	;# D.9590, argv
	add	x0, x1, 32	;# D.9591, D.9590,
	str	x0, [sp]	;# D.9591, argv
	add	x0, sp, 504	;# tmp228,,
	ldr	q30, [x1]	;# tmp230, MEM[(struct hfa_4_doubles *)_113]
	ldr	q31, [x1, 16]	;# tmp231, MEM[(struct hfa_4_doubles *)_113]
	str	q30, [x0]	;# tmp230, D.7653
	str	q31, [x0, 16]	;# tmp231, D.7653
;# varargs-dll.c:1344:   double p = va_arg (argv, struct hfa_4_doubles).d;
	ldr	d31, [sp, 528]	;# tmp232, D.7653.d
	str	d31, [sp, 576]	;# tmp232, p
;# varargs-dll.c:1345:   double q = va_arg (argv, struct hfa_4_doubles).a;
	ldr	x1, [sp]	;# D.9592, argv
	add	x0, x1, 32	;# D.9593, D.9592,
	str	x0, [sp]	;# D.9593, argv
	add	x0, sp, 536	;# tmp233,,
	ldr	q30, [x1]	;# tmp235, MEM[(struct hfa_4_doubles *)_117]
	ldr	q31, [x1, 16]	;# tmp236, MEM[(struct hfa_4_doubles *)_117]
	str	q30, [x0]	;# tmp235, D.7654
	str	q31, [x0, 16]	;# tmp236, D.7654
;# varargs-dll.c:1345:   double q = va_arg (argv, struct hfa_4_doubles).a;
	ldr	d31, [sp, 536]	;# tmp237, D.7654.a
	str	d31, [sp, 568]	;# tmp237, q
;# varargs-dll.c:1346:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d30, [sp, 696]	;# tmp238, a
	ldr	d31, [sp, 688]	;# tmp239, b
	fadd	d30, d30, d31	;# _1, tmp238, tmp239
;# varargs-dll.c:1346:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 680]	;# tmp240, c
	fadd	d30, d30, d31	;# _2, _1, tmp240
;# varargs-dll.c:1346:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 672]	;# tmp241, d
	fadd	d30, d30, d31	;# _3, _2, tmp241
;# varargs-dll.c:1346:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 664]	;# tmp242, e
	fadd	d30, d30, d31	;# _4, _3, tmp242
;# varargs-dll.c:1346:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 656]	;# tmp243, f
	fadd	d30, d30, d31	;# _5, _4, tmp243
;# varargs-dll.c:1346:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 648]	;# tmp244, g
	fadd	d30, d30, d31	;# _6, _5, tmp244
;# varargs-dll.c:1346:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 640]	;# tmp245, h
	fadd	d30, d30, d31	;# _7, _6, tmp245
;# varargs-dll.c:1346:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 632]	;# tmp246, i
	fadd	d30, d30, d31	;# _8, _7, tmp246
;# varargs-dll.c:1346:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 624]	;# tmp247, j
	fadd	d30, d30, d31	;# _9, _8, tmp247
;# varargs-dll.c:1346:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 616]	;# tmp248, k
	fadd	d30, d30, d31	;# _10, _9, tmp248
;# varargs-dll.c:1346:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 608]	;# tmp249, l
	fadd	d30, d30, d31	;# _11, _10, tmp249
;# varargs-dll.c:1346:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 600]	;# tmp250, m
	fadd	d30, d30, d31	;# _12, _11, tmp250
;# varargs-dll.c:1346:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 592]	;# tmp251, n
	fadd	d30, d30, d31	;# _13, _12, tmp251
;# varargs-dll.c:1346:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 584]	;# tmp252, o
	fadd	d30, d30, d31	;# _14, _13, tmp252
;# varargs-dll.c:1346:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 576]	;# tmp253, p
	fadd	d30, d30, d31	;# _15, _14, tmp253
;# varargs-dll.c:1346:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 568]	;# tmp254, q
	fadd	d31, d30, d31	;# _16, _15, tmp254
	fcvtzs	w0, d31	;# _52, _16
;# varargs-dll.c:1347: }
	add	sp, sp, 704	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_hva_2_short_vector_8_bytes
	.def	use_va_args_few_hva_2_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_hva_2_short_vector_8_bytes
use_va_args_few_hva_2_short_vector_8_bytes:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 40]	;#,
	str	x2, [sp, 48]	;#,
	str	x3, [sp, 56]	;#,
	str	x4, [sp, 64]	;#,
	str	x5, [sp, 72]	;#,
	str	x6, [sp, 80]	;#,
	str	x7, [sp, 88]	;#,
;# varargs-dll.c:1353:   va_start (argv, format);
	add	x0, sp, 96	;# tmp109,,
	sub	x0, x0, #56	;# tmp110, tmp109,
	str	x0, [sp, 16]	;# tmp110, MEM[(char * *)&argv]
;# varargs-dll.c:1354:   int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9594, argv
	add	x1, x0, 16	;# D.9595, D.9594,
	str	x1, [sp, 16]	;# D.9595, argv
	ldp	x0, x1, [x0]	;# D.7657, MEM[(struct hva_2_short_vector_8_bytes *)_10]
;# varargs-dll.c:1354:   int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 28]	;# tmp111, a
;# varargs-dll.c:1355:   int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9596, argv
	add	x1, x0, 16	;# D.9597, D.9596,
	str	x1, [sp, 16]	;# D.9597, argv
	ldp	x0, x1, [x0]	;# D.7658, MEM[(struct hva_2_short_vector_8_bytes *)_14]
;# varargs-dll.c:1355:   int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp113, D.7658
	asr	x0, x0, 32	;# tmp114, tmp113,
	str	w0, [sp, 24]	;# tmp115, b
;# varargs-dll.c:1357:   return a + b;
	ldr	w1, [sp, 28]	;# tmp116, a
	ldr	w0, [sp, 24]	;# tmp117, b
	add	w0, w1, w0	;# _8, tmp116, tmp117
;# varargs-dll.c:1358: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_hva_2_short_vector_8_bytes
	.def	use_va_list_few_hva_2_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_hva_2_short_vector_8_bytes
use_va_list_few_hva_2_short_vector_8_bytes:
	sub	sp, sp, #32	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1363:   int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9598, argv
	add	x1, x0, 16	;# D.9599, D.9598,
	str	x1, [sp]	;# D.9599, argv
	ldp	x0, x1, [x0]	;# D.7662, MEM[(struct hva_2_short_vector_8_bytes *)_7]
;# varargs-dll.c:1363:   int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 28]	;# tmp109, a
;# varargs-dll.c:1364:   int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9600, argv
	add	x1, x0, 16	;# D.9601, D.9600,
	str	x1, [sp]	;# D.9601, argv
	ldp	x0, x1, [x0]	;# D.7663, MEM[(struct hva_2_short_vector_8_bytes *)_11]
;# varargs-dll.c:1364:   int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp111, D.7663
	asr	x0, x0, 32	;# tmp112, tmp111,
	str	w0, [sp, 24]	;# tmp113, b
;# varargs-dll.c:1365:   return a + b;
	ldr	w1, [sp, 28]	;# tmp114, a
	ldr	w0, [sp, 24]	;# tmp115, b
	add	w0, w1, w0	;# _6, tmp114, tmp115
;# varargs-dll.c:1366: }
	add	sp, sp, 32	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_hva_2_short_vector_8_bytes
	.def	use_va_args_several_hva_2_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_hva_2_short_vector_8_bytes
use_va_args_several_hva_2_short_vector_8_bytes:
	sub	sp, sp, #128	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 72]	;#,
	str	x2, [sp, 80]	;#,
	str	x3, [sp, 88]	;#,
	str	x4, [sp, 96]	;#,
	str	x5, [sp, 104]	;#,
	str	x6, [sp, 112]	;#,
	str	x7, [sp, 120]	;#,
;# varargs-dll.c:1372:   va_start (argv, format);
	add	x0, sp, 128	;# tmp137,,
	sub	x0, x0, #56	;# tmp138, tmp137,
	str	x0, [sp, 16]	;# tmp138, MEM[(char * *)&argv]
;# varargs-dll.c:1373:   int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9602, argv
	add	x1, x0, 16	;# D.9603, D.9602,
	str	x1, [sp, 16]	;# D.9603, argv
	ldp	x0, x1, [x0]	;# D.7666, MEM[(struct hva_2_short_vector_8_bytes *)_31]
;# varargs-dll.c:1373:   int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 60]	;# tmp139, a
;# varargs-dll.c:1374:   int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9604, argv
	add	x1, x0, 16	;# D.9605, D.9604,
	str	x1, [sp, 16]	;# D.9605, argv
	ldp	x0, x1, [x0]	;# D.7667, MEM[(struct hva_2_short_vector_8_bytes *)_35]
;# varargs-dll.c:1374:   int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp141, D.7667
	asr	x0, x0, 32	;# tmp142, tmp141,
	str	w0, [sp, 56]	;# tmp143, b
;# varargs-dll.c:1375:   int c = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9606, argv
	add	x1, x0, 16	;# D.9607, D.9606,
	str	x1, [sp, 16]	;# D.9607, argv
	ldp	x0, x1, [x0]	;# D.7668, MEM[(struct hva_2_short_vector_8_bytes *)_39]
;# varargs-dll.c:1375:   int c = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 52]	;# tmp144, c
;# varargs-dll.c:1376:   int d = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9608, argv
	add	x1, x0, 16	;# D.9609, D.9608,
	str	x1, [sp, 16]	;# D.9609, argv
	ldp	x0, x1, [x0]	;# D.7669, MEM[(struct hva_2_short_vector_8_bytes *)_43]
;# varargs-dll.c:1376:   int d = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp146, D.7669
	asr	x0, x0, 32	;# tmp147, tmp146,
	str	w0, [sp, 48]	;# tmp148, d
;# varargs-dll.c:1377:   int e = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9610, argv
	add	x1, x0, 16	;# D.9611, D.9610,
	str	x1, [sp, 16]	;# D.9611, argv
	ldp	x0, x1, [x0]	;# D.7670, MEM[(struct hva_2_short_vector_8_bytes *)_47]
;# varargs-dll.c:1377:   int e = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 44]	;# tmp149, e
;# varargs-dll.c:1378:   int f = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9612, argv
	add	x1, x0, 16	;# D.9613, D.9612,
	str	x1, [sp, 16]	;# D.9613, argv
	ldp	x0, x1, [x0]	;# D.7671, MEM[(struct hva_2_short_vector_8_bytes *)_51]
;# varargs-dll.c:1378:   int f = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp151, D.7671
	asr	x0, x0, 32	;# tmp152, tmp151,
	str	w0, [sp, 40]	;# tmp153, f
;# varargs-dll.c:1379:   int g = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9614, argv
	add	x1, x0, 16	;# D.9615, D.9614,
	str	x1, [sp, 16]	;# D.9615, argv
	ldp	x0, x1, [x0]	;# D.7672, MEM[(struct hva_2_short_vector_8_bytes *)_55]
;# varargs-dll.c:1379:   int g = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 36]	;# tmp154, g
;# varargs-dll.c:1380:   int h = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9616, argv
	add	x1, x0, 16	;# D.9617, D.9616,
	str	x1, [sp, 16]	;# D.9617, argv
	ldp	x0, x1, [x0]	;# D.7673, MEM[(struct hva_2_short_vector_8_bytes *)_59]
;# varargs-dll.c:1380:   int h = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp156, D.7673
	asr	x0, x0, 32	;# tmp157, tmp156,
	str	w0, [sp, 32]	;# tmp158, h
;# varargs-dll.c:1381:   int i = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9618, argv
	add	x1, x0, 16	;# D.9619, D.9618,
	str	x1, [sp, 16]	;# D.9619, argv
	ldp	x0, x1, [x0]	;# D.7674, MEM[(struct hva_2_short_vector_8_bytes *)_63]
;# varargs-dll.c:1381:   int i = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 28]	;# tmp159, i
;# varargs-dll.c:1383:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 60]	;# tmp160, a
	ldr	w0, [sp, 56]	;# tmp161, b
	add	w1, w1, w0	;# _1, tmp160, tmp161
;# varargs-dll.c:1383:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 52]	;# tmp162, c
	add	w1, w1, w0	;# _2, _1, tmp162
;# varargs-dll.c:1383:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 48]	;# tmp163, d
	add	w1, w1, w0	;# _3, _2, tmp163
;# varargs-dll.c:1383:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 44]	;# tmp164, e
	add	w1, w1, w0	;# _4, _3, tmp164
;# varargs-dll.c:1383:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 40]	;# tmp165, f
	add	w1, w1, w0	;# _5, _4, tmp165
;# varargs-dll.c:1383:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 36]	;# tmp166, g
	add	w1, w1, w0	;# _6, _5, tmp166
;# varargs-dll.c:1383:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 32]	;# tmp167, h
	add	w1, w1, w0	;# _7, _6, tmp167
;# varargs-dll.c:1383:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 28]	;# tmp168, i
	add	w0, w1, w0	;# _29, _7, tmp168
;# varargs-dll.c:1384: }
	add	sp, sp, 128	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_hva_2_short_vector_8_bytes
	.def	use_va_list_several_hva_2_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_hva_2_short_vector_8_bytes
use_va_list_several_hva_2_short_vector_8_bytes:
	sub	sp, sp, #64	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1390:   int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9620, argv
	add	x1, x0, 16	;# D.9621, D.9620,
	str	x1, [sp]	;# D.9621, argv
	ldp	x0, x1, [x0]	;# D.7678, MEM[(struct hva_2_short_vector_8_bytes *)_28]
;# varargs-dll.c:1390:   int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 60]	;# tmp137, a
;# varargs-dll.c:1391:   int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9622, argv
	add	x1, x0, 16	;# D.9623, D.9622,
	str	x1, [sp]	;# D.9623, argv
	ldp	x0, x1, [x0]	;# D.7679, MEM[(struct hva_2_short_vector_8_bytes *)_32]
;# varargs-dll.c:1391:   int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp139, D.7679
	asr	x0, x0, 32	;# tmp140, tmp139,
	str	w0, [sp, 56]	;# tmp141, b
;# varargs-dll.c:1392:   int c = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9624, argv
	add	x1, x0, 16	;# D.9625, D.9624,
	str	x1, [sp]	;# D.9625, argv
	ldp	x0, x1, [x0]	;# D.7680, MEM[(struct hva_2_short_vector_8_bytes *)_36]
;# varargs-dll.c:1392:   int c = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 52]	;# tmp142, c
;# varargs-dll.c:1393:   int d = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9626, argv
	add	x1, x0, 16	;# D.9627, D.9626,
	str	x1, [sp]	;# D.9627, argv
	ldp	x0, x1, [x0]	;# D.7681, MEM[(struct hva_2_short_vector_8_bytes *)_40]
;# varargs-dll.c:1393:   int d = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp144, D.7681
	asr	x0, x0, 32	;# tmp145, tmp144,
	str	w0, [sp, 48]	;# tmp146, d
;# varargs-dll.c:1394:   int e = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9628, argv
	add	x1, x0, 16	;# D.9629, D.9628,
	str	x1, [sp]	;# D.9629, argv
	ldp	x0, x1, [x0]	;# D.7682, MEM[(struct hva_2_short_vector_8_bytes *)_44]
;# varargs-dll.c:1394:   int e = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 44]	;# tmp147, e
;# varargs-dll.c:1395:   int f = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9630, argv
	add	x1, x0, 16	;# D.9631, D.9630,
	str	x1, [sp]	;# D.9631, argv
	ldp	x0, x1, [x0]	;# D.7683, MEM[(struct hva_2_short_vector_8_bytes *)_48]
;# varargs-dll.c:1395:   int f = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp149, D.7683
	asr	x0, x0, 32	;# tmp150, tmp149,
	str	w0, [sp, 40]	;# tmp151, f
;# varargs-dll.c:1396:   int g = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9632, argv
	add	x1, x0, 16	;# D.9633, D.9632,
	str	x1, [sp]	;# D.9633, argv
	ldp	x0, x1, [x0]	;# D.7684, MEM[(struct hva_2_short_vector_8_bytes *)_52]
;# varargs-dll.c:1396:   int g = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 36]	;# tmp152, g
;# varargs-dll.c:1397:   int h = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9634, argv
	add	x1, x0, 16	;# D.9635, D.9634,
	str	x1, [sp]	;# D.9635, argv
	ldp	x0, x1, [x0]	;# D.7685, MEM[(struct hva_2_short_vector_8_bytes *)_56]
;# varargs-dll.c:1397:   int h = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp154, D.7685
	asr	x0, x0, 32	;# tmp155, tmp154,
	str	w0, [sp, 32]	;# tmp156, h
;# varargs-dll.c:1398:   int i = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9636, argv
	add	x1, x0, 16	;# D.9637, D.9636,
	str	x1, [sp]	;# D.9637, argv
	ldp	x0, x1, [x0]	;# D.7686, MEM[(struct hva_2_short_vector_8_bytes *)_60]
;# varargs-dll.c:1398:   int i = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 28]	;# tmp157, i
;# varargs-dll.c:1399:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 60]	;# tmp158, a
	ldr	w0, [sp, 56]	;# tmp159, b
	add	w1, w1, w0	;# _1, tmp158, tmp159
;# varargs-dll.c:1399:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 52]	;# tmp160, c
	add	w1, w1, w0	;# _2, _1, tmp160
;# varargs-dll.c:1399:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 48]	;# tmp161, d
	add	w1, w1, w0	;# _3, _2, tmp161
;# varargs-dll.c:1399:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 44]	;# tmp162, e
	add	w1, w1, w0	;# _4, _3, tmp162
;# varargs-dll.c:1399:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 40]	;# tmp163, f
	add	w1, w1, w0	;# _5, _4, tmp163
;# varargs-dll.c:1399:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 36]	;# tmp164, g
	add	w1, w1, w0	;# _6, _5, tmp164
;# varargs-dll.c:1399:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 32]	;# tmp165, h
	add	w1, w1, w0	;# _7, _6, tmp165
;# varargs-dll.c:1399:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 28]	;# tmp166, i
	add	w0, w1, w0	;# _27, _7, tmp166
;# varargs-dll.c:1400: }
	add	sp, sp, 64	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_hva_2_short_vector_8_bytes
	.def	use_va_args_many_hva_2_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_hva_2_short_vector_8_bytes
use_va_args_many_hva_2_short_vector_8_bytes:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 104]	;#,
	str	x2, [sp, 112]	;#,
	str	x3, [sp, 120]	;#,
	str	x4, [sp, 128]	;#,
	str	x5, [sp, 136]	;#,
	str	x6, [sp, 144]	;#,
	str	x7, [sp, 152]	;#,
;# varargs-dll.c:1406:   va_start (argv, format);
	add	x0, sp, 160	;# tmp169,,
	sub	x0, x0, #56	;# tmp170, tmp169,
	str	x0, [sp, 16]	;# tmp170, MEM[(char * *)&argv]
;# varargs-dll.c:1407:   int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9638, argv
	add	x1, x0, 16	;# D.9639, D.9638,
	str	x1, [sp, 16]	;# D.9639, argv
	ldp	x0, x1, [x0]	;# D.7689, MEM[(struct hva_2_short_vector_8_bytes *)_55]
;# varargs-dll.c:1407:   int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 92]	;# tmp171, a
;# varargs-dll.c:1408:   int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9640, argv
	add	x1, x0, 16	;# D.9641, D.9640,
	str	x1, [sp, 16]	;# D.9641, argv
	ldp	x0, x1, [x0]	;# D.7690, MEM[(struct hva_2_short_vector_8_bytes *)_59]
;# varargs-dll.c:1408:   int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp173, D.7690
	asr	x0, x0, 32	;# tmp174, tmp173,
	str	w0, [sp, 88]	;# tmp175, b
;# varargs-dll.c:1409:   int c = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9642, argv
	add	x1, x0, 16	;# D.9643, D.9642,
	str	x1, [sp, 16]	;# D.9643, argv
	ldp	x0, x1, [x0]	;# D.7691, MEM[(struct hva_2_short_vector_8_bytes *)_63]
;# varargs-dll.c:1409:   int c = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 84]	;# tmp176, c
;# varargs-dll.c:1410:   int d = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9644, argv
	add	x1, x0, 16	;# D.9645, D.9644,
	str	x1, [sp, 16]	;# D.9645, argv
	ldp	x0, x1, [x0]	;# D.7692, MEM[(struct hva_2_short_vector_8_bytes *)_67]
;# varargs-dll.c:1410:   int d = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp178, D.7692
	asr	x0, x0, 32	;# tmp179, tmp178,
	str	w0, [sp, 80]	;# tmp180, d
;# varargs-dll.c:1411:   int e = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9646, argv
	add	x1, x0, 16	;# D.9647, D.9646,
	str	x1, [sp, 16]	;# D.9647, argv
	ldp	x0, x1, [x0]	;# D.7693, MEM[(struct hva_2_short_vector_8_bytes *)_71]
;# varargs-dll.c:1411:   int e = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 76]	;# tmp181, e
;# varargs-dll.c:1412:   int f = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9648, argv
	add	x1, x0, 16	;# D.9649, D.9648,
	str	x1, [sp, 16]	;# D.9649, argv
	ldp	x0, x1, [x0]	;# D.7694, MEM[(struct hva_2_short_vector_8_bytes *)_75]
;# varargs-dll.c:1412:   int f = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp183, D.7694
	asr	x0, x0, 32	;# tmp184, tmp183,
	str	w0, [sp, 72]	;# tmp185, f
;# varargs-dll.c:1413:   int g = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9650, argv
	add	x1, x0, 16	;# D.9651, D.9650,
	str	x1, [sp, 16]	;# D.9651, argv
	ldp	x0, x1, [x0]	;# D.7695, MEM[(struct hva_2_short_vector_8_bytes *)_79]
;# varargs-dll.c:1413:   int g = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 68]	;# tmp186, g
;# varargs-dll.c:1414:   int h = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9652, argv
	add	x1, x0, 16	;# D.9653, D.9652,
	str	x1, [sp, 16]	;# D.9653, argv
	ldp	x0, x1, [x0]	;# D.7696, MEM[(struct hva_2_short_vector_8_bytes *)_83]
;# varargs-dll.c:1414:   int h = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp188, D.7696
	asr	x0, x0, 32	;# tmp189, tmp188,
	str	w0, [sp, 64]	;# tmp190, h
;# varargs-dll.c:1415:   int i = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9654, argv
	add	x1, x0, 16	;# D.9655, D.9654,
	str	x1, [sp, 16]	;# D.9655, argv
	ldp	x0, x1, [x0]	;# D.7697, MEM[(struct hva_2_short_vector_8_bytes *)_87]
;# varargs-dll.c:1415:   int i = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 60]	;# tmp191, i
;# varargs-dll.c:1416:   int j = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9656, argv
	add	x1, x0, 16	;# D.9657, D.9656,
	str	x1, [sp, 16]	;# D.9657, argv
	ldp	x0, x1, [x0]	;# D.7698, MEM[(struct hva_2_short_vector_8_bytes *)_91]
;# varargs-dll.c:1416:   int j = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp193, D.7698
	asr	x0, x0, 32	;# tmp194, tmp193,
	str	w0, [sp, 56]	;# tmp195, j
;# varargs-dll.c:1417:   int k = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9658, argv
	add	x1, x0, 16	;# D.9659, D.9658,
	str	x1, [sp, 16]	;# D.9659, argv
	ldp	x0, x1, [x0]	;# D.7699, MEM[(struct hva_2_short_vector_8_bytes *)_95]
;# varargs-dll.c:1417:   int k = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 52]	;# tmp196, k
;# varargs-dll.c:1418:   int l = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9660, argv
	add	x1, x0, 16	;# D.9661, D.9660,
	str	x1, [sp, 16]	;# D.9661, argv
	ldp	x0, x1, [x0]	;# D.7700, MEM[(struct hva_2_short_vector_8_bytes *)_99]
;# varargs-dll.c:1418:   int l = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp198, D.7700
	asr	x0, x0, 32	;# tmp199, tmp198,
	str	w0, [sp, 48]	;# tmp200, l
;# varargs-dll.c:1419:   int m = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9662, argv
	add	x1, x0, 16	;# D.9663, D.9662,
	str	x1, [sp, 16]	;# D.9663, argv
	ldp	x0, x1, [x0]	;# D.7701, MEM[(struct hva_2_short_vector_8_bytes *)_103]
;# varargs-dll.c:1419:   int m = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 44]	;# tmp201, m
;# varargs-dll.c:1420:   int n = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9664, argv
	add	x1, x0, 16	;# D.9665, D.9664,
	str	x1, [sp, 16]	;# D.9665, argv
	ldp	x0, x1, [x0]	;# D.7702, MEM[(struct hva_2_short_vector_8_bytes *)_107]
;# varargs-dll.c:1420:   int n = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp203, D.7702
	asr	x0, x0, 32	;# tmp204, tmp203,
	str	w0, [sp, 40]	;# tmp205, n
;# varargs-dll.c:1421:   int o = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9666, argv
	add	x1, x0, 16	;# D.9667, D.9666,
	str	x1, [sp, 16]	;# D.9667, argv
	ldp	x0, x1, [x0]	;# D.7703, MEM[(struct hva_2_short_vector_8_bytes *)_111]
;# varargs-dll.c:1421:   int o = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 36]	;# tmp206, o
;# varargs-dll.c:1422:   int p = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9668, argv
	add	x1, x0, 16	;# D.9669, D.9668,
	str	x1, [sp, 16]	;# D.9669, argv
	ldp	x0, x1, [x0]	;# D.7704, MEM[(struct hva_2_short_vector_8_bytes *)_115]
;# varargs-dll.c:1422:   int p = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp208, D.7704
	asr	x0, x0, 32	;# tmp209, tmp208,
	str	w0, [sp, 32]	;# tmp210, p
;# varargs-dll.c:1423:   int q = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9670, argv
	add	x1, x0, 16	;# D.9671, D.9670,
	str	x1, [sp, 16]	;# D.9671, argv
	ldp	x0, x1, [x0]	;# D.7705, MEM[(struct hva_2_short_vector_8_bytes *)_119]
;# varargs-dll.c:1423:   int q = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 28]	;# tmp211, q
;# varargs-dll.c:1425:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 92]	;# tmp212, a
	ldr	w0, [sp, 88]	;# tmp213, b
	add	w1, w1, w0	;# _1, tmp212, tmp213
;# varargs-dll.c:1425:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 84]	;# tmp214, c
	add	w1, w1, w0	;# _2, _1, tmp214
;# varargs-dll.c:1425:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 80]	;# tmp215, d
	add	w1, w1, w0	;# _3, _2, tmp215
;# varargs-dll.c:1425:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 76]	;# tmp216, e
	add	w1, w1, w0	;# _4, _3, tmp216
;# varargs-dll.c:1425:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 72]	;# tmp217, f
	add	w1, w1, w0	;# _5, _4, tmp217
;# varargs-dll.c:1425:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 68]	;# tmp218, g
	add	w1, w1, w0	;# _6, _5, tmp218
;# varargs-dll.c:1425:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 64]	;# tmp219, h
	add	w1, w1, w0	;# _7, _6, tmp219
;# varargs-dll.c:1425:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 60]	;# tmp220, i
	add	w1, w1, w0	;# _8, _7, tmp220
;# varargs-dll.c:1425:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 56]	;# tmp221, j
	add	w1, w1, w0	;# _9, _8, tmp221
;# varargs-dll.c:1425:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 52]	;# tmp222, k
	add	w1, w1, w0	;# _10, _9, tmp222
;# varargs-dll.c:1425:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 48]	;# tmp223, l
	add	w1, w1, w0	;# _11, _10, tmp223
;# varargs-dll.c:1425:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 44]	;# tmp224, m
	add	w1, w1, w0	;# _12, _11, tmp224
;# varargs-dll.c:1425:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 40]	;# tmp225, n
	add	w1, w1, w0	;# _13, _12, tmp225
;# varargs-dll.c:1425:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 36]	;# tmp226, o
	add	w1, w1, w0	;# _14, _13, tmp226
;# varargs-dll.c:1425:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 32]	;# tmp227, p
	add	w1, w1, w0	;# _15, _14, tmp227
;# varargs-dll.c:1425:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 28]	;# tmp228, q
	add	w0, w1, w0	;# _53, _15, tmp228
;# varargs-dll.c:1426: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_hva_2_short_vector_8_bytes
	.def	use_va_list_many_hva_2_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_hva_2_short_vector_8_bytes
use_va_list_many_hva_2_short_vector_8_bytes:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1431:   int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9672, argv
	add	x1, x0, 16	;# D.9673, D.9672,
	str	x1, [sp]	;# D.9673, argv
	ldp	x0, x1, [x0]	;# D.7709, MEM[(struct hva_2_short_vector_8_bytes *)_52]
;# varargs-dll.c:1431:   int a = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 92]	;# tmp169, a
;# varargs-dll.c:1432:   int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9674, argv
	add	x1, x0, 16	;# D.9675, D.9674,
	str	x1, [sp]	;# D.9675, argv
	ldp	x0, x1, [x0]	;# D.7710, MEM[(struct hva_2_short_vector_8_bytes *)_56]
;# varargs-dll.c:1432:   int b = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp171, D.7710
	asr	x0, x0, 32	;# tmp172, tmp171,
	str	w0, [sp, 88]	;# tmp173, b
;# varargs-dll.c:1433:   int c = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9676, argv
	add	x1, x0, 16	;# D.9677, D.9676,
	str	x1, [sp]	;# D.9677, argv
	ldp	x0, x1, [x0]	;# D.7711, MEM[(struct hva_2_short_vector_8_bytes *)_60]
;# varargs-dll.c:1433:   int c = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 84]	;# tmp174, c
;# varargs-dll.c:1434:   int d = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9678, argv
	add	x1, x0, 16	;# D.9679, D.9678,
	str	x1, [sp]	;# D.9679, argv
	ldp	x0, x1, [x0]	;# D.7712, MEM[(struct hva_2_short_vector_8_bytes *)_64]
;# varargs-dll.c:1434:   int d = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp176, D.7712
	asr	x0, x0, 32	;# tmp177, tmp176,
	str	w0, [sp, 80]	;# tmp178, d
;# varargs-dll.c:1435:   int e = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9680, argv
	add	x1, x0, 16	;# D.9681, D.9680,
	str	x1, [sp]	;# D.9681, argv
	ldp	x0, x1, [x0]	;# D.7713, MEM[(struct hva_2_short_vector_8_bytes *)_68]
;# varargs-dll.c:1435:   int e = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 76]	;# tmp179, e
;# varargs-dll.c:1436:   int f = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9682, argv
	add	x1, x0, 16	;# D.9683, D.9682,
	str	x1, [sp]	;# D.9683, argv
	ldp	x0, x1, [x0]	;# D.7714, MEM[(struct hva_2_short_vector_8_bytes *)_72]
;# varargs-dll.c:1436:   int f = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp181, D.7714
	asr	x0, x0, 32	;# tmp182, tmp181,
	str	w0, [sp, 72]	;# tmp183, f
;# varargs-dll.c:1437:   int g = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9684, argv
	add	x1, x0, 16	;# D.9685, D.9684,
	str	x1, [sp]	;# D.9685, argv
	ldp	x0, x1, [x0]	;# D.7715, MEM[(struct hva_2_short_vector_8_bytes *)_76]
;# varargs-dll.c:1437:   int g = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 68]	;# tmp184, g
;# varargs-dll.c:1438:   int h = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9686, argv
	add	x1, x0, 16	;# D.9687, D.9686,
	str	x1, [sp]	;# D.9687, argv
	ldp	x0, x1, [x0]	;# D.7716, MEM[(struct hva_2_short_vector_8_bytes *)_80]
;# varargs-dll.c:1438:   int h = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp186, D.7716
	asr	x0, x0, 32	;# tmp187, tmp186,
	str	w0, [sp, 64]	;# tmp188, h
;# varargs-dll.c:1439:   int i = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9688, argv
	add	x1, x0, 16	;# D.9689, D.9688,
	str	x1, [sp]	;# D.9689, argv
	ldp	x0, x1, [x0]	;# D.7717, MEM[(struct hva_2_short_vector_8_bytes *)_84]
;# varargs-dll.c:1439:   int i = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 60]	;# tmp189, i
;# varargs-dll.c:1440:   int j = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9690, argv
	add	x1, x0, 16	;# D.9691, D.9690,
	str	x1, [sp]	;# D.9691, argv
	ldp	x0, x1, [x0]	;# D.7718, MEM[(struct hva_2_short_vector_8_bytes *)_88]
;# varargs-dll.c:1440:   int j = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp191, D.7718
	asr	x0, x0, 32	;# tmp192, tmp191,
	str	w0, [sp, 56]	;# tmp193, j
;# varargs-dll.c:1441:   int k = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9692, argv
	add	x1, x0, 16	;# D.9693, D.9692,
	str	x1, [sp]	;# D.9693, argv
	ldp	x0, x1, [x0]	;# D.7719, MEM[(struct hva_2_short_vector_8_bytes *)_92]
;# varargs-dll.c:1441:   int k = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 52]	;# tmp194, k
;# varargs-dll.c:1442:   int l = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9694, argv
	add	x1, x0, 16	;# D.9695, D.9694,
	str	x1, [sp]	;# D.9695, argv
	ldp	x0, x1, [x0]	;# D.7720, MEM[(struct hva_2_short_vector_8_bytes *)_96]
;# varargs-dll.c:1442:   int l = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp196, D.7720
	asr	x0, x0, 32	;# tmp197, tmp196,
	str	w0, [sp, 48]	;# tmp198, l
;# varargs-dll.c:1443:   int m = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9696, argv
	add	x1, x0, 16	;# D.9697, D.9696,
	str	x1, [sp]	;# D.9697, argv
	ldp	x0, x1, [x0]	;# D.7721, MEM[(struct hva_2_short_vector_8_bytes *)_100]
;# varargs-dll.c:1443:   int m = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 44]	;# tmp199, m
;# varargs-dll.c:1444:   int n = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9698, argv
	add	x1, x0, 16	;# D.9699, D.9698,
	str	x1, [sp]	;# D.9699, argv
	ldp	x0, x1, [x0]	;# D.7722, MEM[(struct hva_2_short_vector_8_bytes *)_104]
;# varargs-dll.c:1444:   int n = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp201, D.7722
	asr	x0, x0, 32	;# tmp202, tmp201,
	str	w0, [sp, 40]	;# tmp203, n
;# varargs-dll.c:1445:   int o = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9700, argv
	add	x1, x0, 16	;# D.9701, D.9700,
	str	x1, [sp]	;# D.9701, argv
	ldp	x0, x1, [x0]	;# D.7723, MEM[(struct hva_2_short_vector_8_bytes *)_108]
;# varargs-dll.c:1445:   int o = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 36]	;# tmp204, o
;# varargs-dll.c:1446:   int p = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9702, argv
	add	x1, x0, 16	;# D.9703, D.9702,
	str	x1, [sp]	;# D.9703, argv
	ldp	x0, x1, [x0]	;# D.7724, MEM[(struct hva_2_short_vector_8_bytes *)_112]
;# varargs-dll.c:1446:   int p = va_arg (argv, struct hva_2_short_vector_8_bytes).b.b;
	mov	x0, x1	;# tmp206, D.7724
	asr	x0, x0, 32	;# tmp207, tmp206,
	str	w0, [sp, 32]	;# tmp208, p
;# varargs-dll.c:1447:   int q = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9704, argv
	add	x1, x0, 16	;# D.9705, D.9704,
	str	x1, [sp]	;# D.9705, argv
	ldp	x0, x1, [x0]	;# D.7725, MEM[(struct hva_2_short_vector_8_bytes *)_116]
;# varargs-dll.c:1447:   int q = va_arg (argv, struct hva_2_short_vector_8_bytes).a.a;
	str	w0, [sp, 28]	;# tmp209, q
;# varargs-dll.c:1448:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 92]	;# tmp210, a
	ldr	w0, [sp, 88]	;# tmp211, b
	add	w1, w1, w0	;# _1, tmp210, tmp211
;# varargs-dll.c:1448:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 84]	;# tmp212, c
	add	w1, w1, w0	;# _2, _1, tmp212
;# varargs-dll.c:1448:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 80]	;# tmp213, d
	add	w1, w1, w0	;# _3, _2, tmp213
;# varargs-dll.c:1448:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 76]	;# tmp214, e
	add	w1, w1, w0	;# _4, _3, tmp214
;# varargs-dll.c:1448:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 72]	;# tmp215, f
	add	w1, w1, w0	;# _5, _4, tmp215
;# varargs-dll.c:1448:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 68]	;# tmp216, g
	add	w1, w1, w0	;# _6, _5, tmp216
;# varargs-dll.c:1448:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 64]	;# tmp217, h
	add	w1, w1, w0	;# _7, _6, tmp217
;# varargs-dll.c:1448:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 60]	;# tmp218, i
	add	w1, w1, w0	;# _8, _7, tmp218
;# varargs-dll.c:1448:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 56]	;# tmp219, j
	add	w1, w1, w0	;# _9, _8, tmp219
;# varargs-dll.c:1448:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 52]	;# tmp220, k
	add	w1, w1, w0	;# _10, _9, tmp220
;# varargs-dll.c:1448:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 48]	;# tmp221, l
	add	w1, w1, w0	;# _11, _10, tmp221
;# varargs-dll.c:1448:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 44]	;# tmp222, m
	add	w1, w1, w0	;# _12, _11, tmp222
;# varargs-dll.c:1448:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 40]	;# tmp223, n
	add	w1, w1, w0	;# _13, _12, tmp223
;# varargs-dll.c:1448:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 36]	;# tmp224, o
	add	w1, w1, w0	;# _14, _13, tmp224
;# varargs-dll.c:1448:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 32]	;# tmp225, p
	add	w1, w1, w0	;# _15, _14, tmp225
;# varargs-dll.c:1448:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 28]	;# tmp226, q
	add	w0, w1, w0	;# _51, _15, tmp226
;# varargs-dll.c:1449: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_hva_4_short_vector_8_bytes
	.def	use_va_args_few_hva_4_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_hva_4_short_vector_8_bytes
use_va_args_few_hva_4_short_vector_8_bytes:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 104]	;#,
	str	x2, [sp, 112]	;#,
	str	x3, [sp, 120]	;#,
	str	x4, [sp, 128]	;#,
	str	x5, [sp, 136]	;#,
	str	x6, [sp, 144]	;#,
	str	x7, [sp, 152]	;#,
;# varargs-dll.c:1455:   va_start (argv, format);
	add	x0, sp, 160	;# tmp109,,
	sub	x0, x0, #56	;# tmp110, tmp109,
	str	x0, [sp, 16]	;# tmp110, MEM[(char * *)&argv]
;# varargs-dll.c:1456:   int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9706, argv
	add	x1, x0, 8	;# D.9707, D.9706,
	str	x1, [sp, 16]	;# D.9707, argv
	ldr	x1, [x0]	;# D.9708, MEM[(struct hva_4_short_vector_8_bytes * *)_10]
	add	x0, sp, 24	;# tmp111,,
	ldr	q30, [x1]	;# tmp113, *_13
	ldr	q31, [x1, 16]	;# tmp114, *_13
	str	q30, [x0]	;# tmp113, D.7728
	str	q31, [x0, 16]	;# tmp114, D.7728
;# varargs-dll.c:1456:   int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp115, D.7728.a.a
	str	w0, [sp, 92]	;# tmp115, a
;# varargs-dll.c:1457:   int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9709, argv
	add	x1, x0, 8	;# D.9710, D.9709,
	str	x1, [sp, 16]	;# D.9710, argv
	ldr	x1, [x0]	;# D.9711, MEM[(struct hva_4_short_vector_8_bytes * *)_15]
	add	x0, sp, 56	;# tmp116,,
	ldr	q30, [x1]	;# tmp118, *_18
	ldr	q31, [x1, 16]	;# tmp119, *_18
	str	q30, [x0]	;# tmp118, D.7729
	str	q31, [x0, 16]	;# tmp119, D.7729
;# varargs-dll.c:1457:   int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	w0, [sp, 68]	;# tmp120, D.7729.b.b
	str	w0, [sp, 88]	;# tmp120, b
;# varargs-dll.c:1459:   return a + b;
	ldr	w1, [sp, 92]	;# tmp121, a
	ldr	w0, [sp, 88]	;# tmp122, b
	add	w0, w1, w0	;# _8, tmp121, tmp122
;# varargs-dll.c:1460: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_hva_4_short_vector_8_bytes
	.def	use_va_list_few_hva_4_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_hva_4_short_vector_8_bytes
use_va_list_few_hva_4_short_vector_8_bytes:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1465:   int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9712, argv
	add	x1, x0, 8	;# D.9713, D.9712,
	str	x1, [sp]	;# D.9713, argv
	ldr	x1, [x0]	;# D.9714, MEM[(struct hva_4_short_vector_8_bytes * *)_7]
	add	x0, sp, 24	;# tmp109,,
	ldr	q30, [x1]	;# tmp111, *_10
	ldr	q31, [x1, 16]	;# tmp112, *_10
	str	q30, [x0]	;# tmp111, D.7733
	str	q31, [x0, 16]	;# tmp112, D.7733
;# varargs-dll.c:1465:   int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp113, D.7733.a.a
	str	w0, [sp, 92]	;# tmp113, a
;# varargs-dll.c:1466:   int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9715, argv
	add	x1, x0, 8	;# D.9716, D.9715,
	str	x1, [sp]	;# D.9716, argv
	ldr	x1, [x0]	;# D.9717, MEM[(struct hva_4_short_vector_8_bytes * *)_12]
	add	x0, sp, 56	;# tmp114,,
	ldr	q30, [x1]	;# tmp116, *_15
	ldr	q31, [x1, 16]	;# tmp117, *_15
	str	q30, [x0]	;# tmp116, D.7734
	str	q31, [x0, 16]	;# tmp117, D.7734
;# varargs-dll.c:1466:   int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	w0, [sp, 68]	;# tmp118, D.7734.b.b
	str	w0, [sp, 88]	;# tmp118, b
;# varargs-dll.c:1467:   return a + b;
	ldr	w1, [sp, 92]	;# tmp119, a
	ldr	w0, [sp, 88]	;# tmp120, b
	add	w0, w1, w0	;# _6, tmp119, tmp120
;# varargs-dll.c:1468: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_hva_4_short_vector_8_bytes
	.def	use_va_args_several_hva_4_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_hva_4_short_vector_8_bytes
use_va_args_several_hva_4_short_vector_8_bytes:
	sub	sp, sp, #416	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 360]	;#,
	str	x2, [sp, 368]	;#,
	str	x3, [sp, 376]	;#,
	str	x4, [sp, 384]	;#,
	str	x5, [sp, 392]	;#,
	str	x6, [sp, 400]	;#,
	str	x7, [sp, 408]	;#,
;# varargs-dll.c:1474:   va_start (argv, format);
	add	x0, sp, 416	;# tmp137,,
	sub	x0, x0, #56	;# tmp138, tmp137,
	str	x0, [sp, 16]	;# tmp138, MEM[(char * *)&argv]
;# varargs-dll.c:1475:   int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9718, argv
	add	x1, x0, 8	;# D.9719, D.9718,
	str	x1, [sp, 16]	;# D.9719, argv
	ldr	x1, [x0]	;# D.9720, MEM[(struct hva_4_short_vector_8_bytes * *)_31]
	add	x0, sp, 24	;# tmp139,,
	ldr	q30, [x1]	;# tmp141, *_34
	ldr	q31, [x1, 16]	;# tmp142, *_34
	str	q30, [x0]	;# tmp141, D.7737
	str	q31, [x0, 16]	;# tmp142, D.7737
;# varargs-dll.c:1475:   int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp143, D.7737.a.a
	str	w0, [sp, 348]	;# tmp143, a
;# varargs-dll.c:1476:   int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9721, argv
	add	x1, x0, 8	;# D.9722, D.9721,
	str	x1, [sp, 16]	;# D.9722, argv
	ldr	x1, [x0]	;# D.9723, MEM[(struct hva_4_short_vector_8_bytes * *)_36]
	add	x0, sp, 56	;# tmp144,,
	ldr	q30, [x1]	;# tmp146, *_39
	ldr	q31, [x1, 16]	;# tmp147, *_39
	str	q30, [x0]	;# tmp146, D.7738
	str	q31, [x0, 16]	;# tmp147, D.7738
;# varargs-dll.c:1476:   int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	w0, [sp, 68]	;# tmp148, D.7738.b.b
	str	w0, [sp, 344]	;# tmp148, b
;# varargs-dll.c:1477:   int c = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	x0, [sp, 16]	;# D.9724, argv
	add	x1, x0, 8	;# D.9725, D.9724,
	str	x1, [sp, 16]	;# D.9725, argv
	ldr	x1, [x0]	;# D.9726, MEM[(struct hva_4_short_vector_8_bytes * *)_41]
	add	x0, sp, 88	;# tmp149,,
	ldr	q30, [x1]	;# tmp151, *_44
	ldr	q31, [x1, 16]	;# tmp152, *_44
	str	q30, [x0]	;# tmp151, D.7739
	str	q31, [x0, 16]	;# tmp152, D.7739
;# varargs-dll.c:1477:   int c = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	w0, [sp, 104]	;# tmp153, D.7739.c.a
	str	w0, [sp, 340]	;# tmp153, c
;# varargs-dll.c:1478:   int d = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	x0, [sp, 16]	;# D.9727, argv
	add	x1, x0, 8	;# D.9728, D.9727,
	str	x1, [sp, 16]	;# D.9728, argv
	ldr	x1, [x0]	;# D.9729, MEM[(struct hva_4_short_vector_8_bytes * *)_46]
	add	x0, sp, 120	;# tmp154,,
	ldr	q30, [x1]	;# tmp156, *_49
	ldr	q31, [x1, 16]	;# tmp157, *_49
	str	q30, [x0]	;# tmp156, D.7740
	str	q31, [x0, 16]	;# tmp157, D.7740
;# varargs-dll.c:1478:   int d = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	w0, [sp, 148]	;# tmp158, D.7740.d.b
	str	w0, [sp, 336]	;# tmp158, d
;# varargs-dll.c:1479:   int e = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9730, argv
	add	x1, x0, 8	;# D.9731, D.9730,
	str	x1, [sp, 16]	;# D.9731, argv
	ldr	x1, [x0]	;# D.9732, MEM[(struct hva_4_short_vector_8_bytes * *)_51]
	add	x0, sp, 152	;# tmp159,,
	ldr	q30, [x1]	;# tmp161, *_54
	ldr	q31, [x1, 16]	;# tmp162, *_54
	str	q30, [x0]	;# tmp161, D.7741
	str	q31, [x0, 16]	;# tmp162, D.7741
;# varargs-dll.c:1479:   int e = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 152]	;# tmp163, D.7741.a.a
	str	w0, [sp, 332]	;# tmp163, e
;# varargs-dll.c:1480:   int f = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9733, argv
	add	x1, x0, 8	;# D.9734, D.9733,
	str	x1, [sp, 16]	;# D.9734, argv
	ldr	x1, [x0]	;# D.9735, MEM[(struct hva_4_short_vector_8_bytes * *)_56]
	add	x0, sp, 184	;# tmp164,,
	ldr	q30, [x1]	;# tmp166, *_59
	ldr	q31, [x1, 16]	;# tmp167, *_59
	str	q30, [x0]	;# tmp166, D.7742
	str	q31, [x0, 16]	;# tmp167, D.7742
;# varargs-dll.c:1480:   int f = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	w0, [sp, 196]	;# tmp168, D.7742.b.b
	str	w0, [sp, 328]	;# tmp168, f
;# varargs-dll.c:1481:   int g = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	x0, [sp, 16]	;# D.9736, argv
	add	x1, x0, 8	;# D.9737, D.9736,
	str	x1, [sp, 16]	;# D.9737, argv
	ldr	x1, [x0]	;# D.9738, MEM[(struct hva_4_short_vector_8_bytes * *)_61]
	add	x0, sp, 216	;# tmp169,,
	ldr	q30, [x1]	;# tmp171, *_64
	ldr	q31, [x1, 16]	;# tmp172, *_64
	str	q30, [x0]	;# tmp171, D.7743
	str	q31, [x0, 16]	;# tmp172, D.7743
;# varargs-dll.c:1481:   int g = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	w0, [sp, 232]	;# tmp173, D.7743.c.a
	str	w0, [sp, 324]	;# tmp173, g
;# varargs-dll.c:1482:   int h = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	x0, [sp, 16]	;# D.9739, argv
	add	x1, x0, 8	;# D.9740, D.9739,
	str	x1, [sp, 16]	;# D.9740, argv
	ldr	x1, [x0]	;# D.9741, MEM[(struct hva_4_short_vector_8_bytes * *)_66]
	add	x0, sp, 248	;# tmp174,,
	ldr	q30, [x1]	;# tmp176, *_69
	ldr	q31, [x1, 16]	;# tmp177, *_69
	str	q30, [x0]	;# tmp176, D.7744
	str	q31, [x0, 16]	;# tmp177, D.7744
;# varargs-dll.c:1482:   int h = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	w0, [sp, 276]	;# tmp178, D.7744.d.b
	str	w0, [sp, 320]	;# tmp178, h
;# varargs-dll.c:1483:   int i = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9742, argv
	add	x1, x0, 8	;# D.9743, D.9742,
	str	x1, [sp, 16]	;# D.9743, argv
	ldr	x1, [x0]	;# D.9744, MEM[(struct hva_4_short_vector_8_bytes * *)_71]
	add	x0, sp, 280	;# tmp179,,
	ldr	q30, [x1]	;# tmp181, *_74
	ldr	q31, [x1, 16]	;# tmp182, *_74
	str	q30, [x0]	;# tmp181, D.7745
	str	q31, [x0, 16]	;# tmp182, D.7745
;# varargs-dll.c:1483:   int i = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 280]	;# tmp183, D.7745.a.a
	str	w0, [sp, 316]	;# tmp183, i
;# varargs-dll.c:1485:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 348]	;# tmp184, a
	ldr	w0, [sp, 344]	;# tmp185, b
	add	w1, w1, w0	;# _1, tmp184, tmp185
;# varargs-dll.c:1485:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 340]	;# tmp186, c
	add	w1, w1, w0	;# _2, _1, tmp186
;# varargs-dll.c:1485:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 336]	;# tmp187, d
	add	w1, w1, w0	;# _3, _2, tmp187
;# varargs-dll.c:1485:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 332]	;# tmp188, e
	add	w1, w1, w0	;# _4, _3, tmp188
;# varargs-dll.c:1485:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 328]	;# tmp189, f
	add	w1, w1, w0	;# _5, _4, tmp189
;# varargs-dll.c:1485:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 324]	;# tmp190, g
	add	w1, w1, w0	;# _6, _5, tmp190
;# varargs-dll.c:1485:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 320]	;# tmp191, h
	add	w1, w1, w0	;# _7, _6, tmp191
;# varargs-dll.c:1485:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 316]	;# tmp192, i
	add	w0, w1, w0	;# _29, _7, tmp192
;# varargs-dll.c:1486: }
	add	sp, sp, 416	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_hva_4_short_vector_8_bytes
	.def	use_va_list_several_hva_4_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_hva_4_short_vector_8_bytes
use_va_list_several_hva_4_short_vector_8_bytes:
	sub	sp, sp, #352	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1492:   int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9745, argv
	add	x1, x0, 8	;# D.9746, D.9745,
	str	x1, [sp]	;# D.9746, argv
	ldr	x1, [x0]	;# D.9747, MEM[(struct hva_4_short_vector_8_bytes * *)_28]
	add	x0, sp, 24	;# tmp137,,
	ldr	q30, [x1]	;# tmp139, *_31
	ldr	q31, [x1, 16]	;# tmp140, *_31
	str	q30, [x0]	;# tmp139, D.7749
	str	q31, [x0, 16]	;# tmp140, D.7749
;# varargs-dll.c:1492:   int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp141, D.7749.a.a
	str	w0, [sp, 348]	;# tmp141, a
;# varargs-dll.c:1493:   int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9748, argv
	add	x1, x0, 8	;# D.9749, D.9748,
	str	x1, [sp]	;# D.9749, argv
	ldr	x1, [x0]	;# D.9750, MEM[(struct hva_4_short_vector_8_bytes * *)_33]
	add	x0, sp, 56	;# tmp142,,
	ldr	q30, [x1]	;# tmp144, *_36
	ldr	q31, [x1, 16]	;# tmp145, *_36
	str	q30, [x0]	;# tmp144, D.7750
	str	q31, [x0, 16]	;# tmp145, D.7750
;# varargs-dll.c:1493:   int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	w0, [sp, 68]	;# tmp146, D.7750.b.b
	str	w0, [sp, 344]	;# tmp146, b
;# varargs-dll.c:1494:   int c = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	x0, [sp]	;# D.9751, argv
	add	x1, x0, 8	;# D.9752, D.9751,
	str	x1, [sp]	;# D.9752, argv
	ldr	x1, [x0]	;# D.9753, MEM[(struct hva_4_short_vector_8_bytes * *)_38]
	add	x0, sp, 88	;# tmp147,,
	ldr	q30, [x1]	;# tmp149, *_41
	ldr	q31, [x1, 16]	;# tmp150, *_41
	str	q30, [x0]	;# tmp149, D.7751
	str	q31, [x0, 16]	;# tmp150, D.7751
;# varargs-dll.c:1494:   int c = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	w0, [sp, 104]	;# tmp151, D.7751.c.a
	str	w0, [sp, 340]	;# tmp151, c
;# varargs-dll.c:1495:   int d = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	x0, [sp]	;# D.9754, argv
	add	x1, x0, 8	;# D.9755, D.9754,
	str	x1, [sp]	;# D.9755, argv
	ldr	x1, [x0]	;# D.9756, MEM[(struct hva_4_short_vector_8_bytes * *)_43]
	add	x0, sp, 120	;# tmp152,,
	ldr	q30, [x1]	;# tmp154, *_46
	ldr	q31, [x1, 16]	;# tmp155, *_46
	str	q30, [x0]	;# tmp154, D.7752
	str	q31, [x0, 16]	;# tmp155, D.7752
;# varargs-dll.c:1495:   int d = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	w0, [sp, 148]	;# tmp156, D.7752.d.b
	str	w0, [sp, 336]	;# tmp156, d
;# varargs-dll.c:1496:   int e = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9757, argv
	add	x1, x0, 8	;# D.9758, D.9757,
	str	x1, [sp]	;# D.9758, argv
	ldr	x1, [x0]	;# D.9759, MEM[(struct hva_4_short_vector_8_bytes * *)_48]
	add	x0, sp, 152	;# tmp157,,
	ldr	q30, [x1]	;# tmp159, *_51
	ldr	q31, [x1, 16]	;# tmp160, *_51
	str	q30, [x0]	;# tmp159, D.7753
	str	q31, [x0, 16]	;# tmp160, D.7753
;# varargs-dll.c:1496:   int e = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 152]	;# tmp161, D.7753.a.a
	str	w0, [sp, 332]	;# tmp161, e
;# varargs-dll.c:1497:   int f = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9760, argv
	add	x1, x0, 8	;# D.9761, D.9760,
	str	x1, [sp]	;# D.9761, argv
	ldr	x1, [x0]	;# D.9762, MEM[(struct hva_4_short_vector_8_bytes * *)_53]
	add	x0, sp, 184	;# tmp162,,
	ldr	q30, [x1]	;# tmp164, *_56
	ldr	q31, [x1, 16]	;# tmp165, *_56
	str	q30, [x0]	;# tmp164, D.7754
	str	q31, [x0, 16]	;# tmp165, D.7754
;# varargs-dll.c:1497:   int f = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	w0, [sp, 196]	;# tmp166, D.7754.b.b
	str	w0, [sp, 328]	;# tmp166, f
;# varargs-dll.c:1498:   int g = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	x0, [sp]	;# D.9763, argv
	add	x1, x0, 8	;# D.9764, D.9763,
	str	x1, [sp]	;# D.9764, argv
	ldr	x1, [x0]	;# D.9765, MEM[(struct hva_4_short_vector_8_bytes * *)_58]
	add	x0, sp, 216	;# tmp167,,
	ldr	q30, [x1]	;# tmp169, *_61
	ldr	q31, [x1, 16]	;# tmp170, *_61
	str	q30, [x0]	;# tmp169, D.7755
	str	q31, [x0, 16]	;# tmp170, D.7755
;# varargs-dll.c:1498:   int g = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	w0, [sp, 232]	;# tmp171, D.7755.c.a
	str	w0, [sp, 324]	;# tmp171, g
;# varargs-dll.c:1499:   int h = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	x0, [sp]	;# D.9766, argv
	add	x1, x0, 8	;# D.9767, D.9766,
	str	x1, [sp]	;# D.9767, argv
	ldr	x1, [x0]	;# D.9768, MEM[(struct hva_4_short_vector_8_bytes * *)_63]
	add	x0, sp, 248	;# tmp172,,
	ldr	q30, [x1]	;# tmp174, *_66
	ldr	q31, [x1, 16]	;# tmp175, *_66
	str	q30, [x0]	;# tmp174, D.7756
	str	q31, [x0, 16]	;# tmp175, D.7756
;# varargs-dll.c:1499:   int h = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	w0, [sp, 276]	;# tmp176, D.7756.d.b
	str	w0, [sp, 320]	;# tmp176, h
;# varargs-dll.c:1500:   int i = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9769, argv
	add	x1, x0, 8	;# D.9770, D.9769,
	str	x1, [sp]	;# D.9770, argv
	ldr	x1, [x0]	;# D.9771, MEM[(struct hva_4_short_vector_8_bytes * *)_68]
	add	x0, sp, 280	;# tmp177,,
	ldr	q30, [x1]	;# tmp179, *_71
	ldr	q31, [x1, 16]	;# tmp180, *_71
	str	q30, [x0]	;# tmp179, D.7757
	str	q31, [x0, 16]	;# tmp180, D.7757
;# varargs-dll.c:1500:   int i = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 280]	;# tmp181, D.7757.a.a
	str	w0, [sp, 316]	;# tmp181, i
;# varargs-dll.c:1501:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 348]	;# tmp182, a
	ldr	w0, [sp, 344]	;# tmp183, b
	add	w1, w1, w0	;# _1, tmp182, tmp183
;# varargs-dll.c:1501:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 340]	;# tmp184, c
	add	w1, w1, w0	;# _2, _1, tmp184
;# varargs-dll.c:1501:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 336]	;# tmp185, d
	add	w1, w1, w0	;# _3, _2, tmp185
;# varargs-dll.c:1501:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 332]	;# tmp186, e
	add	w1, w1, w0	;# _4, _3, tmp186
;# varargs-dll.c:1501:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 328]	;# tmp187, f
	add	w1, w1, w0	;# _5, _4, tmp187
;# varargs-dll.c:1501:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 324]	;# tmp188, g
	add	w1, w1, w0	;# _6, _5, tmp188
;# varargs-dll.c:1501:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 320]	;# tmp189, h
	add	w1, w1, w0	;# _7, _6, tmp189
;# varargs-dll.c:1501:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 316]	;# tmp190, i
	add	w0, w1, w0	;# _27, _7, tmp190
;# varargs-dll.c:1502: }
	add	sp, sp, 352	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_hva_4_short_vector_8_bytes
	.def	use_va_args_many_hva_4_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_hva_4_short_vector_8_bytes
use_va_args_many_hva_4_short_vector_8_bytes:
	sub	sp, sp, #704	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 648]	;#,
	str	x2, [sp, 656]	;#,
	str	x3, [sp, 664]	;#,
	str	x4, [sp, 672]	;#,
	str	x5, [sp, 680]	;#,
	str	x6, [sp, 688]	;#,
	str	x7, [sp, 696]	;#,
;# varargs-dll.c:1508:   va_start (argv, format);
	add	x0, sp, 704	;# tmp169,,
	sub	x0, x0, #56	;# tmp170, tmp169,
	str	x0, [sp, 16]	;# tmp170, MEM[(char * *)&argv]
;# varargs-dll.c:1509:   int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9772, argv
	add	x1, x0, 8	;# D.9773, D.9772,
	str	x1, [sp, 16]	;# D.9773, argv
	ldr	x1, [x0]	;# D.9774, MEM[(struct hva_4_short_vector_8_bytes * *)_55]
	add	x0, sp, 24	;# tmp171,,
	ldr	q30, [x1]	;# tmp173, *_58
	ldr	q31, [x1, 16]	;# tmp174, *_58
	str	q30, [x0]	;# tmp173, D.7760
	str	q31, [x0, 16]	;# tmp174, D.7760
;# varargs-dll.c:1509:   int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp175, D.7760.a.a
	str	w0, [sp, 636]	;# tmp175, a
;# varargs-dll.c:1510:   int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9775, argv
	add	x1, x0, 8	;# D.9776, D.9775,
	str	x1, [sp, 16]	;# D.9776, argv
	ldr	x1, [x0]	;# D.9777, MEM[(struct hva_4_short_vector_8_bytes * *)_60]
	add	x0, sp, 56	;# tmp176,,
	ldr	q30, [x1]	;# tmp178, *_63
	ldr	q31, [x1, 16]	;# tmp179, *_63
	str	q30, [x0]	;# tmp178, D.7761
	str	q31, [x0, 16]	;# tmp179, D.7761
;# varargs-dll.c:1510:   int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	w0, [sp, 68]	;# tmp180, D.7761.b.b
	str	w0, [sp, 632]	;# tmp180, b
;# varargs-dll.c:1511:   int c = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	x0, [sp, 16]	;# D.9778, argv
	add	x1, x0, 8	;# D.9779, D.9778,
	str	x1, [sp, 16]	;# D.9779, argv
	ldr	x1, [x0]	;# D.9780, MEM[(struct hva_4_short_vector_8_bytes * *)_65]
	add	x0, sp, 88	;# tmp181,,
	ldr	q30, [x1]	;# tmp183, *_68
	ldr	q31, [x1, 16]	;# tmp184, *_68
	str	q30, [x0]	;# tmp183, D.7762
	str	q31, [x0, 16]	;# tmp184, D.7762
;# varargs-dll.c:1511:   int c = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	w0, [sp, 104]	;# tmp185, D.7762.c.a
	str	w0, [sp, 628]	;# tmp185, c
;# varargs-dll.c:1512:   int d = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	x0, [sp, 16]	;# D.9781, argv
	add	x1, x0, 8	;# D.9782, D.9781,
	str	x1, [sp, 16]	;# D.9782, argv
	ldr	x1, [x0]	;# D.9783, MEM[(struct hva_4_short_vector_8_bytes * *)_70]
	add	x0, sp, 120	;# tmp186,,
	ldr	q30, [x1]	;# tmp188, *_73
	ldr	q31, [x1, 16]	;# tmp189, *_73
	str	q30, [x0]	;# tmp188, D.7763
	str	q31, [x0, 16]	;# tmp189, D.7763
;# varargs-dll.c:1512:   int d = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	w0, [sp, 148]	;# tmp190, D.7763.d.b
	str	w0, [sp, 624]	;# tmp190, d
;# varargs-dll.c:1513:   int e = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9784, argv
	add	x1, x0, 8	;# D.9785, D.9784,
	str	x1, [sp, 16]	;# D.9785, argv
	ldr	x1, [x0]	;# D.9786, MEM[(struct hva_4_short_vector_8_bytes * *)_75]
	add	x0, sp, 152	;# tmp191,,
	ldr	q30, [x1]	;# tmp193, *_78
	ldr	q31, [x1, 16]	;# tmp194, *_78
	str	q30, [x0]	;# tmp193, D.7764
	str	q31, [x0, 16]	;# tmp194, D.7764
;# varargs-dll.c:1513:   int e = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 152]	;# tmp195, D.7764.a.a
	str	w0, [sp, 620]	;# tmp195, e
;# varargs-dll.c:1514:   int f = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9787, argv
	add	x1, x0, 8	;# D.9788, D.9787,
	str	x1, [sp, 16]	;# D.9788, argv
	ldr	x1, [x0]	;# D.9789, MEM[(struct hva_4_short_vector_8_bytes * *)_80]
	add	x0, sp, 184	;# tmp196,,
	ldr	q30, [x1]	;# tmp198, *_83
	ldr	q31, [x1, 16]	;# tmp199, *_83
	str	q30, [x0]	;# tmp198, D.7765
	str	q31, [x0, 16]	;# tmp199, D.7765
;# varargs-dll.c:1514:   int f = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	w0, [sp, 196]	;# tmp200, D.7765.b.b
	str	w0, [sp, 616]	;# tmp200, f
;# varargs-dll.c:1515:   int g = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	x0, [sp, 16]	;# D.9790, argv
	add	x1, x0, 8	;# D.9791, D.9790,
	str	x1, [sp, 16]	;# D.9791, argv
	ldr	x1, [x0]	;# D.9792, MEM[(struct hva_4_short_vector_8_bytes * *)_85]
	add	x0, sp, 216	;# tmp201,,
	ldr	q30, [x1]	;# tmp203, *_88
	ldr	q31, [x1, 16]	;# tmp204, *_88
	str	q30, [x0]	;# tmp203, D.7766
	str	q31, [x0, 16]	;# tmp204, D.7766
;# varargs-dll.c:1515:   int g = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	w0, [sp, 232]	;# tmp205, D.7766.c.a
	str	w0, [sp, 612]	;# tmp205, g
;# varargs-dll.c:1516:   int h = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	x0, [sp, 16]	;# D.9793, argv
	add	x1, x0, 8	;# D.9794, D.9793,
	str	x1, [sp, 16]	;# D.9794, argv
	ldr	x1, [x0]	;# D.9795, MEM[(struct hva_4_short_vector_8_bytes * *)_90]
	add	x0, sp, 248	;# tmp206,,
	ldr	q30, [x1]	;# tmp208, *_93
	ldr	q31, [x1, 16]	;# tmp209, *_93
	str	q30, [x0]	;# tmp208, D.7767
	str	q31, [x0, 16]	;# tmp209, D.7767
;# varargs-dll.c:1516:   int h = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	w0, [sp, 276]	;# tmp210, D.7767.d.b
	str	w0, [sp, 608]	;# tmp210, h
;# varargs-dll.c:1517:   int i = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9796, argv
	add	x1, x0, 8	;# D.9797, D.9796,
	str	x1, [sp, 16]	;# D.9797, argv
	ldr	x1, [x0]	;# D.9798, MEM[(struct hva_4_short_vector_8_bytes * *)_95]
	add	x0, sp, 280	;# tmp211,,
	ldr	q30, [x1]	;# tmp213, *_98
	ldr	q31, [x1, 16]	;# tmp214, *_98
	str	q30, [x0]	;# tmp213, D.7768
	str	q31, [x0, 16]	;# tmp214, D.7768
;# varargs-dll.c:1517:   int i = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 280]	;# tmp215, D.7768.a.a
	str	w0, [sp, 604]	;# tmp215, i
;# varargs-dll.c:1518:   int j = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9799, argv
	add	x1, x0, 8	;# D.9800, D.9799,
	str	x1, [sp, 16]	;# D.9800, argv
	ldr	x1, [x0]	;# D.9801, MEM[(struct hva_4_short_vector_8_bytes * *)_100]
	add	x0, sp, 312	;# tmp216,,
	ldr	q30, [x1]	;# tmp218, *_103
	ldr	q31, [x1, 16]	;# tmp219, *_103
	str	q30, [x0]	;# tmp218, D.7769
	str	q31, [x0, 16]	;# tmp219, D.7769
;# varargs-dll.c:1518:   int j = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	w0, [sp, 324]	;# tmp220, D.7769.b.b
	str	w0, [sp, 600]	;# tmp220, j
;# varargs-dll.c:1519:   int k = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	x0, [sp, 16]	;# D.9802, argv
	add	x1, x0, 8	;# D.9803, D.9802,
	str	x1, [sp, 16]	;# D.9803, argv
	ldr	x1, [x0]	;# D.9804, MEM[(struct hva_4_short_vector_8_bytes * *)_105]
	add	x0, sp, 344	;# tmp221,,
	ldr	q30, [x1]	;# tmp223, *_108
	ldr	q31, [x1, 16]	;# tmp224, *_108
	str	q30, [x0]	;# tmp223, D.7770
	str	q31, [x0, 16]	;# tmp224, D.7770
;# varargs-dll.c:1519:   int k = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	w0, [sp, 360]	;# tmp225, D.7770.c.a
	str	w0, [sp, 596]	;# tmp225, k
;# varargs-dll.c:1520:   int l = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	x0, [sp, 16]	;# D.9805, argv
	add	x1, x0, 8	;# D.9806, D.9805,
	str	x1, [sp, 16]	;# D.9806, argv
	ldr	x1, [x0]	;# D.9807, MEM[(struct hva_4_short_vector_8_bytes * *)_110]
	add	x0, sp, 376	;# tmp226,,
	ldr	q30, [x1]	;# tmp228, *_113
	ldr	q31, [x1, 16]	;# tmp229, *_113
	str	q30, [x0]	;# tmp228, D.7771
	str	q31, [x0, 16]	;# tmp229, D.7771
;# varargs-dll.c:1520:   int l = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	w0, [sp, 404]	;# tmp230, D.7771.d.b
	str	w0, [sp, 592]	;# tmp230, l
;# varargs-dll.c:1521:   int m = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9808, argv
	add	x1, x0, 8	;# D.9809, D.9808,
	str	x1, [sp, 16]	;# D.9809, argv
	ldr	x1, [x0]	;# D.9810, MEM[(struct hva_4_short_vector_8_bytes * *)_115]
	add	x0, sp, 408	;# tmp231,,
	ldr	q30, [x1]	;# tmp233, *_118
	ldr	q31, [x1, 16]	;# tmp234, *_118
	str	q30, [x0]	;# tmp233, D.7772
	str	q31, [x0, 16]	;# tmp234, D.7772
;# varargs-dll.c:1521:   int m = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 408]	;# tmp235, D.7772.a.a
	str	w0, [sp, 588]	;# tmp235, m
;# varargs-dll.c:1522:   int n = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9811, argv
	add	x1, x0, 8	;# D.9812, D.9811,
	str	x1, [sp, 16]	;# D.9812, argv
	ldr	x1, [x0]	;# D.9813, MEM[(struct hva_4_short_vector_8_bytes * *)_120]
	add	x0, sp, 440	;# tmp236,,
	ldr	q30, [x1]	;# tmp238, *_123
	ldr	q31, [x1, 16]	;# tmp239, *_123
	str	q30, [x0]	;# tmp238, D.7773
	str	q31, [x0, 16]	;# tmp239, D.7773
;# varargs-dll.c:1522:   int n = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	w0, [sp, 452]	;# tmp240, D.7773.b.b
	str	w0, [sp, 584]	;# tmp240, n
;# varargs-dll.c:1523:   int o = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	x0, [sp, 16]	;# D.9814, argv
	add	x1, x0, 8	;# D.9815, D.9814,
	str	x1, [sp, 16]	;# D.9815, argv
	ldr	x1, [x0]	;# D.9816, MEM[(struct hva_4_short_vector_8_bytes * *)_125]
	add	x0, sp, 472	;# tmp241,,
	ldr	q30, [x1]	;# tmp243, *_128
	ldr	q31, [x1, 16]	;# tmp244, *_128
	str	q30, [x0]	;# tmp243, D.7774
	str	q31, [x0, 16]	;# tmp244, D.7774
;# varargs-dll.c:1523:   int o = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	w0, [sp, 488]	;# tmp245, D.7774.c.a
	str	w0, [sp, 580]	;# tmp245, o
;# varargs-dll.c:1524:   int p = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	x0, [sp, 16]	;# D.9817, argv
	add	x1, x0, 8	;# D.9818, D.9817,
	str	x1, [sp, 16]	;# D.9818, argv
	ldr	x1, [x0]	;# D.9819, MEM[(struct hva_4_short_vector_8_bytes * *)_130]
	add	x0, sp, 504	;# tmp246,,
	ldr	q30, [x1]	;# tmp248, *_133
	ldr	q31, [x1, 16]	;# tmp249, *_133
	str	q30, [x0]	;# tmp248, D.7775
	str	q31, [x0, 16]	;# tmp249, D.7775
;# varargs-dll.c:1524:   int p = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	w0, [sp, 532]	;# tmp250, D.7775.d.b
	str	w0, [sp, 576]	;# tmp250, p
;# varargs-dll.c:1525:   int q = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9820, argv
	add	x1, x0, 8	;# D.9821, D.9820,
	str	x1, [sp, 16]	;# D.9821, argv
	ldr	x1, [x0]	;# D.9822, MEM[(struct hva_4_short_vector_8_bytes * *)_135]
	add	x0, sp, 536	;# tmp251,,
	ldr	q30, [x1]	;# tmp253, *_138
	ldr	q31, [x1, 16]	;# tmp254, *_138
	str	q30, [x0]	;# tmp253, D.7776
	str	q31, [x0, 16]	;# tmp254, D.7776
;# varargs-dll.c:1525:   int q = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 536]	;# tmp255, D.7776.a.a
	str	w0, [sp, 572]	;# tmp255, q
;# varargs-dll.c:1527:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 636]	;# tmp256, a
	ldr	w0, [sp, 632]	;# tmp257, b
	add	w1, w1, w0	;# _1, tmp256, tmp257
;# varargs-dll.c:1527:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 628]	;# tmp258, c
	add	w1, w1, w0	;# _2, _1, tmp258
;# varargs-dll.c:1527:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 624]	;# tmp259, d
	add	w1, w1, w0	;# _3, _2, tmp259
;# varargs-dll.c:1527:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 620]	;# tmp260, e
	add	w1, w1, w0	;# _4, _3, tmp260
;# varargs-dll.c:1527:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 616]	;# tmp261, f
	add	w1, w1, w0	;# _5, _4, tmp261
;# varargs-dll.c:1527:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 612]	;# tmp262, g
	add	w1, w1, w0	;# _6, _5, tmp262
;# varargs-dll.c:1527:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 608]	;# tmp263, h
	add	w1, w1, w0	;# _7, _6, tmp263
;# varargs-dll.c:1527:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 604]	;# tmp264, i
	add	w1, w1, w0	;# _8, _7, tmp264
;# varargs-dll.c:1527:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 600]	;# tmp265, j
	add	w1, w1, w0	;# _9, _8, tmp265
;# varargs-dll.c:1527:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 596]	;# tmp266, k
	add	w1, w1, w0	;# _10, _9, tmp266
;# varargs-dll.c:1527:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 592]	;# tmp267, l
	add	w1, w1, w0	;# _11, _10, tmp267
;# varargs-dll.c:1527:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 588]	;# tmp268, m
	add	w1, w1, w0	;# _12, _11, tmp268
;# varargs-dll.c:1527:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 584]	;# tmp269, n
	add	w1, w1, w0	;# _13, _12, tmp269
;# varargs-dll.c:1527:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 580]	;# tmp270, o
	add	w1, w1, w0	;# _14, _13, tmp270
;# varargs-dll.c:1527:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 576]	;# tmp271, p
	add	w1, w1, w0	;# _15, _14, tmp271
;# varargs-dll.c:1527:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 572]	;# tmp272, q
	add	w0, w1, w0	;# _53, _15, tmp272
;# varargs-dll.c:1528: }
	add	sp, sp, 704	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_hva_4_short_vector_8_bytes
	.def	use_va_list_many_hva_4_short_vector_8_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_hva_4_short_vector_8_bytes
use_va_list_many_hva_4_short_vector_8_bytes:
	sub	sp, sp, #640	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1533:   int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9823, argv
	add	x1, x0, 8	;# D.9824, D.9823,
	str	x1, [sp]	;# D.9824, argv
	ldr	x1, [x0]	;# D.9825, MEM[(struct hva_4_short_vector_8_bytes * *)_52]
	add	x0, sp, 24	;# tmp169,,
	ldr	q30, [x1]	;# tmp171, *_55
	ldr	q31, [x1, 16]	;# tmp172, *_55
	str	q30, [x0]	;# tmp171, D.7780
	str	q31, [x0, 16]	;# tmp172, D.7780
;# varargs-dll.c:1533:   int a = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp173, D.7780.a.a
	str	w0, [sp, 636]	;# tmp173, a
;# varargs-dll.c:1534:   int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9826, argv
	add	x1, x0, 8	;# D.9827, D.9826,
	str	x1, [sp]	;# D.9827, argv
	ldr	x1, [x0]	;# D.9828, MEM[(struct hva_4_short_vector_8_bytes * *)_57]
	add	x0, sp, 56	;# tmp174,,
	ldr	q30, [x1]	;# tmp176, *_60
	ldr	q31, [x1, 16]	;# tmp177, *_60
	str	q30, [x0]	;# tmp176, D.7781
	str	q31, [x0, 16]	;# tmp177, D.7781
;# varargs-dll.c:1534:   int b = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	w0, [sp, 68]	;# tmp178, D.7781.b.b
	str	w0, [sp, 632]	;# tmp178, b
;# varargs-dll.c:1535:   int c = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	x0, [sp]	;# D.9829, argv
	add	x1, x0, 8	;# D.9830, D.9829,
	str	x1, [sp]	;# D.9830, argv
	ldr	x1, [x0]	;# D.9831, MEM[(struct hva_4_short_vector_8_bytes * *)_62]
	add	x0, sp, 88	;# tmp179,,
	ldr	q30, [x1]	;# tmp181, *_65
	ldr	q31, [x1, 16]	;# tmp182, *_65
	str	q30, [x0]	;# tmp181, D.7782
	str	q31, [x0, 16]	;# tmp182, D.7782
;# varargs-dll.c:1535:   int c = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	w0, [sp, 104]	;# tmp183, D.7782.c.a
	str	w0, [sp, 628]	;# tmp183, c
;# varargs-dll.c:1536:   int d = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	x0, [sp]	;# D.9832, argv
	add	x1, x0, 8	;# D.9833, D.9832,
	str	x1, [sp]	;# D.9833, argv
	ldr	x1, [x0]	;# D.9834, MEM[(struct hva_4_short_vector_8_bytes * *)_67]
	add	x0, sp, 120	;# tmp184,,
	ldr	q30, [x1]	;# tmp186, *_70
	ldr	q31, [x1, 16]	;# tmp187, *_70
	str	q30, [x0]	;# tmp186, D.7783
	str	q31, [x0, 16]	;# tmp187, D.7783
;# varargs-dll.c:1536:   int d = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	w0, [sp, 148]	;# tmp188, D.7783.d.b
	str	w0, [sp, 624]	;# tmp188, d
;# varargs-dll.c:1537:   int e = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9835, argv
	add	x1, x0, 8	;# D.9836, D.9835,
	str	x1, [sp]	;# D.9836, argv
	ldr	x1, [x0]	;# D.9837, MEM[(struct hva_4_short_vector_8_bytes * *)_72]
	add	x0, sp, 152	;# tmp189,,
	ldr	q30, [x1]	;# tmp191, *_75
	ldr	q31, [x1, 16]	;# tmp192, *_75
	str	q30, [x0]	;# tmp191, D.7784
	str	q31, [x0, 16]	;# tmp192, D.7784
;# varargs-dll.c:1537:   int e = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 152]	;# tmp193, D.7784.a.a
	str	w0, [sp, 620]	;# tmp193, e
;# varargs-dll.c:1538:   int f = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9838, argv
	add	x1, x0, 8	;# D.9839, D.9838,
	str	x1, [sp]	;# D.9839, argv
	ldr	x1, [x0]	;# D.9840, MEM[(struct hva_4_short_vector_8_bytes * *)_77]
	add	x0, sp, 184	;# tmp194,,
	ldr	q30, [x1]	;# tmp196, *_80
	ldr	q31, [x1, 16]	;# tmp197, *_80
	str	q30, [x0]	;# tmp196, D.7785
	str	q31, [x0, 16]	;# tmp197, D.7785
;# varargs-dll.c:1538:   int f = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	w0, [sp, 196]	;# tmp198, D.7785.b.b
	str	w0, [sp, 616]	;# tmp198, f
;# varargs-dll.c:1539:   int g = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	x0, [sp]	;# D.9841, argv
	add	x1, x0, 8	;# D.9842, D.9841,
	str	x1, [sp]	;# D.9842, argv
	ldr	x1, [x0]	;# D.9843, MEM[(struct hva_4_short_vector_8_bytes * *)_82]
	add	x0, sp, 216	;# tmp199,,
	ldr	q30, [x1]	;# tmp201, *_85
	ldr	q31, [x1, 16]	;# tmp202, *_85
	str	q30, [x0]	;# tmp201, D.7786
	str	q31, [x0, 16]	;# tmp202, D.7786
;# varargs-dll.c:1539:   int g = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	w0, [sp, 232]	;# tmp203, D.7786.c.a
	str	w0, [sp, 612]	;# tmp203, g
;# varargs-dll.c:1540:   int h = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	x0, [sp]	;# D.9844, argv
	add	x1, x0, 8	;# D.9845, D.9844,
	str	x1, [sp]	;# D.9845, argv
	ldr	x1, [x0]	;# D.9846, MEM[(struct hva_4_short_vector_8_bytes * *)_87]
	add	x0, sp, 248	;# tmp204,,
	ldr	q30, [x1]	;# tmp206, *_90
	ldr	q31, [x1, 16]	;# tmp207, *_90
	str	q30, [x0]	;# tmp206, D.7787
	str	q31, [x0, 16]	;# tmp207, D.7787
;# varargs-dll.c:1540:   int h = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	w0, [sp, 276]	;# tmp208, D.7787.d.b
	str	w0, [sp, 608]	;# tmp208, h
;# varargs-dll.c:1541:   int i = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9847, argv
	add	x1, x0, 8	;# D.9848, D.9847,
	str	x1, [sp]	;# D.9848, argv
	ldr	x1, [x0]	;# D.9849, MEM[(struct hva_4_short_vector_8_bytes * *)_92]
	add	x0, sp, 280	;# tmp209,,
	ldr	q30, [x1]	;# tmp211, *_95
	ldr	q31, [x1, 16]	;# tmp212, *_95
	str	q30, [x0]	;# tmp211, D.7788
	str	q31, [x0, 16]	;# tmp212, D.7788
;# varargs-dll.c:1541:   int i = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 280]	;# tmp213, D.7788.a.a
	str	w0, [sp, 604]	;# tmp213, i
;# varargs-dll.c:1542:   int j = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9850, argv
	add	x1, x0, 8	;# D.9851, D.9850,
	str	x1, [sp]	;# D.9851, argv
	ldr	x1, [x0]	;# D.9852, MEM[(struct hva_4_short_vector_8_bytes * *)_97]
	add	x0, sp, 312	;# tmp214,,
	ldr	q30, [x1]	;# tmp216, *_100
	ldr	q31, [x1, 16]	;# tmp217, *_100
	str	q30, [x0]	;# tmp216, D.7789
	str	q31, [x0, 16]	;# tmp217, D.7789
;# varargs-dll.c:1542:   int j = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	w0, [sp, 324]	;# tmp218, D.7789.b.b
	str	w0, [sp, 600]	;# tmp218, j
;# varargs-dll.c:1543:   int k = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	x0, [sp]	;# D.9853, argv
	add	x1, x0, 8	;# D.9854, D.9853,
	str	x1, [sp]	;# D.9854, argv
	ldr	x1, [x0]	;# D.9855, MEM[(struct hva_4_short_vector_8_bytes * *)_102]
	add	x0, sp, 344	;# tmp219,,
	ldr	q30, [x1]	;# tmp221, *_105
	ldr	q31, [x1, 16]	;# tmp222, *_105
	str	q30, [x0]	;# tmp221, D.7790
	str	q31, [x0, 16]	;# tmp222, D.7790
;# varargs-dll.c:1543:   int k = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	w0, [sp, 360]	;# tmp223, D.7790.c.a
	str	w0, [sp, 596]	;# tmp223, k
;# varargs-dll.c:1544:   int l = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	x0, [sp]	;# D.9856, argv
	add	x1, x0, 8	;# D.9857, D.9856,
	str	x1, [sp]	;# D.9857, argv
	ldr	x1, [x0]	;# D.9858, MEM[(struct hva_4_short_vector_8_bytes * *)_107]
	add	x0, sp, 376	;# tmp224,,
	ldr	q30, [x1]	;# tmp226, *_110
	ldr	q31, [x1, 16]	;# tmp227, *_110
	str	q30, [x0]	;# tmp226, D.7791
	str	q31, [x0, 16]	;# tmp227, D.7791
;# varargs-dll.c:1544:   int l = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	w0, [sp, 404]	;# tmp228, D.7791.d.b
	str	w0, [sp, 592]	;# tmp228, l
;# varargs-dll.c:1545:   int m = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9859, argv
	add	x1, x0, 8	;# D.9860, D.9859,
	str	x1, [sp]	;# D.9860, argv
	ldr	x1, [x0]	;# D.9861, MEM[(struct hva_4_short_vector_8_bytes * *)_112]
	add	x0, sp, 408	;# tmp229,,
	ldr	q30, [x1]	;# tmp231, *_115
	ldr	q31, [x1, 16]	;# tmp232, *_115
	str	q30, [x0]	;# tmp231, D.7792
	str	q31, [x0, 16]	;# tmp232, D.7792
;# varargs-dll.c:1545:   int m = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 408]	;# tmp233, D.7792.a.a
	str	w0, [sp, 588]	;# tmp233, m
;# varargs-dll.c:1546:   int n = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	x0, [sp]	;# D.9862, argv
	add	x1, x0, 8	;# D.9863, D.9862,
	str	x1, [sp]	;# D.9863, argv
	ldr	x1, [x0]	;# D.9864, MEM[(struct hva_4_short_vector_8_bytes * *)_117]
	add	x0, sp, 440	;# tmp234,,
	ldr	q30, [x1]	;# tmp236, *_120
	ldr	q31, [x1, 16]	;# tmp237, *_120
	str	q30, [x0]	;# tmp236, D.7793
	str	q31, [x0, 16]	;# tmp237, D.7793
;# varargs-dll.c:1546:   int n = va_arg (argv, struct hva_4_short_vector_8_bytes).b.b;
	ldr	w0, [sp, 452]	;# tmp238, D.7793.b.b
	str	w0, [sp, 584]	;# tmp238, n
;# varargs-dll.c:1547:   int o = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	x0, [sp]	;# D.9865, argv
	add	x1, x0, 8	;# D.9866, D.9865,
	str	x1, [sp]	;# D.9866, argv
	ldr	x1, [x0]	;# D.9867, MEM[(struct hva_4_short_vector_8_bytes * *)_122]
	add	x0, sp, 472	;# tmp239,,
	ldr	q30, [x1]	;# tmp241, *_125
	ldr	q31, [x1, 16]	;# tmp242, *_125
	str	q30, [x0]	;# tmp241, D.7794
	str	q31, [x0, 16]	;# tmp242, D.7794
;# varargs-dll.c:1547:   int o = va_arg (argv, struct hva_4_short_vector_8_bytes).c.a;
	ldr	w0, [sp, 488]	;# tmp243, D.7794.c.a
	str	w0, [sp, 580]	;# tmp243, o
;# varargs-dll.c:1548:   int p = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	x0, [sp]	;# D.9868, argv
	add	x1, x0, 8	;# D.9869, D.9868,
	str	x1, [sp]	;# D.9869, argv
	ldr	x1, [x0]	;# D.9870, MEM[(struct hva_4_short_vector_8_bytes * *)_127]
	add	x0, sp, 504	;# tmp244,,
	ldr	q30, [x1]	;# tmp246, *_130
	ldr	q31, [x1, 16]	;# tmp247, *_130
	str	q30, [x0]	;# tmp246, D.7795
	str	q31, [x0, 16]	;# tmp247, D.7795
;# varargs-dll.c:1548:   int p = va_arg (argv, struct hva_4_short_vector_8_bytes).d.b;
	ldr	w0, [sp, 532]	;# tmp248, D.7795.d.b
	str	w0, [sp, 576]	;# tmp248, p
;# varargs-dll.c:1549:   int q = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	x0, [sp]	;# D.9871, argv
	add	x1, x0, 8	;# D.9872, D.9871,
	str	x1, [sp]	;# D.9872, argv
	ldr	x1, [x0]	;# D.9873, MEM[(struct hva_4_short_vector_8_bytes * *)_132]
	add	x0, sp, 536	;# tmp249,,
	ldr	q30, [x1]	;# tmp251, *_135
	ldr	q31, [x1, 16]	;# tmp252, *_135
	str	q30, [x0]	;# tmp251, D.7796
	str	q31, [x0, 16]	;# tmp252, D.7796
;# varargs-dll.c:1549:   int q = va_arg (argv, struct hva_4_short_vector_8_bytes).a.a;
	ldr	w0, [sp, 536]	;# tmp253, D.7796.a.a
	str	w0, [sp, 572]	;# tmp253, q
;# varargs-dll.c:1550:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 636]	;# tmp254, a
	ldr	w0, [sp, 632]	;# tmp255, b
	add	w1, w1, w0	;# _1, tmp254, tmp255
;# varargs-dll.c:1550:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 628]	;# tmp256, c
	add	w1, w1, w0	;# _2, _1, tmp256
;# varargs-dll.c:1550:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 624]	;# tmp257, d
	add	w1, w1, w0	;# _3, _2, tmp257
;# varargs-dll.c:1550:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 620]	;# tmp258, e
	add	w1, w1, w0	;# _4, _3, tmp258
;# varargs-dll.c:1550:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 616]	;# tmp259, f
	add	w1, w1, w0	;# _5, _4, tmp259
;# varargs-dll.c:1550:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 612]	;# tmp260, g
	add	w1, w1, w0	;# _6, _5, tmp260
;# varargs-dll.c:1550:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 608]	;# tmp261, h
	add	w1, w1, w0	;# _7, _6, tmp261
;# varargs-dll.c:1550:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 604]	;# tmp262, i
	add	w1, w1, w0	;# _8, _7, tmp262
;# varargs-dll.c:1550:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 600]	;# tmp263, j
	add	w1, w1, w0	;# _9, _8, tmp263
;# varargs-dll.c:1550:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 596]	;# tmp264, k
	add	w1, w1, w0	;# _10, _9, tmp264
;# varargs-dll.c:1550:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 592]	;# tmp265, l
	add	w1, w1, w0	;# _11, _10, tmp265
;# varargs-dll.c:1550:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 588]	;# tmp266, m
	add	w1, w1, w0	;# _12, _11, tmp266
;# varargs-dll.c:1550:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 584]	;# tmp267, n
	add	w1, w1, w0	;# _13, _12, tmp267
;# varargs-dll.c:1550:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 580]	;# tmp268, o
	add	w1, w1, w0	;# _14, _13, tmp268
;# varargs-dll.c:1550:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 576]	;# tmp269, p
	add	w1, w1, w0	;# _15, _14, tmp269
;# varargs-dll.c:1550:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 572]	;# tmp270, q
	add	w0, w1, w0	;# _51, _15, tmp270
;# varargs-dll.c:1551: }
	add	sp, sp, 640	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_hva_2_short_vector_16_bytes
	.def	use_va_args_few_hva_2_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_hva_2_short_vector_16_bytes
use_va_args_few_hva_2_short_vector_16_bytes:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 104]	;#,
	str	x2, [sp, 112]	;#,
	str	x3, [sp, 120]	;#,
	str	x4, [sp, 128]	;#,
	str	x5, [sp, 136]	;#,
	str	x6, [sp, 144]	;#,
	str	x7, [sp, 152]	;#,
;# varargs-dll.c:1557:   va_start (argv, format);
	add	x0, sp, 160	;# tmp109,,
	sub	x0, x0, #56	;# tmp110, tmp109,
	str	x0, [sp, 16]	;# tmp110, MEM[(char * *)&argv]
;# varargs-dll.c:1558:   int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9874, argv
	add	x1, x0, 8	;# D.9875, D.9874,
	str	x1, [sp, 16]	;# D.9875, argv
	ldr	x1, [x0]	;# D.9876, MEM[(struct hva_2_short_vector_16_bytes * *)_10]
	add	x0, sp, 24	;# tmp111,,
	ldr	q30, [x1]	;# tmp113, *_13
	ldr	q31, [x1, 16]	;# tmp114, *_13
	str	q30, [x0]	;# tmp113, D.7799
	str	q31, [x0, 16]	;# tmp114, D.7799
;# varargs-dll.c:1558:   int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp115, D.7799.a.a
	str	w0, [sp, 92]	;# tmp115, a
;# varargs-dll.c:1559:   int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9877, argv
	add	x1, x0, 8	;# D.9878, D.9877,
	str	x1, [sp, 16]	;# D.9878, argv
	ldr	x1, [x0]	;# D.9879, MEM[(struct hva_2_short_vector_16_bytes * *)_15]
	add	x0, sp, 56	;# tmp116,,
	ldr	q30, [x1]	;# tmp118, *_18
	ldr	q31, [x1, 16]	;# tmp119, *_18
	str	q30, [x0]	;# tmp118, D.7800
	str	q31, [x0, 16]	;# tmp119, D.7800
;# varargs-dll.c:1559:   int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 76]	;# tmp120, D.7800.b.b
	str	w0, [sp, 88]	;# tmp120, b
;# varargs-dll.c:1561:   return a + b;
	ldr	w1, [sp, 92]	;# tmp121, a
	ldr	w0, [sp, 88]	;# tmp122, b
	add	w0, w1, w0	;# _8, tmp121, tmp122
;# varargs-dll.c:1562: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_hva_2_short_vector_16_bytes
	.def	use_va_list_few_hva_2_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_hva_2_short_vector_16_bytes
use_va_list_few_hva_2_short_vector_16_bytes:
	sub	sp, sp, #96	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1567:   int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.9880, argv
	add	x1, x0, 8	;# D.9881, D.9880,
	str	x1, [sp]	;# D.9881, argv
	ldr	x1, [x0]	;# D.9882, MEM[(struct hva_2_short_vector_16_bytes * *)_7]
	add	x0, sp, 24	;# tmp109,,
	ldr	q30, [x1]	;# tmp111, *_10
	ldr	q31, [x1, 16]	;# tmp112, *_10
	str	q30, [x0]	;# tmp111, D.7804
	str	q31, [x0, 16]	;# tmp112, D.7804
;# varargs-dll.c:1567:   int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp113, D.7804.a.a
	str	w0, [sp, 92]	;# tmp113, a
;# varargs-dll.c:1568:   int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.9883, argv
	add	x1, x0, 8	;# D.9884, D.9883,
	str	x1, [sp]	;# D.9884, argv
	ldr	x1, [x0]	;# D.9885, MEM[(struct hva_2_short_vector_16_bytes * *)_12]
	add	x0, sp, 56	;# tmp114,,
	ldr	q30, [x1]	;# tmp116, *_15
	ldr	q31, [x1, 16]	;# tmp117, *_15
	str	q30, [x0]	;# tmp116, D.7805
	str	q31, [x0, 16]	;# tmp117, D.7805
;# varargs-dll.c:1568:   int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 76]	;# tmp118, D.7805.b.b
	str	w0, [sp, 88]	;# tmp118, b
;# varargs-dll.c:1569:   return a + b;
	ldr	w1, [sp, 92]	;# tmp119, a
	ldr	w0, [sp, 88]	;# tmp120, b
	add	w0, w1, w0	;# _6, tmp119, tmp120
;# varargs-dll.c:1570: }
	add	sp, sp, 96	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_hva_2_short_vector_16_bytes
	.def	use_va_args_several_hva_2_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_hva_2_short_vector_16_bytes
use_va_args_several_hva_2_short_vector_16_bytes:
	sub	sp, sp, #416	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 360]	;#,
	str	x2, [sp, 368]	;#,
	str	x3, [sp, 376]	;#,
	str	x4, [sp, 384]	;#,
	str	x5, [sp, 392]	;#,
	str	x6, [sp, 400]	;#,
	str	x7, [sp, 408]	;#,
;# varargs-dll.c:1576:   va_start (argv, format);
	add	x0, sp, 416	;# tmp137,,
	sub	x0, x0, #56	;# tmp138, tmp137,
	str	x0, [sp, 16]	;# tmp138, MEM[(char * *)&argv]
;# varargs-dll.c:1577:   int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9886, argv
	add	x1, x0, 8	;# D.9887, D.9886,
	str	x1, [sp, 16]	;# D.9887, argv
	ldr	x1, [x0]	;# D.9888, MEM[(struct hva_2_short_vector_16_bytes * *)_31]
	add	x0, sp, 24	;# tmp139,,
	ldr	q30, [x1]	;# tmp141, *_34
	ldr	q31, [x1, 16]	;# tmp142, *_34
	str	q30, [x0]	;# tmp141, D.7808
	str	q31, [x0, 16]	;# tmp142, D.7808
;# varargs-dll.c:1577:   int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp143, D.7808.a.a
	str	w0, [sp, 348]	;# tmp143, a
;# varargs-dll.c:1578:   int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9889, argv
	add	x1, x0, 8	;# D.9890, D.9889,
	str	x1, [sp, 16]	;# D.9890, argv
	ldr	x1, [x0]	;# D.9891, MEM[(struct hva_2_short_vector_16_bytes * *)_36]
	add	x0, sp, 56	;# tmp144,,
	ldr	q30, [x1]	;# tmp146, *_39
	ldr	q31, [x1, 16]	;# tmp147, *_39
	str	q30, [x0]	;# tmp146, D.7809
	str	q31, [x0, 16]	;# tmp147, D.7809
;# varargs-dll.c:1578:   int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 76]	;# tmp148, D.7809.b.b
	str	w0, [sp, 344]	;# tmp148, b
;# varargs-dll.c:1579:   int c = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9892, argv
	add	x1, x0, 8	;# D.9893, D.9892,
	str	x1, [sp, 16]	;# D.9893, argv
	ldr	x1, [x0]	;# D.9894, MEM[(struct hva_2_short_vector_16_bytes * *)_41]
	add	x0, sp, 88	;# tmp149,,
	ldr	q30, [x1]	;# tmp151, *_44
	ldr	q31, [x1, 16]	;# tmp152, *_44
	str	q30, [x0]	;# tmp151, D.7810
	str	q31, [x0, 16]	;# tmp152, D.7810
;# varargs-dll.c:1579:   int c = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 88]	;# tmp153, D.7810.a.a
	str	w0, [sp, 340]	;# tmp153, c
;# varargs-dll.c:1580:   int d = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9895, argv
	add	x1, x0, 8	;# D.9896, D.9895,
	str	x1, [sp, 16]	;# D.9896, argv
	ldr	x1, [x0]	;# D.9897, MEM[(struct hva_2_short_vector_16_bytes * *)_46]
	add	x0, sp, 120	;# tmp154,,
	ldr	q30, [x1]	;# tmp156, *_49
	ldr	q31, [x1, 16]	;# tmp157, *_49
	str	q30, [x0]	;# tmp156, D.7811
	str	q31, [x0, 16]	;# tmp157, D.7811
;# varargs-dll.c:1580:   int d = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 140]	;# tmp158, D.7811.b.b
	str	w0, [sp, 336]	;# tmp158, d
;# varargs-dll.c:1581:   int e = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9898, argv
	add	x1, x0, 8	;# D.9899, D.9898,
	str	x1, [sp, 16]	;# D.9899, argv
	ldr	x1, [x0]	;# D.9900, MEM[(struct hva_2_short_vector_16_bytes * *)_51]
	add	x0, sp, 152	;# tmp159,,
	ldr	q30, [x1]	;# tmp161, *_54
	ldr	q31, [x1, 16]	;# tmp162, *_54
	str	q30, [x0]	;# tmp161, D.7812
	str	q31, [x0, 16]	;# tmp162, D.7812
;# varargs-dll.c:1581:   int e = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 152]	;# tmp163, D.7812.a.a
	str	w0, [sp, 332]	;# tmp163, e
;# varargs-dll.c:1582:   int f = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9901, argv
	add	x1, x0, 8	;# D.9902, D.9901,
	str	x1, [sp, 16]	;# D.9902, argv
	ldr	x1, [x0]	;# D.9903, MEM[(struct hva_2_short_vector_16_bytes * *)_56]
	add	x0, sp, 184	;# tmp164,,
	ldr	q30, [x1]	;# tmp166, *_59
	ldr	q31, [x1, 16]	;# tmp167, *_59
	str	q30, [x0]	;# tmp166, D.7813
	str	q31, [x0, 16]	;# tmp167, D.7813
;# varargs-dll.c:1582:   int f = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 204]	;# tmp168, D.7813.b.b
	str	w0, [sp, 328]	;# tmp168, f
;# varargs-dll.c:1583:   int g = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9904, argv
	add	x1, x0, 8	;# D.9905, D.9904,
	str	x1, [sp, 16]	;# D.9905, argv
	ldr	x1, [x0]	;# D.9906, MEM[(struct hva_2_short_vector_16_bytes * *)_61]
	add	x0, sp, 216	;# tmp169,,
	ldr	q30, [x1]	;# tmp171, *_64
	ldr	q31, [x1, 16]	;# tmp172, *_64
	str	q30, [x0]	;# tmp171, D.7814
	str	q31, [x0, 16]	;# tmp172, D.7814
;# varargs-dll.c:1583:   int g = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 216]	;# tmp173, D.7814.a.a
	str	w0, [sp, 324]	;# tmp173, g
;# varargs-dll.c:1584:   int h = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9907, argv
	add	x1, x0, 8	;# D.9908, D.9907,
	str	x1, [sp, 16]	;# D.9908, argv
	ldr	x1, [x0]	;# D.9909, MEM[(struct hva_2_short_vector_16_bytes * *)_66]
	add	x0, sp, 248	;# tmp174,,
	ldr	q30, [x1]	;# tmp176, *_69
	ldr	q31, [x1, 16]	;# tmp177, *_69
	str	q30, [x0]	;# tmp176, D.7815
	str	q31, [x0, 16]	;# tmp177, D.7815
;# varargs-dll.c:1584:   int h = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 268]	;# tmp178, D.7815.b.b
	str	w0, [sp, 320]	;# tmp178, h
;# varargs-dll.c:1585:   int i = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9910, argv
	add	x1, x0, 8	;# D.9911, D.9910,
	str	x1, [sp, 16]	;# D.9911, argv
	ldr	x1, [x0]	;# D.9912, MEM[(struct hva_2_short_vector_16_bytes * *)_71]
	add	x0, sp, 280	;# tmp179,,
	ldr	q30, [x1]	;# tmp181, *_74
	ldr	q31, [x1, 16]	;# tmp182, *_74
	str	q30, [x0]	;# tmp181, D.7816
	str	q31, [x0, 16]	;# tmp182, D.7816
;# varargs-dll.c:1585:   int i = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 280]	;# tmp183, D.7816.a.a
	str	w0, [sp, 316]	;# tmp183, i
;# varargs-dll.c:1587:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 348]	;# tmp184, a
	ldr	w0, [sp, 344]	;# tmp185, b
	add	w1, w1, w0	;# _1, tmp184, tmp185
;# varargs-dll.c:1587:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 340]	;# tmp186, c
	add	w1, w1, w0	;# _2, _1, tmp186
;# varargs-dll.c:1587:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 336]	;# tmp187, d
	add	w1, w1, w0	;# _3, _2, tmp187
;# varargs-dll.c:1587:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 332]	;# tmp188, e
	add	w1, w1, w0	;# _4, _3, tmp188
;# varargs-dll.c:1587:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 328]	;# tmp189, f
	add	w1, w1, w0	;# _5, _4, tmp189
;# varargs-dll.c:1587:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 324]	;# tmp190, g
	add	w1, w1, w0	;# _6, _5, tmp190
;# varargs-dll.c:1587:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 320]	;# tmp191, h
	add	w1, w1, w0	;# _7, _6, tmp191
;# varargs-dll.c:1587:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 316]	;# tmp192, i
	add	w0, w1, w0	;# _29, _7, tmp192
;# varargs-dll.c:1588: }
	add	sp, sp, 416	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_hva_2_short_vector_16_bytes
	.def	use_va_list_several_hva_2_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_hva_2_short_vector_16_bytes
use_va_list_several_hva_2_short_vector_16_bytes:
	sub	sp, sp, #352	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1594:   int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.9913, argv
	add	x1, x0, 8	;# D.9914, D.9913,
	str	x1, [sp]	;# D.9914, argv
	ldr	x1, [x0]	;# D.9915, MEM[(struct hva_2_short_vector_16_bytes * *)_28]
	add	x0, sp, 24	;# tmp137,,
	ldr	q30, [x1]	;# tmp139, *_31
	ldr	q31, [x1, 16]	;# tmp140, *_31
	str	q30, [x0]	;# tmp139, D.7820
	str	q31, [x0, 16]	;# tmp140, D.7820
;# varargs-dll.c:1594:   int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp141, D.7820.a.a
	str	w0, [sp, 348]	;# tmp141, a
;# varargs-dll.c:1595:   int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.9916, argv
	add	x1, x0, 8	;# D.9917, D.9916,
	str	x1, [sp]	;# D.9917, argv
	ldr	x1, [x0]	;# D.9918, MEM[(struct hva_2_short_vector_16_bytes * *)_33]
	add	x0, sp, 56	;# tmp142,,
	ldr	q30, [x1]	;# tmp144, *_36
	ldr	q31, [x1, 16]	;# tmp145, *_36
	str	q30, [x0]	;# tmp144, D.7821
	str	q31, [x0, 16]	;# tmp145, D.7821
;# varargs-dll.c:1595:   int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 76]	;# tmp146, D.7821.b.b
	str	w0, [sp, 344]	;# tmp146, b
;# varargs-dll.c:1596:   int c = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.9919, argv
	add	x1, x0, 8	;# D.9920, D.9919,
	str	x1, [sp]	;# D.9920, argv
	ldr	x1, [x0]	;# D.9921, MEM[(struct hva_2_short_vector_16_bytes * *)_38]
	add	x0, sp, 88	;# tmp147,,
	ldr	q30, [x1]	;# tmp149, *_41
	ldr	q31, [x1, 16]	;# tmp150, *_41
	str	q30, [x0]	;# tmp149, D.7822
	str	q31, [x0, 16]	;# tmp150, D.7822
;# varargs-dll.c:1596:   int c = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 88]	;# tmp151, D.7822.a.a
	str	w0, [sp, 340]	;# tmp151, c
;# varargs-dll.c:1597:   int d = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.9922, argv
	add	x1, x0, 8	;# D.9923, D.9922,
	str	x1, [sp]	;# D.9923, argv
	ldr	x1, [x0]	;# D.9924, MEM[(struct hva_2_short_vector_16_bytes * *)_43]
	add	x0, sp, 120	;# tmp152,,
	ldr	q30, [x1]	;# tmp154, *_46
	ldr	q31, [x1, 16]	;# tmp155, *_46
	str	q30, [x0]	;# tmp154, D.7823
	str	q31, [x0, 16]	;# tmp155, D.7823
;# varargs-dll.c:1597:   int d = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 140]	;# tmp156, D.7823.b.b
	str	w0, [sp, 336]	;# tmp156, d
;# varargs-dll.c:1598:   int e = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.9925, argv
	add	x1, x0, 8	;# D.9926, D.9925,
	str	x1, [sp]	;# D.9926, argv
	ldr	x1, [x0]	;# D.9927, MEM[(struct hva_2_short_vector_16_bytes * *)_48]
	add	x0, sp, 152	;# tmp157,,
	ldr	q30, [x1]	;# tmp159, *_51
	ldr	q31, [x1, 16]	;# tmp160, *_51
	str	q30, [x0]	;# tmp159, D.7824
	str	q31, [x0, 16]	;# tmp160, D.7824
;# varargs-dll.c:1598:   int e = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 152]	;# tmp161, D.7824.a.a
	str	w0, [sp, 332]	;# tmp161, e
;# varargs-dll.c:1599:   int f = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.9928, argv
	add	x1, x0, 8	;# D.9929, D.9928,
	str	x1, [sp]	;# D.9929, argv
	ldr	x1, [x0]	;# D.9930, MEM[(struct hva_2_short_vector_16_bytes * *)_53]
	add	x0, sp, 184	;# tmp162,,
	ldr	q30, [x1]	;# tmp164, *_56
	ldr	q31, [x1, 16]	;# tmp165, *_56
	str	q30, [x0]	;# tmp164, D.7825
	str	q31, [x0, 16]	;# tmp165, D.7825
;# varargs-dll.c:1599:   int f = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 204]	;# tmp166, D.7825.b.b
	str	w0, [sp, 328]	;# tmp166, f
;# varargs-dll.c:1600:   int g = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.9931, argv
	add	x1, x0, 8	;# D.9932, D.9931,
	str	x1, [sp]	;# D.9932, argv
	ldr	x1, [x0]	;# D.9933, MEM[(struct hva_2_short_vector_16_bytes * *)_58]
	add	x0, sp, 216	;# tmp167,,
	ldr	q30, [x1]	;# tmp169, *_61
	ldr	q31, [x1, 16]	;# tmp170, *_61
	str	q30, [x0]	;# tmp169, D.7826
	str	q31, [x0, 16]	;# tmp170, D.7826
;# varargs-dll.c:1600:   int g = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 216]	;# tmp171, D.7826.a.a
	str	w0, [sp, 324]	;# tmp171, g
;# varargs-dll.c:1601:   int h = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.9934, argv
	add	x1, x0, 8	;# D.9935, D.9934,
	str	x1, [sp]	;# D.9935, argv
	ldr	x1, [x0]	;# D.9936, MEM[(struct hva_2_short_vector_16_bytes * *)_63]
	add	x0, sp, 248	;# tmp172,,
	ldr	q30, [x1]	;# tmp174, *_66
	ldr	q31, [x1, 16]	;# tmp175, *_66
	str	q30, [x0]	;# tmp174, D.7827
	str	q31, [x0, 16]	;# tmp175, D.7827
;# varargs-dll.c:1601:   int h = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 268]	;# tmp176, D.7827.b.b
	str	w0, [sp, 320]	;# tmp176, h
;# varargs-dll.c:1602:   int i = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.9937, argv
	add	x1, x0, 8	;# D.9938, D.9937,
	str	x1, [sp]	;# D.9938, argv
	ldr	x1, [x0]	;# D.9939, MEM[(struct hva_2_short_vector_16_bytes * *)_68]
	add	x0, sp, 280	;# tmp177,,
	ldr	q30, [x1]	;# tmp179, *_71
	ldr	q31, [x1, 16]	;# tmp180, *_71
	str	q30, [x0]	;# tmp179, D.7828
	str	q31, [x0, 16]	;# tmp180, D.7828
;# varargs-dll.c:1602:   int i = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 280]	;# tmp181, D.7828.a.a
	str	w0, [sp, 316]	;# tmp181, i
;# varargs-dll.c:1603:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 348]	;# tmp182, a
	ldr	w0, [sp, 344]	;# tmp183, b
	add	w1, w1, w0	;# _1, tmp182, tmp183
;# varargs-dll.c:1603:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 340]	;# tmp184, c
	add	w1, w1, w0	;# _2, _1, tmp184
;# varargs-dll.c:1603:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 336]	;# tmp185, d
	add	w1, w1, w0	;# _3, _2, tmp185
;# varargs-dll.c:1603:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 332]	;# tmp186, e
	add	w1, w1, w0	;# _4, _3, tmp186
;# varargs-dll.c:1603:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 328]	;# tmp187, f
	add	w1, w1, w0	;# _5, _4, tmp187
;# varargs-dll.c:1603:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 324]	;# tmp188, g
	add	w1, w1, w0	;# _6, _5, tmp188
;# varargs-dll.c:1603:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 320]	;# tmp189, h
	add	w1, w1, w0	;# _7, _6, tmp189
;# varargs-dll.c:1603:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 316]	;# tmp190, i
	add	w0, w1, w0	;# _27, _7, tmp190
;# varargs-dll.c:1604: }
	add	sp, sp, 352	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_hva_2_short_vector_16_bytes
	.def	use_va_args_many_hva_2_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_hva_2_short_vector_16_bytes
use_va_args_many_hva_2_short_vector_16_bytes:
	sub	sp, sp, #704	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 648]	;#,
	str	x2, [sp, 656]	;#,
	str	x3, [sp, 664]	;#,
	str	x4, [sp, 672]	;#,
	str	x5, [sp, 680]	;#,
	str	x6, [sp, 688]	;#,
	str	x7, [sp, 696]	;#,
;# varargs-dll.c:1610:   va_start (argv, format);
	add	x0, sp, 704	;# tmp169,,
	sub	x0, x0, #56	;# tmp170, tmp169,
	str	x0, [sp, 16]	;# tmp170, MEM[(char * *)&argv]
;# varargs-dll.c:1611:   int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9940, argv
	add	x1, x0, 8	;# D.9941, D.9940,
	str	x1, [sp, 16]	;# D.9941, argv
	ldr	x1, [x0]	;# D.9942, MEM[(struct hva_2_short_vector_16_bytes * *)_55]
	add	x0, sp, 24	;# tmp171,,
	ldr	q30, [x1]	;# tmp173, *_58
	ldr	q31, [x1, 16]	;# tmp174, *_58
	str	q30, [x0]	;# tmp173, D.7831
	str	q31, [x0, 16]	;# tmp174, D.7831
;# varargs-dll.c:1611:   int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp175, D.7831.a.a
	str	w0, [sp, 636]	;# tmp175, a
;# varargs-dll.c:1612:   int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9943, argv
	add	x1, x0, 8	;# D.9944, D.9943,
	str	x1, [sp, 16]	;# D.9944, argv
	ldr	x1, [x0]	;# D.9945, MEM[(struct hva_2_short_vector_16_bytes * *)_60]
	add	x0, sp, 56	;# tmp176,,
	ldr	q30, [x1]	;# tmp178, *_63
	ldr	q31, [x1, 16]	;# tmp179, *_63
	str	q30, [x0]	;# tmp178, D.7832
	str	q31, [x0, 16]	;# tmp179, D.7832
;# varargs-dll.c:1612:   int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 76]	;# tmp180, D.7832.b.b
	str	w0, [sp, 632]	;# tmp180, b
;# varargs-dll.c:1613:   int c = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9946, argv
	add	x1, x0, 8	;# D.9947, D.9946,
	str	x1, [sp, 16]	;# D.9947, argv
	ldr	x1, [x0]	;# D.9948, MEM[(struct hva_2_short_vector_16_bytes * *)_65]
	add	x0, sp, 88	;# tmp181,,
	ldr	q30, [x1]	;# tmp183, *_68
	ldr	q31, [x1, 16]	;# tmp184, *_68
	str	q30, [x0]	;# tmp183, D.7833
	str	q31, [x0, 16]	;# tmp184, D.7833
;# varargs-dll.c:1613:   int c = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 88]	;# tmp185, D.7833.a.a
	str	w0, [sp, 628]	;# tmp185, c
;# varargs-dll.c:1614:   int d = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9949, argv
	add	x1, x0, 8	;# D.9950, D.9949,
	str	x1, [sp, 16]	;# D.9950, argv
	ldr	x1, [x0]	;# D.9951, MEM[(struct hva_2_short_vector_16_bytes * *)_70]
	add	x0, sp, 120	;# tmp186,,
	ldr	q30, [x1]	;# tmp188, *_73
	ldr	q31, [x1, 16]	;# tmp189, *_73
	str	q30, [x0]	;# tmp188, D.7834
	str	q31, [x0, 16]	;# tmp189, D.7834
;# varargs-dll.c:1614:   int d = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 140]	;# tmp190, D.7834.b.b
	str	w0, [sp, 624]	;# tmp190, d
;# varargs-dll.c:1615:   int e = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9952, argv
	add	x1, x0, 8	;# D.9953, D.9952,
	str	x1, [sp, 16]	;# D.9953, argv
	ldr	x1, [x0]	;# D.9954, MEM[(struct hva_2_short_vector_16_bytes * *)_75]
	add	x0, sp, 152	;# tmp191,,
	ldr	q30, [x1]	;# tmp193, *_78
	ldr	q31, [x1, 16]	;# tmp194, *_78
	str	q30, [x0]	;# tmp193, D.7835
	str	q31, [x0, 16]	;# tmp194, D.7835
;# varargs-dll.c:1615:   int e = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 152]	;# tmp195, D.7835.a.a
	str	w0, [sp, 620]	;# tmp195, e
;# varargs-dll.c:1616:   int f = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9955, argv
	add	x1, x0, 8	;# D.9956, D.9955,
	str	x1, [sp, 16]	;# D.9956, argv
	ldr	x1, [x0]	;# D.9957, MEM[(struct hva_2_short_vector_16_bytes * *)_80]
	add	x0, sp, 184	;# tmp196,,
	ldr	q30, [x1]	;# tmp198, *_83
	ldr	q31, [x1, 16]	;# tmp199, *_83
	str	q30, [x0]	;# tmp198, D.7836
	str	q31, [x0, 16]	;# tmp199, D.7836
;# varargs-dll.c:1616:   int f = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 204]	;# tmp200, D.7836.b.b
	str	w0, [sp, 616]	;# tmp200, f
;# varargs-dll.c:1617:   int g = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9958, argv
	add	x1, x0, 8	;# D.9959, D.9958,
	str	x1, [sp, 16]	;# D.9959, argv
	ldr	x1, [x0]	;# D.9960, MEM[(struct hva_2_short_vector_16_bytes * *)_85]
	add	x0, sp, 216	;# tmp201,,
	ldr	q30, [x1]	;# tmp203, *_88
	ldr	q31, [x1, 16]	;# tmp204, *_88
	str	q30, [x0]	;# tmp203, D.7837
	str	q31, [x0, 16]	;# tmp204, D.7837
;# varargs-dll.c:1617:   int g = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 216]	;# tmp205, D.7837.a.a
	str	w0, [sp, 612]	;# tmp205, g
;# varargs-dll.c:1618:   int h = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9961, argv
	add	x1, x0, 8	;# D.9962, D.9961,
	str	x1, [sp, 16]	;# D.9962, argv
	ldr	x1, [x0]	;# D.9963, MEM[(struct hva_2_short_vector_16_bytes * *)_90]
	add	x0, sp, 248	;# tmp206,,
	ldr	q30, [x1]	;# tmp208, *_93
	ldr	q31, [x1, 16]	;# tmp209, *_93
	str	q30, [x0]	;# tmp208, D.7838
	str	q31, [x0, 16]	;# tmp209, D.7838
;# varargs-dll.c:1618:   int h = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 268]	;# tmp210, D.7838.b.b
	str	w0, [sp, 608]	;# tmp210, h
;# varargs-dll.c:1619:   int i = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9964, argv
	add	x1, x0, 8	;# D.9965, D.9964,
	str	x1, [sp, 16]	;# D.9965, argv
	ldr	x1, [x0]	;# D.9966, MEM[(struct hva_2_short_vector_16_bytes * *)_95]
	add	x0, sp, 280	;# tmp211,,
	ldr	q30, [x1]	;# tmp213, *_98
	ldr	q31, [x1, 16]	;# tmp214, *_98
	str	q30, [x0]	;# tmp213, D.7839
	str	q31, [x0, 16]	;# tmp214, D.7839
;# varargs-dll.c:1619:   int i = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 280]	;# tmp215, D.7839.a.a
	str	w0, [sp, 604]	;# tmp215, i
;# varargs-dll.c:1620:   int j = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9967, argv
	add	x1, x0, 8	;# D.9968, D.9967,
	str	x1, [sp, 16]	;# D.9968, argv
	ldr	x1, [x0]	;# D.9969, MEM[(struct hva_2_short_vector_16_bytes * *)_100]
	add	x0, sp, 312	;# tmp216,,
	ldr	q30, [x1]	;# tmp218, *_103
	ldr	q31, [x1, 16]	;# tmp219, *_103
	str	q30, [x0]	;# tmp218, D.7840
	str	q31, [x0, 16]	;# tmp219, D.7840
;# varargs-dll.c:1620:   int j = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 332]	;# tmp220, D.7840.b.b
	str	w0, [sp, 600]	;# tmp220, j
;# varargs-dll.c:1621:   int k = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9970, argv
	add	x1, x0, 8	;# D.9971, D.9970,
	str	x1, [sp, 16]	;# D.9971, argv
	ldr	x1, [x0]	;# D.9972, MEM[(struct hva_2_short_vector_16_bytes * *)_105]
	add	x0, sp, 344	;# tmp221,,
	ldr	q30, [x1]	;# tmp223, *_108
	ldr	q31, [x1, 16]	;# tmp224, *_108
	str	q30, [x0]	;# tmp223, D.7841
	str	q31, [x0, 16]	;# tmp224, D.7841
;# varargs-dll.c:1621:   int k = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 344]	;# tmp225, D.7841.a.a
	str	w0, [sp, 596]	;# tmp225, k
;# varargs-dll.c:1622:   int l = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9973, argv
	add	x1, x0, 8	;# D.9974, D.9973,
	str	x1, [sp, 16]	;# D.9974, argv
	ldr	x1, [x0]	;# D.9975, MEM[(struct hva_2_short_vector_16_bytes * *)_110]
	add	x0, sp, 376	;# tmp226,,
	ldr	q30, [x1]	;# tmp228, *_113
	ldr	q31, [x1, 16]	;# tmp229, *_113
	str	q30, [x0]	;# tmp228, D.7842
	str	q31, [x0, 16]	;# tmp229, D.7842
;# varargs-dll.c:1622:   int l = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 396]	;# tmp230, D.7842.b.b
	str	w0, [sp, 592]	;# tmp230, l
;# varargs-dll.c:1623:   int m = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9976, argv
	add	x1, x0, 8	;# D.9977, D.9976,
	str	x1, [sp, 16]	;# D.9977, argv
	ldr	x1, [x0]	;# D.9978, MEM[(struct hva_2_short_vector_16_bytes * *)_115]
	add	x0, sp, 408	;# tmp231,,
	ldr	q30, [x1]	;# tmp233, *_118
	ldr	q31, [x1, 16]	;# tmp234, *_118
	str	q30, [x0]	;# tmp233, D.7843
	str	q31, [x0, 16]	;# tmp234, D.7843
;# varargs-dll.c:1623:   int m = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 408]	;# tmp235, D.7843.a.a
	str	w0, [sp, 588]	;# tmp235, m
;# varargs-dll.c:1624:   int n = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9979, argv
	add	x1, x0, 8	;# D.9980, D.9979,
	str	x1, [sp, 16]	;# D.9980, argv
	ldr	x1, [x0]	;# D.9981, MEM[(struct hva_2_short_vector_16_bytes * *)_120]
	add	x0, sp, 440	;# tmp236,,
	ldr	q30, [x1]	;# tmp238, *_123
	ldr	q31, [x1, 16]	;# tmp239, *_123
	str	q30, [x0]	;# tmp238, D.7844
	str	q31, [x0, 16]	;# tmp239, D.7844
;# varargs-dll.c:1624:   int n = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 460]	;# tmp240, D.7844.b.b
	str	w0, [sp, 584]	;# tmp240, n
;# varargs-dll.c:1625:   int o = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9982, argv
	add	x1, x0, 8	;# D.9983, D.9982,
	str	x1, [sp, 16]	;# D.9983, argv
	ldr	x1, [x0]	;# D.9984, MEM[(struct hva_2_short_vector_16_bytes * *)_125]
	add	x0, sp, 472	;# tmp241,,
	ldr	q30, [x1]	;# tmp243, *_128
	ldr	q31, [x1, 16]	;# tmp244, *_128
	str	q30, [x0]	;# tmp243, D.7845
	str	q31, [x0, 16]	;# tmp244, D.7845
;# varargs-dll.c:1625:   int o = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 472]	;# tmp245, D.7845.a.a
	str	w0, [sp, 580]	;# tmp245, o
;# varargs-dll.c:1626:   int p = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.9985, argv
	add	x1, x0, 8	;# D.9986, D.9985,
	str	x1, [sp, 16]	;# D.9986, argv
	ldr	x1, [x0]	;# D.9987, MEM[(struct hva_2_short_vector_16_bytes * *)_130]
	add	x0, sp, 504	;# tmp246,,
	ldr	q30, [x1]	;# tmp248, *_133
	ldr	q31, [x1, 16]	;# tmp249, *_133
	str	q30, [x0]	;# tmp248, D.7846
	str	q31, [x0, 16]	;# tmp249, D.7846
;# varargs-dll.c:1626:   int p = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 524]	;# tmp250, D.7846.b.b
	str	w0, [sp, 576]	;# tmp250, p
;# varargs-dll.c:1627:   int q = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.9988, argv
	add	x1, x0, 8	;# D.9989, D.9988,
	str	x1, [sp, 16]	;# D.9989, argv
	ldr	x1, [x0]	;# D.9990, MEM[(struct hva_2_short_vector_16_bytes * *)_135]
	add	x0, sp, 536	;# tmp251,,
	ldr	q30, [x1]	;# tmp253, *_138
	ldr	q31, [x1, 16]	;# tmp254, *_138
	str	q30, [x0]	;# tmp253, D.7847
	str	q31, [x0, 16]	;# tmp254, D.7847
;# varargs-dll.c:1627:   int q = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 536]	;# tmp255, D.7847.a.a
	str	w0, [sp, 572]	;# tmp255, q
;# varargs-dll.c:1629:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 636]	;# tmp256, a
	ldr	w0, [sp, 632]	;# tmp257, b
	add	w1, w1, w0	;# _1, tmp256, tmp257
;# varargs-dll.c:1629:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 628]	;# tmp258, c
	add	w1, w1, w0	;# _2, _1, tmp258
;# varargs-dll.c:1629:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 624]	;# tmp259, d
	add	w1, w1, w0	;# _3, _2, tmp259
;# varargs-dll.c:1629:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 620]	;# tmp260, e
	add	w1, w1, w0	;# _4, _3, tmp260
;# varargs-dll.c:1629:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 616]	;# tmp261, f
	add	w1, w1, w0	;# _5, _4, tmp261
;# varargs-dll.c:1629:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 612]	;# tmp262, g
	add	w1, w1, w0	;# _6, _5, tmp262
;# varargs-dll.c:1629:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 608]	;# tmp263, h
	add	w1, w1, w0	;# _7, _6, tmp263
;# varargs-dll.c:1629:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 604]	;# tmp264, i
	add	w1, w1, w0	;# _8, _7, tmp264
;# varargs-dll.c:1629:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 600]	;# tmp265, j
	add	w1, w1, w0	;# _9, _8, tmp265
;# varargs-dll.c:1629:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 596]	;# tmp266, k
	add	w1, w1, w0	;# _10, _9, tmp266
;# varargs-dll.c:1629:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 592]	;# tmp267, l
	add	w1, w1, w0	;# _11, _10, tmp267
;# varargs-dll.c:1629:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 588]	;# tmp268, m
	add	w1, w1, w0	;# _12, _11, tmp268
;# varargs-dll.c:1629:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 584]	;# tmp269, n
	add	w1, w1, w0	;# _13, _12, tmp269
;# varargs-dll.c:1629:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 580]	;# tmp270, o
	add	w1, w1, w0	;# _14, _13, tmp270
;# varargs-dll.c:1629:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 576]	;# tmp271, p
	add	w1, w1, w0	;# _15, _14, tmp271
;# varargs-dll.c:1629:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 572]	;# tmp272, q
	add	w0, w1, w0	;# _53, _15, tmp272
;# varargs-dll.c:1630: }
	add	sp, sp, 704	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_hva_2_short_vector_16_bytes
	.def	use_va_list_many_hva_2_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_hva_2_short_vector_16_bytes
use_va_list_many_hva_2_short_vector_16_bytes:
	sub	sp, sp, #640	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1635:   int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.9991, argv
	add	x1, x0, 8	;# D.9992, D.9991,
	str	x1, [sp]	;# D.9992, argv
	ldr	x1, [x0]	;# D.9993, MEM[(struct hva_2_short_vector_16_bytes * *)_52]
	add	x0, sp, 24	;# tmp169,,
	ldr	q30, [x1]	;# tmp171, *_55
	ldr	q31, [x1, 16]	;# tmp172, *_55
	str	q30, [x0]	;# tmp171, D.7851
	str	q31, [x0, 16]	;# tmp172, D.7851
;# varargs-dll.c:1635:   int a = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp173, D.7851.a.a
	str	w0, [sp, 636]	;# tmp173, a
;# varargs-dll.c:1636:   int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.9994, argv
	add	x1, x0, 8	;# D.9995, D.9994,
	str	x1, [sp]	;# D.9995, argv
	ldr	x1, [x0]	;# D.9996, MEM[(struct hva_2_short_vector_16_bytes * *)_57]
	add	x0, sp, 56	;# tmp174,,
	ldr	q30, [x1]	;# tmp176, *_60
	ldr	q31, [x1, 16]	;# tmp177, *_60
	str	q30, [x0]	;# tmp176, D.7852
	str	q31, [x0, 16]	;# tmp177, D.7852
;# varargs-dll.c:1636:   int b = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 76]	;# tmp178, D.7852.b.b
	str	w0, [sp, 632]	;# tmp178, b
;# varargs-dll.c:1637:   int c = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.9997, argv
	add	x1, x0, 8	;# D.9998, D.9997,
	str	x1, [sp]	;# D.9998, argv
	ldr	x1, [x0]	;# D.9999, MEM[(struct hva_2_short_vector_16_bytes * *)_62]
	add	x0, sp, 88	;# tmp179,,
	ldr	q30, [x1]	;# tmp181, *_65
	ldr	q31, [x1, 16]	;# tmp182, *_65
	str	q30, [x0]	;# tmp181, D.7853
	str	q31, [x0, 16]	;# tmp182, D.7853
;# varargs-dll.c:1637:   int c = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 88]	;# tmp183, D.7853.a.a
	str	w0, [sp, 628]	;# tmp183, c
;# varargs-dll.c:1638:   int d = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.10000, argv
	add	x1, x0, 8	;# D.10001, D.10000,
	str	x1, [sp]	;# D.10001, argv
	ldr	x1, [x0]	;# D.10002, MEM[(struct hva_2_short_vector_16_bytes * *)_67]
	add	x0, sp, 120	;# tmp184,,
	ldr	q30, [x1]	;# tmp186, *_70
	ldr	q31, [x1, 16]	;# tmp187, *_70
	str	q30, [x0]	;# tmp186, D.7854
	str	q31, [x0, 16]	;# tmp187, D.7854
;# varargs-dll.c:1638:   int d = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 140]	;# tmp188, D.7854.b.b
	str	w0, [sp, 624]	;# tmp188, d
;# varargs-dll.c:1639:   int e = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.10003, argv
	add	x1, x0, 8	;# D.10004, D.10003,
	str	x1, [sp]	;# D.10004, argv
	ldr	x1, [x0]	;# D.10005, MEM[(struct hva_2_short_vector_16_bytes * *)_72]
	add	x0, sp, 152	;# tmp189,,
	ldr	q30, [x1]	;# tmp191, *_75
	ldr	q31, [x1, 16]	;# tmp192, *_75
	str	q30, [x0]	;# tmp191, D.7855
	str	q31, [x0, 16]	;# tmp192, D.7855
;# varargs-dll.c:1639:   int e = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 152]	;# tmp193, D.7855.a.a
	str	w0, [sp, 620]	;# tmp193, e
;# varargs-dll.c:1640:   int f = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.10006, argv
	add	x1, x0, 8	;# D.10007, D.10006,
	str	x1, [sp]	;# D.10007, argv
	ldr	x1, [x0]	;# D.10008, MEM[(struct hva_2_short_vector_16_bytes * *)_77]
	add	x0, sp, 184	;# tmp194,,
	ldr	q30, [x1]	;# tmp196, *_80
	ldr	q31, [x1, 16]	;# tmp197, *_80
	str	q30, [x0]	;# tmp196, D.7856
	str	q31, [x0, 16]	;# tmp197, D.7856
;# varargs-dll.c:1640:   int f = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 204]	;# tmp198, D.7856.b.b
	str	w0, [sp, 616]	;# tmp198, f
;# varargs-dll.c:1641:   int g = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.10009, argv
	add	x1, x0, 8	;# D.10010, D.10009,
	str	x1, [sp]	;# D.10010, argv
	ldr	x1, [x0]	;# D.10011, MEM[(struct hva_2_short_vector_16_bytes * *)_82]
	add	x0, sp, 216	;# tmp199,,
	ldr	q30, [x1]	;# tmp201, *_85
	ldr	q31, [x1, 16]	;# tmp202, *_85
	str	q30, [x0]	;# tmp201, D.7857
	str	q31, [x0, 16]	;# tmp202, D.7857
;# varargs-dll.c:1641:   int g = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 216]	;# tmp203, D.7857.a.a
	str	w0, [sp, 612]	;# tmp203, g
;# varargs-dll.c:1642:   int h = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.10012, argv
	add	x1, x0, 8	;# D.10013, D.10012,
	str	x1, [sp]	;# D.10013, argv
	ldr	x1, [x0]	;# D.10014, MEM[(struct hva_2_short_vector_16_bytes * *)_87]
	add	x0, sp, 248	;# tmp204,,
	ldr	q30, [x1]	;# tmp206, *_90
	ldr	q31, [x1, 16]	;# tmp207, *_90
	str	q30, [x0]	;# tmp206, D.7858
	str	q31, [x0, 16]	;# tmp207, D.7858
;# varargs-dll.c:1642:   int h = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 268]	;# tmp208, D.7858.b.b
	str	w0, [sp, 608]	;# tmp208, h
;# varargs-dll.c:1643:   int i = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.10015, argv
	add	x1, x0, 8	;# D.10016, D.10015,
	str	x1, [sp]	;# D.10016, argv
	ldr	x1, [x0]	;# D.10017, MEM[(struct hva_2_short_vector_16_bytes * *)_92]
	add	x0, sp, 280	;# tmp209,,
	ldr	q30, [x1]	;# tmp211, *_95
	ldr	q31, [x1, 16]	;# tmp212, *_95
	str	q30, [x0]	;# tmp211, D.7859
	str	q31, [x0, 16]	;# tmp212, D.7859
;# varargs-dll.c:1643:   int i = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 280]	;# tmp213, D.7859.a.a
	str	w0, [sp, 604]	;# tmp213, i
;# varargs-dll.c:1644:   int j = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.10018, argv
	add	x1, x0, 8	;# D.10019, D.10018,
	str	x1, [sp]	;# D.10019, argv
	ldr	x1, [x0]	;# D.10020, MEM[(struct hva_2_short_vector_16_bytes * *)_97]
	add	x0, sp, 312	;# tmp214,,
	ldr	q30, [x1]	;# tmp216, *_100
	ldr	q31, [x1, 16]	;# tmp217, *_100
	str	q30, [x0]	;# tmp216, D.7860
	str	q31, [x0, 16]	;# tmp217, D.7860
;# varargs-dll.c:1644:   int j = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 332]	;# tmp218, D.7860.b.b
	str	w0, [sp, 600]	;# tmp218, j
;# varargs-dll.c:1645:   int k = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.10021, argv
	add	x1, x0, 8	;# D.10022, D.10021,
	str	x1, [sp]	;# D.10022, argv
	ldr	x1, [x0]	;# D.10023, MEM[(struct hva_2_short_vector_16_bytes * *)_102]
	add	x0, sp, 344	;# tmp219,,
	ldr	q30, [x1]	;# tmp221, *_105
	ldr	q31, [x1, 16]	;# tmp222, *_105
	str	q30, [x0]	;# tmp221, D.7861
	str	q31, [x0, 16]	;# tmp222, D.7861
;# varargs-dll.c:1645:   int k = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 344]	;# tmp223, D.7861.a.a
	str	w0, [sp, 596]	;# tmp223, k
;# varargs-dll.c:1646:   int l = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.10024, argv
	add	x1, x0, 8	;# D.10025, D.10024,
	str	x1, [sp]	;# D.10025, argv
	ldr	x1, [x0]	;# D.10026, MEM[(struct hva_2_short_vector_16_bytes * *)_107]
	add	x0, sp, 376	;# tmp224,,
	ldr	q30, [x1]	;# tmp226, *_110
	ldr	q31, [x1, 16]	;# tmp227, *_110
	str	q30, [x0]	;# tmp226, D.7862
	str	q31, [x0, 16]	;# tmp227, D.7862
;# varargs-dll.c:1646:   int l = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 396]	;# tmp228, D.7862.b.b
	str	w0, [sp, 592]	;# tmp228, l
;# varargs-dll.c:1647:   int m = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.10027, argv
	add	x1, x0, 8	;# D.10028, D.10027,
	str	x1, [sp]	;# D.10028, argv
	ldr	x1, [x0]	;# D.10029, MEM[(struct hva_2_short_vector_16_bytes * *)_112]
	add	x0, sp, 408	;# tmp229,,
	ldr	q30, [x1]	;# tmp231, *_115
	ldr	q31, [x1, 16]	;# tmp232, *_115
	str	q30, [x0]	;# tmp231, D.7863
	str	q31, [x0, 16]	;# tmp232, D.7863
;# varargs-dll.c:1647:   int m = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 408]	;# tmp233, D.7863.a.a
	str	w0, [sp, 588]	;# tmp233, m
;# varargs-dll.c:1648:   int n = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.10030, argv
	add	x1, x0, 8	;# D.10031, D.10030,
	str	x1, [sp]	;# D.10031, argv
	ldr	x1, [x0]	;# D.10032, MEM[(struct hva_2_short_vector_16_bytes * *)_117]
	add	x0, sp, 440	;# tmp234,,
	ldr	q30, [x1]	;# tmp236, *_120
	ldr	q31, [x1, 16]	;# tmp237, *_120
	str	q30, [x0]	;# tmp236, D.7864
	str	q31, [x0, 16]	;# tmp237, D.7864
;# varargs-dll.c:1648:   int n = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 460]	;# tmp238, D.7864.b.b
	str	w0, [sp, 584]	;# tmp238, n
;# varargs-dll.c:1649:   int o = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.10033, argv
	add	x1, x0, 8	;# D.10034, D.10033,
	str	x1, [sp]	;# D.10034, argv
	ldr	x1, [x0]	;# D.10035, MEM[(struct hva_2_short_vector_16_bytes * *)_122]
	add	x0, sp, 472	;# tmp239,,
	ldr	q30, [x1]	;# tmp241, *_125
	ldr	q31, [x1, 16]	;# tmp242, *_125
	str	q30, [x0]	;# tmp241, D.7865
	str	q31, [x0, 16]	;# tmp242, D.7865
;# varargs-dll.c:1649:   int o = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 472]	;# tmp243, D.7865.a.a
	str	w0, [sp, 580]	;# tmp243, o
;# varargs-dll.c:1650:   int p = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.10036, argv
	add	x1, x0, 8	;# D.10037, D.10036,
	str	x1, [sp]	;# D.10037, argv
	ldr	x1, [x0]	;# D.10038, MEM[(struct hva_2_short_vector_16_bytes * *)_127]
	add	x0, sp, 504	;# tmp244,,
	ldr	q30, [x1]	;# tmp246, *_130
	ldr	q31, [x1, 16]	;# tmp247, *_130
	str	q30, [x0]	;# tmp246, D.7866
	str	q31, [x0, 16]	;# tmp247, D.7866
;# varargs-dll.c:1650:   int p = va_arg (argv, struct hva_2_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 524]	;# tmp248, D.7866.b.b
	str	w0, [sp, 576]	;# tmp248, p
;# varargs-dll.c:1651:   int q = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.10039, argv
	add	x1, x0, 8	;# D.10040, D.10039,
	str	x1, [sp]	;# D.10040, argv
	ldr	x1, [x0]	;# D.10041, MEM[(struct hva_2_short_vector_16_bytes * *)_132]
	add	x0, sp, 536	;# tmp249,,
	ldr	q30, [x1]	;# tmp251, *_135
	ldr	q31, [x1, 16]	;# tmp252, *_135
	str	q30, [x0]	;# tmp251, D.7867
	str	q31, [x0, 16]	;# tmp252, D.7867
;# varargs-dll.c:1651:   int q = va_arg (argv, struct hva_2_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 536]	;# tmp253, D.7867.a.a
	str	w0, [sp, 572]	;# tmp253, q
;# varargs-dll.c:1652:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 636]	;# tmp254, a
	ldr	w0, [sp, 632]	;# tmp255, b
	add	w1, w1, w0	;# _1, tmp254, tmp255
;# varargs-dll.c:1652:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 628]	;# tmp256, c
	add	w1, w1, w0	;# _2, _1, tmp256
;# varargs-dll.c:1652:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 624]	;# tmp257, d
	add	w1, w1, w0	;# _3, _2, tmp257
;# varargs-dll.c:1652:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 620]	;# tmp258, e
	add	w1, w1, w0	;# _4, _3, tmp258
;# varargs-dll.c:1652:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 616]	;# tmp259, f
	add	w1, w1, w0	;# _5, _4, tmp259
;# varargs-dll.c:1652:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 612]	;# tmp260, g
	add	w1, w1, w0	;# _6, _5, tmp260
;# varargs-dll.c:1652:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 608]	;# tmp261, h
	add	w1, w1, w0	;# _7, _6, tmp261
;# varargs-dll.c:1652:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 604]	;# tmp262, i
	add	w1, w1, w0	;# _8, _7, tmp262
;# varargs-dll.c:1652:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 600]	;# tmp263, j
	add	w1, w1, w0	;# _9, _8, tmp263
;# varargs-dll.c:1652:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 596]	;# tmp264, k
	add	w1, w1, w0	;# _10, _9, tmp264
;# varargs-dll.c:1652:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 592]	;# tmp265, l
	add	w1, w1, w0	;# _11, _10, tmp265
;# varargs-dll.c:1652:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 588]	;# tmp266, m
	add	w1, w1, w0	;# _12, _11, tmp266
;# varargs-dll.c:1652:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 584]	;# tmp267, n
	add	w1, w1, w0	;# _13, _12, tmp267
;# varargs-dll.c:1652:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 580]	;# tmp268, o
	add	w1, w1, w0	;# _14, _13, tmp268
;# varargs-dll.c:1652:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 576]	;# tmp269, p
	add	w1, w1, w0	;# _15, _14, tmp269
;# varargs-dll.c:1652:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 572]	;# tmp270, q
	add	w0, w1, w0	;# _51, _15, tmp270
;# varargs-dll.c:1653: }
	add	sp, sp, 640	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_few_hva_4_short_vector_16_bytes
	.def	use_va_args_few_hva_4_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_few_hva_4_short_vector_16_bytes
use_va_args_few_hva_4_short_vector_16_bytes:
	sub	sp, sp, #224	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 168]	;#,
	str	x2, [sp, 176]	;#,
	str	x3, [sp, 184]	;#,
	str	x4, [sp, 192]	;#,
	str	x5, [sp, 200]	;#,
	str	x6, [sp, 208]	;#,
	str	x7, [sp, 216]	;#,
;# varargs-dll.c:1659:   va_start (argv, format);
	add	x0, sp, 224	;# tmp109,,
	sub	x0, x0, #56	;# tmp110, tmp109,
	str	x0, [sp, 16]	;# tmp110, MEM[(char * *)&argv]
;# varargs-dll.c:1660:   int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.10042, argv
	add	x1, x0, 8	;# D.10043, D.10042,
	str	x1, [sp, 16]	;# D.10043, argv
	ldr	x1, [x0]	;# D.10044, MEM[(struct hva_4_short_vector_16_bytes * *)_10]
	add	x0, sp, 24	;# tmp111,,
	ldr	q28, [x1]	;# tmp113, *_13
	ldr	q29, [x1, 16]	;# tmp114, *_13
	ldr	q30, [x1, 32]	;# tmp115, *_13
	ldr	q31, [x1, 48]	;# tmp116, *_13
	str	q28, [x0]	;# tmp113, D.7870
	str	q29, [x0, 16]	;# tmp114, D.7870
	str	q30, [x0, 32]	;# tmp115, D.7870
	str	q31, [x0, 48]	;# tmp116, D.7870
;# varargs-dll.c:1660:   int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp117, D.7870.a.a
	str	w0, [sp, 156]	;# tmp117, a
;# varargs-dll.c:1661:   int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.10045, argv
	add	x1, x0, 8	;# D.10046, D.10045,
	str	x1, [sp, 16]	;# D.10046, argv
	ldr	x1, [x0]	;# D.10047, MEM[(struct hva_4_short_vector_16_bytes * *)_15]
	add	x0, sp, 88	;# tmp118,,
	ldr	q28, [x1]	;# tmp120, *_18
	ldr	q29, [x1, 16]	;# tmp121, *_18
	ldr	q30, [x1, 32]	;# tmp122, *_18
	ldr	q31, [x1, 48]	;# tmp123, *_18
	str	q28, [x0]	;# tmp120, D.7871
	str	q29, [x0, 16]	;# tmp121, D.7871
	str	q30, [x0, 32]	;# tmp122, D.7871
	str	q31, [x0, 48]	;# tmp123, D.7871
;# varargs-dll.c:1661:   int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 108]	;# tmp124, D.7871.b.b
	str	w0, [sp, 152]	;# tmp124, b
;# varargs-dll.c:1663:   return a + b;
	ldr	w1, [sp, 156]	;# tmp125, a
	ldr	w0, [sp, 152]	;# tmp126, b
	add	w0, w1, w0	;# _8, tmp125, tmp126
;# varargs-dll.c:1664: }
	add	sp, sp, 224	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_few_hva_4_short_vector_16_bytes
	.def	use_va_list_few_hva_4_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_few_hva_4_short_vector_16_bytes
use_va_list_few_hva_4_short_vector_16_bytes:
	sub	sp, sp, #160	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1669:   int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.10048, argv
	add	x1, x0, 8	;# D.10049, D.10048,
	str	x1, [sp]	;# D.10049, argv
	ldr	x1, [x0]	;# D.10050, MEM[(struct hva_4_short_vector_16_bytes * *)_7]
	add	x0, sp, 24	;# tmp109,,
	ldr	q28, [x1]	;# tmp111, *_10
	ldr	q29, [x1, 16]	;# tmp112, *_10
	ldr	q30, [x1, 32]	;# tmp113, *_10
	ldr	q31, [x1, 48]	;# tmp114, *_10
	str	q28, [x0]	;# tmp111, D.7875
	str	q29, [x0, 16]	;# tmp112, D.7875
	str	q30, [x0, 32]	;# tmp113, D.7875
	str	q31, [x0, 48]	;# tmp114, D.7875
;# varargs-dll.c:1669:   int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp115, D.7875.a.a
	str	w0, [sp, 156]	;# tmp115, a
;# varargs-dll.c:1670:   int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.10051, argv
	add	x1, x0, 8	;# D.10052, D.10051,
	str	x1, [sp]	;# D.10052, argv
	ldr	x1, [x0]	;# D.10053, MEM[(struct hva_4_short_vector_16_bytes * *)_12]
	add	x0, sp, 88	;# tmp116,,
	ldr	q28, [x1]	;# tmp118, *_15
	ldr	q29, [x1, 16]	;# tmp119, *_15
	ldr	q30, [x1, 32]	;# tmp120, *_15
	ldr	q31, [x1, 48]	;# tmp121, *_15
	str	q28, [x0]	;# tmp118, D.7876
	str	q29, [x0, 16]	;# tmp119, D.7876
	str	q30, [x0, 32]	;# tmp120, D.7876
	str	q31, [x0, 48]	;# tmp121, D.7876
;# varargs-dll.c:1670:   int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 108]	;# tmp122, D.7876.b.b
	str	w0, [sp, 152]	;# tmp122, b
;# varargs-dll.c:1671:   return a + b;
	ldr	w1, [sp, 156]	;# tmp123, a
	ldr	w0, [sp, 152]	;# tmp124, b
	add	w0, w1, w0	;# _6, tmp123, tmp124
;# varargs-dll.c:1672: }
	add	sp, sp, 160	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_several_hva_4_short_vector_16_bytes
	.def	use_va_args_several_hva_4_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_several_hva_4_short_vector_16_bytes
use_va_args_several_hva_4_short_vector_16_bytes:
	sub	sp, sp, #704	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 648]	;#,
	str	x2, [sp, 656]	;#,
	str	x3, [sp, 664]	;#,
	str	x4, [sp, 672]	;#,
	str	x5, [sp, 680]	;#,
	str	x6, [sp, 688]	;#,
	str	x7, [sp, 696]	;#,
;# varargs-dll.c:1678:   va_start (argv, format);
	add	x0, sp, 704	;# tmp137,,
	sub	x0, x0, #56	;# tmp138, tmp137,
	str	x0, [sp, 16]	;# tmp138, MEM[(char * *)&argv]
;# varargs-dll.c:1679:   int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.10054, argv
	add	x1, x0, 8	;# D.10055, D.10054,
	str	x1, [sp, 16]	;# D.10055, argv
	ldr	x1, [x0]	;# D.10056, MEM[(struct hva_4_short_vector_16_bytes * *)_31]
	add	x0, sp, 24	;# tmp139,,
	ldr	q28, [x1]	;# tmp141, *_34
	ldr	q29, [x1, 16]	;# tmp142, *_34
	ldr	q30, [x1, 32]	;# tmp143, *_34
	ldr	q31, [x1, 48]	;# tmp144, *_34
	str	q28, [x0]	;# tmp141, D.7879
	str	q29, [x0, 16]	;# tmp142, D.7879
	str	q30, [x0, 32]	;# tmp143, D.7879
	str	q31, [x0, 48]	;# tmp144, D.7879
;# varargs-dll.c:1679:   int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp145, D.7879.a.a
	str	w0, [sp, 636]	;# tmp145, a
;# varargs-dll.c:1680:   int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.10057, argv
	add	x1, x0, 8	;# D.10058, D.10057,
	str	x1, [sp, 16]	;# D.10058, argv
	ldr	x1, [x0]	;# D.10059, MEM[(struct hva_4_short_vector_16_bytes * *)_36]
	add	x0, sp, 88	;# tmp146,,
	ldr	q28, [x1]	;# tmp148, *_39
	ldr	q29, [x1, 16]	;# tmp149, *_39
	ldr	q30, [x1, 32]	;# tmp150, *_39
	ldr	q31, [x1, 48]	;# tmp151, *_39
	str	q28, [x0]	;# tmp148, D.7880
	str	q29, [x0, 16]	;# tmp149, D.7880
	str	q30, [x0, 32]	;# tmp150, D.7880
	str	q31, [x0, 48]	;# tmp151, D.7880
;# varargs-dll.c:1680:   int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 108]	;# tmp152, D.7880.b.b
	str	w0, [sp, 632]	;# tmp152, b
;# varargs-dll.c:1681:   int c = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	x0, [sp, 16]	;# D.10060, argv
	add	x1, x0, 8	;# D.10061, D.10060,
	str	x1, [sp, 16]	;# D.10061, argv
	ldr	x1, [x0]	;# D.10062, MEM[(struct hva_4_short_vector_16_bytes * *)_41]
	add	x0, sp, 152	;# tmp153,,
	ldr	q28, [x1]	;# tmp155, *_44
	ldr	q29, [x1, 16]	;# tmp156, *_44
	ldr	q30, [x1, 32]	;# tmp157, *_44
	ldr	q31, [x1, 48]	;# tmp158, *_44
	str	q28, [x0]	;# tmp155, D.7881
	str	q29, [x0, 16]	;# tmp156, D.7881
	str	q30, [x0, 32]	;# tmp157, D.7881
	str	q31, [x0, 48]	;# tmp158, D.7881
;# varargs-dll.c:1681:   int c = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	w0, [sp, 192]	;# tmp159, D.7881.c.c
	str	w0, [sp, 628]	;# tmp159, c
;# varargs-dll.c:1682:   int d = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	x0, [sp, 16]	;# D.10063, argv
	add	x1, x0, 8	;# D.10064, D.10063,
	str	x1, [sp, 16]	;# D.10064, argv
	ldr	x1, [x0]	;# D.10065, MEM[(struct hva_4_short_vector_16_bytes * *)_46]
	add	x0, sp, 216	;# tmp160,,
	ldr	q28, [x1]	;# tmp162, *_49
	ldr	q29, [x1, 16]	;# tmp163, *_49
	ldr	q30, [x1, 32]	;# tmp164, *_49
	ldr	q31, [x1, 48]	;# tmp165, *_49
	str	q28, [x0]	;# tmp162, D.7882
	str	q29, [x0, 16]	;# tmp163, D.7882
	str	q30, [x0, 32]	;# tmp164, D.7882
	str	q31, [x0, 48]	;# tmp165, D.7882
;# varargs-dll.c:1682:   int d = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	w0, [sp, 276]	;# tmp166, D.7882.d.d
	str	w0, [sp, 624]	;# tmp166, d
;# varargs-dll.c:1683:   int e = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.10066, argv
	add	x1, x0, 8	;# D.10067, D.10066,
	str	x1, [sp, 16]	;# D.10067, argv
	ldr	x1, [x0]	;# D.10068, MEM[(struct hva_4_short_vector_16_bytes * *)_51]
	add	x0, sp, 280	;# tmp167,,
	ldr	q28, [x1]	;# tmp169, *_54
	ldr	q29, [x1, 16]	;# tmp170, *_54
	ldr	q30, [x1, 32]	;# tmp171, *_54
	ldr	q31, [x1, 48]	;# tmp172, *_54
	str	q28, [x0]	;# tmp169, D.7883
	str	q29, [x0, 16]	;# tmp170, D.7883
	str	q30, [x0, 32]	;# tmp171, D.7883
	str	q31, [x0, 48]	;# tmp172, D.7883
;# varargs-dll.c:1683:   int e = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 280]	;# tmp173, D.7883.a.a
	str	w0, [sp, 620]	;# tmp173, e
;# varargs-dll.c:1684:   int f = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.10069, argv
	add	x1, x0, 8	;# D.10070, D.10069,
	str	x1, [sp, 16]	;# D.10070, argv
	ldr	x1, [x0]	;# D.10071, MEM[(struct hva_4_short_vector_16_bytes * *)_56]
	add	x0, sp, 344	;# tmp174,,
	ldr	q28, [x1]	;# tmp176, *_59
	ldr	q29, [x1, 16]	;# tmp177, *_59
	ldr	q30, [x1, 32]	;# tmp178, *_59
	ldr	q31, [x1, 48]	;# tmp179, *_59
	str	q28, [x0]	;# tmp176, D.7884
	str	q29, [x0, 16]	;# tmp177, D.7884
	str	q30, [x0, 32]	;# tmp178, D.7884
	str	q31, [x0, 48]	;# tmp179, D.7884
;# varargs-dll.c:1684:   int f = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 364]	;# tmp180, D.7884.b.b
	str	w0, [sp, 616]	;# tmp180, f
;# varargs-dll.c:1685:   int g = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	x0, [sp, 16]	;# D.10072, argv
	add	x1, x0, 8	;# D.10073, D.10072,
	str	x1, [sp, 16]	;# D.10073, argv
	ldr	x1, [x0]	;# D.10074, MEM[(struct hva_4_short_vector_16_bytes * *)_61]
	add	x0, sp, 408	;# tmp181,,
	ldr	q28, [x1]	;# tmp183, *_64
	ldr	q29, [x1, 16]	;# tmp184, *_64
	ldr	q30, [x1, 32]	;# tmp185, *_64
	ldr	q31, [x1, 48]	;# tmp186, *_64
	str	q28, [x0]	;# tmp183, D.7885
	str	q29, [x0, 16]	;# tmp184, D.7885
	str	q30, [x0, 32]	;# tmp185, D.7885
	str	q31, [x0, 48]	;# tmp186, D.7885
;# varargs-dll.c:1685:   int g = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	w0, [sp, 448]	;# tmp187, D.7885.c.c
	str	w0, [sp, 612]	;# tmp187, g
;# varargs-dll.c:1686:   int h = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	x0, [sp, 16]	;# D.10075, argv
	add	x1, x0, 8	;# D.10076, D.10075,
	str	x1, [sp, 16]	;# D.10076, argv
	ldr	x1, [x0]	;# D.10077, MEM[(struct hva_4_short_vector_16_bytes * *)_66]
	add	x0, sp, 472	;# tmp188,,
	ldr	q28, [x1]	;# tmp190, *_69
	ldr	q29, [x1, 16]	;# tmp191, *_69
	ldr	q30, [x1, 32]	;# tmp192, *_69
	ldr	q31, [x1, 48]	;# tmp193, *_69
	str	q28, [x0]	;# tmp190, D.7886
	str	q29, [x0, 16]	;# tmp191, D.7886
	str	q30, [x0, 32]	;# tmp192, D.7886
	str	q31, [x0, 48]	;# tmp193, D.7886
;# varargs-dll.c:1686:   int h = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	w0, [sp, 532]	;# tmp194, D.7886.d.d
	str	w0, [sp, 608]	;# tmp194, h
;# varargs-dll.c:1687:   int i = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.10078, argv
	add	x1, x0, 8	;# D.10079, D.10078,
	str	x1, [sp, 16]	;# D.10079, argv
	ldr	x1, [x0]	;# D.10080, MEM[(struct hva_4_short_vector_16_bytes * *)_71]
	add	x0, sp, 536	;# tmp195,,
	ldr	q28, [x1]	;# tmp197, *_74
	ldr	q29, [x1, 16]	;# tmp198, *_74
	ldr	q30, [x1, 32]	;# tmp199, *_74
	ldr	q31, [x1, 48]	;# tmp200, *_74
	str	q28, [x0]	;# tmp197, D.7887
	str	q29, [x0, 16]	;# tmp198, D.7887
	str	q30, [x0, 32]	;# tmp199, D.7887
	str	q31, [x0, 48]	;# tmp200, D.7887
;# varargs-dll.c:1687:   int i = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 536]	;# tmp201, D.7887.a.a
	str	w0, [sp, 604]	;# tmp201, i
;# varargs-dll.c:1689:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 636]	;# tmp202, a
	ldr	w0, [sp, 632]	;# tmp203, b
	add	w1, w1, w0	;# _1, tmp202, tmp203
;# varargs-dll.c:1689:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 628]	;# tmp204, c
	add	w1, w1, w0	;# _2, _1, tmp204
;# varargs-dll.c:1689:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 624]	;# tmp205, d
	add	w1, w1, w0	;# _3, _2, tmp205
;# varargs-dll.c:1689:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 620]	;# tmp206, e
	add	w1, w1, w0	;# _4, _3, tmp206
;# varargs-dll.c:1689:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 616]	;# tmp207, f
	add	w1, w1, w0	;# _5, _4, tmp207
;# varargs-dll.c:1689:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 612]	;# tmp208, g
	add	w1, w1, w0	;# _6, _5, tmp208
;# varargs-dll.c:1689:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 608]	;# tmp209, h
	add	w1, w1, w0	;# _7, _6, tmp209
;# varargs-dll.c:1689:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 604]	;# tmp210, i
	add	w0, w1, w0	;# _29, _7, tmp210
;# varargs-dll.c:1690: }
	add	sp, sp, 704	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_several_hva_4_short_vector_16_bytes
	.def	use_va_list_several_hva_4_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_several_hva_4_short_vector_16_bytes
use_va_list_several_hva_4_short_vector_16_bytes:
	sub	sp, sp, #640	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1696:   int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.10081, argv
	add	x1, x0, 8	;# D.10082, D.10081,
	str	x1, [sp]	;# D.10082, argv
	ldr	x1, [x0]	;# D.10083, MEM[(struct hva_4_short_vector_16_bytes * *)_28]
	add	x0, sp, 24	;# tmp137,,
	ldr	q28, [x1]	;# tmp139, *_31
	ldr	q29, [x1, 16]	;# tmp140, *_31
	ldr	q30, [x1, 32]	;# tmp141, *_31
	ldr	q31, [x1, 48]	;# tmp142, *_31
	str	q28, [x0]	;# tmp139, D.7891
	str	q29, [x0, 16]	;# tmp140, D.7891
	str	q30, [x0, 32]	;# tmp141, D.7891
	str	q31, [x0, 48]	;# tmp142, D.7891
;# varargs-dll.c:1696:   int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp143, D.7891.a.a
	str	w0, [sp, 636]	;# tmp143, a
;# varargs-dll.c:1697:   int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.10084, argv
	add	x1, x0, 8	;# D.10085, D.10084,
	str	x1, [sp]	;# D.10085, argv
	ldr	x1, [x0]	;# D.10086, MEM[(struct hva_4_short_vector_16_bytes * *)_33]
	add	x0, sp, 88	;# tmp144,,
	ldr	q28, [x1]	;# tmp146, *_36
	ldr	q29, [x1, 16]	;# tmp147, *_36
	ldr	q30, [x1, 32]	;# tmp148, *_36
	ldr	q31, [x1, 48]	;# tmp149, *_36
	str	q28, [x0]	;# tmp146, D.7892
	str	q29, [x0, 16]	;# tmp147, D.7892
	str	q30, [x0, 32]	;# tmp148, D.7892
	str	q31, [x0, 48]	;# tmp149, D.7892
;# varargs-dll.c:1697:   int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 108]	;# tmp150, D.7892.b.b
	str	w0, [sp, 632]	;# tmp150, b
;# varargs-dll.c:1698:   int c = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	x0, [sp]	;# D.10087, argv
	add	x1, x0, 8	;# D.10088, D.10087,
	str	x1, [sp]	;# D.10088, argv
	ldr	x1, [x0]	;# D.10089, MEM[(struct hva_4_short_vector_16_bytes * *)_38]
	add	x0, sp, 152	;# tmp151,,
	ldr	q28, [x1]	;# tmp153, *_41
	ldr	q29, [x1, 16]	;# tmp154, *_41
	ldr	q30, [x1, 32]	;# tmp155, *_41
	ldr	q31, [x1, 48]	;# tmp156, *_41
	str	q28, [x0]	;# tmp153, D.7893
	str	q29, [x0, 16]	;# tmp154, D.7893
	str	q30, [x0, 32]	;# tmp155, D.7893
	str	q31, [x0, 48]	;# tmp156, D.7893
;# varargs-dll.c:1698:   int c = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	w0, [sp, 192]	;# tmp157, D.7893.c.c
	str	w0, [sp, 628]	;# tmp157, c
;# varargs-dll.c:1699:   int d = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	x0, [sp]	;# D.10090, argv
	add	x1, x0, 8	;# D.10091, D.10090,
	str	x1, [sp]	;# D.10091, argv
	ldr	x1, [x0]	;# D.10092, MEM[(struct hva_4_short_vector_16_bytes * *)_43]
	add	x0, sp, 216	;# tmp158,,
	ldr	q28, [x1]	;# tmp160, *_46
	ldr	q29, [x1, 16]	;# tmp161, *_46
	ldr	q30, [x1, 32]	;# tmp162, *_46
	ldr	q31, [x1, 48]	;# tmp163, *_46
	str	q28, [x0]	;# tmp160, D.7894
	str	q29, [x0, 16]	;# tmp161, D.7894
	str	q30, [x0, 32]	;# tmp162, D.7894
	str	q31, [x0, 48]	;# tmp163, D.7894
;# varargs-dll.c:1699:   int d = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	w0, [sp, 276]	;# tmp164, D.7894.d.d
	str	w0, [sp, 624]	;# tmp164, d
;# varargs-dll.c:1700:   int e = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.10093, argv
	add	x1, x0, 8	;# D.10094, D.10093,
	str	x1, [sp]	;# D.10094, argv
	ldr	x1, [x0]	;# D.10095, MEM[(struct hva_4_short_vector_16_bytes * *)_48]
	add	x0, sp, 280	;# tmp165,,
	ldr	q28, [x1]	;# tmp167, *_51
	ldr	q29, [x1, 16]	;# tmp168, *_51
	ldr	q30, [x1, 32]	;# tmp169, *_51
	ldr	q31, [x1, 48]	;# tmp170, *_51
	str	q28, [x0]	;# tmp167, D.7895
	str	q29, [x0, 16]	;# tmp168, D.7895
	str	q30, [x0, 32]	;# tmp169, D.7895
	str	q31, [x0, 48]	;# tmp170, D.7895
;# varargs-dll.c:1700:   int e = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 280]	;# tmp171, D.7895.a.a
	str	w0, [sp, 620]	;# tmp171, e
;# varargs-dll.c:1701:   int f = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.10096, argv
	add	x1, x0, 8	;# D.10097, D.10096,
	str	x1, [sp]	;# D.10097, argv
	ldr	x1, [x0]	;# D.10098, MEM[(struct hva_4_short_vector_16_bytes * *)_53]
	add	x0, sp, 344	;# tmp172,,
	ldr	q28, [x1]	;# tmp174, *_56
	ldr	q29, [x1, 16]	;# tmp175, *_56
	ldr	q30, [x1, 32]	;# tmp176, *_56
	ldr	q31, [x1, 48]	;# tmp177, *_56
	str	q28, [x0]	;# tmp174, D.7896
	str	q29, [x0, 16]	;# tmp175, D.7896
	str	q30, [x0, 32]	;# tmp176, D.7896
	str	q31, [x0, 48]	;# tmp177, D.7896
;# varargs-dll.c:1701:   int f = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 364]	;# tmp178, D.7896.b.b
	str	w0, [sp, 616]	;# tmp178, f
;# varargs-dll.c:1702:   int g = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	x0, [sp]	;# D.10099, argv
	add	x1, x0, 8	;# D.10100, D.10099,
	str	x1, [sp]	;# D.10100, argv
	ldr	x1, [x0]	;# D.10101, MEM[(struct hva_4_short_vector_16_bytes * *)_58]
	add	x0, sp, 408	;# tmp179,,
	ldr	q28, [x1]	;# tmp181, *_61
	ldr	q29, [x1, 16]	;# tmp182, *_61
	ldr	q30, [x1, 32]	;# tmp183, *_61
	ldr	q31, [x1, 48]	;# tmp184, *_61
	str	q28, [x0]	;# tmp181, D.7897
	str	q29, [x0, 16]	;# tmp182, D.7897
	str	q30, [x0, 32]	;# tmp183, D.7897
	str	q31, [x0, 48]	;# tmp184, D.7897
;# varargs-dll.c:1702:   int g = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	w0, [sp, 448]	;# tmp185, D.7897.c.c
	str	w0, [sp, 612]	;# tmp185, g
;# varargs-dll.c:1703:   int h = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	x0, [sp]	;# D.10102, argv
	add	x1, x0, 8	;# D.10103, D.10102,
	str	x1, [sp]	;# D.10103, argv
	ldr	x1, [x0]	;# D.10104, MEM[(struct hva_4_short_vector_16_bytes * *)_63]
	add	x0, sp, 472	;# tmp186,,
	ldr	q28, [x1]	;# tmp188, *_66
	ldr	q29, [x1, 16]	;# tmp189, *_66
	ldr	q30, [x1, 32]	;# tmp190, *_66
	ldr	q31, [x1, 48]	;# tmp191, *_66
	str	q28, [x0]	;# tmp188, D.7898
	str	q29, [x0, 16]	;# tmp189, D.7898
	str	q30, [x0, 32]	;# tmp190, D.7898
	str	q31, [x0, 48]	;# tmp191, D.7898
;# varargs-dll.c:1703:   int h = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	w0, [sp, 532]	;# tmp192, D.7898.d.d
	str	w0, [sp, 608]	;# tmp192, h
;# varargs-dll.c:1704:   int i = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.10105, argv
	add	x1, x0, 8	;# D.10106, D.10105,
	str	x1, [sp]	;# D.10106, argv
	ldr	x1, [x0]	;# D.10107, MEM[(struct hva_4_short_vector_16_bytes * *)_68]
	add	x0, sp, 536	;# tmp193,,
	ldr	q28, [x1]	;# tmp195, *_71
	ldr	q29, [x1, 16]	;# tmp196, *_71
	ldr	q30, [x1, 32]	;# tmp197, *_71
	ldr	q31, [x1, 48]	;# tmp198, *_71
	str	q28, [x0]	;# tmp195, D.7899
	str	q29, [x0, 16]	;# tmp196, D.7899
	str	q30, [x0, 32]	;# tmp197, D.7899
	str	q31, [x0, 48]	;# tmp198, D.7899
;# varargs-dll.c:1704:   int i = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 536]	;# tmp199, D.7899.a.a
	str	w0, [sp, 604]	;# tmp199, i
;# varargs-dll.c:1705:   return a + b + c + d + e + f + g + h + i;
	ldr	w1, [sp, 636]	;# tmp200, a
	ldr	w0, [sp, 632]	;# tmp201, b
	add	w1, w1, w0	;# _1, tmp200, tmp201
;# varargs-dll.c:1705:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 628]	;# tmp202, c
	add	w1, w1, w0	;# _2, _1, tmp202
;# varargs-dll.c:1705:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 624]	;# tmp203, d
	add	w1, w1, w0	;# _3, _2, tmp203
;# varargs-dll.c:1705:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 620]	;# tmp204, e
	add	w1, w1, w0	;# _4, _3, tmp204
;# varargs-dll.c:1705:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 616]	;# tmp205, f
	add	w1, w1, w0	;# _5, _4, tmp205
;# varargs-dll.c:1705:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 612]	;# tmp206, g
	add	w1, w1, w0	;# _6, _5, tmp206
;# varargs-dll.c:1705:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 608]	;# tmp207, h
	add	w1, w1, w0	;# _7, _6, tmp207
;# varargs-dll.c:1705:   return a + b + c + d + e + f + g + h + i;
	ldr	w0, [sp, 604]	;# tmp208, i
	add	w0, w1, w0	;# _27, _7, tmp208
;# varargs-dll.c:1706: }
	add	sp, sp, 640	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_many_hva_4_short_vector_16_bytes
	.def	use_va_args_many_hva_4_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_many_hva_4_short_vector_16_bytes
use_va_args_many_hva_4_short_vector_16_bytes:
	sub	sp, sp, #1248	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 1192]	;#,
	str	x2, [sp, 1200]	;#,
	str	x3, [sp, 1208]	;#,
	str	x4, [sp, 1216]	;#,
	str	x5, [sp, 1224]	;#,
	str	x6, [sp, 1232]	;#,
	str	x7, [sp, 1240]	;#,
;# varargs-dll.c:1712:   va_start (argv, format);
	add	x0, sp, 1248	;# tmp169,,
	sub	x0, x0, #56	;# tmp170, tmp169,
	str	x0, [sp, 16]	;# tmp170, MEM[(char * *)&argv]
;# varargs-dll.c:1713:   int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.10108, argv
	add	x1, x0, 8	;# D.10109, D.10108,
	str	x1, [sp, 16]	;# D.10109, argv
	ldr	x1, [x0]	;# D.10110, MEM[(struct hva_4_short_vector_16_bytes * *)_55]
	add	x0, sp, 24	;# tmp171,,
	ldr	q28, [x1]	;# tmp173, *_58
	ldr	q29, [x1, 16]	;# tmp174, *_58
	ldr	q30, [x1, 32]	;# tmp175, *_58
	ldr	q31, [x1, 48]	;# tmp176, *_58
	str	q28, [x0]	;# tmp173, D.7902
	str	q29, [x0, 16]	;# tmp174, D.7902
	str	q30, [x0, 32]	;# tmp175, D.7902
	str	q31, [x0, 48]	;# tmp176, D.7902
;# varargs-dll.c:1713:   int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp177, D.7902.a.a
	str	w0, [sp, 1180]	;# tmp177, a
;# varargs-dll.c:1714:   int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.10111, argv
	add	x1, x0, 8	;# D.10112, D.10111,
	str	x1, [sp, 16]	;# D.10112, argv
	ldr	x1, [x0]	;# D.10113, MEM[(struct hva_4_short_vector_16_bytes * *)_60]
	add	x0, sp, 88	;# tmp178,,
	ldr	q28, [x1]	;# tmp180, *_63
	ldr	q29, [x1, 16]	;# tmp181, *_63
	ldr	q30, [x1, 32]	;# tmp182, *_63
	ldr	q31, [x1, 48]	;# tmp183, *_63
	str	q28, [x0]	;# tmp180, D.7903
	str	q29, [x0, 16]	;# tmp181, D.7903
	str	q30, [x0, 32]	;# tmp182, D.7903
	str	q31, [x0, 48]	;# tmp183, D.7903
;# varargs-dll.c:1714:   int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 108]	;# tmp184, D.7903.b.b
	str	w0, [sp, 1176]	;# tmp184, b
;# varargs-dll.c:1715:   int c = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	x0, [sp, 16]	;# D.10114, argv
	add	x1, x0, 8	;# D.10115, D.10114,
	str	x1, [sp, 16]	;# D.10115, argv
	ldr	x1, [x0]	;# D.10116, MEM[(struct hva_4_short_vector_16_bytes * *)_65]
	add	x0, sp, 152	;# tmp185,,
	ldr	q28, [x1]	;# tmp187, *_68
	ldr	q29, [x1, 16]	;# tmp188, *_68
	ldr	q30, [x1, 32]	;# tmp189, *_68
	ldr	q31, [x1, 48]	;# tmp190, *_68
	str	q28, [x0]	;# tmp187, D.7904
	str	q29, [x0, 16]	;# tmp188, D.7904
	str	q30, [x0, 32]	;# tmp189, D.7904
	str	q31, [x0, 48]	;# tmp190, D.7904
;# varargs-dll.c:1715:   int c = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	w0, [sp, 192]	;# tmp191, D.7904.c.c
	str	w0, [sp, 1172]	;# tmp191, c
;# varargs-dll.c:1716:   int d = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	x0, [sp, 16]	;# D.10117, argv
	add	x1, x0, 8	;# D.10118, D.10117,
	str	x1, [sp, 16]	;# D.10118, argv
	ldr	x1, [x0]	;# D.10119, MEM[(struct hva_4_short_vector_16_bytes * *)_70]
	add	x0, sp, 216	;# tmp192,,
	ldr	q28, [x1]	;# tmp194, *_73
	ldr	q29, [x1, 16]	;# tmp195, *_73
	ldr	q30, [x1, 32]	;# tmp196, *_73
	ldr	q31, [x1, 48]	;# tmp197, *_73
	str	q28, [x0]	;# tmp194, D.7905
	str	q29, [x0, 16]	;# tmp195, D.7905
	str	q30, [x0, 32]	;# tmp196, D.7905
	str	q31, [x0, 48]	;# tmp197, D.7905
;# varargs-dll.c:1716:   int d = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	w0, [sp, 276]	;# tmp198, D.7905.d.d
	str	w0, [sp, 1168]	;# tmp198, d
;# varargs-dll.c:1717:   int e = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.10120, argv
	add	x1, x0, 8	;# D.10121, D.10120,
	str	x1, [sp, 16]	;# D.10121, argv
	ldr	x1, [x0]	;# D.10122, MEM[(struct hva_4_short_vector_16_bytes * *)_75]
	add	x0, sp, 280	;# tmp199,,
	ldr	q28, [x1]	;# tmp201, *_78
	ldr	q29, [x1, 16]	;# tmp202, *_78
	ldr	q30, [x1, 32]	;# tmp203, *_78
	ldr	q31, [x1, 48]	;# tmp204, *_78
	str	q28, [x0]	;# tmp201, D.7906
	str	q29, [x0, 16]	;# tmp202, D.7906
	str	q30, [x0, 32]	;# tmp203, D.7906
	str	q31, [x0, 48]	;# tmp204, D.7906
;# varargs-dll.c:1717:   int e = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 280]	;# tmp205, D.7906.a.a
	str	w0, [sp, 1164]	;# tmp205, e
;# varargs-dll.c:1718:   int f = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.10123, argv
	add	x1, x0, 8	;# D.10124, D.10123,
	str	x1, [sp, 16]	;# D.10124, argv
	ldr	x1, [x0]	;# D.10125, MEM[(struct hva_4_short_vector_16_bytes * *)_80]
	add	x0, sp, 344	;# tmp206,,
	ldr	q28, [x1]	;# tmp208, *_83
	ldr	q29, [x1, 16]	;# tmp209, *_83
	ldr	q30, [x1, 32]	;# tmp210, *_83
	ldr	q31, [x1, 48]	;# tmp211, *_83
	str	q28, [x0]	;# tmp208, D.7907
	str	q29, [x0, 16]	;# tmp209, D.7907
	str	q30, [x0, 32]	;# tmp210, D.7907
	str	q31, [x0, 48]	;# tmp211, D.7907
;# varargs-dll.c:1718:   int f = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 364]	;# tmp212, D.7907.b.b
	str	w0, [sp, 1160]	;# tmp212, f
;# varargs-dll.c:1719:   int g = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	x0, [sp, 16]	;# D.10126, argv
	add	x1, x0, 8	;# D.10127, D.10126,
	str	x1, [sp, 16]	;# D.10127, argv
	ldr	x1, [x0]	;# D.10128, MEM[(struct hva_4_short_vector_16_bytes * *)_85]
	add	x0, sp, 408	;# tmp213,,
	ldr	q28, [x1]	;# tmp215, *_88
	ldr	q29, [x1, 16]	;# tmp216, *_88
	ldr	q30, [x1, 32]	;# tmp217, *_88
	ldr	q31, [x1, 48]	;# tmp218, *_88
	str	q28, [x0]	;# tmp215, D.7908
	str	q29, [x0, 16]	;# tmp216, D.7908
	str	q30, [x0, 32]	;# tmp217, D.7908
	str	q31, [x0, 48]	;# tmp218, D.7908
;# varargs-dll.c:1719:   int g = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	w0, [sp, 448]	;# tmp219, D.7908.c.c
	str	w0, [sp, 1156]	;# tmp219, g
;# varargs-dll.c:1720:   int h = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	x0, [sp, 16]	;# D.10129, argv
	add	x1, x0, 8	;# D.10130, D.10129,
	str	x1, [sp, 16]	;# D.10130, argv
	ldr	x1, [x0]	;# D.10131, MEM[(struct hva_4_short_vector_16_bytes * *)_90]
	add	x0, sp, 472	;# tmp220,,
	ldr	q28, [x1]	;# tmp222, *_93
	ldr	q29, [x1, 16]	;# tmp223, *_93
	ldr	q30, [x1, 32]	;# tmp224, *_93
	ldr	q31, [x1, 48]	;# tmp225, *_93
	str	q28, [x0]	;# tmp222, D.7909
	str	q29, [x0, 16]	;# tmp223, D.7909
	str	q30, [x0, 32]	;# tmp224, D.7909
	str	q31, [x0, 48]	;# tmp225, D.7909
;# varargs-dll.c:1720:   int h = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	w0, [sp, 532]	;# tmp226, D.7909.d.d
	str	w0, [sp, 1152]	;# tmp226, h
;# varargs-dll.c:1721:   int i = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.10132, argv
	add	x1, x0, 8	;# D.10133, D.10132,
	str	x1, [sp, 16]	;# D.10133, argv
	ldr	x1, [x0]	;# D.10134, MEM[(struct hva_4_short_vector_16_bytes * *)_95]
	add	x0, sp, 536	;# tmp227,,
	ldr	q28, [x1]	;# tmp229, *_98
	ldr	q29, [x1, 16]	;# tmp230, *_98
	ldr	q30, [x1, 32]	;# tmp231, *_98
	ldr	q31, [x1, 48]	;# tmp232, *_98
	str	q28, [x0]	;# tmp229, D.7910
	str	q29, [x0, 16]	;# tmp230, D.7910
	str	q30, [x0, 32]	;# tmp231, D.7910
	str	q31, [x0, 48]	;# tmp232, D.7910
;# varargs-dll.c:1721:   int i = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 536]	;# tmp233, D.7910.a.a
	str	w0, [sp, 1148]	;# tmp233, i
;# varargs-dll.c:1722:   int j = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.10135, argv
	add	x1, x0, 8	;# D.10136, D.10135,
	str	x1, [sp, 16]	;# D.10136, argv
	ldr	x1, [x0]	;# D.10137, MEM[(struct hva_4_short_vector_16_bytes * *)_100]
	add	x0, sp, 600	;# tmp234,,
	ldr	q28, [x1]	;# tmp236, *_103
	ldr	q29, [x1, 16]	;# tmp237, *_103
	ldr	q30, [x1, 32]	;# tmp238, *_103
	ldr	q31, [x1, 48]	;# tmp239, *_103
	str	q28, [x0]	;# tmp236, D.7911
	str	q29, [x0, 16]	;# tmp237, D.7911
	str	q30, [x0, 32]	;# tmp238, D.7911
	str	q31, [x0, 48]	;# tmp239, D.7911
;# varargs-dll.c:1722:   int j = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 620]	;# tmp240, D.7911.b.b
	str	w0, [sp, 1144]	;# tmp240, j
;# varargs-dll.c:1723:   int k = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	x0, [sp, 16]	;# D.10138, argv
	add	x1, x0, 8	;# D.10139, D.10138,
	str	x1, [sp, 16]	;# D.10139, argv
	ldr	x1, [x0]	;# D.10140, MEM[(struct hva_4_short_vector_16_bytes * *)_105]
	add	x0, sp, 664	;# tmp241,,
	ldr	q28, [x1]	;# tmp243, *_108
	ldr	q29, [x1, 16]	;# tmp244, *_108
	ldr	q30, [x1, 32]	;# tmp245, *_108
	ldr	q31, [x1, 48]	;# tmp246, *_108
	str	q28, [x0]	;# tmp243, D.7912
	str	q29, [x0, 16]	;# tmp244, D.7912
	str	q30, [x0, 32]	;# tmp245, D.7912
	str	q31, [x0, 48]	;# tmp246, D.7912
;# varargs-dll.c:1723:   int k = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	w0, [sp, 704]	;# tmp247, D.7912.c.c
	str	w0, [sp, 1140]	;# tmp247, k
;# varargs-dll.c:1724:   int l = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	x0, [sp, 16]	;# D.10141, argv
	add	x1, x0, 8	;# D.10142, D.10141,
	str	x1, [sp, 16]	;# D.10142, argv
	ldr	x1, [x0]	;# D.10143, MEM[(struct hva_4_short_vector_16_bytes * *)_110]
	add	x0, sp, 728	;# tmp248,,
	ldr	q28, [x1]	;# tmp250, *_113
	ldr	q29, [x1, 16]	;# tmp251, *_113
	ldr	q30, [x1, 32]	;# tmp252, *_113
	ldr	q31, [x1, 48]	;# tmp253, *_113
	str	q28, [x0]	;# tmp250, D.7913
	str	q29, [x0, 16]	;# tmp251, D.7913
	str	q30, [x0, 32]	;# tmp252, D.7913
	str	q31, [x0, 48]	;# tmp253, D.7913
;# varargs-dll.c:1724:   int l = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	w0, [sp, 788]	;# tmp254, D.7913.d.d
	str	w0, [sp, 1136]	;# tmp254, l
;# varargs-dll.c:1725:   int m = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.10144, argv
	add	x1, x0, 8	;# D.10145, D.10144,
	str	x1, [sp, 16]	;# D.10145, argv
	ldr	x1, [x0]	;# D.10146, MEM[(struct hva_4_short_vector_16_bytes * *)_115]
	add	x0, sp, 792	;# tmp255,,
	ldr	q28, [x1]	;# tmp257, *_118
	ldr	q29, [x1, 16]	;# tmp258, *_118
	ldr	q30, [x1, 32]	;# tmp259, *_118
	ldr	q31, [x1, 48]	;# tmp260, *_118
	str	q28, [x0]	;# tmp257, D.7914
	str	q29, [x0, 16]	;# tmp258, D.7914
	str	q30, [x0, 32]	;# tmp259, D.7914
	str	q31, [x0, 48]	;# tmp260, D.7914
;# varargs-dll.c:1725:   int m = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 792]	;# tmp261, D.7914.a.a
	str	w0, [sp, 1132]	;# tmp261, m
;# varargs-dll.c:1726:   int n = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	x0, [sp, 16]	;# D.10147, argv
	add	x1, x0, 8	;# D.10148, D.10147,
	str	x1, [sp, 16]	;# D.10148, argv
	ldr	x1, [x0]	;# D.10149, MEM[(struct hva_4_short_vector_16_bytes * *)_120]
	add	x0, sp, 856	;# tmp262,,
	ldr	q28, [x1]	;# tmp264, *_123
	ldr	q29, [x1, 16]	;# tmp265, *_123
	ldr	q30, [x1, 32]	;# tmp266, *_123
	ldr	q31, [x1, 48]	;# tmp267, *_123
	str	q28, [x0]	;# tmp264, D.7915
	str	q29, [x0, 16]	;# tmp265, D.7915
	str	q30, [x0, 32]	;# tmp266, D.7915
	str	q31, [x0, 48]	;# tmp267, D.7915
;# varargs-dll.c:1726:   int n = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 876]	;# tmp268, D.7915.b.b
	str	w0, [sp, 1128]	;# tmp268, n
;# varargs-dll.c:1727:   int o = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	x0, [sp, 16]	;# D.10150, argv
	add	x1, x0, 8	;# D.10151, D.10150,
	str	x1, [sp, 16]	;# D.10151, argv
	ldr	x1, [x0]	;# D.10152, MEM[(struct hva_4_short_vector_16_bytes * *)_125]
	add	x0, sp, 920	;# tmp269,,
	ldr	q28, [x1]	;# tmp271, *_128
	ldr	q29, [x1, 16]	;# tmp272, *_128
	ldr	q30, [x1, 32]	;# tmp273, *_128
	ldr	q31, [x1, 48]	;# tmp274, *_128
	str	q28, [x0]	;# tmp271, D.7916
	str	q29, [x0, 16]	;# tmp272, D.7916
	str	q30, [x0, 32]	;# tmp273, D.7916
	str	q31, [x0, 48]	;# tmp274, D.7916
;# varargs-dll.c:1727:   int o = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	w0, [sp, 960]	;# tmp275, D.7916.c.c
	str	w0, [sp, 1124]	;# tmp275, o
;# varargs-dll.c:1728:   int p = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	x0, [sp, 16]	;# D.10153, argv
	add	x1, x0, 8	;# D.10154, D.10153,
	str	x1, [sp, 16]	;# D.10154, argv
	ldr	x1, [x0]	;# D.10155, MEM[(struct hva_4_short_vector_16_bytes * *)_130]
	add	x0, sp, 984	;# tmp276,,
	ldr	q28, [x1]	;# tmp278, *_133
	ldr	q29, [x1, 16]	;# tmp279, *_133
	ldr	q30, [x1, 32]	;# tmp280, *_133
	ldr	q31, [x1, 48]	;# tmp281, *_133
	str	q28, [x0]	;# tmp278, D.7917
	str	q29, [x0, 16]	;# tmp279, D.7917
	str	q30, [x0, 32]	;# tmp280, D.7917
	str	q31, [x0, 48]	;# tmp281, D.7917
;# varargs-dll.c:1728:   int p = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	w0, [sp, 1044]	;# tmp282, D.7917.d.d
	str	w0, [sp, 1120]	;# tmp282, p
;# varargs-dll.c:1729:   int q = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp, 16]	;# D.10156, argv
	add	x1, x0, 8	;# D.10157, D.10156,
	str	x1, [sp, 16]	;# D.10157, argv
	ldr	x1, [x0]	;# D.10158, MEM[(struct hva_4_short_vector_16_bytes * *)_135]
	add	x0, sp, 1048	;# tmp283,,
	ldr	q28, [x1]	;# tmp285, *_138
	ldr	q29, [x1, 16]	;# tmp286, *_138
	ldr	q30, [x1, 32]	;# tmp287, *_138
	ldr	q31, [x1, 48]	;# tmp288, *_138
	str	q28, [x0]	;# tmp285, D.7918
	str	q29, [x0, 16]	;# tmp286, D.7918
	str	q30, [x0, 32]	;# tmp287, D.7918
	str	q31, [x0, 48]	;# tmp288, D.7918
;# varargs-dll.c:1729:   int q = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 1048]	;# tmp289, D.7918.a.a
	str	w0, [sp, 1116]	;# tmp289, q
;# varargs-dll.c:1731:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 1180]	;# tmp290, a
	ldr	w0, [sp, 1176]	;# tmp291, b
	add	w1, w1, w0	;# _1, tmp290, tmp291
;# varargs-dll.c:1731:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1172]	;# tmp292, c
	add	w1, w1, w0	;# _2, _1, tmp292
;# varargs-dll.c:1731:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1168]	;# tmp293, d
	add	w1, w1, w0	;# _3, _2, tmp293
;# varargs-dll.c:1731:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1164]	;# tmp294, e
	add	w1, w1, w0	;# _4, _3, tmp294
;# varargs-dll.c:1731:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1160]	;# tmp295, f
	add	w1, w1, w0	;# _5, _4, tmp295
;# varargs-dll.c:1731:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1156]	;# tmp296, g
	add	w1, w1, w0	;# _6, _5, tmp296
;# varargs-dll.c:1731:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1152]	;# tmp297, h
	add	w1, w1, w0	;# _7, _6, tmp297
;# varargs-dll.c:1731:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1148]	;# tmp298, i
	add	w1, w1, w0	;# _8, _7, tmp298
;# varargs-dll.c:1731:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1144]	;# tmp299, j
	add	w1, w1, w0	;# _9, _8, tmp299
;# varargs-dll.c:1731:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1140]	;# tmp300, k
	add	w1, w1, w0	;# _10, _9, tmp300
;# varargs-dll.c:1731:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1136]	;# tmp301, l
	add	w1, w1, w0	;# _11, _10, tmp301
;# varargs-dll.c:1731:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1132]	;# tmp302, m
	add	w1, w1, w0	;# _12, _11, tmp302
;# varargs-dll.c:1731:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1128]	;# tmp303, n
	add	w1, w1, w0	;# _13, _12, tmp303
;# varargs-dll.c:1731:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1124]	;# tmp304, o
	add	w1, w1, w0	;# _14, _13, tmp304
;# varargs-dll.c:1731:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1120]	;# tmp305, p
	add	w1, w1, w0	;# _15, _14, tmp305
;# varargs-dll.c:1731:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1116]	;# tmp306, q
	add	w0, w1, w0	;# _53, _15, tmp306
;# varargs-dll.c:1732: }
	add	sp, sp, 1248	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_many_hva_4_short_vector_16_bytes
	.def	use_va_list_many_hva_4_short_vector_16_bytes;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_many_hva_4_short_vector_16_bytes
use_va_list_many_hva_4_short_vector_16_bytes:
	sub	sp, sp, #1184	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1737:   int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.10159, argv
	add	x1, x0, 8	;# D.10160, D.10159,
	str	x1, [sp]	;# D.10160, argv
	ldr	x1, [x0]	;# D.10161, MEM[(struct hva_4_short_vector_16_bytes * *)_52]
	add	x0, sp, 24	;# tmp169,,
	ldr	q28, [x1]	;# tmp171, *_55
	ldr	q29, [x1, 16]	;# tmp172, *_55
	ldr	q30, [x1, 32]	;# tmp173, *_55
	ldr	q31, [x1, 48]	;# tmp174, *_55
	str	q28, [x0]	;# tmp171, D.7922
	str	q29, [x0, 16]	;# tmp172, D.7922
	str	q30, [x0, 32]	;# tmp173, D.7922
	str	q31, [x0, 48]	;# tmp174, D.7922
;# varargs-dll.c:1737:   int a = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 24]	;# tmp175, D.7922.a.a
	str	w0, [sp, 1180]	;# tmp175, a
;# varargs-dll.c:1738:   int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.10162, argv
	add	x1, x0, 8	;# D.10163, D.10162,
	str	x1, [sp]	;# D.10163, argv
	ldr	x1, [x0]	;# D.10164, MEM[(struct hva_4_short_vector_16_bytes * *)_57]
	add	x0, sp, 88	;# tmp176,,
	ldr	q28, [x1]	;# tmp178, *_60
	ldr	q29, [x1, 16]	;# tmp179, *_60
	ldr	q30, [x1, 32]	;# tmp180, *_60
	ldr	q31, [x1, 48]	;# tmp181, *_60
	str	q28, [x0]	;# tmp178, D.7923
	str	q29, [x0, 16]	;# tmp179, D.7923
	str	q30, [x0, 32]	;# tmp180, D.7923
	str	q31, [x0, 48]	;# tmp181, D.7923
;# varargs-dll.c:1738:   int b = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 108]	;# tmp182, D.7923.b.b
	str	w0, [sp, 1176]	;# tmp182, b
;# varargs-dll.c:1739:   int c = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	x0, [sp]	;# D.10165, argv
	add	x1, x0, 8	;# D.10166, D.10165,
	str	x1, [sp]	;# D.10166, argv
	ldr	x1, [x0]	;# D.10167, MEM[(struct hva_4_short_vector_16_bytes * *)_62]
	add	x0, sp, 152	;# tmp183,,
	ldr	q28, [x1]	;# tmp185, *_65
	ldr	q29, [x1, 16]	;# tmp186, *_65
	ldr	q30, [x1, 32]	;# tmp187, *_65
	ldr	q31, [x1, 48]	;# tmp188, *_65
	str	q28, [x0]	;# tmp185, D.7924
	str	q29, [x0, 16]	;# tmp186, D.7924
	str	q30, [x0, 32]	;# tmp187, D.7924
	str	q31, [x0, 48]	;# tmp188, D.7924
;# varargs-dll.c:1739:   int c = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	w0, [sp, 192]	;# tmp189, D.7924.c.c
	str	w0, [sp, 1172]	;# tmp189, c
;# varargs-dll.c:1740:   int d = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	x0, [sp]	;# D.10168, argv
	add	x1, x0, 8	;# D.10169, D.10168,
	str	x1, [sp]	;# D.10169, argv
	ldr	x1, [x0]	;# D.10170, MEM[(struct hva_4_short_vector_16_bytes * *)_67]
	add	x0, sp, 216	;# tmp190,,
	ldr	q28, [x1]	;# tmp192, *_70
	ldr	q29, [x1, 16]	;# tmp193, *_70
	ldr	q30, [x1, 32]	;# tmp194, *_70
	ldr	q31, [x1, 48]	;# tmp195, *_70
	str	q28, [x0]	;# tmp192, D.7925
	str	q29, [x0, 16]	;# tmp193, D.7925
	str	q30, [x0, 32]	;# tmp194, D.7925
	str	q31, [x0, 48]	;# tmp195, D.7925
;# varargs-dll.c:1740:   int d = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	w0, [sp, 276]	;# tmp196, D.7925.d.d
	str	w0, [sp, 1168]	;# tmp196, d
;# varargs-dll.c:1741:   int e = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.10171, argv
	add	x1, x0, 8	;# D.10172, D.10171,
	str	x1, [sp]	;# D.10172, argv
	ldr	x1, [x0]	;# D.10173, MEM[(struct hva_4_short_vector_16_bytes * *)_72]
	add	x0, sp, 280	;# tmp197,,
	ldr	q28, [x1]	;# tmp199, *_75
	ldr	q29, [x1, 16]	;# tmp200, *_75
	ldr	q30, [x1, 32]	;# tmp201, *_75
	ldr	q31, [x1, 48]	;# tmp202, *_75
	str	q28, [x0]	;# tmp199, D.7926
	str	q29, [x0, 16]	;# tmp200, D.7926
	str	q30, [x0, 32]	;# tmp201, D.7926
	str	q31, [x0, 48]	;# tmp202, D.7926
;# varargs-dll.c:1741:   int e = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 280]	;# tmp203, D.7926.a.a
	str	w0, [sp, 1164]	;# tmp203, e
;# varargs-dll.c:1742:   int f = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.10174, argv
	add	x1, x0, 8	;# D.10175, D.10174,
	str	x1, [sp]	;# D.10175, argv
	ldr	x1, [x0]	;# D.10176, MEM[(struct hva_4_short_vector_16_bytes * *)_77]
	add	x0, sp, 344	;# tmp204,,
	ldr	q28, [x1]	;# tmp206, *_80
	ldr	q29, [x1, 16]	;# tmp207, *_80
	ldr	q30, [x1, 32]	;# tmp208, *_80
	ldr	q31, [x1, 48]	;# tmp209, *_80
	str	q28, [x0]	;# tmp206, D.7927
	str	q29, [x0, 16]	;# tmp207, D.7927
	str	q30, [x0, 32]	;# tmp208, D.7927
	str	q31, [x0, 48]	;# tmp209, D.7927
;# varargs-dll.c:1742:   int f = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 364]	;# tmp210, D.7927.b.b
	str	w0, [sp, 1160]	;# tmp210, f
;# varargs-dll.c:1743:   int g = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	x0, [sp]	;# D.10177, argv
	add	x1, x0, 8	;# D.10178, D.10177,
	str	x1, [sp]	;# D.10178, argv
	ldr	x1, [x0]	;# D.10179, MEM[(struct hva_4_short_vector_16_bytes * *)_82]
	add	x0, sp, 408	;# tmp211,,
	ldr	q28, [x1]	;# tmp213, *_85
	ldr	q29, [x1, 16]	;# tmp214, *_85
	ldr	q30, [x1, 32]	;# tmp215, *_85
	ldr	q31, [x1, 48]	;# tmp216, *_85
	str	q28, [x0]	;# tmp213, D.7928
	str	q29, [x0, 16]	;# tmp214, D.7928
	str	q30, [x0, 32]	;# tmp215, D.7928
	str	q31, [x0, 48]	;# tmp216, D.7928
;# varargs-dll.c:1743:   int g = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	w0, [sp, 448]	;# tmp217, D.7928.c.c
	str	w0, [sp, 1156]	;# tmp217, g
;# varargs-dll.c:1744:   int h = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	x0, [sp]	;# D.10180, argv
	add	x1, x0, 8	;# D.10181, D.10180,
	str	x1, [sp]	;# D.10181, argv
	ldr	x1, [x0]	;# D.10182, MEM[(struct hva_4_short_vector_16_bytes * *)_87]
	add	x0, sp, 472	;# tmp218,,
	ldr	q28, [x1]	;# tmp220, *_90
	ldr	q29, [x1, 16]	;# tmp221, *_90
	ldr	q30, [x1, 32]	;# tmp222, *_90
	ldr	q31, [x1, 48]	;# tmp223, *_90
	str	q28, [x0]	;# tmp220, D.7929
	str	q29, [x0, 16]	;# tmp221, D.7929
	str	q30, [x0, 32]	;# tmp222, D.7929
	str	q31, [x0, 48]	;# tmp223, D.7929
;# varargs-dll.c:1744:   int h = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	w0, [sp, 532]	;# tmp224, D.7929.d.d
	str	w0, [sp, 1152]	;# tmp224, h
;# varargs-dll.c:1745:   int i = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.10183, argv
	add	x1, x0, 8	;# D.10184, D.10183,
	str	x1, [sp]	;# D.10184, argv
	ldr	x1, [x0]	;# D.10185, MEM[(struct hva_4_short_vector_16_bytes * *)_92]
	add	x0, sp, 536	;# tmp225,,
	ldr	q28, [x1]	;# tmp227, *_95
	ldr	q29, [x1, 16]	;# tmp228, *_95
	ldr	q30, [x1, 32]	;# tmp229, *_95
	ldr	q31, [x1, 48]	;# tmp230, *_95
	str	q28, [x0]	;# tmp227, D.7930
	str	q29, [x0, 16]	;# tmp228, D.7930
	str	q30, [x0, 32]	;# tmp229, D.7930
	str	q31, [x0, 48]	;# tmp230, D.7930
;# varargs-dll.c:1745:   int i = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 536]	;# tmp231, D.7930.a.a
	str	w0, [sp, 1148]	;# tmp231, i
;# varargs-dll.c:1746:   int j = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.10186, argv
	add	x1, x0, 8	;# D.10187, D.10186,
	str	x1, [sp]	;# D.10187, argv
	ldr	x1, [x0]	;# D.10188, MEM[(struct hva_4_short_vector_16_bytes * *)_97]
	add	x0, sp, 600	;# tmp232,,
	ldr	q28, [x1]	;# tmp234, *_100
	ldr	q29, [x1, 16]	;# tmp235, *_100
	ldr	q30, [x1, 32]	;# tmp236, *_100
	ldr	q31, [x1, 48]	;# tmp237, *_100
	str	q28, [x0]	;# tmp234, D.7931
	str	q29, [x0, 16]	;# tmp235, D.7931
	str	q30, [x0, 32]	;# tmp236, D.7931
	str	q31, [x0, 48]	;# tmp237, D.7931
;# varargs-dll.c:1746:   int j = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 620]	;# tmp238, D.7931.b.b
	str	w0, [sp, 1144]	;# tmp238, j
;# varargs-dll.c:1747:   int k = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	x0, [sp]	;# D.10189, argv
	add	x1, x0, 8	;# D.10190, D.10189,
	str	x1, [sp]	;# D.10190, argv
	ldr	x1, [x0]	;# D.10191, MEM[(struct hva_4_short_vector_16_bytes * *)_102]
	add	x0, sp, 664	;# tmp239,,
	ldr	q28, [x1]	;# tmp241, *_105
	ldr	q29, [x1, 16]	;# tmp242, *_105
	ldr	q30, [x1, 32]	;# tmp243, *_105
	ldr	q31, [x1, 48]	;# tmp244, *_105
	str	q28, [x0]	;# tmp241, D.7932
	str	q29, [x0, 16]	;# tmp242, D.7932
	str	q30, [x0, 32]	;# tmp243, D.7932
	str	q31, [x0, 48]	;# tmp244, D.7932
;# varargs-dll.c:1747:   int k = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	w0, [sp, 704]	;# tmp245, D.7932.c.c
	str	w0, [sp, 1140]	;# tmp245, k
;# varargs-dll.c:1748:   int l = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	x0, [sp]	;# D.10192, argv
	add	x1, x0, 8	;# D.10193, D.10192,
	str	x1, [sp]	;# D.10193, argv
	ldr	x1, [x0]	;# D.10194, MEM[(struct hva_4_short_vector_16_bytes * *)_107]
	add	x0, sp, 728	;# tmp246,,
	ldr	q28, [x1]	;# tmp248, *_110
	ldr	q29, [x1, 16]	;# tmp249, *_110
	ldr	q30, [x1, 32]	;# tmp250, *_110
	ldr	q31, [x1, 48]	;# tmp251, *_110
	str	q28, [x0]	;# tmp248, D.7933
	str	q29, [x0, 16]	;# tmp249, D.7933
	str	q30, [x0, 32]	;# tmp250, D.7933
	str	q31, [x0, 48]	;# tmp251, D.7933
;# varargs-dll.c:1748:   int l = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	w0, [sp, 788]	;# tmp252, D.7933.d.d
	str	w0, [sp, 1136]	;# tmp252, l
;# varargs-dll.c:1749:   int m = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.10195, argv
	add	x1, x0, 8	;# D.10196, D.10195,
	str	x1, [sp]	;# D.10196, argv
	ldr	x1, [x0]	;# D.10197, MEM[(struct hva_4_short_vector_16_bytes * *)_112]
	add	x0, sp, 792	;# tmp253,,
	ldr	q28, [x1]	;# tmp255, *_115
	ldr	q29, [x1, 16]	;# tmp256, *_115
	ldr	q30, [x1, 32]	;# tmp257, *_115
	ldr	q31, [x1, 48]	;# tmp258, *_115
	str	q28, [x0]	;# tmp255, D.7934
	str	q29, [x0, 16]	;# tmp256, D.7934
	str	q30, [x0, 32]	;# tmp257, D.7934
	str	q31, [x0, 48]	;# tmp258, D.7934
;# varargs-dll.c:1749:   int m = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 792]	;# tmp259, D.7934.a.a
	str	w0, [sp, 1132]	;# tmp259, m
;# varargs-dll.c:1750:   int n = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	x0, [sp]	;# D.10198, argv
	add	x1, x0, 8	;# D.10199, D.10198,
	str	x1, [sp]	;# D.10199, argv
	ldr	x1, [x0]	;# D.10200, MEM[(struct hva_4_short_vector_16_bytes * *)_117]
	add	x0, sp, 856	;# tmp260,,
	ldr	q28, [x1]	;# tmp262, *_120
	ldr	q29, [x1, 16]	;# tmp263, *_120
	ldr	q30, [x1, 32]	;# tmp264, *_120
	ldr	q31, [x1, 48]	;# tmp265, *_120
	str	q28, [x0]	;# tmp262, D.7935
	str	q29, [x0, 16]	;# tmp263, D.7935
	str	q30, [x0, 32]	;# tmp264, D.7935
	str	q31, [x0, 48]	;# tmp265, D.7935
;# varargs-dll.c:1750:   int n = va_arg (argv, struct hva_4_short_vector_16_bytes).b.b;
	ldr	w0, [sp, 876]	;# tmp266, D.7935.b.b
	str	w0, [sp, 1128]	;# tmp266, n
;# varargs-dll.c:1751:   int o = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	x0, [sp]	;# D.10201, argv
	add	x1, x0, 8	;# D.10202, D.10201,
	str	x1, [sp]	;# D.10202, argv
	ldr	x1, [x0]	;# D.10203, MEM[(struct hva_4_short_vector_16_bytes * *)_122]
	add	x0, sp, 920	;# tmp267,,
	ldr	q28, [x1]	;# tmp269, *_125
	ldr	q29, [x1, 16]	;# tmp270, *_125
	ldr	q30, [x1, 32]	;# tmp271, *_125
	ldr	q31, [x1, 48]	;# tmp272, *_125
	str	q28, [x0]	;# tmp269, D.7936
	str	q29, [x0, 16]	;# tmp270, D.7936
	str	q30, [x0, 32]	;# tmp271, D.7936
	str	q31, [x0, 48]	;# tmp272, D.7936
;# varargs-dll.c:1751:   int o = va_arg (argv, struct hva_4_short_vector_16_bytes).c.c;
	ldr	w0, [sp, 960]	;# tmp273, D.7936.c.c
	str	w0, [sp, 1124]	;# tmp273, o
;# varargs-dll.c:1752:   int p = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	x0, [sp]	;# D.10204, argv
	add	x1, x0, 8	;# D.10205, D.10204,
	str	x1, [sp]	;# D.10205, argv
	ldr	x1, [x0]	;# D.10206, MEM[(struct hva_4_short_vector_16_bytes * *)_127]
	add	x0, sp, 984	;# tmp274,,
	ldr	q28, [x1]	;# tmp276, *_130
	ldr	q29, [x1, 16]	;# tmp277, *_130
	ldr	q30, [x1, 32]	;# tmp278, *_130
	ldr	q31, [x1, 48]	;# tmp279, *_130
	str	q28, [x0]	;# tmp276, D.7937
	str	q29, [x0, 16]	;# tmp277, D.7937
	str	q30, [x0, 32]	;# tmp278, D.7937
	str	q31, [x0, 48]	;# tmp279, D.7937
;# varargs-dll.c:1752:   int p = va_arg (argv, struct hva_4_short_vector_16_bytes).d.d;
	ldr	w0, [sp, 1044]	;# tmp280, D.7937.d.d
	str	w0, [sp, 1120]	;# tmp280, p
;# varargs-dll.c:1753:   int q = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	x0, [sp]	;# D.10207, argv
	add	x1, x0, 8	;# D.10208, D.10207,
	str	x1, [sp]	;# D.10208, argv
	ldr	x1, [x0]	;# D.10209, MEM[(struct hva_4_short_vector_16_bytes * *)_132]
	add	x0, sp, 1048	;# tmp281,,
	ldr	q28, [x1]	;# tmp283, *_135
	ldr	q29, [x1, 16]	;# tmp284, *_135
	ldr	q30, [x1, 32]	;# tmp285, *_135
	ldr	q31, [x1, 48]	;# tmp286, *_135
	str	q28, [x0]	;# tmp283, D.7938
	str	q29, [x0, 16]	;# tmp284, D.7938
	str	q30, [x0, 32]	;# tmp285, D.7938
	str	q31, [x0, 48]	;# tmp286, D.7938
;# varargs-dll.c:1753:   int q = va_arg (argv, struct hva_4_short_vector_16_bytes).a.a;
	ldr	w0, [sp, 1048]	;# tmp287, D.7938.a.a
	str	w0, [sp, 1116]	;# tmp287, q
;# varargs-dll.c:1754:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 1180]	;# tmp288, a
	ldr	w0, [sp, 1176]	;# tmp289, b
	add	w1, w1, w0	;# _1, tmp288, tmp289
;# varargs-dll.c:1754:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1172]	;# tmp290, c
	add	w1, w1, w0	;# _2, _1, tmp290
;# varargs-dll.c:1754:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1168]	;# tmp291, d
	add	w1, w1, w0	;# _3, _2, tmp291
;# varargs-dll.c:1754:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1164]	;# tmp292, e
	add	w1, w1, w0	;# _4, _3, tmp292
;# varargs-dll.c:1754:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1160]	;# tmp293, f
	add	w1, w1, w0	;# _5, _4, tmp293
;# varargs-dll.c:1754:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1156]	;# tmp294, g
	add	w1, w1, w0	;# _6, _5, tmp294
;# varargs-dll.c:1754:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1152]	;# tmp295, h
	add	w1, w1, w0	;# _7, _6, tmp295
;# varargs-dll.c:1754:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1148]	;# tmp296, i
	add	w1, w1, w0	;# _8, _7, tmp296
;# varargs-dll.c:1754:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1144]	;# tmp297, j
	add	w1, w1, w0	;# _9, _8, tmp297
;# varargs-dll.c:1754:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1140]	;# tmp298, k
	add	w1, w1, w0	;# _10, _9, tmp298
;# varargs-dll.c:1754:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1136]	;# tmp299, l
	add	w1, w1, w0	;# _11, _10, tmp299
;# varargs-dll.c:1754:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1132]	;# tmp300, m
	add	w1, w1, w0	;# _12, _11, tmp300
;# varargs-dll.c:1754:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1128]	;# tmp301, n
	add	w1, w1, w0	;# _13, _12, tmp301
;# varargs-dll.c:1754:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1124]	;# tmp302, o
	add	w1, w1, w0	;# _14, _13, tmp302
;# varargs-dll.c:1754:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1120]	;# tmp303, p
	add	w1, w1, w0	;# _15, _14, tmp303
;# varargs-dll.c:1754:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 1116]	;# tmp304, q
	add	w0, w1, w0	;# _51, _15, tmp304
;# varargs-dll.c:1755: }
	add	sp, sp, 1184	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_ints_and_composites
	.def	use_va_args_ints_and_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_ints_and_composites
use_va_args_ints_and_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3600]	;#,
	stp	x29, x30, [sp, -496]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 440]	;#,
	str	x2, [sp, 448]	;#,
	str	x3, [sp, 456]	;#,
	str	x4, [sp, 464]	;#,
	str	x5, [sp, 472]	;#,
	str	x6, [sp, 480]	;#,
	str	x7, [sp, 488]	;#,
;# varargs-dll.c:1761:   va_start (argv, format);
	add	x0, sp, 496	;# tmp162,,
	sub	x0, x0, #56	;# tmp163, tmp162,
	str	x0, [sp, 32]	;# tmp163, MEM[(char * *)&argv]
;# varargs-dll.c:1762:   int a = va_arg (argv, int);
	ldr	x0, [sp, 32]	;# D.10210, argv
	add	x1, x0, 8	;# D.10211, D.10210,
	str	x1, [sp, 32]	;# D.10211, argv
	ldr	w0, [x0]	;# tmp164, MEM[(int *)_65]
	str	w0, [sp, 428]	;# tmp164, a
;# varargs-dll.c:1763:   long b = va_arg (argv, long);
	ldr	x0, [sp, 32]	;# D.10212, argv
	add	x1, x0, 8	;# D.10213, D.10212,
	str	x1, [sp, 32]	;# D.10213, argv
	ldr	w0, [x0]	;# tmp165, MEM[(long int *)_68]
	str	w0, [sp, 424]	;# tmp165, b
;# varargs-dll.c:1764:   int c = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 32]	;# D.10214, argv
	add	x1, x0, 8	;# D.10215, D.10214,
	str	x1, [sp, 32]	;# D.10215, argv
	ldr	x1, [x0]	;# D.10216, MEM[(struct composite * *)_71]
	add	x0, sp, 40	;# tmp166,,
	ldr	q28, [x1]	;# tmp168, *_74
	ldr	q29, [x1, 16]	;# tmp169, *_74
	ldr	q30, [x1, 32]	;# tmp170, *_74
	ldr	q31, [x1, 48]	;# tmp171, *_74
	str	q28, [x0]	;# tmp168, D.7941
	str	q29, [x0, 16]	;# tmp169, D.7941
	str	q30, [x0, 32]	;# tmp170, D.7941
	str	q31, [x0, 48]	;# tmp171, D.7941
;# varargs-dll.c:1764:   int c = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 48]	;# _1, D.7941.c
	bl	atoi		;#
	str	w0, [sp, 420]	;#, c
;# varargs-dll.c:1765:   int d = va_arg (argv, int);
	ldr	x0, [sp, 32]	;# D.10217, argv
	add	x1, x0, 8	;# D.10218, D.10217,
	str	x1, [sp, 32]	;# D.10218, argv
	ldr	w0, [x0]	;# tmp172, MEM[(int *)_76]
	str	w0, [sp, 416]	;# tmp172, d
;# varargs-dll.c:1766:   long e = va_arg (argv, long);
	ldr	x0, [sp, 32]	;# D.10219, argv
	add	x1, x0, 8	;# D.10220, D.10219,
	str	x1, [sp, 32]	;# D.10220, argv
	ldr	w0, [x0]	;# tmp173, MEM[(long int *)_79]
	str	w0, [sp, 412]	;# tmp173, e
;# varargs-dll.c:1767:   int f = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 32]	;# D.10221, argv
	add	x1, x0, 8	;# D.10222, D.10221,
	str	x1, [sp, 32]	;# D.10222, argv
	ldr	x1, [x0]	;# D.10223, MEM[(struct composite * *)_82]
	add	x0, sp, 104	;# tmp174,,
	ldr	q28, [x1]	;# tmp176, *_85
	ldr	q29, [x1, 16]	;# tmp177, *_85
	ldr	q30, [x1, 32]	;# tmp178, *_85
	ldr	q31, [x1, 48]	;# tmp179, *_85
	str	q28, [x0]	;# tmp176, D.7942
	str	q29, [x0, 16]	;# tmp177, D.7942
	str	q30, [x0, 32]	;# tmp178, D.7942
	str	q31, [x0, 48]	;# tmp179, D.7942
;# varargs-dll.c:1767:   int f = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 112]	;# _2, D.7942.c
	bl	atoi		;#
	str	w0, [sp, 408]	;#, f
;# varargs-dll.c:1768:   int g = va_arg (argv, int);
	ldr	x0, [sp, 32]	;# D.10224, argv
	add	x1, x0, 8	;# D.10225, D.10224,
	str	x1, [sp, 32]	;# D.10225, argv
	ldr	w0, [x0]	;# tmp180, MEM[(int *)_87]
	str	w0, [sp, 404]	;# tmp180, g
;# varargs-dll.c:1769:   long h = va_arg (argv, long);
	ldr	x0, [sp, 32]	;# D.10226, argv
	add	x1, x0, 8	;# D.10227, D.10226,
	str	x1, [sp, 32]	;# D.10227, argv
	ldr	w0, [x0]	;# tmp181, MEM[(long int *)_90]
	str	w0, [sp, 400]	;# tmp181, h
;# varargs-dll.c:1770:   int i = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 32]	;# D.10228, argv
	add	x1, x0, 8	;# D.10229, D.10228,
	str	x1, [sp, 32]	;# D.10229, argv
	ldr	x1, [x0]	;# D.10230, MEM[(struct composite * *)_93]
	add	x0, sp, 168	;# tmp182,,
	ldr	q28, [x1]	;# tmp184, *_96
	ldr	q29, [x1, 16]	;# tmp185, *_96
	ldr	q30, [x1, 32]	;# tmp186, *_96
	ldr	q31, [x1, 48]	;# tmp187, *_96
	str	q28, [x0]	;# tmp184, D.7943
	str	q29, [x0, 16]	;# tmp185, D.7943
	str	q30, [x0, 32]	;# tmp186, D.7943
	str	q31, [x0, 48]	;# tmp187, D.7943
;# varargs-dll.c:1770:   int i = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 176]	;# _3, D.7943.c
	bl	atoi		;#
	str	w0, [sp, 396]	;#, i
;# varargs-dll.c:1771:   int j = va_arg (argv, int);
	ldr	x0, [sp, 32]	;# D.10231, argv
	add	x1, x0, 8	;# D.10232, D.10231,
	str	x1, [sp, 32]	;# D.10232, argv
	ldr	w0, [x0]	;# tmp188, MEM[(int *)_98]
	str	w0, [sp, 392]	;# tmp188, j
;# varargs-dll.c:1772:   long k = va_arg (argv, long);
	ldr	x0, [sp, 32]	;# D.10233, argv
	add	x1, x0, 8	;# D.10234, D.10233,
	str	x1, [sp, 32]	;# D.10234, argv
	ldr	w0, [x0]	;# tmp189, MEM[(long int *)_101]
	str	w0, [sp, 388]	;# tmp189, k
;# varargs-dll.c:1773:   int l = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 32]	;# D.10235, argv
	add	x1, x0, 8	;# D.10236, D.10235,
	str	x1, [sp, 32]	;# D.10236, argv
	ldr	x1, [x0]	;# D.10237, MEM[(struct composite * *)_104]
	add	x0, sp, 232	;# tmp190,,
	ldr	q28, [x1]	;# tmp192, *_107
	ldr	q29, [x1, 16]	;# tmp193, *_107
	ldr	q30, [x1, 32]	;# tmp194, *_107
	ldr	q31, [x1, 48]	;# tmp195, *_107
	str	q28, [x0]	;# tmp192, D.7944
	str	q29, [x0, 16]	;# tmp193, D.7944
	str	q30, [x0, 32]	;# tmp194, D.7944
	str	q31, [x0, 48]	;# tmp195, D.7944
;# varargs-dll.c:1773:   int l = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 240]	;# _4, D.7944.c
	bl	atoi		;#
	str	w0, [sp, 384]	;#, l
;# varargs-dll.c:1774:   int m = va_arg (argv, int);
	ldr	x0, [sp, 32]	;# D.10238, argv
	add	x1, x0, 8	;# D.10239, D.10238,
	str	x1, [sp, 32]	;# D.10239, argv
	ldr	w0, [x0]	;# tmp196, MEM[(int *)_109]
	str	w0, [sp, 380]	;# tmp196, m
;# varargs-dll.c:1775:   long n = va_arg (argv, long);
	ldr	x0, [sp, 32]	;# D.10240, argv
	add	x1, x0, 8	;# D.10241, D.10240,
	str	x1, [sp, 32]	;# D.10241, argv
	ldr	w0, [x0]	;# tmp197, MEM[(long int *)_112]
	str	w0, [sp, 376]	;# tmp197, n
;# varargs-dll.c:1776:   int o = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 32]	;# D.10242, argv
	add	x1, x0, 8	;# D.10243, D.10242,
	str	x1, [sp, 32]	;# D.10243, argv
	ldr	x1, [x0]	;# D.10244, MEM[(struct composite * *)_115]
	add	x0, sp, 296	;# tmp198,,
	ldr	q28, [x1]	;# tmp200, *_118
	ldr	q29, [x1, 16]	;# tmp201, *_118
	ldr	q30, [x1, 32]	;# tmp202, *_118
	ldr	q31, [x1, 48]	;# tmp203, *_118
	str	q28, [x0]	;# tmp200, D.7945
	str	q29, [x0, 16]	;# tmp201, D.7945
	str	q30, [x0, 32]	;# tmp202, D.7945
	str	q31, [x0, 48]	;# tmp203, D.7945
;# varargs-dll.c:1776:   int o = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 304]	;# _5, D.7945.c
	bl	atoi		;#
	str	w0, [sp, 372]	;#, o
;# varargs-dll.c:1777:   int p = va_arg (argv, int);
	ldr	x0, [sp, 32]	;# D.10245, argv
	add	x1, x0, 8	;# D.10246, D.10245,
	str	x1, [sp, 32]	;# D.10246, argv
	ldr	w0, [x0]	;# tmp204, MEM[(int *)_120]
	str	w0, [sp, 368]	;# tmp204, p
;# varargs-dll.c:1778:   long q = va_arg (argv, long);
	ldr	x0, [sp, 32]	;# D.10247, argv
	add	x1, x0, 8	;# D.10248, D.10247,
	str	x1, [sp, 32]	;# D.10248, argv
	ldr	w0, [x0]	;# tmp205, MEM[(long int *)_123]
	str	w0, [sp, 364]	;# tmp205, q
;# varargs-dll.c:1780:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 428]	;# tmp206, a
	ldr	w0, [sp, 424]	;# tmp207, b
	add	w1, w1, w0	;# _6, tmp206, tmp207
;# varargs-dll.c:1780:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 420]	;# tmp208, c
	add	w1, w1, w0	;# _7, _6, tmp208
;# varargs-dll.c:1780:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 416]	;# tmp209, d
	add	w1, w1, w0	;# _8, _7, tmp209
;# varargs-dll.c:1780:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 412]	;# tmp210, e
	add	w1, w1, w0	;# _9, _8, tmp210
;# varargs-dll.c:1780:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 408]	;# tmp211, f
	add	w1, w1, w0	;# _10, _9, tmp211
;# varargs-dll.c:1780:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 404]	;# tmp212, g
	add	w1, w1, w0	;# _11, _10, tmp212
;# varargs-dll.c:1780:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 400]	;# tmp213, h
	add	w1, w1, w0	;# _12, _11, tmp213
;# varargs-dll.c:1780:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 396]	;# tmp214, i
	add	w1, w1, w0	;# _13, _12, tmp214
;# varargs-dll.c:1780:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 392]	;# tmp215, j
	add	w1, w1, w0	;# _14, _13, tmp215
;# varargs-dll.c:1780:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 388]	;# tmp216, k
	add	w1, w1, w0	;# _15, _14, tmp216
;# varargs-dll.c:1780:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 384]	;# tmp217, l
	add	w1, w1, w0	;# _16, _15, tmp217
;# varargs-dll.c:1780:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 380]	;# tmp218, m
	add	w1, w1, w0	;# _17, _16, tmp218
;# varargs-dll.c:1780:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 376]	;# tmp219, n
	add	w1, w1, w0	;# _18, _17, tmp219
;# varargs-dll.c:1780:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 372]	;# tmp220, o
	add	w1, w1, w0	;# _19, _18, tmp220
;# varargs-dll.c:1780:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 368]	;# tmp221, p
	add	w1, w1, w0	;# _20, _19, tmp221
;# varargs-dll.c:1780:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 364]	;# tmp222, q
	add	w0, w1, w0	;# _63, _20, tmp222
;# varargs-dll.c:1781: }
	ldp	x29, x30, [sp], 496	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_ints_and_composites
	.def	use_va_list_ints_and_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_ints_and_composites
use_va_list_ints_and_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3664]	;#,
	stp	x29, x30, [sp, -432]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 16]	;# argv, argv
;# varargs-dll.c:1786:   int a = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.10249, argv
	add	x1, x0, 8	;# D.10250, D.10249,
	str	x1, [sp, 16]	;# D.10250, argv
	ldr	w0, [x0]	;# tmp162, MEM[(int *)_62]
	str	w0, [sp, 428]	;# tmp162, a
;# varargs-dll.c:1787:   long b = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.10251, argv
	add	x1, x0, 8	;# D.10252, D.10251,
	str	x1, [sp, 16]	;# D.10252, argv
	ldr	w0, [x0]	;# tmp163, MEM[(long int *)_65]
	str	w0, [sp, 424]	;# tmp163, b
;# varargs-dll.c:1788:   int c = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 16]	;# D.10253, argv
	add	x1, x0, 8	;# D.10254, D.10253,
	str	x1, [sp, 16]	;# D.10254, argv
	ldr	x1, [x0]	;# D.10255, MEM[(struct composite * *)_68]
	add	x0, sp, 40	;# tmp164,,
	ldr	q28, [x1]	;# tmp166, *_71
	ldr	q29, [x1, 16]	;# tmp167, *_71
	ldr	q30, [x1, 32]	;# tmp168, *_71
	ldr	q31, [x1, 48]	;# tmp169, *_71
	str	q28, [x0]	;# tmp166, D.7949
	str	q29, [x0, 16]	;# tmp167, D.7949
	str	q30, [x0, 32]	;# tmp168, D.7949
	str	q31, [x0, 48]	;# tmp169, D.7949
;# varargs-dll.c:1788:   int c = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 48]	;# _1, D.7949.c
	bl	atoi		;#
	str	w0, [sp, 420]	;#, c
;# varargs-dll.c:1789:   int d = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.10256, argv
	add	x1, x0, 8	;# D.10257, D.10256,
	str	x1, [sp, 16]	;# D.10257, argv
	ldr	w0, [x0]	;# tmp170, MEM[(int *)_73]
	str	w0, [sp, 416]	;# tmp170, d
;# varargs-dll.c:1790:   long e = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.10258, argv
	add	x1, x0, 8	;# D.10259, D.10258,
	str	x1, [sp, 16]	;# D.10259, argv
	ldr	w0, [x0]	;# tmp171, MEM[(long int *)_76]
	str	w0, [sp, 412]	;# tmp171, e
;# varargs-dll.c:1791:   int f = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 16]	;# D.10260, argv
	add	x1, x0, 8	;# D.10261, D.10260,
	str	x1, [sp, 16]	;# D.10261, argv
	ldr	x1, [x0]	;# D.10262, MEM[(struct composite * *)_79]
	add	x0, sp, 104	;# tmp172,,
	ldr	q28, [x1]	;# tmp174, *_82
	ldr	q29, [x1, 16]	;# tmp175, *_82
	ldr	q30, [x1, 32]	;# tmp176, *_82
	ldr	q31, [x1, 48]	;# tmp177, *_82
	str	q28, [x0]	;# tmp174, D.7950
	str	q29, [x0, 16]	;# tmp175, D.7950
	str	q30, [x0, 32]	;# tmp176, D.7950
	str	q31, [x0, 48]	;# tmp177, D.7950
;# varargs-dll.c:1791:   int f = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 112]	;# _2, D.7950.c
	bl	atoi		;#
	str	w0, [sp, 408]	;#, f
;# varargs-dll.c:1792:   int g = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.10263, argv
	add	x1, x0, 8	;# D.10264, D.10263,
	str	x1, [sp, 16]	;# D.10264, argv
	ldr	w0, [x0]	;# tmp178, MEM[(int *)_84]
	str	w0, [sp, 404]	;# tmp178, g
;# varargs-dll.c:1793:   long h = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.10265, argv
	add	x1, x0, 8	;# D.10266, D.10265,
	str	x1, [sp, 16]	;# D.10266, argv
	ldr	w0, [x0]	;# tmp179, MEM[(long int *)_87]
	str	w0, [sp, 400]	;# tmp179, h
;# varargs-dll.c:1794:   int i = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 16]	;# D.10267, argv
	add	x1, x0, 8	;# D.10268, D.10267,
	str	x1, [sp, 16]	;# D.10268, argv
	ldr	x1, [x0]	;# D.10269, MEM[(struct composite * *)_90]
	add	x0, sp, 168	;# tmp180,,
	ldr	q28, [x1]	;# tmp182, *_93
	ldr	q29, [x1, 16]	;# tmp183, *_93
	ldr	q30, [x1, 32]	;# tmp184, *_93
	ldr	q31, [x1, 48]	;# tmp185, *_93
	str	q28, [x0]	;# tmp182, D.7951
	str	q29, [x0, 16]	;# tmp183, D.7951
	str	q30, [x0, 32]	;# tmp184, D.7951
	str	q31, [x0, 48]	;# tmp185, D.7951
;# varargs-dll.c:1794:   int i = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 176]	;# _3, D.7951.c
	bl	atoi		;#
	str	w0, [sp, 396]	;#, i
;# varargs-dll.c:1795:   int j = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.10270, argv
	add	x1, x0, 8	;# D.10271, D.10270,
	str	x1, [sp, 16]	;# D.10271, argv
	ldr	w0, [x0]	;# tmp186, MEM[(int *)_95]
	str	w0, [sp, 392]	;# tmp186, j
;# varargs-dll.c:1796:   long k = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.10272, argv
	add	x1, x0, 8	;# D.10273, D.10272,
	str	x1, [sp, 16]	;# D.10273, argv
	ldr	w0, [x0]	;# tmp187, MEM[(long int *)_98]
	str	w0, [sp, 388]	;# tmp187, k
;# varargs-dll.c:1797:   int l = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 16]	;# D.10274, argv
	add	x1, x0, 8	;# D.10275, D.10274,
	str	x1, [sp, 16]	;# D.10275, argv
	ldr	x1, [x0]	;# D.10276, MEM[(struct composite * *)_101]
	add	x0, sp, 232	;# tmp188,,
	ldr	q28, [x1]	;# tmp190, *_104
	ldr	q29, [x1, 16]	;# tmp191, *_104
	ldr	q30, [x1, 32]	;# tmp192, *_104
	ldr	q31, [x1, 48]	;# tmp193, *_104
	str	q28, [x0]	;# tmp190, D.7952
	str	q29, [x0, 16]	;# tmp191, D.7952
	str	q30, [x0, 32]	;# tmp192, D.7952
	str	q31, [x0, 48]	;# tmp193, D.7952
;# varargs-dll.c:1797:   int l = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 240]	;# _4, D.7952.c
	bl	atoi		;#
	str	w0, [sp, 384]	;#, l
;# varargs-dll.c:1798:   int m = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.10277, argv
	add	x1, x0, 8	;# D.10278, D.10277,
	str	x1, [sp, 16]	;# D.10278, argv
	ldr	w0, [x0]	;# tmp194, MEM[(int *)_106]
	str	w0, [sp, 380]	;# tmp194, m
;# varargs-dll.c:1799:   long n = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.10279, argv
	add	x1, x0, 8	;# D.10280, D.10279,
	str	x1, [sp, 16]	;# D.10280, argv
	ldr	w0, [x0]	;# tmp195, MEM[(long int *)_109]
	str	w0, [sp, 376]	;# tmp195, n
;# varargs-dll.c:1800:   int o = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 16]	;# D.10281, argv
	add	x1, x0, 8	;# D.10282, D.10281,
	str	x1, [sp, 16]	;# D.10282, argv
	ldr	x1, [x0]	;# D.10283, MEM[(struct composite * *)_112]
	add	x0, sp, 296	;# tmp196,,
	ldr	q28, [x1]	;# tmp198, *_115
	ldr	q29, [x1, 16]	;# tmp199, *_115
	ldr	q30, [x1, 32]	;# tmp200, *_115
	ldr	q31, [x1, 48]	;# tmp201, *_115
	str	q28, [x0]	;# tmp198, D.7953
	str	q29, [x0, 16]	;# tmp199, D.7953
	str	q30, [x0, 32]	;# tmp200, D.7953
	str	q31, [x0, 48]	;# tmp201, D.7953
;# varargs-dll.c:1800:   int o = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 304]	;# _5, D.7953.c
	bl	atoi		;#
	str	w0, [sp, 372]	;#, o
;# varargs-dll.c:1801:   int p = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.10284, argv
	add	x1, x0, 8	;# D.10285, D.10284,
	str	x1, [sp, 16]	;# D.10285, argv
	ldr	w0, [x0]	;# tmp202, MEM[(int *)_117]
	str	w0, [sp, 368]	;# tmp202, p
;# varargs-dll.c:1802:   long q = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.10286, argv
	add	x1, x0, 8	;# D.10287, D.10286,
	str	x1, [sp, 16]	;# D.10287, argv
	ldr	w0, [x0]	;# tmp203, MEM[(long int *)_120]
	str	w0, [sp, 364]	;# tmp203, q
;# varargs-dll.c:1803:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 428]	;# tmp204, a
	ldr	w0, [sp, 424]	;# tmp205, b
	add	w1, w1, w0	;# _6, tmp204, tmp205
;# varargs-dll.c:1803:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 420]	;# tmp206, c
	add	w1, w1, w0	;# _7, _6, tmp206
;# varargs-dll.c:1803:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 416]	;# tmp207, d
	add	w1, w1, w0	;# _8, _7, tmp207
;# varargs-dll.c:1803:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 412]	;# tmp208, e
	add	w1, w1, w0	;# _9, _8, tmp208
;# varargs-dll.c:1803:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 408]	;# tmp209, f
	add	w1, w1, w0	;# _10, _9, tmp209
;# varargs-dll.c:1803:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 404]	;# tmp210, g
	add	w1, w1, w0	;# _11, _10, tmp210
;# varargs-dll.c:1803:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 400]	;# tmp211, h
	add	w1, w1, w0	;# _12, _11, tmp211
;# varargs-dll.c:1803:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 396]	;# tmp212, i
	add	w1, w1, w0	;# _13, _12, tmp212
;# varargs-dll.c:1803:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 392]	;# tmp213, j
	add	w1, w1, w0	;# _14, _13, tmp213
;# varargs-dll.c:1803:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 388]	;# tmp214, k
	add	w1, w1, w0	;# _15, _14, tmp214
;# varargs-dll.c:1803:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 384]	;# tmp215, l
	add	w1, w1, w0	;# _16, _15, tmp215
;# varargs-dll.c:1803:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 380]	;# tmp216, m
	add	w1, w1, w0	;# _17, _16, tmp216
;# varargs-dll.c:1803:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 376]	;# tmp217, n
	add	w1, w1, w0	;# _18, _17, tmp217
;# varargs-dll.c:1803:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 372]	;# tmp218, o
	add	w1, w1, w0	;# _19, _18, tmp218
;# varargs-dll.c:1803:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 368]	;# tmp219, p
	add	w1, w1, w0	;# _20, _19, tmp219
;# varargs-dll.c:1803:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 364]	;# tmp220, q
	add	w0, w1, w0	;# _61, _20, tmp220
;# varargs-dll.c:1804: }
	ldp	x29, x30, [sp], 432	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_ints_and_floats
	.def	use_va_args_ints_and_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_ints_and_floats
use_va_args_ints_and_floats:
	sub	sp, sp, #192	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp, 136]	;#,
	str	x2, [sp, 144]	;#,
	str	x3, [sp, 152]	;#,
	str	x4, [sp, 160]	;#,
	str	x5, [sp, 168]	;#,
	str	x6, [sp, 176]	;#,
	str	x7, [sp, 184]	;#,
;# varargs-dll.c:1811:   va_start (argv, format);
	add	x0, sp, 192	;# tmp161,,
	sub	x0, x0, #56	;# tmp162, tmp161,
	str	x0, [sp, 16]	;# tmp162, MEM[(char * *)&argv]
;# varargs-dll.c:1812:   int a = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.10288, argv
	add	x1, x0, 8	;# D.10289, D.10288,
	str	x1, [sp, 16]	;# D.10289, argv
	ldr	w0, [x0]	;# tmp163, MEM[(int *)_64]
	str	w0, [sp, 124]	;# tmp163, a
;# varargs-dll.c:1813:   long b = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.10290, argv
	add	x1, x0, 8	;# D.10291, D.10290,
	str	x1, [sp, 16]	;# D.10291, argv
	ldr	w0, [x0]	;# tmp164, MEM[(long int *)_67]
	str	w0, [sp, 120]	;# tmp164, b
;# varargs-dll.c:1814:   double c = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.10292, argv
	add	x1, x0, 8	;# D.10293, D.10292,
	str	x1, [sp, 16]	;# D.10293, argv
	ldr	d31, [x0]	;# tmp165, MEM[(double *)_70]
	str	d31, [sp, 112]	;# tmp165, c
;# varargs-dll.c:1815:   double d = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.10294, argv
	add	x1, x0, 8	;# D.10295, D.10294,
	str	x1, [sp, 16]	;# D.10295, argv
	ldr	d31, [x0]	;# tmp166, MEM[(double *)_73]
	str	d31, [sp, 104]	;# tmp166, d
;# varargs-dll.c:1816:   int e = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.10296, argv
	add	x1, x0, 8	;# D.10297, D.10296,
	str	x1, [sp, 16]	;# D.10297, argv
	ldr	w0, [x0]	;# tmp167, MEM[(int *)_76]
	str	w0, [sp, 100]	;# tmp167, e
;# varargs-dll.c:1817:   long f = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.10298, argv
	add	x1, x0, 8	;# D.10299, D.10298,
	str	x1, [sp, 16]	;# D.10299, argv
	ldr	w0, [x0]	;# tmp168, MEM[(long int *)_79]
	str	w0, [sp, 96]	;# tmp168, f
;# varargs-dll.c:1818:   double g = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.10300, argv
	add	x1, x0, 8	;# D.10301, D.10300,
	str	x1, [sp, 16]	;# D.10301, argv
	ldr	d31, [x0]	;# tmp169, MEM[(double *)_82]
	str	d31, [sp, 88]	;# tmp169, g
;# varargs-dll.c:1819:   double h = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.10302, argv
	add	x1, x0, 8	;# D.10303, D.10302,
	str	x1, [sp, 16]	;# D.10303, argv
	ldr	d31, [x0]	;# tmp170, MEM[(double *)_85]
	str	d31, [sp, 80]	;# tmp170, h
;# varargs-dll.c:1820:   int i = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.10304, argv
	add	x1, x0, 8	;# D.10305, D.10304,
	str	x1, [sp, 16]	;# D.10305, argv
	ldr	w0, [x0]	;# tmp171, MEM[(int *)_88]
	str	w0, [sp, 76]	;# tmp171, i
;# varargs-dll.c:1821:   long j = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.10306, argv
	add	x1, x0, 8	;# D.10307, D.10306,
	str	x1, [sp, 16]	;# D.10307, argv
	ldr	w0, [x0]	;# tmp172, MEM[(long int *)_91]
	str	w0, [sp, 72]	;# tmp172, j
;# varargs-dll.c:1822:   double k = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.10308, argv
	add	x1, x0, 8	;# D.10309, D.10308,
	str	x1, [sp, 16]	;# D.10309, argv
	ldr	d31, [x0]	;# tmp173, MEM[(double *)_94]
	str	d31, [sp, 64]	;# tmp173, k
;# varargs-dll.c:1823:   double l = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.10310, argv
	add	x1, x0, 8	;# D.10311, D.10310,
	str	x1, [sp, 16]	;# D.10311, argv
	ldr	d31, [x0]	;# tmp174, MEM[(double *)_97]
	str	d31, [sp, 56]	;# tmp174, l
;# varargs-dll.c:1824:   int m = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.10312, argv
	add	x1, x0, 8	;# D.10313, D.10312,
	str	x1, [sp, 16]	;# D.10313, argv
	ldr	w0, [x0]	;# tmp175, MEM[(int *)_100]
	str	w0, [sp, 52]	;# tmp175, m
;# varargs-dll.c:1825:   long n = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.10314, argv
	add	x1, x0, 8	;# D.10315, D.10314,
	str	x1, [sp, 16]	;# D.10315, argv
	ldr	w0, [x0]	;# tmp176, MEM[(long int *)_103]
	str	w0, [sp, 48]	;# tmp176, n
;# varargs-dll.c:1826:   double o = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.10316, argv
	add	x1, x0, 8	;# D.10317, D.10316,
	str	x1, [sp, 16]	;# D.10317, argv
	ldr	d31, [x0]	;# tmp177, MEM[(double *)_106]
	str	d31, [sp, 40]	;# tmp177, o
;# varargs-dll.c:1827:   double p = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.10318, argv
	add	x1, x0, 8	;# D.10319, D.10318,
	str	x1, [sp, 16]	;# D.10319, argv
	ldr	d31, [x0]	;# tmp178, MEM[(double *)_109]
	str	d31, [sp, 32]	;# tmp178, p
;# varargs-dll.c:1828:   int q = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.10320, argv
	add	x1, x0, 8	;# D.10321, D.10320,
	str	x1, [sp, 16]	;# D.10321, argv
	ldr	w0, [x0]	;# tmp179, MEM[(int *)_112]
	str	w0, [sp, 28]	;# tmp179, q
;# varargs-dll.c:1830:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 124]	;# tmp180, a
	ldr	w0, [sp, 120]	;# tmp181, b
	add	w0, w1, w0	;# _1, tmp180, tmp181
;# varargs-dll.c:1830:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	scvtf	d30, w0	;# _2, _1
	ldr	d31, [sp, 112]	;# tmp182, c
	fadd	d30, d30, d31	;# _3, _2, tmp182
;# varargs-dll.c:1830:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 104]	;# tmp183, d
	fadd	d30, d30, d31	;# _4, _3, tmp183
;# varargs-dll.c:1830:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 100]	;# tmp184, e
	scvtf	d31, w0	;# _5, tmp184
	fadd	d30, d30, d31	;# _6, _4, _5
;# varargs-dll.c:1830:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 96]	;# tmp185, f
	scvtf	d31, w0	;# _7, tmp185
	fadd	d30, d30, d31	;# _8, _6, _7
;# varargs-dll.c:1830:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 88]	;# tmp186, g
	fadd	d30, d30, d31	;# _9, _8, tmp186
;# varargs-dll.c:1830:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 80]	;# tmp187, h
	fadd	d30, d30, d31	;# _10, _9, tmp187
;# varargs-dll.c:1830:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 76]	;# tmp188, i
	scvtf	d31, w0	;# _11, tmp188
	fadd	d30, d30, d31	;# _12, _10, _11
;# varargs-dll.c:1830:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 72]	;# tmp189, j
	scvtf	d31, w0	;# _13, tmp189
	fadd	d30, d30, d31	;# _14, _12, _13
;# varargs-dll.c:1830:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 64]	;# tmp190, k
	fadd	d30, d30, d31	;# _15, _14, tmp190
;# varargs-dll.c:1830:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 56]	;# tmp191, l
	fadd	d30, d30, d31	;# _16, _15, tmp191
;# varargs-dll.c:1830:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 52]	;# tmp192, m
	scvtf	d31, w0	;# _17, tmp192
	fadd	d30, d30, d31	;# _18, _16, _17
;# varargs-dll.c:1830:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 48]	;# tmp193, n
	scvtf	d31, w0	;# _19, tmp193
	fadd	d30, d30, d31	;# _20, _18, _19
;# varargs-dll.c:1830:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 40]	;# tmp194, o
	fadd	d30, d30, d31	;# _21, _20, tmp194
;# varargs-dll.c:1830:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 32]	;# tmp195, p
	fadd	d30, d30, d31	;# _22, _21, tmp195
;# varargs-dll.c:1830:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 28]	;# tmp196, q
	scvtf	d31, w0	;# _23, tmp196
	fadd	d31, d30, d31	;# _24, _22, _23
	fcvtzs	w0, d31	;# _62, _24
;# varargs-dll.c:1831: }
	add	sp, sp, 192	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_ints_and_floats
	.def	use_va_list_ints_and_floats;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_ints_and_floats
use_va_list_ints_and_floats:
	sub	sp, sp, #128	;#,,
	.seh_endprologue
	str	x0, [sp, 8]	;# format, format
	str	x1, [sp]	;# argv, argv
;# varargs-dll.c:1837:   int a = va_arg (argv, int);
	ldr	x0, [sp]	;# D.10322, argv
	add	x1, x0, 8	;# D.10323, D.10322,
	str	x1, [sp]	;# D.10323, argv
	ldr	w0, [x0]	;# tmp161, MEM[(int *)_61]
	str	w0, [sp, 124]	;# tmp161, a
;# varargs-dll.c:1838:   long b = va_arg (argv, long);
	ldr	x0, [sp]	;# D.10324, argv
	add	x1, x0, 8	;# D.10325, D.10324,
	str	x1, [sp]	;# D.10325, argv
	ldr	w0, [x0]	;# tmp162, MEM[(long int *)_64]
	str	w0, [sp, 120]	;# tmp162, b
;# varargs-dll.c:1839:   double c = va_arg (argv, double);
	ldr	x0, [sp]	;# D.10326, argv
	add	x1, x0, 8	;# D.10327, D.10326,
	str	x1, [sp]	;# D.10327, argv
	ldr	d31, [x0]	;# tmp163, MEM[(double *)_67]
	str	d31, [sp, 112]	;# tmp163, c
;# varargs-dll.c:1840:   double d = va_arg (argv, double);
	ldr	x0, [sp]	;# D.10328, argv
	add	x1, x0, 8	;# D.10329, D.10328,
	str	x1, [sp]	;# D.10329, argv
	ldr	d31, [x0]	;# tmp164, MEM[(double *)_70]
	str	d31, [sp, 104]	;# tmp164, d
;# varargs-dll.c:1841:   int e = va_arg (argv, int);
	ldr	x0, [sp]	;# D.10330, argv
	add	x1, x0, 8	;# D.10331, D.10330,
	str	x1, [sp]	;# D.10331, argv
	ldr	w0, [x0]	;# tmp165, MEM[(int *)_73]
	str	w0, [sp, 100]	;# tmp165, e
;# varargs-dll.c:1842:   long f = va_arg (argv, long);
	ldr	x0, [sp]	;# D.10332, argv
	add	x1, x0, 8	;# D.10333, D.10332,
	str	x1, [sp]	;# D.10333, argv
	ldr	w0, [x0]	;# tmp166, MEM[(long int *)_76]
	str	w0, [sp, 96]	;# tmp166, f
;# varargs-dll.c:1843:   double g = va_arg (argv, double);
	ldr	x0, [sp]	;# D.10334, argv
	add	x1, x0, 8	;# D.10335, D.10334,
	str	x1, [sp]	;# D.10335, argv
	ldr	d31, [x0]	;# tmp167, MEM[(double *)_79]
	str	d31, [sp, 88]	;# tmp167, g
;# varargs-dll.c:1844:   double h = va_arg (argv, double);
	ldr	x0, [sp]	;# D.10336, argv
	add	x1, x0, 8	;# D.10337, D.10336,
	str	x1, [sp]	;# D.10337, argv
	ldr	d31, [x0]	;# tmp168, MEM[(double *)_82]
	str	d31, [sp, 80]	;# tmp168, h
;# varargs-dll.c:1845:   int i = va_arg (argv, int);
	ldr	x0, [sp]	;# D.10338, argv
	add	x1, x0, 8	;# D.10339, D.10338,
	str	x1, [sp]	;# D.10339, argv
	ldr	w0, [x0]	;# tmp169, MEM[(int *)_85]
	str	w0, [sp, 76]	;# tmp169, i
;# varargs-dll.c:1846:   long j = va_arg (argv, long);
	ldr	x0, [sp]	;# D.10340, argv
	add	x1, x0, 8	;# D.10341, D.10340,
	str	x1, [sp]	;# D.10341, argv
	ldr	w0, [x0]	;# tmp170, MEM[(long int *)_88]
	str	w0, [sp, 72]	;# tmp170, j
;# varargs-dll.c:1847:   double k = va_arg (argv, double);
	ldr	x0, [sp]	;# D.10342, argv
	add	x1, x0, 8	;# D.10343, D.10342,
	str	x1, [sp]	;# D.10343, argv
	ldr	d31, [x0]	;# tmp171, MEM[(double *)_91]
	str	d31, [sp, 64]	;# tmp171, k
;# varargs-dll.c:1848:   double l = va_arg (argv, double);
	ldr	x0, [sp]	;# D.10344, argv
	add	x1, x0, 8	;# D.10345, D.10344,
	str	x1, [sp]	;# D.10345, argv
	ldr	d31, [x0]	;# tmp172, MEM[(double *)_94]
	str	d31, [sp, 56]	;# tmp172, l
;# varargs-dll.c:1849:   int m = va_arg (argv, int);
	ldr	x0, [sp]	;# D.10346, argv
	add	x1, x0, 8	;# D.10347, D.10346,
	str	x1, [sp]	;# D.10347, argv
	ldr	w0, [x0]	;# tmp173, MEM[(int *)_97]
	str	w0, [sp, 52]	;# tmp173, m
;# varargs-dll.c:1850:   long n = va_arg (argv, long);
	ldr	x0, [sp]	;# D.10348, argv
	add	x1, x0, 8	;# D.10349, D.10348,
	str	x1, [sp]	;# D.10349, argv
	ldr	w0, [x0]	;# tmp174, MEM[(long int *)_100]
	str	w0, [sp, 48]	;# tmp174, n
;# varargs-dll.c:1851:   double o = va_arg (argv, double);
	ldr	x0, [sp]	;# D.10350, argv
	add	x1, x0, 8	;# D.10351, D.10350,
	str	x1, [sp]	;# D.10351, argv
	ldr	d31, [x0]	;# tmp175, MEM[(double *)_103]
	str	d31, [sp, 40]	;# tmp175, o
;# varargs-dll.c:1852:   double p = va_arg (argv, double);
	ldr	x0, [sp]	;# D.10352, argv
	add	x1, x0, 8	;# D.10353, D.10352,
	str	x1, [sp]	;# D.10353, argv
	ldr	d31, [x0]	;# tmp176, MEM[(double *)_106]
	str	d31, [sp, 32]	;# tmp176, p
;# varargs-dll.c:1853:   int q = va_arg (argv, int);
	ldr	x0, [sp]	;# D.10354, argv
	add	x1, x0, 8	;# D.10355, D.10354,
	str	x1, [sp]	;# D.10355, argv
	ldr	w0, [x0]	;# tmp177, MEM[(int *)_109]
	str	w0, [sp, 28]	;# tmp177, q
;# varargs-dll.c:1854:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 124]	;# tmp178, a
	ldr	w0, [sp, 120]	;# tmp179, b
	add	w0, w1, w0	;# _1, tmp178, tmp179
;# varargs-dll.c:1854:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	scvtf	d30, w0	;# _2, _1
	ldr	d31, [sp, 112]	;# tmp180, c
	fadd	d30, d30, d31	;# _3, _2, tmp180
;# varargs-dll.c:1854:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 104]	;# tmp181, d
	fadd	d30, d30, d31	;# _4, _3, tmp181
;# varargs-dll.c:1854:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 100]	;# tmp182, e
	scvtf	d31, w0	;# _5, tmp182
	fadd	d30, d30, d31	;# _6, _4, _5
;# varargs-dll.c:1854:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 96]	;# tmp183, f
	scvtf	d31, w0	;# _7, tmp183
	fadd	d30, d30, d31	;# _8, _6, _7
;# varargs-dll.c:1854:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 88]	;# tmp184, g
	fadd	d30, d30, d31	;# _9, _8, tmp184
;# varargs-dll.c:1854:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 80]	;# tmp185, h
	fadd	d30, d30, d31	;# _10, _9, tmp185
;# varargs-dll.c:1854:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 76]	;# tmp186, i
	scvtf	d31, w0	;# _11, tmp186
	fadd	d30, d30, d31	;# _12, _10, _11
;# varargs-dll.c:1854:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 72]	;# tmp187, j
	scvtf	d31, w0	;# _13, tmp187
	fadd	d30, d30, d31	;# _14, _12, _13
;# varargs-dll.c:1854:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 64]	;# tmp188, k
	fadd	d30, d30, d31	;# _15, _14, tmp188
;# varargs-dll.c:1854:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 56]	;# tmp189, l
	fadd	d30, d30, d31	;# _16, _15, tmp189
;# varargs-dll.c:1854:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 52]	;# tmp190, m
	scvtf	d31, w0	;# _17, tmp190
	fadd	d30, d30, d31	;# _18, _16, _17
;# varargs-dll.c:1854:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 48]	;# tmp191, n
	scvtf	d31, w0	;# _19, tmp191
	fadd	d30, d30, d31	;# _20, _18, _19
;# varargs-dll.c:1854:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 40]	;# tmp192, o
	fadd	d30, d30, d31	;# _21, _20, tmp192
;# varargs-dll.c:1854:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 32]	;# tmp193, p
	fadd	d30, d30, d31	;# _22, _21, tmp193
;# varargs-dll.c:1854:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 28]	;# tmp194, q
	scvtf	d31, w0	;# _23, tmp194
	fadd	d31, d30, d31	;# _24, _22, _23
	fcvtzs	w0, d31	;# _60, _24
;# varargs-dll.c:1855: }
	add	sp, sp, 128	;#,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_args_ints_floats_and_composites
	.def	use_va_args_ints_floats_and_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args_ints_floats_and_composites
use_va_args_ints_floats_and_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3696]	;#,
	stp	x29, x30, [sp, -400]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 344]	;#,
	str	x2, [sp, 352]	;#,
	str	x3, [sp, 360]	;#,
	str	x4, [sp, 368]	;#,
	str	x5, [sp, 376]	;#,
	str	x6, [sp, 384]	;#,
	str	x7, [sp, 392]	;#,
;# varargs-dll.c:1862:   va_start (argv, format);
	add	x0, sp, 400	;# tmp167,,
	sub	x0, x0, #56	;# tmp168, tmp167,
	str	x0, [sp, 32]	;# tmp168, MEM[(char * *)&argv]
;# varargs-dll.c:1863:   int a = va_arg (argv, int);
	ldr	x0, [sp, 32]	;# D.10356, argv
	add	x1, x0, 8	;# D.10357, D.10356,
	str	x1, [sp, 32]	;# D.10357, argv
	ldr	w0, [x0]	;# tmp169, MEM[(int *)_68]
	str	w0, [sp, 332]	;# tmp169, a
;# varargs-dll.c:1864:   long b = va_arg (argv, long);
	ldr	x0, [sp, 32]	;# D.10358, argv
	add	x1, x0, 8	;# D.10359, D.10358,
	str	x1, [sp, 32]	;# D.10359, argv
	ldr	w0, [x0]	;# tmp170, MEM[(long int *)_71]
	str	w0, [sp, 328]	;# tmp170, b
;# varargs-dll.c:1865:   double c = va_arg (argv, double);
	ldr	x0, [sp, 32]	;# D.10360, argv
	add	x1, x0, 8	;# D.10361, D.10360,
	str	x1, [sp, 32]	;# D.10361, argv
	ldr	d31, [x0]	;# tmp171, MEM[(double *)_74]
	str	d31, [sp, 320]	;# tmp171, c
;# varargs-dll.c:1866:   double d = va_arg (argv, double);
	ldr	x0, [sp, 32]	;# D.10362, argv
	add	x1, x0, 8	;# D.10363, D.10362,
	str	x1, [sp, 32]	;# D.10363, argv
	ldr	d31, [x0]	;# tmp172, MEM[(double *)_77]
	str	d31, [sp, 312]	;# tmp172, d
;# varargs-dll.c:1867:   int e = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 32]	;# D.10364, argv
	add	x1, x0, 8	;# D.10365, D.10364,
	str	x1, [sp, 32]	;# D.10365, argv
	ldr	x1, [x0]	;# D.10366, MEM[(struct composite * *)_80]
	add	x0, sp, 40	;# tmp173,,
	ldr	q28, [x1]	;# tmp175, *_83
	ldr	q29, [x1, 16]	;# tmp176, *_83
	ldr	q30, [x1, 32]	;# tmp177, *_83
	ldr	q31, [x1, 48]	;# tmp178, *_83
	str	q28, [x0]	;# tmp175, D.7961
	str	q29, [x0, 16]	;# tmp176, D.7961
	str	q30, [x0, 32]	;# tmp177, D.7961
	str	q31, [x0, 48]	;# tmp178, D.7961
;# varargs-dll.c:1867:   int e = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 44]	;# tmp179, D.7961.b
	str	w0, [sp, 308]	;# tmp179, e
;# varargs-dll.c:1868:   int f = va_arg (argv, int);
	ldr	x0, [sp, 32]	;# D.10367, argv
	add	x1, x0, 8	;# D.10368, D.10367,
	str	x1, [sp, 32]	;# D.10368, argv
	ldr	w0, [x0]	;# tmp180, MEM[(int *)_85]
	str	w0, [sp, 304]	;# tmp180, f
;# varargs-dll.c:1869:   long g = va_arg (argv, long);
	ldr	x0, [sp, 32]	;# D.10369, argv
	add	x1, x0, 8	;# D.10370, D.10369,
	str	x1, [sp, 32]	;# D.10370, argv
	ldr	w0, [x0]	;# tmp181, MEM[(long int *)_88]
	str	w0, [sp, 300]	;# tmp181, g
;# varargs-dll.c:1870:   double h = va_arg (argv, double);
	ldr	x0, [sp, 32]	;# D.10371, argv
	add	x1, x0, 8	;# D.10372, D.10371,
	str	x1, [sp, 32]	;# D.10372, argv
	ldr	d31, [x0]	;# tmp182, MEM[(double *)_91]
	str	d31, [sp, 288]	;# tmp182, h
;# varargs-dll.c:1871:   double i = va_arg (argv, double);
	ldr	x0, [sp, 32]	;# D.10373, argv
	add	x1, x0, 8	;# D.10374, D.10373,
	str	x1, [sp, 32]	;# D.10374, argv
	ldr	d31, [x0]	;# tmp183, MEM[(double *)_94]
	str	d31, [sp, 280]	;# tmp183, i
;# varargs-dll.c:1872:   char j = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 32]	;# D.10375, argv
	add	x1, x0, 8	;# D.10376, D.10375,
	str	x1, [sp, 32]	;# D.10376, argv
	ldr	x1, [x0]	;# D.10377, MEM[(struct composite * *)_97]
	add	x0, sp, 104	;# tmp184,,
	ldr	q28, [x1]	;# tmp186, *_100
	ldr	q29, [x1, 16]	;# tmp187, *_100
	ldr	q30, [x1, 32]	;# tmp188, *_100
	ldr	q31, [x1, 48]	;# tmp189, *_100
	str	q28, [x0]	;# tmp186, D.7962
	str	q29, [x0, 16]	;# tmp187, D.7962
	str	q30, [x0, 32]	;# tmp188, D.7962
	str	q31, [x0, 48]	;# tmp189, D.7962
;# varargs-dll.c:1872:   char j = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 104]	;# tmp190, D.7962.a
	strb	w0, [sp, 279]	;# tmp190, j
;# varargs-dll.c:1873:   int k = va_arg (argv, int);
	ldr	x0, [sp, 32]	;# D.10378, argv
	add	x1, x0, 8	;# D.10379, D.10378,
	str	x1, [sp, 32]	;# D.10379, argv
	ldr	w0, [x0]	;# tmp191, MEM[(int *)_102]
	str	w0, [sp, 272]	;# tmp191, k
;# varargs-dll.c:1874:   long l = va_arg (argv, long);
	ldr	x0, [sp, 32]	;# D.10380, argv
	add	x1, x0, 8	;# D.10381, D.10380,
	str	x1, [sp, 32]	;# D.10381, argv
	ldr	w0, [x0]	;# tmp192, MEM[(long int *)_105]
	str	w0, [sp, 268]	;# tmp192, l
;# varargs-dll.c:1875:   double m = va_arg (argv, double);
	ldr	x0, [sp, 32]	;# D.10382, argv
	add	x1, x0, 8	;# D.10383, D.10382,
	str	x1, [sp, 32]	;# D.10383, argv
	ldr	d31, [x0]	;# tmp193, MEM[(double *)_108]
	str	d31, [sp, 256]	;# tmp193, m
;# varargs-dll.c:1876:   double n = va_arg (argv, double);
	ldr	x0, [sp, 32]	;# D.10384, argv
	add	x1, x0, 8	;# D.10385, D.10384,
	str	x1, [sp, 32]	;# D.10385, argv
	ldr	d31, [x0]	;# tmp194, MEM[(double *)_111]
	str	d31, [sp, 248]	;# tmp194, n
;# varargs-dll.c:1877:   int o = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 32]	;# D.10386, argv
	add	x1, x0, 8	;# D.10387, D.10386,
	str	x1, [sp, 32]	;# D.10387, argv
	ldr	x1, [x0]	;# D.10388, MEM[(struct composite * *)_114]
	add	x0, sp, 168	;# tmp195,,
	ldr	q28, [x1]	;# tmp197, *_117
	ldr	q29, [x1, 16]	;# tmp198, *_117
	ldr	q30, [x1, 32]	;# tmp199, *_117
	ldr	q31, [x1, 48]	;# tmp200, *_117
	str	q28, [x0]	;# tmp197, D.7963
	str	q29, [x0, 16]	;# tmp198, D.7963
	str	q30, [x0, 32]	;# tmp199, D.7963
	str	q31, [x0, 48]	;# tmp200, D.7963
;# varargs-dll.c:1877:   int o = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 176]	;# _1, D.7963.c
	bl	atoi		;#
	str	w0, [sp, 244]	;#, o
;# varargs-dll.c:1878:   int p = va_arg (argv, int);
	ldr	x0, [sp, 32]	;# D.10389, argv
	add	x1, x0, 8	;# D.10390, D.10389,
	str	x1, [sp, 32]	;# D.10390, argv
	ldr	w0, [x0]	;# tmp201, MEM[(int *)_119]
	str	w0, [sp, 240]	;# tmp201, p
;# varargs-dll.c:1879:   long q = va_arg (argv, long);
	ldr	x0, [sp, 32]	;# D.10391, argv
	add	x1, x0, 8	;# D.10392, D.10391,
	str	x1, [sp, 32]	;# D.10392, argv
	ldr	w0, [x0]	;# tmp202, MEM[(long int *)_122]
	str	w0, [sp, 236]	;# tmp202, q
;# varargs-dll.c:1881:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 332]	;# tmp203, a
	ldr	w0, [sp, 328]	;# tmp204, b
	add	w0, w1, w0	;# _2, tmp203, tmp204
;# varargs-dll.c:1881:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	scvtf	d30, w0	;# _3, _2
	ldr	d31, [sp, 320]	;# tmp205, c
	fadd	d30, d30, d31	;# _4, _3, tmp205
;# varargs-dll.c:1881:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 312]	;# tmp206, d
	fadd	d30, d30, d31	;# _5, _4, tmp206
;# varargs-dll.c:1881:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 308]	;# tmp207, e
	scvtf	d31, w0	;# _6, tmp207
	fadd	d30, d30, d31	;# _7, _5, _6
;# varargs-dll.c:1881:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 304]	;# tmp208, f
	scvtf	d31, w0	;# _8, tmp208
	fadd	d30, d30, d31	;# _9, _7, _8
;# varargs-dll.c:1881:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 300]	;# tmp209, g
	scvtf	d31, w0	;# _10, tmp209
	fadd	d30, d30, d31	;# _11, _9, _10
;# varargs-dll.c:1881:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 288]	;# tmp210, h
	fadd	d30, d30, d31	;# _12, _11, tmp210
;# varargs-dll.c:1881:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 280]	;# tmp211, i
	fadd	d30, d30, d31	;# _13, _12, tmp211
;# varargs-dll.c:1881:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldrsb	w0, [sp, 279]	;# tmp212, j
	scvtf	d31, w0	;# _14, tmp212
	fadd	d30, d30, d31	;# _15, _13, _14
;# varargs-dll.c:1881:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 272]	;# tmp213, k
	scvtf	d31, w0	;# _16, tmp213
	fadd	d30, d30, d31	;# _17, _15, _16
;# varargs-dll.c:1881:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 268]	;# tmp214, l
	scvtf	d31, w0	;# _18, tmp214
	fadd	d30, d30, d31	;# _19, _17, _18
;# varargs-dll.c:1881:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 256]	;# tmp215, m
	fadd	d30, d30, d31	;# _20, _19, tmp215
;# varargs-dll.c:1881:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 248]	;# tmp216, n
	fadd	d30, d30, d31	;# _21, _20, tmp216
;# varargs-dll.c:1881:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 244]	;# tmp217, o
	scvtf	d31, w0	;# _22, tmp217
	fadd	d30, d30, d31	;# _23, _21, _22
;# varargs-dll.c:1881:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 240]	;# tmp218, p
	scvtf	d31, w0	;# _24, tmp218
	fadd	d30, d30, d31	;# _25, _23, _24
;# varargs-dll.c:1881:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 236]	;# tmp219, q
	scvtf	d31, w0	;# _26, tmp219
	fadd	d31, d30, d31	;# _27, _25, _26
	fcvtzs	w0, d31	;# _66, _27
;# varargs-dll.c:1882: }
	ldp	x29, x30, [sp], 400	;#,,,
	ret	
	.seh_endproc
	.align	2
	.global	use_va_list_ints_floats_and_composites
	.def	use_va_list_ints_floats_and_composites;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_list_ints_floats_and_composites
use_va_list_ints_floats_and_composites:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 3760]	;#,
	stp	x29, x30, [sp, -336]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
	str	x0, [sp, 24]	;# format, format
	str	x1, [sp, 16]	;# argv, argv
;# varargs-dll.c:1888:   int a = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.10393, argv
	add	x1, x0, 8	;# D.10394, D.10393,
	str	x1, [sp, 16]	;# D.10394, argv
	ldr	w0, [x0]	;# tmp167, MEM[(int *)_65]
	str	w0, [sp, 332]	;# tmp167, a
;# varargs-dll.c:1889:   long b = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.10395, argv
	add	x1, x0, 8	;# D.10396, D.10395,
	str	x1, [sp, 16]	;# D.10396, argv
	ldr	w0, [x0]	;# tmp168, MEM[(long int *)_68]
	str	w0, [sp, 328]	;# tmp168, b
;# varargs-dll.c:1890:   double c = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.10397, argv
	add	x1, x0, 8	;# D.10398, D.10397,
	str	x1, [sp, 16]	;# D.10398, argv
	ldr	d31, [x0]	;# tmp169, MEM[(double *)_71]
	str	d31, [sp, 320]	;# tmp169, c
;# varargs-dll.c:1891:   double d = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.10399, argv
	add	x1, x0, 8	;# D.10400, D.10399,
	str	x1, [sp, 16]	;# D.10400, argv
	ldr	d31, [x0]	;# tmp170, MEM[(double *)_74]
	str	d31, [sp, 312]	;# tmp170, d
;# varargs-dll.c:1892:   int e = va_arg (argv, struct composite).b;
	ldr	x0, [sp, 16]	;# D.10401, argv
	add	x1, x0, 8	;# D.10402, D.10401,
	str	x1, [sp, 16]	;# D.10402, argv
	ldr	x1, [x0]	;# D.10403, MEM[(struct composite * *)_77]
	add	x0, sp, 40	;# tmp171,,
	ldr	q28, [x1]	;# tmp173, *_80
	ldr	q29, [x1, 16]	;# tmp174, *_80
	ldr	q30, [x1, 32]	;# tmp175, *_80
	ldr	q31, [x1, 48]	;# tmp176, *_80
	str	q28, [x0]	;# tmp173, D.7967
	str	q29, [x0, 16]	;# tmp174, D.7967
	str	q30, [x0, 32]	;# tmp175, D.7967
	str	q31, [x0, 48]	;# tmp176, D.7967
;# varargs-dll.c:1892:   int e = va_arg (argv, struct composite).b;
	ldr	w0, [sp, 44]	;# tmp177, D.7967.b
	str	w0, [sp, 308]	;# tmp177, e
;# varargs-dll.c:1893:   int f = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.10404, argv
	add	x1, x0, 8	;# D.10405, D.10404,
	str	x1, [sp, 16]	;# D.10405, argv
	ldr	w0, [x0]	;# tmp178, MEM[(int *)_82]
	str	w0, [sp, 304]	;# tmp178, f
;# varargs-dll.c:1894:   long g = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.10406, argv
	add	x1, x0, 8	;# D.10407, D.10406,
	str	x1, [sp, 16]	;# D.10407, argv
	ldr	w0, [x0]	;# tmp179, MEM[(long int *)_85]
	str	w0, [sp, 300]	;# tmp179, g
;# varargs-dll.c:1895:   double h = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.10408, argv
	add	x1, x0, 8	;# D.10409, D.10408,
	str	x1, [sp, 16]	;# D.10409, argv
	ldr	d31, [x0]	;# tmp180, MEM[(double *)_88]
	str	d31, [sp, 288]	;# tmp180, h
;# varargs-dll.c:1896:   double i = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.10410, argv
	add	x1, x0, 8	;# D.10411, D.10410,
	str	x1, [sp, 16]	;# D.10411, argv
	ldr	d31, [x0]	;# tmp181, MEM[(double *)_91]
	str	d31, [sp, 280]	;# tmp181, i
;# varargs-dll.c:1897:   char j = va_arg (argv, struct composite).a;
	ldr	x0, [sp, 16]	;# D.10412, argv
	add	x1, x0, 8	;# D.10413, D.10412,
	str	x1, [sp, 16]	;# D.10413, argv
	ldr	x1, [x0]	;# D.10414, MEM[(struct composite * *)_94]
	add	x0, sp, 104	;# tmp182,,
	ldr	q28, [x1]	;# tmp184, *_97
	ldr	q29, [x1, 16]	;# tmp185, *_97
	ldr	q30, [x1, 32]	;# tmp186, *_97
	ldr	q31, [x1, 48]	;# tmp187, *_97
	str	q28, [x0]	;# tmp184, D.7968
	str	q29, [x0, 16]	;# tmp185, D.7968
	str	q30, [x0, 32]	;# tmp186, D.7968
	str	q31, [x0, 48]	;# tmp187, D.7968
;# varargs-dll.c:1897:   char j = va_arg (argv, struct composite).a;
	ldrb	w0, [sp, 104]	;# tmp188, D.7968.a
	strb	w0, [sp, 279]	;# tmp188, j
;# varargs-dll.c:1898:   int k = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.10415, argv
	add	x1, x0, 8	;# D.10416, D.10415,
	str	x1, [sp, 16]	;# D.10416, argv
	ldr	w0, [x0]	;# tmp189, MEM[(int *)_99]
	str	w0, [sp, 272]	;# tmp189, k
;# varargs-dll.c:1899:   long l = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.10417, argv
	add	x1, x0, 8	;# D.10418, D.10417,
	str	x1, [sp, 16]	;# D.10418, argv
	ldr	w0, [x0]	;# tmp190, MEM[(long int *)_102]
	str	w0, [sp, 268]	;# tmp190, l
;# varargs-dll.c:1900:   double m = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.10419, argv
	add	x1, x0, 8	;# D.10420, D.10419,
	str	x1, [sp, 16]	;# D.10420, argv
	ldr	d31, [x0]	;# tmp191, MEM[(double *)_105]
	str	d31, [sp, 256]	;# tmp191, m
;# varargs-dll.c:1901:   double n = va_arg (argv, double);
	ldr	x0, [sp, 16]	;# D.10421, argv
	add	x1, x0, 8	;# D.10422, D.10421,
	str	x1, [sp, 16]	;# D.10422, argv
	ldr	d31, [x0]	;# tmp192, MEM[(double *)_108]
	str	d31, [sp, 248]	;# tmp192, n
;# varargs-dll.c:1902:   int o = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 16]	;# D.10423, argv
	add	x1, x0, 8	;# D.10424, D.10423,
	str	x1, [sp, 16]	;# D.10424, argv
	ldr	x1, [x0]	;# D.10425, MEM[(struct composite * *)_111]
	add	x0, sp, 168	;# tmp193,,
	ldr	q28, [x1]	;# tmp195, *_114
	ldr	q29, [x1, 16]	;# tmp196, *_114
	ldr	q30, [x1, 32]	;# tmp197, *_114
	ldr	q31, [x1, 48]	;# tmp198, *_114
	str	q28, [x0]	;# tmp195, D.7969
	str	q29, [x0, 16]	;# tmp196, D.7969
	str	q30, [x0, 32]	;# tmp197, D.7969
	str	q31, [x0, 48]	;# tmp198, D.7969
;# varargs-dll.c:1902:   int o = atoi (va_arg (argv, struct composite).c);
	ldr	x0, [sp, 176]	;# _1, D.7969.c
	bl	atoi		;#
	str	w0, [sp, 244]	;#, o
;# varargs-dll.c:1903:   int p = va_arg (argv, int);
	ldr	x0, [sp, 16]	;# D.10426, argv
	add	x1, x0, 8	;# D.10427, D.10426,
	str	x1, [sp, 16]	;# D.10427, argv
	ldr	w0, [x0]	;# tmp199, MEM[(int *)_116]
	str	w0, [sp, 240]	;# tmp199, p
;# varargs-dll.c:1904:   long q = va_arg (argv, long);
	ldr	x0, [sp, 16]	;# D.10428, argv
	add	x1, x0, 8	;# D.10429, D.10428,
	str	x1, [sp, 16]	;# D.10429, argv
	ldr	w0, [x0]	;# tmp200, MEM[(long int *)_119]
	str	w0, [sp, 236]	;# tmp200, q
;# varargs-dll.c:1905:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w1, [sp, 332]	;# tmp201, a
	ldr	w0, [sp, 328]	;# tmp202, b
	add	w0, w1, w0	;# _2, tmp201, tmp202
;# varargs-dll.c:1905:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	scvtf	d30, w0	;# _3, _2
	ldr	d31, [sp, 320]	;# tmp203, c
	fadd	d30, d30, d31	;# _4, _3, tmp203
;# varargs-dll.c:1905:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 312]	;# tmp204, d
	fadd	d30, d30, d31	;# _5, _4, tmp204
;# varargs-dll.c:1905:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 308]	;# tmp205, e
	scvtf	d31, w0	;# _6, tmp205
	fadd	d30, d30, d31	;# _7, _5, _6
;# varargs-dll.c:1905:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 304]	;# tmp206, f
	scvtf	d31, w0	;# _8, tmp206
	fadd	d30, d30, d31	;# _9, _7, _8
;# varargs-dll.c:1905:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 300]	;# tmp207, g
	scvtf	d31, w0	;# _10, tmp207
	fadd	d30, d30, d31	;# _11, _9, _10
;# varargs-dll.c:1905:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 288]	;# tmp208, h
	fadd	d30, d30, d31	;# _12, _11, tmp208
;# varargs-dll.c:1905:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 280]	;# tmp209, i
	fadd	d30, d30, d31	;# _13, _12, tmp209
;# varargs-dll.c:1905:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldrsb	w0, [sp, 279]	;# tmp210, j
	scvtf	d31, w0	;# _14, tmp210
	fadd	d30, d30, d31	;# _15, _13, _14
;# varargs-dll.c:1905:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 272]	;# tmp211, k
	scvtf	d31, w0	;# _16, tmp211
	fadd	d30, d30, d31	;# _17, _15, _16
;# varargs-dll.c:1905:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 268]	;# tmp212, l
	scvtf	d31, w0	;# _18, tmp212
	fadd	d30, d30, d31	;# _19, _17, _18
;# varargs-dll.c:1905:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 256]	;# tmp213, m
	fadd	d30, d30, d31	;# _20, _19, tmp213
;# varargs-dll.c:1905:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	d31, [sp, 248]	;# tmp214, n
	fadd	d30, d30, d31	;# _21, _20, tmp214
;# varargs-dll.c:1905:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 244]	;# tmp215, o
	scvtf	d31, w0	;# _22, tmp215
	fadd	d30, d30, d31	;# _23, _21, _22
;# varargs-dll.c:1905:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 240]	;# tmp216, p
	scvtf	d31, w0	;# _24, tmp216
	fadd	d30, d30, d31	;# _25, _23, _24
;# varargs-dll.c:1905:   return a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q;
	ldr	w0, [sp, 236]	;# tmp217, q
	scvtf	d31, w0	;# _26, tmp217
	fadd	d31, d30, d31	;# _27, _25, _26
	fcvtzs	w0, d31	;# _64, _27
;# varargs-dll.c:1906: }
	ldp	x29, x30, [sp], 336	;#,,,
	ret	
	.seh_endproc
	.def	atoi;	.scl	2;	.type	32;	.endef
