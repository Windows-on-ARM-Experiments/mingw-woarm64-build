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
	ldr	w8, [x8]
	str	w8, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #32
	.seh_stackalloc	32
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_arg;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_arg                      // -- Begin function use_va_arg
	.p2align	2
use_va_arg:                             // @use_va_arg
.seh_proc use_va_arg
// %bb.0:
	sub	sp, sp, #96
	.seh_stackalloc	96
	.seh_endprologue
	str	x7, [sp, #88]
	str	x6, [sp, #80]
	str	x5, [sp, #72]
	str	x4, [sp, #64]
	str	x3, [sp, #56]
	str	x2, [sp, #48]
	str	x1, [sp, #40]
	str	x0, [sp, #24]
	add	x8, sp, #40
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	add	x9, x8, #8
	str	x9, [sp, #16]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	add	x9, x8, #8
	str	x9, [sp, #16]
	ldr	w8, [x8]
	str	w8, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #96
	.seh_stackalloc	96
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.section	.drectve,"yn"
	.ascii	" -export:use_va_list"
	.ascii	" -export:use_va_arg"
	.addrsig
