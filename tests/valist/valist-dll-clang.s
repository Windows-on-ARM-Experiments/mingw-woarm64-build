	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"valist-dll.c"
	.def	use_va_args;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args                     // -- Begin function use_va_args
	.p2align	2
use_va_args:                            // @use_va_args
.seh_proc use_va_args
// %bb.0:
	sub	sp, sp, #80
	.seh_stackalloc	80
	.seh_endprologue
	str	x7, [sp, #72]
	str	x6, [sp, #64]
	str	x5, [sp, #56]
	str	x4, [sp, #48]
	str	w0, [sp, #44]
	str	w1, [sp, #40]
	str	w2, [sp, #36]
	str	w3, [sp, #32]
	add	x8, sp, #48
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	add	x9, x8, #8
	str	x9, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	x8, [sp, #24]
	add	x9, x8, #8
	str	x9, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #16]
	ldr	x8, [sp, #24]
	add	x9, x8, #8
	str	x9, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	x8, [sp, #24]
	add	x9, x8, #8
	str	x9, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #8]
	ldr	x8, [sp, #24]
	add	x9, x8, #8
	str	x9, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #4]
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #40]
	add	w8, w8, w9
	ldr	w9, [sp, #36]
	add	w8, w8, w9
	ldr	w9, [sp, #32]
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w8, w8, w9
	ldr	w9, [sp, #8]
	add	w8, w8, w9
	ldr	w9, [sp, #4]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #80
	.seh_stackalloc	80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.addrsig
