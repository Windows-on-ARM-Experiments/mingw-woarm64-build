	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"valist-use-dll.c"
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
	mov	w1, #11
	mov	w2, #22
	bl	use_va_args
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
	.addrsig_sym use_va_args
