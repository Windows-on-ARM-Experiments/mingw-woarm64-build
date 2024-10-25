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
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x8, __imp_use_va_list
	ldr	x8, [x8, :lo12:__imp_use_va_list]
	blr	x8
	str	w0, [sp, #12]
	ldr	w0, [sp, #12]
	.seh_startepilogue
	ldr	x30, [sp, #32]                  // 8-byte Folded Reload
	.seh_save_reg	x30, 32
	add	sp, sp, #112
	.seh_stackalloc	112
	.seh_endepilogue
	ret
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
.seh_proc use_indirect_va_list
// %bb.0:
	sub	sp, sp, #32
	.seh_stackalloc	32
	str	x30, [sp, #16]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 16
	.seh_endprologue
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	adrp	x8, __imp_use_va_list
	ldr	x8, [x8, :lo12:__imp_use_va_list]
	blr	x8
	.seh_startepilogue
	ldr	x30, [sp, #16]                  // 8-byte Folded Reload
	.seh_save_reg	x30, 16
	add	sp, sp, #32
	.seh_stackalloc	32
	.seh_endepilogue
	ret
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
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	bl	use_indirect_va_list
	str	w0, [sp, #12]
	ldr	w0, [sp, #12]
	.seh_startepilogue
	ldr	x30, [sp, #32]                  // 8-byte Folded Reload
	.seh_save_reg	x30, 32
	add	sp, sp, #112
	.seh_stackalloc	112
	.seh_endepilogue
	ret
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
	adrp	x9, .L__const.main.nsv12_a
	add	x9, x9, :lo12:.L__const.main.nsv12_a
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #696]
	str	x8, [sp, #688]
	adrp	x9, .L__const.main.nsv12_b
	add	x9, x9, :lo12:.L__const.main.nsv12_b
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #680]
	str	x8, [sp, #672]
	adrp	x9, .L__const.main.nsv12_c
	add	x9, x9, :lo12:.L__const.main.nsv12_c
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #664]
	str	x8, [sp, #656]
	adrp	x9, .L__const.main.nsv12_d
	add	x9, x9, :lo12:.L__const.main.nsv12_d
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #648]
	str	x8, [sp, #640]
	adrp	x9, .L__const.main.nsv12_e
	add	x9, x9, :lo12:.L__const.main.nsv12_e
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #632]
	str	x8, [sp, #624]
	adrp	x9, .L__const.main.nsv12_f
	add	x9, x9, :lo12:.L__const.main.nsv12_f
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #616]
	str	x8, [sp, #608]
	adrp	x9, .L__const.main.nsv12_g
	add	x9, x9, :lo12:.L__const.main.nsv12_g
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #600]
	str	x8, [sp, #592]
	adrp	x9, .L__const.main.nsv12_h
	add	x9, x9, :lo12:.L__const.main.nsv12_h
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #584]
	str	x8, [sp, #576]
	adrp	x9, .L__const.main.nsv12_i
	add	x9, x9, :lo12:.L__const.main.nsv12_i
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #568]
	str	x8, [sp, #560]
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
	str	w8, [sp, #556]
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
	str	w8, [sp, #404]
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
	str	w0, [sp, #252]
	ldr	w8, [sp, #556]
	subs	w8, w8, #142
	cset	w8, ne
	ldr	w9, [sp, #404]
	subs	w9, w9, #142
	cinc	w8, w8, ne
	ldr	w9, [sp, #252]
	subs	w9, w9, #142
	cinc	w0, w8, ne
	.seh_startepilogue
	add	sp, sp, #720
	.seh_stackalloc	720
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	.seh_save_fplr	16
	ldp	x19, x20, [sp], #32             // 16-byte Folded Reload
	.seh_save_regp_x	x19, 32
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
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

	.addrsig
	.addrsig_sym test_va_list
	.addrsig_sym use_indirect_va_list
	.addrsig_sym test_indirect_va_list
