	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"size-of-use-dll.c"
	.def	vswprintf;
	.scl	3;
	.type	32;
	.endef
	.p2align	2                               // -- Begin function vswprintf
vswprintf:                              // @vswprintf
.seh_proc vswprintf
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x3, [sp]
	bl	__mingw_vswprintf
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
	bl	size_of_long
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
	.addrsig
	.addrsig_sym __mingw_vswprintf
