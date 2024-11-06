	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"valist-dll.c"
	.def	use_va_list;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list                     // -- Begin function use_va_list
	.p2align	2
use_va_list:                            // @use_va_list
.seh_proc use_va_list
// %bb.0:
	sub	sp, sp, #32
	.seh_stackalloc	32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	add	x9, x8, #8
	str	x9, [sp, #16]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	add	x9, x8, #8
	str	x9, [sp, #16]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	s1, [sp, #12]
                                        // implicit-def: $d0
	fmov	s0, s1
	sshll	v0.2d, v0.2s, #0
                                        // kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldr	d1, [sp]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #32
	.seh_stackalloc	32
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.section	.drectve,"yn"
	.ascii	" -export:use_va_list"
	.addrsig
