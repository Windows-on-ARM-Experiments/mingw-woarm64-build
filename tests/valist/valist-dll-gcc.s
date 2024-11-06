	.arch armv8-a
;# GNU C17 (GCC) version 15.0.0 20241106 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
;# options passed: -march=armv8-a -mtune=cortex-a53 -ggdb -O0
	.text
.Ltext0:
	.align	2
	.global	use_va_args
	.def	use_va_args;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args
use_va_args:
.LFB0:
.LM1:
	sub	sp, sp, #208	;#,,
.LCFI0:
	.seh_endprologue
	str	x0, [sp, 144]	;#,
	str	x1, [sp, 152]	;#,
	str	x2, [sp, 160]	;#,
	str	x3, [sp, 168]	;#,
	str	x4, [sp, 176]	;#,
	str	x5, [sp, 184]	;#,
	str	x6, [sp, 192]	;#,
	str	x7, [sp, 200]	;#,
	str	q0, [sp, 16]	;#,
	str	q1, [sp, 32]	;#,
	str	q2, [sp, 48]	;#,
	str	q3, [sp, 64]	;#,
	str	q4, [sp, 80]	;#,
	str	q5, [sp, 96]	;#,
	str	q6, [sp, 112]	;#,
	str	q7, [sp, 128]	;#,
;# valist-dll.c:7:   va_start (argv, format);
.LM2:
	add	x0, sp, 216	;# tmp107,,
	sub	x0, x0, #64	;# tmp108, tmp107,
	str	x0, [sp]	;# tmp108, MEM[(void * *)&argv]
;# valist-dll.c:8:   int a = va_arg (argv, int);
.LM3:
	ldr	x0, [sp]	;# D.4426, argv
	add	x1, x0, 8	;# D.4427, D.4426,
	str	x1, [sp]	;# D.4427, argv
	ldr	w0, [x0]	;# tmp109, MEM[(int *)_10]
	str	w0, [sp, 12]	;# tmp109, a
;# valist-dll.c:9:   int b = va_arg (argv, int);
.LM4:
	ldr	x0, [sp]	;# D.4428, argv
	add	x1, x0, 8	;# D.4429, D.4428,
	str	x1, [sp]	;# D.4429, argv
	ldr	w0, [x0]	;# tmp110, MEM[(int *)_13]
	str	w0, [sp, 8]	;# tmp110, b
;# valist-dll.c:11:   return a + b;
.LM5:
	ldr	w1, [sp, 12]	;# tmp111, a
	ldr	w0, [sp, 8]	;# tmp112, b
	add	w0, w1, w0	;# _8, tmp111, tmp112
;# valist-dll.c:12: }
.LM6:
	add	sp, sp, 208	;#,,
.LCFI1:
	ret	
.LFE0:
	.seh_endproc
	.section	.debug_frame,"dr"
.Lframe0:
	.word	.LECIE0-.LSCIE0
.LSCIE0:
	.word	0xffffffff
	.byte	0x3
	.ascii "\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x1e
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
.LECIE0:
.LSFDE0:
	.word	.LEFDE0-.LASFDE0
.LASFDE0:
	.secrel32	.Lframe0
	.xword	.LFB0
	.xword	.LFE0-.LFB0
	.byte	0x4
	.word	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0xd0
	.byte	0x4
	.word	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0
	.align	3
.LEFDE0:
	.text
.Letext0:
	.section	.debug_info,"dr"
.Ldebug_info0:
	.word	0x168
	.hword	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x4
	.ascii "GNU C17 15.0.0 20241106 (experimental) -march=armv8-a -mtune=cortex-a53 -ggdb -O0\0"
	.byte	0x1d
	.ascii "valist-dll.c\0"
	.ascii "/home/blachex/mingw-woarm64-build/tests/valist\0"
	.xword	.Ltext0
	.xword	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.ascii "__gnuc_va_list\0"
	.byte	0x28
	.byte	0x1b
	.word	0xc6
	.uleb128 0x5
	.byte	0x8
	.ascii "__builtin_va_list\0"
	.uleb128 0x2
	.ascii "va_list\0"
	.byte	0x67
	.byte	0x18
	.word	0xb0
	.uleb128 0x6
	.ascii "use_va_args\0"
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.word	0x151
	.xword	.LFB0
	.xword	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.word	0x151
	.uleb128 0x7
	.ascii "format\0"
	.byte	0x1
	.byte	0x4
	.byte	0x1a
	.word	0x158
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.uleb128 0x1
	.ascii "argv\0"
	.byte	0x6
	.byte	0xb
	.word	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1
	.ascii "a\0"
	.byte	0x8
	.byte	0x7
	.word	0x151
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x1
	.ascii "b\0"
	.byte	0x9
	.byte	0x7
	.word	0x151
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x9
	.byte	0x8
	.word	0x166
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0xa
	.word	0x15e
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.ascii "valist-dll.c\0"
	.byte	0
	.ascii "valist-dll.c\0"
	.byte	0
	.ascii "stdarg.h\0"
	.byte	0x1
.LELTP0:
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM1
	.byte	0x1b
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
	.uleb128 0x7
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM4
	.byte	0x18
	.byte	0x5
	.uleb128 0x7
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM5
	.byte	0x19
	.byte	0x5
	.uleb128 0xc
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM6
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
