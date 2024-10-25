	.arch armv8-a
;# GNU C23 (GCC) version 15.0.0 20241219 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
;# options passed: -march=armv8-a -mtune=cortex-a53 -ggdb -O0
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	test_reloc
	.def	test_reloc;	.scl	2;	.type	32;	.endef
	.seh_proc	test_reloc
test_reloc:
.LFB0:
.LM1:
	.cfi_startproc
	.seh_endprologue
;# reloc-dll.c:2:   return 0;
.LM2:
	mov	w0, 0	;# _1,
;# reloc-dll.c:3: }
.LM3:
	ret	
	.cfi_endproc
.LFE0:
	.seh_endproc
.Letext0:
	.section	.debug_info,"dr"
.Ldebug_info0:
	.word	0xd8
	.hword	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x1
	.ascii "GNU C23 15.0.0 20241219 (experimental) -march=armv8-a -mtune=cortex-a53 -ggdb -O0\0"
	.byte	0x1d
	.ascii "reloc-dll.c\0"
	.ascii "/home/blachex/mingw-woarm64-build/tests/valist\0"
	.xword	.Ltext0
	.xword	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.ascii "test_reloc\0"
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.word	0xd4
	.xword	.LFB0
	.xword	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.ascii "reloc-dll.c\0"
	.byte	0
	.ascii "reloc-dll.c\0"
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM1
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM2
	.byte	0x18
	.byte	0x5
	.uleb128 0xa
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.xword	.LM3
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
