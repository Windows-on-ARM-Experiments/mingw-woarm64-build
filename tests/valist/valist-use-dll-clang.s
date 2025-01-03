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
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	wzr, [sp, #28]
	str	w0, [sp, #24]
	str	x1, [sp, #16]
	mov	x9, sp
	mov	w8, #55
	str	w8, [x9]
	mov	w0, #1
	mov	w1, #2
	mov	w2, #3
	mov	w3, #5
	mov	w4, #8
	mov	w5, #13
	mov	w6, #21
	mov	w7, #34
	bl	use_va_args
	.seh_startepilogue
	ldr	x30, [sp, #32]                  // 8-byte Folded Reload
	.seh_save_reg	x30, 32
	add	sp, sp, #48
	.seh_stackalloc	48
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.addrsig
	.addrsig_sym use_va_args
