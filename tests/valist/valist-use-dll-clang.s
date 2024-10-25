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
	bl	use_va_list
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
	sub	sp, sp, #32
	.seh_stackalloc	32
	str	x30, [sp, #16]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 16
	.seh_endprologue
	str	wzr, [sp, #12]
	str	w0, [sp, #8]
	str	x1, [sp]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	mov	w1, #100
	mov	w2, #42
	bl	test_va_list
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
	.section	.rdata,"dr"
.L.str:                                 // @.str
	.asciz	"%d\n"

	.addrsig
	.addrsig_sym test_va_list
	.addrsig_sym use_va_list
