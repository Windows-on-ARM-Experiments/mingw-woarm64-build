	.arch armv8-a
;# GNU C17 (GCC) version 15.0.0 20241106 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
;# options passed: -march=armv8-a -mtune=cortex-a53 -ggdb -O0
	.text
.Ltext0:
	.section	.rdata,"dr"
	.align	3
.LC0:
	.ascii "%d\12\0"
	.text
	.align	2
	.global	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB0:
.LM1:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4032]	;#,
	sub	sp, sp, #64	;#,,
.LCFI0:
	stp	x29, x30, [sp, 32]	;#,,
.LCFI1:
	add	x29, sp, 32	;#,,
	.seh_endprologue
	str	w0, [sp, 60]	;# argc, argc
	str	x1, [sp, 48]	;# argv, argv
;# valist-use-dll.c:7: {
.LM2:
	bl	__main		;#
;# valist-use-dll.c:8:   return use_va_args ("%d\n", 11, 22);
.LM3:
	mov	w0, 22	;# tmp103,
	str	w0, [sp, 16]	;# tmp103,
	mov	w0, 11	;# tmp104,
	str	w0, [sp, 8]	;# tmp104,
	adrp	x0, .LC0	;# tmp106,
	add	x0, x0, :lo12:.LC0	;# tmp105, tmp106,
	str	x0, [sp]	;# tmp105,
	ldr	x0, [sp]	;#,
	ldr	x1, [sp, 8]	;#,
	ldr	x2, [sp, 16]	;#,
	ldr	x3, [sp, 24]	;#,
	ldr	x4, [sp, 32]	;#,
	ldr	x5, [sp, 40]	;#,
	ldr	x6, [sp, 48]	;#,
	ldr	x7, [sp, 56]	;#,
	bl	use_va_args		;#
;# valist-use-dll.c:9: }
.LM4:
	ldp	x29, x30, [sp, 32]	;#,,
	add	sp, sp, 64	;#,,
.LCFI2:
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
	.uleb128 0x40
	.byte	0x4
	.word	.LCFI1-.LCFI0
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.word	.LCFI2-.LCFI1
	.byte	0xdd
	.byte	0xde
	.byte	0xe
	.uleb128 0
	.align	3
.LEFDE0:
	.text
.Letext0:
	.section	.debug_info,"dr"
.Ldebug_info0:
	.word	0x133
	.hword	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x4
	.ascii "GNU C17 15.0.0 20241106 (experimental) -march=armv8-a -mtune=cortex-a53 -ggdb -O0\0"
	.byte	0x1d
	.ascii "valist-use-dll.c\0"
	.ascii "/home/blachex/mingw-woarm64-build/tests/valist\0"
	.xword	.Ltext0
	.xword	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x5
	.ascii "use_va_args\0"
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.word	0xd3
	.word	0xd3
	.uleb128 0x6
	.word	0xda
	.uleb128 0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x1
	.word	0xe7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x8
	.word	0xdf
	.uleb128 0x9
	.ascii "main\0"
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.word	0xd3
	.xword	.LFB0
	.xword	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.word	0x12c
	.uleb128 0x3
	.ascii "argc\0"
	.byte	0xb
	.word	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x3
	.ascii "argv\0"
	.byte	0x17
	.word	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1
	.word	0x131
	.uleb128 0x1
	.word	0xdf
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x1
	.ascii "/home/blachex/mingw-woarm64-build/tests/valist\0"
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x8
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x2
	.ascii "valist-use-dll.c\0"
	.byte	0
	.ascii "valist-use-dll.c\0"
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM1
	.byte	0x1d
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM2
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM3
	.byte	0x18
	.byte	0x5
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM4
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
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	use_va_args;	.scl	2;	.type	32;	.endef
