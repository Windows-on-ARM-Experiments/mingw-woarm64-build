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
	sub	sp, sp, #224
	.seh_stackalloc	224
	.seh_endprologue
	str	x7, [sp, #216]
	str	x6, [sp, #208]
	str	x5, [sp, #200]
	str	x4, [sp, #192]
	str	x3, [sp, #184]
	str	x2, [sp, #176]
	str	x1, [sp, #168]
	str	x0, [sp, #152]
	add	x8, sp, #168
	str	x8, [sp, #144]
	ldr	x9, [sp, #144]
	add	x8, x9, #16
	str	x8, [sp, #144]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #136]
	str	x8, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #140]
	ldr	x9, [sp, #144]
	add	x8, x9, #16
	str	x8, [sp, #144]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #120]
	str	x8, [sp, #112]
	ldr	w8, [sp, #116]
	str	w8, [sp, #124]
	ldr	x9, [sp, #144]
	add	x8, x9, #16
	str	x8, [sp, #144]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #104]
	str	x8, [sp, #96]
	ldr	w8, [sp, #104]
	str	w8, [sp, #108]
	ldr	x9, [sp, #144]
	add	x8, x9, #16
	str	x8, [sp, #144]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #88]
	str	x8, [sp, #80]
	ldr	w8, [sp, #80]
	str	w8, [sp, #92]
	ldr	x9, [sp, #144]
	add	x8, x9, #16
	str	x8, [sp, #144]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #72]
	str	x8, [sp, #64]
	ldr	w8, [sp, #68]
	str	w8, [sp, #76]
	ldr	x9, [sp, #144]
	add	x8, x9, #16
	str	x8, [sp, #144]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #56]
	str	x8, [sp, #48]
	ldr	w8, [sp, #56]
	str	w8, [sp, #60]
	ldr	x9, [sp, #144]
	add	x8, x9, #16
	str	x8, [sp, #144]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #40]
	str	x8, [sp, #32]
	ldr	w8, [sp, #32]
	str	w8, [sp, #44]
	ldr	x9, [sp, #144]
	add	x8, x9, #16
	str	x8, [sp, #144]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #24]
	str	x8, [sp, #16]
	ldr	w8, [sp, #20]
	str	w8, [sp, #28]
	ldr	x9, [sp, #144]
	add	x8, x9, #16
	str	x8, [sp, #144]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #8]
	str	x8, [sp]
	ldr	w8, [sp, #8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #140]
	ldr	w9, [sp, #124]
	add	w8, w8, w9
	ldr	w9, [sp, #108]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #76]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	add	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #224
	.seh_stackalloc	224
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list                     // -- Begin function use_va_list
	.p2align	2
use_va_list:                            // @use_va_list
.seh_proc use_va_list
// %bb.0:
	sub	sp, sp, #160
	.seh_stackalloc	160
	.seh_endprologue
	str	x0, [sp, #152]
	str	x1, [sp, #144]
	ldr	x8, [sp, #144]
	add	x9, x8, #16
	str	x9, [sp, #144]
	ldr	x9, [x8]
	str	x9, [sp, #128]
	ldr	w8, [x8, #8]
	str	w8, [sp, #136]
	ldr	w8, [sp, #128]
	str	w8, [sp, #140]
	ldr	x8, [sp, #144]
	add	x9, x8, #16
	str	x9, [sp, #144]
	ldr	x9, [x8]
	str	x9, [sp, #112]
	ldr	w8, [x8, #8]
	str	w8, [sp, #120]
	ldr	w8, [sp, #116]
	str	w8, [sp, #124]
	ldr	x8, [sp, #144]
	add	x9, x8, #16
	str	x9, [sp, #144]
	ldr	x9, [x8]
	str	x9, [sp, #96]
	ldr	w8, [x8, #8]
	str	w8, [sp, #104]
	ldr	w8, [sp, #104]
	str	w8, [sp, #108]
	ldr	x8, [sp, #144]
	add	x9, x8, #16
	str	x9, [sp, #144]
	ldr	x9, [x8]
	str	x9, [sp, #80]
	ldr	w8, [x8, #8]
	str	w8, [sp, #88]
	ldr	w8, [sp, #80]
	str	w8, [sp, #92]
	ldr	x8, [sp, #144]
	add	x9, x8, #16
	str	x9, [sp, #144]
	ldr	x9, [x8]
	str	x9, [sp, #64]
	ldr	w8, [x8, #8]
	str	w8, [sp, #72]
	ldr	w8, [sp, #68]
	str	w8, [sp, #76]
	ldr	x8, [sp, #144]
	add	x9, x8, #16
	str	x9, [sp, #144]
	ldr	x9, [x8]
	str	x9, [sp, #48]
	ldr	w8, [x8, #8]
	str	w8, [sp, #56]
	ldr	w8, [sp, #56]
	str	w8, [sp, #60]
	ldr	x8, [sp, #144]
	add	x9, x8, #16
	str	x9, [sp, #144]
	ldr	x9, [x8]
	str	x9, [sp, #32]
	ldr	w8, [x8, #8]
	str	w8, [sp, #40]
	ldr	w8, [sp, #32]
	str	w8, [sp, #44]
	ldr	x8, [sp, #144]
	add	x9, x8, #16
	str	x9, [sp, #144]
	ldr	x9, [x8]
	str	x9, [sp, #16]
	ldr	w8, [x8, #8]
	str	w8, [sp, #24]
	ldr	w8, [sp, #20]
	str	w8, [sp, #28]
	ldr	x8, [sp, #144]
	add	x9, x8, #16
	str	x9, [sp, #144]
	ldr	x9, [x8]
	str	x9, [sp]
	ldr	w8, [x8, #8]
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #140]
	ldr	w9, [sp, #124]
	add	w8, w8, w9
	ldr	w9, [sp, #108]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #76]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	add	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #160
	.seh_stackalloc	160
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.section	.drectve,"yn"
	.ascii	" -export:use_va_args"
	.ascii	" -export:use_va_list"
	.addrsig
