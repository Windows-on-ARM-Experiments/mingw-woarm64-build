	.arch armv8-a
;# GNU C23 (GCC) version 15.0.0 20241219 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
;# options passed: -march=armv8-a -mtune=cortex-a53 -ggdb -O0
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	use_va_args
	.def	use_va_args;	.scl	2;	.type	32;	.endef
	.seh_proc	use_va_args
use_va_args:
.LFB0:
.LM1:
	.cfi_startproc
	sub	sp, sp, #80	;#,,
	.cfi_def_cfa_offset 80
	.seh_endprologue
	str	x0, [sp, 16]	;#,
	str	x1, [sp, 24]	;#,
	str	x2, [sp, 32]	;#,
	str	x3, [sp, 40]	;#,
	str	x4, [sp, 48]	;#,
	str	x5, [sp, 56]	;#,
	str	x6, [sp, 64]	;#,
	str	x7, [sp, 72]	;#,
;# valist-dll.c:7:   va_start (argv, format);
.LM2:
	add	x0, sp, 88	;# tmp105,,
	str	x0, [sp]	;# tmp105, MEM[(char * *)&argv]
;# valist-dll.c:8:   int a = va_arg (argv, int);
.LM3:
	ldr	x0, [sp]	;# D.4470, argv
	ldr	w0, [x0]	;# tmp106, MEM[(int *)_10]
	str	w0, [sp, 12]	;# tmp106, a
;# valist-dll.c:9:   int b = va_arg (argv, int);
.LM4:
	ldr	x0, [sp]	;# D.4471, argv
	ldr	w0, [x0]	;# tmp107, MEM[(int *)_11]
	str	w0, [sp, 8]	;# tmp107, b
;# valist-dll.c:11:   return a + b;
.LM5:
	ldr	w1, [sp, 12]	;# tmp108, a
	ldr	w0, [sp, 8]	;# tmp109, b
	add	w0, w1, w0	;# _8, tmp108, tmp109
;# valist-dll.c:12: }
.LM6:
	add	sp, sp, 80	;#,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.seh_endproc
.Letext0:
	.section	.debug_info,"dr"
.Ldebug_info0:
	.word	0x16c
	.hword	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x4
	.ascii "GNU C23 15.0.0 20241219 (experimental) -march=armv8-a -mtune=cortex-a53 -ggdb -O0\0"
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
	.word	0xde
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x6
	.word	0xde
	.uleb128 0x2
	.ascii "va_list\0"
	.byte	0x67
	.byte	0x18
	.word	0xb0
	.uleb128 0x7
	.ascii "use_va_args\0"
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.word	0x162
	.xword	.LFB0
	.xword	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.word	0x162
	.uleb128 0x8
	.ascii "format\0"
	.byte	0x1
	.byte	0x4
	.byte	0x1a
	.word	0x169
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1
	.ascii "argv\0"
	.byte	0x6
	.byte	0xb
	.word	0xeb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.ascii "a\0"
	.byte	0x8
	.byte	0x7
	.word	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.ascii "b\0"
	.byte	0x9
	.byte	0x7
	.word	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0xa
	.byte	0x8
	.word	0xe6
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
