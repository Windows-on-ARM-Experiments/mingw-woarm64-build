	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"valist-use-dll.c"
	.def	test_va_list;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list                    // -- Begin function test_va_list
	.p2align	2
test_va_list:                           // @test_va_list
.Lfunc_begin0:
	.file	1 "/home/blachex/mingw-woarm64-build/tests/valist" "valist-use-dll.c"
	.loc	1 20 0                          // valist-use-dll.c:20:0
.seh_proc test_va_list
// %bb.0:
	sub	sp, sp, #112
	.seh_stackalloc	112
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x7, [sp, #104]
	str	x6, [sp, #96]
	str	x5, [sp, #88]
	str	x4, [sp, #80]
	str	x3, [sp, #72]
	str	x2, [sp, #64]
	str	x1, [sp, #56]
	str	x0, [sp, #24]
	add	x8, sp, #56
.Ltmp0:
	.loc	1 22 3 prologue_end             // valist-use-dll.c:22:3
	str	x8, [sp, #16]
	.loc	1 23 29                         // valist-use-dll.c:23:29
	ldr	x0, [sp, #24]
	.loc	1 23 37 is_stmt 0               // valist-use-dll.c:23:37
	ldr	x1, [sp, #16]
	.loc	1 23 16                         // valist-use-dll.c:23:16
	adrp	x8, __imp_use_va_list
	ldr	x8, [x8, :lo12:__imp_use_va_list]
	blr	x8
	.loc	1 23 7                          // valist-use-dll.c:23:7
	str	w0, [sp, #12]
	.loc	1 25 10 is_stmt 1               // valist-use-dll.c:25:10
	ldr	w0, [sp, #12]
	.loc	1 25 3 is_stmt 0                // valist-use-dll.c:25:3
	.seh_startepilogue
	ldr	x30, [sp, #32]                  // 8-byte Folded Reload
	.seh_save_reg	x30, 32
	add	sp, sp, #112
	.seh_stackalloc	112
	.seh_endepilogue
	ret
.Ltmp1:
.Lfunc_end0:
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_indirect_va_list;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list            // -- Begin function use_indirect_va_list
	.p2align	2
use_indirect_va_list:                   // @use_indirect_va_list
.Lfunc_begin1:
	.loc	1 30 0 is_stmt 1                // valist-use-dll.c:30:0
.seh_proc use_indirect_va_list
// %bb.0:
	sub	sp, sp, #32
	.seh_stackalloc	32
	str	x30, [sp, #16]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 16
	.seh_endprologue
	str	x0, [sp, #8]
	str	x1, [sp]
.Ltmp2:
	.loc	1 31 23 prologue_end            // valist-use-dll.c:31:23
	ldr	x0, [sp, #8]
	.loc	1 31 31 is_stmt 0               // valist-use-dll.c:31:31
	ldr	x1, [sp]
	.loc	1 31 10                         // valist-use-dll.c:31:10
	adrp	x8, __imp_use_va_list
	ldr	x8, [x8, :lo12:__imp_use_va_list]
	blr	x8
	.loc	1 31 3                          // valist-use-dll.c:31:3
	.seh_startepilogue
	ldr	x30, [sp, #16]                  // 8-byte Folded Reload
	.seh_save_reg	x30, 16
	add	sp, sp, #32
	.seh_stackalloc	32
	.seh_endepilogue
	ret
.Ltmp3:
.Lfunc_end1:
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	test_indirect_va_list;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list           // -- Begin function test_indirect_va_list
	.p2align	2
test_indirect_va_list:                  // @test_indirect_va_list
.Lfunc_begin2:
	.loc	1 36 0 is_stmt 1                // valist-use-dll.c:36:0
.seh_proc test_indirect_va_list
// %bb.0:
	sub	sp, sp, #112
	.seh_stackalloc	112
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x7, [sp, #104]
	str	x6, [sp, #96]
	str	x5, [sp, #88]
	str	x4, [sp, #80]
	str	x3, [sp, #72]
	str	x2, [sp, #64]
	str	x1, [sp, #56]
	str	x0, [sp, #24]
	add	x8, sp, #56
.Ltmp4:
	.loc	1 38 3 prologue_end             // valist-use-dll.c:38:3
	str	x8, [sp, #16]
	.loc	1 39 38                         // valist-use-dll.c:39:38
	ldr	x0, [sp, #24]
	.loc	1 39 46 is_stmt 0               // valist-use-dll.c:39:46
	ldr	x1, [sp, #16]
	.loc	1 39 16                         // valist-use-dll.c:39:16
	bl	use_indirect_va_list
	.loc	1 39 7                          // valist-use-dll.c:39:7
	str	w0, [sp, #12]
	.loc	1 41 10 is_stmt 1               // valist-use-dll.c:41:10
	ldr	w0, [sp, #12]
	.loc	1 41 3 is_stmt 0                // valist-use-dll.c:41:3
	.seh_startepilogue
	ldr	x30, [sp, #32]                  // 8-byte Folded Reload
	.seh_save_reg	x30, 32
	add	sp, sp, #112
	.seh_stackalloc	112
	.seh_endepilogue
	ret
.Ltmp5:
.Lfunc_end2:
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                            // -- Begin function main
	.p2align	2
main:                                   // @main
.Lfunc_begin3:
	.loc	1 53 0 is_stmt 1                // valist-use-dll.c:53:0
.seh_proc main
// %bb.0:
	stp	x19, x20, [sp, #-32]!           // 16-byte Folded Spill
	.seh_save_regp_x	x19, 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	.seh_save_fplr	16
	sub	sp, sp, #720
	.seh_stackalloc	720
	.seh_endprologue
	mov	w8, wzr
	str	w8, [sp, #716]
	str	w0, [sp, #712]
	str	x1, [sp, #704]
.Ltmp6:
	.loc	1 54 36 prologue_end            // valist-use-dll.c:54:36
	adrp	x9, .L__const.main.nsv12_a
	add	x9, x9, :lo12:.L__const.main.nsv12_a
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #696]
	str	x8, [sp, #688]
	.loc	1 55 36                         // valist-use-dll.c:55:36
	adrp	x9, .L__const.main.nsv12_b
	add	x9, x9, :lo12:.L__const.main.nsv12_b
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #680]
	str	x8, [sp, #672]
	.loc	1 56 36                         // valist-use-dll.c:56:36
	adrp	x9, .L__const.main.nsv12_c
	add	x9, x9, :lo12:.L__const.main.nsv12_c
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #664]
	str	x8, [sp, #656]
	.loc	1 57 36                         // valist-use-dll.c:57:36
	adrp	x9, .L__const.main.nsv12_d
	add	x9, x9, :lo12:.L__const.main.nsv12_d
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #648]
	str	x8, [sp, #640]
	.loc	1 58 36                         // valist-use-dll.c:58:36
	adrp	x9, .L__const.main.nsv12_e
	add	x9, x9, :lo12:.L__const.main.nsv12_e
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #632]
	str	x8, [sp, #624]
	.loc	1 59 36                         // valist-use-dll.c:59:36
	adrp	x9, .L__const.main.nsv12_f
	add	x9, x9, :lo12:.L__const.main.nsv12_f
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #616]
	str	x8, [sp, #608]
	.loc	1 60 36                         // valist-use-dll.c:60:36
	adrp	x9, .L__const.main.nsv12_g
	add	x9, x9, :lo12:.L__const.main.nsv12_g
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #600]
	str	x8, [sp, #592]
	.loc	1 61 36                         // valist-use-dll.c:61:36
	adrp	x9, .L__const.main.nsv12_h
	add	x9, x9, :lo12:.L__const.main.nsv12_h
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #584]
	str	x8, [sp, #576]
	.loc	1 62 36                         // valist-use-dll.c:62:36
	adrp	x9, .L__const.main.nsv12_i
	add	x9, x9, :lo12:.L__const.main.nsv12_i
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #568]
	str	x8, [sp, #560]
	.loc	1 64 15                         // valist-use-dll.c:64:15
	ldr	x8, [sp, #688]
	ldr	w9, [sp, #696]
	str	w9, [sp, #544]
	str	x8, [sp, #536]
	ldr	x2, [sp, #544]
	ldr	x1, [sp, #536]
	ldr	x8, [sp, #672]
	ldr	w9, [sp, #680]
	str	w9, [sp, #528]
	str	x8, [sp, #520]
	ldr	x4, [sp, #528]
	ldr	x3, [sp, #520]
	ldr	x8, [sp, #656]
	ldr	w9, [sp, #664]
	str	w9, [sp, #512]
	str	x8, [sp, #504]
	ldr	x6, [sp, #512]
	ldr	x5, [sp, #504]
	ldr	x8, [sp, #640]
	ldr	w9, [sp, #648]
	str	w9, [sp, #496]
	str	x8, [sp, #488]
	ldr	x8, [sp, #488]
	ldr	x10, [sp, #496]
	ldr	x9, [sp, #624]
	ldr	w11, [sp, #632]
	str	w11, [sp, #480]
	str	x9, [sp, #472]
	ldr	x11, [sp, #472]
	ldr	x12, [sp, #480]
	ldr	x9, [sp, #608]
	ldr	w13, [sp, #616]
	str	w13, [sp, #464]
	str	x9, [sp, #456]
	ldr	x13, [sp, #456]
	ldr	x14, [sp, #464]
	ldr	x9, [sp, #592]
	ldr	w15, [sp, #600]
	str	w15, [sp, #448]
	str	x9, [sp, #440]
	ldr	x15, [sp, #440]
	ldr	x16, [sp, #448]
	ldr	x9, [sp, #576]
	ldr	w17, [sp, #584]
	str	w17, [sp, #432]
	str	x9, [sp, #424]
	ldr	x17, [sp, #424]
	ldr	x0, [sp, #432]
	ldr	x9, [sp, #560]
	ldr	w7, [sp, #568]
	str	w7, [sp, #416]
	str	x9, [sp, #408]
	ldr	x7, [sp, #408]
	ldr	x19, [sp, #416]
	mov	x9, sp
	str	x19, [x9, #88]
	str	x7, [x9, #80]
	str	x0, [x9, #72]
	str	x17, [x9, #64]
	str	x16, [x9, #56]
	str	x15, [x9, #48]
	str	x14, [x9, #40]
	str	x13, [x9, #32]
	str	x12, [x9, #24]
	str	x11, [x9, #16]
	str	x10, [x9, #8]
	str	x8, [x9]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	str	x0, [sp, #96]                   // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args
	ldr	x8, [x8, :lo12:__imp_use_va_args]
	blr	x8
	mov	w8, w0
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	.loc	1 64 7 is_stmt 0                // valist-use-dll.c:64:7
	str	w8, [sp, #556]
	.loc	1 66 15 is_stmt 1               // valist-use-dll.c:66:15
	ldr	x8, [sp, #688]
	ldr	w9, [sp, #696]
	str	w9, [sp, #392]
	str	x8, [sp, #384]
	ldr	x2, [sp, #392]
	ldr	x1, [sp, #384]
	ldr	x8, [sp, #672]
	ldr	w9, [sp, #680]
	str	w9, [sp, #376]
	str	x8, [sp, #368]
	ldr	x4, [sp, #376]
	ldr	x3, [sp, #368]
	ldr	x8, [sp, #656]
	ldr	w9, [sp, #664]
	str	w9, [sp, #360]
	str	x8, [sp, #352]
	ldr	x6, [sp, #360]
	ldr	x5, [sp, #352]
	ldr	x8, [sp, #640]
	ldr	w9, [sp, #648]
	str	w9, [sp, #344]
	str	x8, [sp, #336]
	ldr	x8, [sp, #336]
	ldr	x10, [sp, #344]
	ldr	x9, [sp, #624]
	ldr	w11, [sp, #632]
	str	w11, [sp, #328]
	str	x9, [sp, #320]
	ldr	x11, [sp, #320]
	ldr	x12, [sp, #328]
	ldr	x9, [sp, #608]
	ldr	w13, [sp, #616]
	str	w13, [sp, #312]
	str	x9, [sp, #304]
	ldr	x13, [sp, #304]
	ldr	x14, [sp, #312]
	ldr	x9, [sp, #592]
	ldr	w15, [sp, #600]
	str	w15, [sp, #296]
	str	x9, [sp, #288]
	ldr	x15, [sp, #288]
	ldr	x16, [sp, #296]
	ldr	x9, [sp, #576]
	ldr	w17, [sp, #584]
	str	w17, [sp, #280]
	str	x9, [sp, #272]
	ldr	x17, [sp, #272]
	ldr	x7, [sp, #280]
	ldr	x9, [sp, #560]
	ldr	w19, [sp, #568]
	str	w19, [sp, #264]
	str	x9, [sp, #256]
	ldr	x19, [sp, #256]
	ldr	x20, [sp, #264]
	mov	x9, sp
	str	x20, [x9, #88]
	str	x19, [x9, #80]
	str	x7, [x9, #72]
	str	x17, [x9, #64]
	str	x16, [x9, #56]
	str	x15, [x9, #48]
	str	x14, [x9, #40]
	str	x13, [x9, #32]
	str	x12, [x9, #24]
	str	x11, [x9, #16]
	str	x10, [x9, #8]
	str	x8, [x9]
	bl	test_va_list
	mov	w8, w0
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	.loc	1 66 7 is_stmt 0                // valist-use-dll.c:66:7
	str	w8, [sp, #404]
	.loc	1 68 15 is_stmt 1               // valist-use-dll.c:68:15
	ldr	x8, [sp, #688]
	ldr	w9, [sp, #696]
	str	w9, [sp, #240]
	str	x8, [sp, #232]
	ldr	x2, [sp, #240]
	ldr	x1, [sp, #232]
	ldr	x8, [sp, #672]
	ldr	w9, [sp, #680]
	str	w9, [sp, #224]
	str	x8, [sp, #216]
	ldr	x4, [sp, #224]
	ldr	x3, [sp, #216]
	ldr	x8, [sp, #656]
	ldr	w9, [sp, #664]
	str	w9, [sp, #208]
	str	x8, [sp, #200]
	ldr	x6, [sp, #208]
	ldr	x5, [sp, #200]
	ldr	x8, [sp, #640]
	ldr	w9, [sp, #648]
	str	w9, [sp, #192]
	str	x8, [sp, #184]
	ldr	x8, [sp, #184]
	ldr	x10, [sp, #192]
	ldr	x9, [sp, #624]
	ldr	w11, [sp, #632]
	str	w11, [sp, #176]
	str	x9, [sp, #168]
	ldr	x11, [sp, #168]
	ldr	x12, [sp, #176]
	ldr	x9, [sp, #608]
	ldr	w13, [sp, #616]
	str	w13, [sp, #160]
	str	x9, [sp, #152]
	ldr	x13, [sp, #152]
	ldr	x14, [sp, #160]
	ldr	x9, [sp, #592]
	ldr	w15, [sp, #600]
	str	w15, [sp, #144]
	str	x9, [sp, #136]
	ldr	x15, [sp, #136]
	ldr	x16, [sp, #144]
	ldr	x9, [sp, #576]
	ldr	w17, [sp, #584]
	str	w17, [sp, #128]
	str	x9, [sp, #120]
	ldr	x17, [sp, #120]
	ldr	x7, [sp, #128]
	ldr	x9, [sp, #560]
	ldr	w19, [sp, #568]
	str	w19, [sp, #112]
	str	x9, [sp, #104]
	ldr	x19, [sp, #104]
	ldr	x20, [sp, #112]
	mov	x9, sp
	str	x20, [x9, #88]
	str	x19, [x9, #80]
	str	x7, [x9, #72]
	str	x17, [x9, #64]
	str	x16, [x9, #56]
	str	x15, [x9, #48]
	str	x14, [x9, #40]
	str	x13, [x9, #32]
	str	x12, [x9, #24]
	str	x11, [x9, #16]
	str	x10, [x9, #8]
	str	x8, [x9]
	bl	test_indirect_va_list
	.loc	1 68 7 is_stmt 0                // valist-use-dll.c:68:7
	str	w0, [sp, #252]
	.loc	1 71 12 is_stmt 1               // valist-use-dll.c:71:12
	ldr	w8, [sp, #556]
	.loc	1 71 18 is_stmt 0               // valist-use-dll.c:71:18
	subs	w8, w8, #142
	cset	w8, ne
	.loc	1 72 7 is_stmt 1                // valist-use-dll.c:72:7
	ldr	w9, [sp, #404]
	.loc	1 72 13 is_stmt 0               // valist-use-dll.c:72:13
	subs	w9, w9, #142
	.loc	1 71 35 is_stmt 1               // valist-use-dll.c:71:35
	cinc	w8, w8, ne
	.loc	1 73 7                          // valist-use-dll.c:73:7
	ldr	w9, [sp, #252]
	.loc	1 73 13 is_stmt 0               // valist-use-dll.c:73:13
	subs	w9, w9, #142
	.loc	1 72 30 is_stmt 1               // valist-use-dll.c:72:30
	cinc	w0, w8, ne
	.loc	1 71 3                          // valist-use-dll.c:71:3
	.seh_startepilogue
	add	sp, sp, #720
	.seh_stackalloc	720
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	.seh_save_fplr	16
	ldp	x19, x20, [sp], #32             // 16-byte Folded Reload
	.seh_save_regp_x	x19, 32
	.seh_endepilogue
	ret
.Ltmp7:
.Lfunc_end3:
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	__main;
	.scl	2;
	.type	32;
	.endef
	.globl	__main                          // -- Begin function __main
	.p2align	2
__main:                                 // @__main
.Lfunc_begin4:
	.loc	1 79 0                          // valist-use-dll.c:79:0
// %bb.0:
	.loc	1 80 1 prologue_end             // valist-use-dll.c:80:1
	ret
.Ltmp8:
.Lfunc_end4:
                                        // -- End function
	.section	.rdata,"dr"
	.p2align	2                               // @__const.main.nsv12_a
.L__const.main.nsv12_a:
	.word	1                               // 0x1
	.word	1                               // 0x1
	.word	1                               // 0x1

	.p2align	2                               // @__const.main.nsv12_b
.L__const.main.nsv12_b:
	.word	2                               // 0x2
	.word	2                               // 0x2
	.word	2                               // 0x2

	.p2align	2                               // @__const.main.nsv12_c
.L__const.main.nsv12_c:
	.word	3                               // 0x3
	.word	3                               // 0x3
	.word	3                               // 0x3

	.p2align	2                               // @__const.main.nsv12_d
.L__const.main.nsv12_d:
	.word	5                               // 0x5
	.word	5                               // 0x5
	.word	5                               // 0x5

	.p2align	2                               // @__const.main.nsv12_e
.L__const.main.nsv12_e:
	.word	8                               // 0x8
	.word	8                               // 0x8
	.word	8                               // 0x8

	.p2align	2                               // @__const.main.nsv12_f
.L__const.main.nsv12_f:
	.word	13                              // 0xd
	.word	13                              // 0xd
	.word	13                              // 0xd

	.p2align	2                               // @__const.main.nsv12_g
.L__const.main.nsv12_g:
	.word	21                              // 0x15
	.word	21                              // 0x15
	.word	21                              // 0x15

	.p2align	2                               // @__const.main.nsv12_h
.L__const.main.nsv12_h:
	.word	34                              // 0x22
	.word	34                              // 0x22
	.word	34                              // 0x22

	.p2align	2                               // @__const.main.nsv12_i
.L__const.main.nsv12_i:
	.word	55                              // 0x37
	.word	55                              // 0x37
	.word	55                              // 0x37

.L.str:                                 // @.str
	.asciz	"format"

	.file	2 "/home/blachex" "cross-aarch64-w64-mingw32-ucrt/lib/gcc/aarch64-w64-mingw32/15.0.0/include/stdarg.h"
	.section	.debug_abbrev,"dr"
.Lsection_abbrev:
	.byte	1                               // Abbreviation Code
	.byte	17                              // DW_TAG_compile_unit
	.byte	1                               // DW_CHILDREN_yes
	.byte	37                              // DW_AT_producer
	.byte	14                              // DW_FORM_strp
	.byte	19                              // DW_AT_language
	.byte	5                               // DW_FORM_data2
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	16                              // DW_AT_stmt_list
	.byte	23                              // DW_FORM_sec_offset
	.byte	27                              // DW_AT_comp_dir
	.byte	14                              // DW_FORM_strp
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	2                               // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	64                              // DW_AT_frame_base
	.byte	24                              // DW_FORM_exprloc
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	3                               // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	4                               // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	5                               // Abbreviation Code
	.byte	24                              // DW_TAG_unspecified_parameters
	.byte	0                               // DW_CHILDREN_no
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	6                               // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	0                               // DW_CHILDREN_no
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	64                              // DW_AT_frame_base
	.byte	24                              // DW_FORM_exprloc
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	7                               // Abbreviation Code
	.byte	36                              // DW_TAG_base_type
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	62                              // DW_AT_encoding
	.byte	11                              // DW_FORM_data1
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	8                               // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	9                               // Abbreviation Code
	.byte	38                              // DW_TAG_const_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	10                              // Abbreviation Code
	.byte	22                              // DW_TAG_typedef
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	11                              // Abbreviation Code
	.byte	22                              // DW_TAG_typedef
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	12                              // Abbreviation Code
	.byte	19                              // DW_TAG_structure_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	13                              // Abbreviation Code
	.byte	13                              // DW_TAG_member
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	56                              // DW_AT_data_member_location
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	0                               // EOM(3)
	.section	.debug_info,"dr"
.Lsection_info:
.Lcu_begin0:
	.word	.Ldebug_info_end0-.Ldebug_info_start0 // Length of Unit
.Ldebug_info_start0:
	.hword	4                               // DWARF version number
	.secrel32	.Lsection_abbrev        // Offset Into Abbrev. Section
	.byte	8                               // Address Size (in bytes)
	.byte	1                               // Abbrev [1] 0xb:0x24f DW_TAG_compile_unit
	.secrel32	.Linfo_string0          // DW_AT_producer
	.hword	12                              // DW_AT_language
	.secrel32	.Linfo_string1          // DW_AT_name
	.secrel32	.Lline_table_start0     // DW_AT_stmt_list
	.secrel32	.Linfo_string2          // DW_AT_comp_dir
	.xword	.Lfunc_begin0                   // DW_AT_low_pc
	.word	.Lfunc_end4-.Lfunc_begin0       // DW_AT_high_pc
	.byte	2                               // Abbrev [2] 0x2a:0x45 DW_TAG_subprogram
	.xword	.Lfunc_begin0                   // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
	.secrel32	.Linfo_string3          // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	19                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	491                             // DW_AT_type
                                        // DW_AT_external
	.byte	3                               // Abbrev [3] 0x43:0xe DW_TAG_formal_parameter
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	24
	.secrel32	.Linfo_string9          // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	19                              // DW_AT_decl_line
	.word	498                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x51:0xe DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	16
	.secrel32	.Linfo_string11         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	21                              // DW_AT_decl_line
	.word	515                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x5f:0xe DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	12
	.secrel32	.Linfo_string15         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	23                              // DW_AT_decl_line
	.word	491                             // DW_AT_type
	.byte	5                               // Abbrev [5] 0x6d:0x1 DW_TAG_unspecified_parameters
	.byte	0                               // End Of Children Mark
	.byte	2                               // Abbrev [2] 0x6f:0x36 DW_TAG_subprogram
	.xword	.Lfunc_begin1                   // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
	.secrel32	.Linfo_string5          // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	29                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	491                             // DW_AT_type
                                        // DW_AT_external
	.byte	3                               // Abbrev [3] 0x88:0xe DW_TAG_formal_parameter
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	8
	.secrel32	.Linfo_string9          // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	29                              // DW_AT_decl_line
	.word	498                             // DW_AT_type
	.byte	3                               // Abbrev [3] 0x96:0xe DW_TAG_formal_parameter
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	0
	.secrel32	.Linfo_string11         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	29                              // DW_AT_decl_line
	.word	515                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	2                               // Abbrev [2] 0xa5:0x45 DW_TAG_subprogram
	.xword	.Lfunc_begin2                   // DW_AT_low_pc
	.word	.Lfunc_end2-.Lfunc_begin2       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
	.secrel32	.Linfo_string6          // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	35                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	491                             // DW_AT_type
                                        // DW_AT_external
	.byte	3                               // Abbrev [3] 0xbe:0xe DW_TAG_formal_parameter
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	24
	.secrel32	.Linfo_string9          // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	35                              // DW_AT_decl_line
	.word	498                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0xcc:0xe DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	16
	.secrel32	.Linfo_string11         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	37                              // DW_AT_decl_line
	.word	515                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0xda:0xe DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	12
	.secrel32	.Linfo_string15         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	39                              // DW_AT_decl_line
	.word	491                             // DW_AT_type
	.byte	5                               // Abbrev [5] 0xe8:0x1 DW_TAG_unspecified_parameters
	.byte	0                               // End Of Children Mark
	.byte	2                               // Abbrev [2] 0xea:0xec DW_TAG_subprogram
	.xword	.Lfunc_begin3                   // DW_AT_low_pc
	.word	.Lfunc_end3-.Lfunc_begin3       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
	.secrel32	.Linfo_string7          // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	52                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	491                             // DW_AT_type
                                        // DW_AT_external
	.byte	3                               // Abbrev [3] 0x103:0xf DW_TAG_formal_parameter
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\310\005"
	.secrel32	.Linfo_string16         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	52                              // DW_AT_decl_line
	.word	491                             // DW_AT_type
	.byte	3                               // Abbrev [3] 0x112:0xf DW_TAG_formal_parameter
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\300\005"
	.secrel32	.Linfo_string11         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	52                              // DW_AT_decl_line
	.word	551                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x121:0xf DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\260\005"
	.secrel32	.Linfo_string17         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	54                              // DW_AT_decl_line
	.word	556                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x130:0xf DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\240\005"
	.secrel32	.Linfo_string22         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	55                              // DW_AT_decl_line
	.word	556                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x13f:0xf DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\220\005"
	.secrel32	.Linfo_string23         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	56                              // DW_AT_decl_line
	.word	556                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x14e:0xf DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\200\005"
	.secrel32	.Linfo_string24         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	57                              // DW_AT_decl_line
	.word	556                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x15d:0xf DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\360\004"
	.secrel32	.Linfo_string25         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	58                              // DW_AT_decl_line
	.word	556                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x16c:0xf DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\340\004"
	.secrel32	.Linfo_string26         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	59                              // DW_AT_decl_line
	.word	556                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x17b:0xf DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\320\004"
	.secrel32	.Linfo_string27         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	60                              // DW_AT_decl_line
	.word	556                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x18a:0xf DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\300\004"
	.secrel32	.Linfo_string28         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	61                              // DW_AT_decl_line
	.word	556                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x199:0xf DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\260\004"
	.secrel32	.Linfo_string29         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	62                              // DW_AT_decl_line
	.word	556                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x1a8:0xf DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\254\004"
	.secrel32	.Linfo_string30         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	64                              // DW_AT_decl_line
	.word	491                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x1b7:0xf DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\224\003"
	.secrel32	.Linfo_string31         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	66                              // DW_AT_decl_line
	.word	491                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x1c6:0xf DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\374\001"
	.secrel32	.Linfo_string32         // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	68                              // DW_AT_decl_line
	.word	491                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	6                               // Abbrev [6] 0x1d6:0x15 DW_TAG_subprogram
	.xword	.Lfunc_begin4                   // DW_AT_low_pc
	.word	.Lfunc_end4-.Lfunc_begin4       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
	.secrel32	.Linfo_string8          // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	78                              // DW_AT_decl_line
                                        // DW_AT_external
	.byte	7                               // Abbrev [7] 0x1eb:0x7 DW_TAG_base_type
	.secrel32	.Linfo_string4          // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	8                               // Abbrev [8] 0x1f2:0x5 DW_TAG_pointer_type
	.word	503                             // DW_AT_type
	.byte	9                               // Abbrev [9] 0x1f7:0x5 DW_TAG_const_type
	.word	508                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0x1fc:0x7 DW_TAG_base_type
	.secrel32	.Linfo_string10         // DW_AT_name
	.byte	6                               // DW_AT_encoding
	.byte	1                               // DW_AT_byte_size
	.byte	10                              // Abbrev [10] 0x203:0xb DW_TAG_typedef
	.word	526                             // DW_AT_type
	.secrel32	.Linfo_string14         // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	103                             // DW_AT_decl_line
	.byte	10                              // Abbrev [10] 0x20e:0xb DW_TAG_typedef
	.word	537                             // DW_AT_type
	.secrel32	.Linfo_string13         // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	40                              // DW_AT_decl_line
	.byte	11                              // Abbrev [11] 0x219:0x9 DW_TAG_typedef
	.word	546                             // DW_AT_type
	.secrel32	.Linfo_string12         // DW_AT_name
	.byte	8                               // Abbrev [8] 0x222:0x5 DW_TAG_pointer_type
	.word	508                             // DW_AT_type
	.byte	8                               // Abbrev [8] 0x227:0x5 DW_TAG_pointer_type
	.word	546                             // DW_AT_type
	.byte	12                              // Abbrev [12] 0x22c:0x2d DW_TAG_structure_type
	.secrel32	.Linfo_string21         // DW_AT_name
	.byte	12                              // DW_AT_byte_size
	.byte	1                               // DW_AT_decl_file
	.byte	44                              // DW_AT_decl_line
	.byte	13                              // Abbrev [13] 0x234:0xc DW_TAG_member
	.secrel32	.Linfo_string18         // DW_AT_name
	.word	491                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	46                              // DW_AT_decl_line
	.byte	0                               // DW_AT_data_member_location
	.byte	13                              // Abbrev [13] 0x240:0xc DW_TAG_member
	.secrel32	.Linfo_string19         // DW_AT_name
	.word	491                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	47                              // DW_AT_decl_line
	.byte	4                               // DW_AT_data_member_location
	.byte	13                              // Abbrev [13] 0x24c:0xc DW_TAG_member
	.secrel32	.Linfo_string20         // DW_AT_name
	.word	491                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	48                              // DW_AT_decl_line
	.byte	8                               // DW_AT_data_member_location
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"dr"
.Linfo_string:
.Linfo_string0:
	.asciz	"Ubuntu clang version 14.0.0-1ubuntu1.1" // string offset=0
.Linfo_string1:
	.asciz	"valist-use-dll.c"              // string offset=39
.Linfo_string2:
	.asciz	"/home/blachex/mingw-woarm64-build/tests/valist" // string offset=56
.Linfo_string3:
	.asciz	"test_va_list"                  // string offset=103
.Linfo_string4:
	.asciz	"int"                           // string offset=116
.Linfo_string5:
	.asciz	"use_indirect_va_list"          // string offset=120
.Linfo_string6:
	.asciz	"test_indirect_va_list"         // string offset=141
.Linfo_string7:
	.asciz	"main"                          // string offset=163
.Linfo_string8:
	.asciz	"__main"                        // string offset=168
.Linfo_string9:
	.asciz	"format"                        // string offset=175
.Linfo_string10:
	.asciz	"char"                          // string offset=182
.Linfo_string11:
	.asciz	"argv"                          // string offset=187
.Linfo_string12:
	.asciz	"__builtin_va_list"             // string offset=192
.Linfo_string13:
	.asciz	"__gnuc_va_list"                // string offset=210
.Linfo_string14:
	.asciz	"va_list"                       // string offset=225
.Linfo_string15:
	.asciz	"retval"                        // string offset=233
.Linfo_string16:
	.asciz	"argc"                          // string offset=240
.Linfo_string17:
	.asciz	"nsv12_a"                       // string offset=245
.Linfo_string18:
	.asciz	"a"                             // string offset=253
.Linfo_string19:
	.asciz	"b"                             // string offset=255
.Linfo_string20:
	.asciz	"c"                             // string offset=257
.Linfo_string21:
	.asciz	"not_short_vector_12_bytes"     // string offset=259
.Linfo_string22:
	.asciz	"nsv12_b"                       // string offset=285
.Linfo_string23:
	.asciz	"nsv12_c"                       // string offset=293
.Linfo_string24:
	.asciz	"nsv12_d"                       // string offset=301
.Linfo_string25:
	.asciz	"nsv12_e"                       // string offset=309
.Linfo_string26:
	.asciz	"nsv12_f"                       // string offset=317
.Linfo_string27:
	.asciz	"nsv12_g"                       // string offset=325
.Linfo_string28:
	.asciz	"nsv12_h"                       // string offset=333
.Linfo_string29:
	.asciz	"nsv12_i"                       // string offset=341
.Linfo_string30:
	.asciz	"test1"                         // string offset=349
.Linfo_string31:
	.asciz	"test2"                         // string offset=355
.Linfo_string32:
	.asciz	"test3"                         // string offset=361
	.addrsig
	.addrsig_sym test_va_list
	.addrsig_sym use_indirect_va_list
	.addrsig_sym test_indirect_va_list
	.section	.debug_line,"dr"
.Lsection_line:
.Lline_table_start0:
