	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"varargs-dll.c"
	.def	use_va_args_no_arguments;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_no_arguments        // -- Begin function use_va_args_no_arguments
	.p2align	2
use_va_args_no_arguments:               // @use_va_args_no_arguments
.seh_proc use_va_args_no_arguments
// %bb.0:
	sub	sp, sp, #80
	.seh_stackalloc	80
	.seh_endprologue
	str	x7, [sp, #72]
	str	x6, [sp, #64]
	str	x5, [sp, #56]
	str	x4, [sp, #48]
	str	x3, [sp, #40]
	str	x2, [sp, #32]
	str	x1, [sp, #24]
	str	x0, [sp, #8]
	add	x8, sp, #24
	str	x8, [sp]
	mov	w0, #165
	.seh_startepilogue
	add	sp, sp, #80
	.seh_stackalloc	80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_no_arguments;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_no_arguments        // -- Begin function use_va_list_no_arguments
	.p2align	2
use_va_list_no_arguments:               // @use_va_list_no_arguments
.seh_proc use_va_list_no_arguments
// %bb.0:
	sub	sp, sp, #16
	.seh_stackalloc	16
	.seh_endprologue
	str	x0, [sp, #8]
	str	x1, [sp]
	mov	w0, #165
	.seh_startepilogue
	add	sp, sp, #16
	.seh_stackalloc	16
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_longs;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_longs           // -- Begin function use_va_args_few_longs
	.p2align	2
use_va_args_few_longs:                  // @use_va_args_few_longs
.seh_proc use_va_args_few_longs
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
	.def	use_va_list_few_longs;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_longs           // -- Begin function use_va_list_few_longs
	.p2align	2
use_va_list_few_longs:                  // @use_va_list_few_longs
.seh_proc use_va_list_few_longs
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
	.def	use_va_args_several_longs;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_longs       // -- Begin function use_va_args_several_longs
	.p2align	2
use_va_args_several_longs:              // @use_va_args_several_longs
.seh_proc use_va_args_several_longs
// %bb.0:
	sub	sp, sp, #128
	.seh_stackalloc	128
	.seh_endprologue
	str	x7, [sp, #120]
	str	x6, [sp, #112]
	str	x5, [sp, #104]
	str	x4, [sp, #96]
	str	x3, [sp, #88]
	str	x2, [sp, #80]
	str	x1, [sp, #72]
	str	x0, [sp, #56]
	add	x8, sp, #72
	str	x8, [sp, #48]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #44]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #40]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #36]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #32]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #24]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #16]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #40]
	add	w8, w8, w9
	ldr	w9, [sp, #36]
	add	w8, w8, w9
	ldr	w9, [sp, #32]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #128
	.seh_stackalloc	128
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_several_longs;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_longs       // -- Begin function use_va_list_several_longs
	.p2align	2
use_va_list_several_longs:              // @use_va_list_several_longs
.seh_proc use_va_list_several_longs
// %bb.0:
	sub	sp, sp, #64
	.seh_stackalloc	64
	.seh_endprologue
	str	x0, [sp, #56]
	str	x1, [sp, #48]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #44]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #40]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #36]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #32]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #24]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #16]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #40]
	add	w8, w8, w9
	ldr	w9, [sp, #36]
	add	w8, w8, w9
	ldr	w9, [sp, #32]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #64
	.seh_stackalloc	64
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_many_longs;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_longs          // -- Begin function use_va_args_many_longs
	.p2align	2
use_va_args_many_longs:                 // @use_va_args_many_longs
.seh_proc use_va_args_many_longs
// %bb.0:
	sub	sp, sp, #160
	.seh_stackalloc	160
	.seh_endprologue
	str	x7, [sp, #152]
	str	x6, [sp, #144]
	str	x5, [sp, #136]
	str	x4, [sp, #128]
	str	x3, [sp, #120]
	str	x2, [sp, #112]
	str	x1, [sp, #104]
	str	x0, [sp, #88]
	add	x8, sp, #104
	str	x8, [sp, #80]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #76]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #72]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #68]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #64]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #60]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #56]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #52]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #48]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #44]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #40]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #36]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #32]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #24]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #16]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #76]
	ldr	w9, [sp, #72]
	add	w8, w8, w9
	ldr	w9, [sp, #68]
	add	w8, w8, w9
	ldr	w9, [sp, #64]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	add	w8, w8, w9
	ldr	w9, [sp, #56]
	add	w8, w8, w9
	ldr	w9, [sp, #52]
	add	w8, w8, w9
	ldr	w9, [sp, #48]
	add	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w8, w8, w9
	ldr	w9, [sp, #40]
	add	w8, w8, w9
	ldr	w9, [sp, #36]
	add	w8, w8, w9
	ldr	w9, [sp, #32]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
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
	.def	use_va_list_many_longs;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_longs          // -- Begin function use_va_list_many_longs
	.p2align	2
use_va_list_many_longs:                 // @use_va_list_many_longs
.seh_proc use_va_list_many_longs
// %bb.0:
	sub	sp, sp, #96
	.seh_stackalloc	96
	.seh_endprologue
	str	x0, [sp, #88]
	str	x1, [sp, #80]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #76]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #72]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #68]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #64]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #60]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #56]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #52]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #48]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #44]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #40]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #36]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #32]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #24]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #16]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #76]
	ldr	w9, [sp, #72]
	add	w8, w8, w9
	ldr	w9, [sp, #68]
	add	w8, w8, w9
	ldr	w9, [sp, #64]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	add	w8, w8, w9
	ldr	w9, [sp, #56]
	add	w8, w8, w9
	ldr	w9, [sp, #52]
	add	w8, w8, w9
	ldr	w9, [sp, #48]
	add	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w8, w8, w9
	ldr	w9, [sp, #40]
	add	w8, w8, w9
	ldr	w9, [sp, #36]
	add	w8, w8, w9
	ldr	w9, [sp, #32]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #96
	.seh_stackalloc	96
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_ints;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_ints            // -- Begin function use_va_args_few_ints
	.p2align	2
use_va_args_few_ints:                   // @use_va_args_few_ints
.seh_proc use_va_args_few_ints
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
	.def	use_va_list_few_ints;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_ints            // -- Begin function use_va_list_few_ints
	.p2align	2
use_va_list_few_ints:                   // @use_va_list_few_ints
.seh_proc use_va_list_few_ints
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
	.def	use_va_args_several_ints;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_ints        // -- Begin function use_va_args_several_ints
	.p2align	2
use_va_args_several_ints:               // @use_va_args_several_ints
.seh_proc use_va_args_several_ints
// %bb.0:
	sub	sp, sp, #128
	.seh_stackalloc	128
	.seh_endprologue
	str	x7, [sp, #120]
	str	x6, [sp, #112]
	str	x5, [sp, #104]
	str	x4, [sp, #96]
	str	x3, [sp, #88]
	str	x2, [sp, #80]
	str	x1, [sp, #72]
	str	x0, [sp, #56]
	add	x8, sp, #72
	str	x8, [sp, #48]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #44]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #40]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #36]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #32]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #24]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #16]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #40]
	add	w8, w8, w9
	ldr	w9, [sp, #36]
	add	w8, w8, w9
	ldr	w9, [sp, #32]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #128
	.seh_stackalloc	128
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_several_ints;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_ints        // -- Begin function use_va_list_several_ints
	.p2align	2
use_va_list_several_ints:               // @use_va_list_several_ints
.seh_proc use_va_list_several_ints
// %bb.0:
	sub	sp, sp, #64
	.seh_stackalloc	64
	.seh_endprologue
	str	x0, [sp, #56]
	str	x1, [sp, #48]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #44]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #40]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #36]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #32]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #24]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #16]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #40]
	add	w8, w8, w9
	ldr	w9, [sp, #36]
	add	w8, w8, w9
	ldr	w9, [sp, #32]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #64
	.seh_stackalloc	64
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_many_ints;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_ints           // -- Begin function use_va_args_many_ints
	.p2align	2
use_va_args_many_ints:                  // @use_va_args_many_ints
.seh_proc use_va_args_many_ints
// %bb.0:
	sub	sp, sp, #160
	.seh_stackalloc	160
	.seh_endprologue
	str	x7, [sp, #152]
	str	x6, [sp, #144]
	str	x5, [sp, #136]
	str	x4, [sp, #128]
	str	x3, [sp, #120]
	str	x2, [sp, #112]
	str	x1, [sp, #104]
	str	x0, [sp, #88]
	add	x8, sp, #104
	str	x8, [sp, #80]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #76]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #72]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #68]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #64]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #60]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #56]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #52]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #48]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #44]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #40]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #36]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #32]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #24]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #16]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #76]
	ldr	w9, [sp, #72]
	add	w8, w8, w9
	ldr	w9, [sp, #68]
	add	w8, w8, w9
	ldr	w9, [sp, #64]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	add	w8, w8, w9
	ldr	w9, [sp, #56]
	add	w8, w8, w9
	ldr	w9, [sp, #52]
	add	w8, w8, w9
	ldr	w9, [sp, #48]
	add	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w8, w8, w9
	ldr	w9, [sp, #40]
	add	w8, w8, w9
	ldr	w9, [sp, #36]
	add	w8, w8, w9
	ldr	w9, [sp, #32]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
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
	.def	use_va_list_many_ints;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_ints           // -- Begin function use_va_list_many_ints
	.p2align	2
use_va_list_many_ints:                  // @use_va_list_many_ints
.seh_proc use_va_list_many_ints
// %bb.0:
	sub	sp, sp, #96
	.seh_stackalloc	96
	.seh_endprologue
	str	x0, [sp, #88]
	str	x1, [sp, #80]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #76]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #72]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #68]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #64]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #60]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #56]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #52]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #48]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #44]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #40]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #36]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #32]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #24]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #20]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #16]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #76]
	ldr	w9, [sp, #72]
	add	w8, w8, w9
	ldr	w9, [sp, #68]
	add	w8, w8, w9
	ldr	w9, [sp, #64]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	add	w8, w8, w9
	ldr	w9, [sp, #56]
	add	w8, w8, w9
	ldr	w9, [sp, #52]
	add	w8, w8, w9
	ldr	w9, [sp, #48]
	add	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w8, w8, w9
	ldr	w9, [sp, #40]
	add	w8, w8, w9
	ldr	w9, [sp, #36]
	add	w8, w8, w9
	ldr	w9, [sp, #32]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #96
	.seh_stackalloc	96
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_doubles         // -- Begin function use_va_args_few_doubles
	.p2align	2
use_va_args_few_doubles:                // @use_va_args_few_doubles
.seh_proc use_va_args_few_doubles
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
	ldr	d0, [x8]
	str	d0, [sp, #8]
	ldr	x8, [sp, #16]
	add	x9, x8, #8
	str	x9, [sp, #16]
	ldr	d0, [x8]
	str	d0, [sp]
	ldr	d0, [sp, #8]
	ldr	d1, [sp]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #96
	.seh_stackalloc	96
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_few_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_doubles         // -- Begin function use_va_list_few_doubles
	.p2align	2
use_va_list_few_doubles:                // @use_va_list_few_doubles
.seh_proc use_va_list_few_doubles
// %bb.0:
	sub	sp, sp, #32
	.seh_stackalloc	32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	add	x9, x8, #8
	str	x9, [sp, #16]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	add	x9, x8, #8
	str	x9, [sp, #16]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	d0, [sp, #8]
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
	.def	use_va_args_several_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_doubles     // -- Begin function use_va_args_several_doubles
	.p2align	2
use_va_args_several_doubles:            // @use_va_args_several_doubles
.seh_proc use_va_args_several_doubles
// %bb.0:
	sub	sp, sp, #160
	.seh_stackalloc	160
	.seh_endprologue
	str	x7, [sp, #152]
	str	x6, [sp, #144]
	str	x5, [sp, #136]
	str	x4, [sp, #128]
	str	x3, [sp, #120]
	str	x2, [sp, #112]
	str	x1, [sp, #104]
	str	x0, [sp, #88]
	add	x8, sp, #104
	str	x8, [sp, #80]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #72]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #64]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #56]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #48]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #40]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #32]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #24]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #16]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #8]
	ldr	d0, [sp, #72]
	ldr	d1, [sp, #64]
	fadd	d0, d0, d1
	ldr	d1, [sp, #56]
	fadd	d0, d0, d1
	ldr	d1, [sp, #48]
	fadd	d0, d0, d1
	ldr	d1, [sp, #40]
	fadd	d0, d0, d1
	ldr	d1, [sp, #32]
	fadd	d0, d0, d1
	ldr	d1, [sp, #24]
	fadd	d0, d0, d1
	ldr	d1, [sp, #16]
	fadd	d0, d0, d1
	ldr	d1, [sp, #8]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #160
	.seh_stackalloc	160
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_several_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_doubles     // -- Begin function use_va_list_several_doubles
	.p2align	2
use_va_list_several_doubles:            // @use_va_list_several_doubles
.seh_proc use_va_list_several_doubles
// %bb.0:
	sub	sp, sp, #96
	.seh_stackalloc	96
	.seh_endprologue
	str	x0, [sp, #88]
	str	x1, [sp, #80]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #72]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #64]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #56]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #40]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	d0, [sp, #72]
	ldr	d1, [sp, #64]
	fadd	d0, d0, d1
	ldr	d1, [sp, #56]
	fadd	d0, d0, d1
	ldr	d1, [sp, #48]
	fadd	d0, d0, d1
	ldr	d1, [sp, #40]
	fadd	d0, d0, d1
	ldr	d1, [sp, #32]
	fadd	d0, d0, d1
	ldr	d1, [sp, #24]
	fadd	d0, d0, d1
	ldr	d1, [sp, #16]
	fadd	d0, d0, d1
	ldr	d1, [sp, #8]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #96
	.seh_stackalloc	96
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_many_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_doubles        // -- Begin function use_va_args_many_doubles
	.p2align	2
use_va_args_many_doubles:               // @use_va_args_many_doubles
.seh_proc use_va_args_many_doubles
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
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #136]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #128]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #120]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #112]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #104]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #96]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #88]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #80]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #72]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #64]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #56]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #48]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #40]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #32]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #24]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #16]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #8]
	ldr	d0, [sp, #136]
	ldr	d1, [sp, #128]
	fadd	d0, d0, d1
	ldr	d1, [sp, #120]
	fadd	d0, d0, d1
	ldr	d1, [sp, #112]
	fadd	d0, d0, d1
	ldr	d1, [sp, #104]
	fadd	d0, d0, d1
	ldr	d1, [sp, #96]
	fadd	d0, d0, d1
	ldr	d1, [sp, #88]
	fadd	d0, d0, d1
	ldr	d1, [sp, #80]
	fadd	d0, d0, d1
	ldr	d1, [sp, #72]
	fadd	d0, d0, d1
	ldr	d1, [sp, #64]
	fadd	d0, d0, d1
	ldr	d1, [sp, #56]
	fadd	d0, d0, d1
	ldr	d1, [sp, #48]
	fadd	d0, d0, d1
	ldr	d1, [sp, #40]
	fadd	d0, d0, d1
	ldr	d1, [sp, #32]
	fadd	d0, d0, d1
	ldr	d1, [sp, #24]
	fadd	d0, d0, d1
	ldr	d1, [sp, #16]
	fadd	d0, d0, d1
	ldr	d1, [sp, #8]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #224
	.seh_stackalloc	224
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_many_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_doubles        // -- Begin function use_va_list_many_doubles
	.p2align	2
use_va_list_many_doubles:               // @use_va_list_many_doubles
.seh_proc use_va_list_many_doubles
// %bb.0:
	sub	sp, sp, #160
	.seh_stackalloc	160
	.seh_endprologue
	str	x0, [sp, #152]
	str	x1, [sp, #144]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #136]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #128]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #120]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #112]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #104]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #96]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #88]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #80]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #72]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #64]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #56]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #40]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	d0, [sp, #136]
	ldr	d1, [sp, #128]
	fadd	d0, d0, d1
	ldr	d1, [sp, #120]
	fadd	d0, d0, d1
	ldr	d1, [sp, #112]
	fadd	d0, d0, d1
	ldr	d1, [sp, #104]
	fadd	d0, d0, d1
	ldr	d1, [sp, #96]
	fadd	d0, d0, d1
	ldr	d1, [sp, #88]
	fadd	d0, d0, d1
	ldr	d1, [sp, #80]
	fadd	d0, d0, d1
	ldr	d1, [sp, #72]
	fadd	d0, d0, d1
	ldr	d1, [sp, #64]
	fadd	d0, d0, d1
	ldr	d1, [sp, #56]
	fadd	d0, d0, d1
	ldr	d1, [sp, #48]
	fadd	d0, d0, d1
	ldr	d1, [sp, #40]
	fadd	d0, d0, d1
	ldr	d1, [sp, #32]
	fadd	d0, d0, d1
	ldr	d1, [sp, #24]
	fadd	d0, d0, d1
	ldr	d1, [sp, #16]
	fadd	d0, d0, d1
	ldr	d1, [sp, #8]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #160
	.seh_stackalloc	160
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_floats          // -- Begin function use_va_args_few_floats
	.p2align	2
use_va_args_few_floats:                 // @use_va_args_few_floats
.seh_proc use_va_args_few_floats
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
	ldr	d0, [x8]
	str	d0, [sp, #8]
	ldr	x8, [sp, #16]
	add	x9, x8, #8
	str	x9, [sp, #16]
	ldr	d0, [x8]
	str	d0, [sp]
	ldr	d0, [sp, #8]
	ldr	d1, [sp]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #96
	.seh_stackalloc	96
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_few_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_floats          // -- Begin function use_va_list_few_floats
	.p2align	2
use_va_list_few_floats:                 // @use_va_list_few_floats
.seh_proc use_va_list_few_floats
// %bb.0:
	sub	sp, sp, #32
	.seh_stackalloc	32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	add	x9, x8, #8
	str	x9, [sp, #16]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	add	x9, x8, #8
	str	x9, [sp, #16]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	d0, [sp, #8]
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
	.def	use_va_args_several_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_floats      // -- Begin function use_va_args_several_floats
	.p2align	2
use_va_args_several_floats:             // @use_va_args_several_floats
.seh_proc use_va_args_several_floats
// %bb.0:
	sub	sp, sp, #160
	.seh_stackalloc	160
	.seh_endprologue
	str	x7, [sp, #152]
	str	x6, [sp, #144]
	str	x5, [sp, #136]
	str	x4, [sp, #128]
	str	x3, [sp, #120]
	str	x2, [sp, #112]
	str	x1, [sp, #104]
	str	x0, [sp, #88]
	add	x8, sp, #104
	str	x8, [sp, #80]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #72]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #64]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #56]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #48]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #40]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #32]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #24]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #16]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	d0, [x8]
	str	d0, [sp, #8]
	ldr	d0, [sp, #72]
	ldr	d1, [sp, #64]
	fadd	d0, d0, d1
	ldr	d1, [sp, #56]
	fadd	d0, d0, d1
	ldr	d1, [sp, #48]
	fadd	d0, d0, d1
	ldr	d1, [sp, #40]
	fadd	d0, d0, d1
	ldr	d1, [sp, #32]
	fadd	d0, d0, d1
	ldr	d1, [sp, #24]
	fadd	d0, d0, d1
	ldr	d1, [sp, #16]
	fadd	d0, d0, d1
	ldr	d1, [sp, #8]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #160
	.seh_stackalloc	160
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_several_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_floats      // -- Begin function use_va_list_several_floats
	.p2align	2
use_va_list_several_floats:             // @use_va_list_several_floats
.seh_proc use_va_list_several_floats
// %bb.0:
	sub	sp, sp, #96
	.seh_stackalloc	96
	.seh_endprologue
	str	x0, [sp, #88]
	str	x1, [sp, #80]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #72]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #64]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #56]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #40]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	d0, [sp, #72]
	ldr	d1, [sp, #64]
	fadd	d0, d0, d1
	ldr	d1, [sp, #56]
	fadd	d0, d0, d1
	ldr	d1, [sp, #48]
	fadd	d0, d0, d1
	ldr	d1, [sp, #40]
	fadd	d0, d0, d1
	ldr	d1, [sp, #32]
	fadd	d0, d0, d1
	ldr	d1, [sp, #24]
	fadd	d0, d0, d1
	ldr	d1, [sp, #16]
	fadd	d0, d0, d1
	ldr	d1, [sp, #8]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #96
	.seh_stackalloc	96
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_many_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_floats         // -- Begin function use_va_args_many_floats
	.p2align	2
use_va_args_many_floats:                // @use_va_args_many_floats
.seh_proc use_va_args_many_floats
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
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #136]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #128]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #120]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #112]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #104]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #96]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #88]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #80]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #72]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #64]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #56]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #48]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #40]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #32]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #24]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #16]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	d0, [x8]
	str	d0, [sp, #8]
	ldr	d0, [sp, #136]
	ldr	d1, [sp, #128]
	fadd	d0, d0, d1
	ldr	d1, [sp, #120]
	fadd	d0, d0, d1
	ldr	d1, [sp, #112]
	fadd	d0, d0, d1
	ldr	d1, [sp, #104]
	fadd	d0, d0, d1
	ldr	d1, [sp, #96]
	fadd	d0, d0, d1
	ldr	d1, [sp, #88]
	fadd	d0, d0, d1
	ldr	d1, [sp, #80]
	fadd	d0, d0, d1
	ldr	d1, [sp, #72]
	fadd	d0, d0, d1
	ldr	d1, [sp, #64]
	fadd	d0, d0, d1
	ldr	d1, [sp, #56]
	fadd	d0, d0, d1
	ldr	d1, [sp, #48]
	fadd	d0, d0, d1
	ldr	d1, [sp, #40]
	fadd	d0, d0, d1
	ldr	d1, [sp, #32]
	fadd	d0, d0, d1
	ldr	d1, [sp, #24]
	fadd	d0, d0, d1
	ldr	d1, [sp, #16]
	fadd	d0, d0, d1
	ldr	d1, [sp, #8]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #224
	.seh_stackalloc	224
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_many_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_floats         // -- Begin function use_va_list_many_floats
	.p2align	2
use_va_list_many_floats:                // @use_va_list_many_floats
.seh_proc use_va_list_many_floats
// %bb.0:
	sub	sp, sp, #160
	.seh_stackalloc	160
	.seh_endprologue
	str	x0, [sp, #152]
	str	x1, [sp, #144]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #136]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #128]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #120]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #112]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #104]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #96]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #88]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #80]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #72]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #64]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #56]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #40]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	d0, [sp, #136]
	ldr	d1, [sp, #128]
	fadd	d0, d0, d1
	ldr	d1, [sp, #120]
	fadd	d0, d0, d1
	ldr	d1, [sp, #112]
	fadd	d0, d0, d1
	ldr	d1, [sp, #104]
	fadd	d0, d0, d1
	ldr	d1, [sp, #96]
	fadd	d0, d0, d1
	ldr	d1, [sp, #88]
	fadd	d0, d0, d1
	ldr	d1, [sp, #80]
	fadd	d0, d0, d1
	ldr	d1, [sp, #72]
	fadd	d0, d0, d1
	ldr	d1, [sp, #64]
	fadd	d0, d0, d1
	ldr	d1, [sp, #56]
	fadd	d0, d0, d1
	ldr	d1, [sp, #48]
	fadd	d0, d0, d1
	ldr	d1, [sp, #40]
	fadd	d0, d0, d1
	ldr	d1, [sp, #32]
	fadd	d0, d0, d1
	ldr	d1, [sp, #24]
	fadd	d0, d0, d1
	ldr	d1, [sp, #16]
	fadd	d0, d0, d1
	ldr	d1, [sp, #8]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #160
	.seh_stackalloc	160
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_strings;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_strings         // -- Begin function use_va_args_few_strings
	.p2align	2
use_va_args_few_strings:                // @use_va_args_few_strings
.seh_proc use_va_args_few_strings
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
	ldr	x8, [sp, #16]
	add	x9, x8, #8
	str	x9, [sp, #16]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #12]
	ldr	x8, [sp, #16]
	add	x9, x8, #8
	str	x9, [sp, #16]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	add	w0, w8, w9
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
	.def	use_va_list_few_strings;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_strings         // -- Begin function use_va_list_few_strings
	.p2align	2
use_va_list_few_strings:                // @use_va_list_few_strings
.seh_proc use_va_list_few_strings
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	add	x9, x8, #8
	str	x9, [sp, #16]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #12]
	ldr	x8, [sp, #16]
	add	x9, x8, #8
	str	x9, [sp, #16]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	add	w0, w8, w9
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
	.def	use_va_args_several_strings;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_strings     // -- Begin function use_va_args_several_strings
	.p2align	2
use_va_args_several_strings:            // @use_va_args_several_strings
.seh_proc use_va_args_several_strings
// %bb.0:
	sub	sp, sp, #144
	.seh_stackalloc	144
	str	x30, [sp, #64]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 64
	.seh_endprologue
	str	x7, [sp, #136]
	str	x6, [sp, #128]
	str	x5, [sp, #120]
	str	x4, [sp, #112]
	str	x3, [sp, #104]
	str	x2, [sp, #96]
	str	x1, [sp, #88]
	str	x0, [sp, #56]
	add	x8, sp, #88
	str	x8, [sp, #48]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #44]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #40]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #36]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #32]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #28]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #24]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #20]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #16]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #12]
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #40]
	add	w8, w8, w9
	ldr	w9, [sp, #36]
	add	w8, w8, w9
	ldr	w9, [sp, #32]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	.seh_startepilogue
	ldr	x30, [sp, #64]                  // 8-byte Folded Reload
	.seh_save_reg	x30, 64
	add	sp, sp, #144
	.seh_stackalloc	144
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_several_strings;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_strings     // -- Begin function use_va_list_several_strings
	.p2align	2
use_va_list_several_strings:            // @use_va_list_several_strings
.seh_proc use_va_list_several_strings
// %bb.0:
	sub	sp, sp, #80
	.seh_stackalloc	80
	str	x30, [sp, #64]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 64
	.seh_endprologue
	str	x0, [sp, #56]
	str	x1, [sp, #48]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #44]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #40]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #36]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #32]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #28]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #24]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #20]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #16]
	ldr	x8, [sp, #48]
	add	x9, x8, #8
	str	x9, [sp, #48]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #12]
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #40]
	add	w8, w8, w9
	ldr	w9, [sp, #36]
	add	w8, w8, w9
	ldr	w9, [sp, #32]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	.seh_startepilogue
	ldr	x30, [sp, #64]                  // 8-byte Folded Reload
	.seh_save_reg	x30, 64
	add	sp, sp, #80
	.seh_stackalloc	80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_many_strings;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_strings        // -- Begin function use_va_args_many_strings
	.p2align	2
use_va_args_many_strings:               // @use_va_args_many_strings
.seh_proc use_va_args_many_strings
// %bb.0:
	sub	sp, sp, #176
	.seh_stackalloc	176
	str	x30, [sp, #96]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 96
	.seh_endprologue
	str	x7, [sp, #168]
	str	x6, [sp, #160]
	str	x5, [sp, #152]
	str	x4, [sp, #144]
	str	x3, [sp, #136]
	str	x2, [sp, #128]
	str	x1, [sp, #120]
	str	x0, [sp, #88]
	add	x8, sp, #120
	str	x8, [sp, #80]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #76]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #72]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #68]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #64]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #60]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #56]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #52]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #48]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #44]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #40]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #36]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #32]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #28]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #24]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #20]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #16]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #12]
	ldr	w8, [sp, #76]
	ldr	w9, [sp, #72]
	add	w8, w8, w9
	ldr	w9, [sp, #68]
	add	w8, w8, w9
	ldr	w9, [sp, #64]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	add	w8, w8, w9
	ldr	w9, [sp, #56]
	add	w8, w8, w9
	ldr	w9, [sp, #52]
	add	w8, w8, w9
	ldr	w9, [sp, #48]
	add	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w8, w8, w9
	ldr	w9, [sp, #40]
	add	w8, w8, w9
	ldr	w9, [sp, #36]
	add	w8, w8, w9
	ldr	w9, [sp, #32]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	.seh_startepilogue
	ldr	x30, [sp, #96]                  // 8-byte Folded Reload
	.seh_save_reg	x30, 96
	add	sp, sp, #176
	.seh_stackalloc	176
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_many_strings;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_strings        // -- Begin function use_va_list_many_strings
	.p2align	2
use_va_list_many_strings:               // @use_va_list_many_strings
.seh_proc use_va_list_many_strings
// %bb.0:
	sub	sp, sp, #112
	.seh_stackalloc	112
	str	x30, [sp, #96]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 96
	.seh_endprologue
	str	x0, [sp, #88]
	str	x1, [sp, #80]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #76]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #72]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #68]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #64]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #60]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #56]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #52]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #48]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #44]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #40]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #36]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #32]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #28]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #24]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #20]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #16]
	ldr	x8, [sp, #80]
	add	x9, x8, #8
	str	x9, [sp, #80]
	ldr	x0, [x8]
	bl	atoi
	str	w0, [sp, #12]
	ldr	w8, [sp, #76]
	ldr	w9, [sp, #72]
	add	w8, w8, w9
	ldr	w9, [sp, #68]
	add	w8, w8, w9
	ldr	w9, [sp, #64]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	add	w8, w8, w9
	ldr	w9, [sp, #56]
	add	w8, w8, w9
	ldr	w9, [sp, #52]
	add	w8, w8, w9
	ldr	w9, [sp, #48]
	add	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w8, w8, w9
	ldr	w9, [sp, #40]
	add	w8, w8, w9
	ldr	w9, [sp, #36]
	add	w8, w8, w9
	ldr	w9, [sp, #32]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	.seh_startepilogue
	ldr	x30, [sp, #96]                  // 8-byte Folded Reload
	.seh_save_reg	x30, 96
	add	sp, sp, #112
	.seh_stackalloc	112
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_composites      // -- Begin function use_va_args_few_composites
	.p2align	2
use_va_args_few_composites:             // @use_va_args_few_composites
.seh_proc use_va_args_few_composites
// %bb.0:
	sub	sp, sp, #240
	.seh_stackalloc	240
	.seh_endprologue
	str	x7, [sp, #232]
	str	x6, [sp, #224]
	str	x5, [sp, #216]
	str	x4, [sp, #208]
	str	x3, [sp, #200]
	str	x2, [sp, #192]
	str	x1, [sp, #184]
	str	x0, [sp, #168]
	add	x8, sp, #184
	str	x8, [sp, #160]
	ldr	x8, [sp, #160]
	add	x9, x8, #8
	str	x9, [sp, #160]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #128]
	str	q2, [sp, #112]
	str	q1, [sp, #96]
	str	q0, [sp, #80]
	ldrb	w8, [sp, #80]
	strb	w8, [sp, #159]
	ldr	x8, [sp, #160]
	add	x9, x8, #8
	str	x9, [sp, #160]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #48]
	str	q2, [sp, #32]
	str	q1, [sp, #16]
	str	q0, [sp]
	ldr	w8, [sp, #4]
	str	w8, [sp, #76]
	ldrsb	w8, [sp, #159]
	ldr	w9, [sp, #76]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #240
	.seh_stackalloc	240
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_few_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_composites      // -- Begin function use_va_list_few_composites
	.p2align	2
use_va_list_few_composites:             // @use_va_list_few_composites
.seh_proc use_va_list_few_composites
// %bb.0:
	sub	sp, sp, #192
	.seh_stackalloc	192
	str	x30, [sp, #176]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 176
	.seh_endprologue
	str	x0, [sp, #168]
	str	x1, [sp, #160]
	ldr	x8, [sp, #160]
	add	x9, x8, #8
	str	x9, [sp, #160]
	ldr	x1, [x8]
	add	x0, sp, #88
	mov	x2, #64
	str	x2, [sp, #8]                    // 8-byte Folded Spill
	bl	memcpy
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldrb	w8, [sp, #88]
	strb	w8, [sp, #159]
	ldr	x8, [sp, #160]
	add	x9, x8, #8
	str	x9, [sp, #160]
	ldr	x1, [x8]
	add	x0, sp, #16
	bl	memcpy
	ldr	w8, [sp, #20]
	str	w8, [sp, #84]
	ldrsb	w8, [sp, #159]
	ldr	w9, [sp, #84]
	add	w0, w8, w9
	.seh_startepilogue
	ldr	x30, [sp, #176]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 176
	add	sp, sp, #192
	.seh_stackalloc	192
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_several_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_composites  // -- Begin function use_va_args_several_composites
	.p2align	2
use_va_args_several_composites:         // @use_va_args_several_composites
.seh_proc use_va_args_several_composites
// %bb.0:
	stp	x29, x30, [sp, #-80]!           // 16-byte Folded Spill
	.seh_save_fplr_x	80
	sub	sp, sp, #736
	.seh_stackalloc	736
	.seh_endprologue
	str	x7, [sp, #808]
	str	x6, [sp, #800]
	str	x5, [sp, #792]
	str	x4, [sp, #784]
	str	x3, [sp, #776]
	str	x2, [sp, #768]
	str	x1, [sp, #760]
	str	x0, [sp, #728]
	add	x8, sp, #760
	str	x8, [sp, #720]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #688]
	str	q2, [sp, #672]
	str	q1, [sp, #656]
	str	q0, [sp, #640]
	ldrb	w8, [sp, #640]
	strb	w8, [sp, #719]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #608]
	str	q2, [sp, #592]
	str	q1, [sp, #576]
	str	q0, [sp, #560]
	ldr	w8, [sp, #564]
	str	w8, [sp, #636]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #528]
	str	q2, [sp, #512]
	str	q1, [sp, #496]
	str	q0, [sp, #480]
	ldr	x0, [sp, #488]
	bl	atoi
	str	w0, [sp, #556]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #448]
	str	q2, [sp, #432]
	str	q1, [sp, #416]
	str	q0, [sp, #400]
	ldrb	w8, [sp, #400]
	strb	w8, [sp, #479]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #368]
	str	q2, [sp, #352]
	str	q1, [sp, #336]
	str	q0, [sp, #320]
	ldr	w8, [sp, #324]
	str	w8, [sp, #396]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #288]
	str	q2, [sp, #272]
	str	q1, [sp, #256]
	str	q0, [sp, #240]
	ldr	x0, [sp, #248]
	bl	atoi
	str	w0, [sp, #316]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #208]
	str	q2, [sp, #192]
	str	q1, [sp, #176]
	str	q0, [sp, #160]
	ldrb	w8, [sp, #160]
	strb	w8, [sp, #239]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #128]
	str	q2, [sp, #112]
	str	q1, [sp, #96]
	str	q0, [sp, #80]
	ldr	w8, [sp, #84]
	str	w8, [sp, #156]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #48]
	str	q2, [sp, #32]
	str	q1, [sp, #16]
	str	q0, [sp]
	ldr	x0, [sp, #8]
	bl	atoi
	str	w0, [sp, #76]
	ldrsb	w8, [sp, #719]
	ldr	w9, [sp, #636]
	add	w8, w8, w9
	ldr	w9, [sp, #556]
	add	w8, w8, w9
	ldrsb	w9, [sp, #479]
	add	w8, w8, w9
	ldr	w9, [sp, #396]
	add	w8, w8, w9
	ldr	w9, [sp, #316]
	add	w8, w8, w9
	ldrsb	w9, [sp, #239]
	add	w8, w8, w9
	ldr	w9, [sp, #156]
	add	w8, w8, w9
	ldr	w9, [sp, #76]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #736
	.seh_stackalloc	736
	ldp	x29, x30, [sp], #80             // 16-byte Folded Reload
	.seh_save_fplr_x	80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_several_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_composites  // -- Begin function use_va_list_several_composites
	.p2align	2
use_va_list_several_composites:         // @use_va_list_several_composites
.seh_proc use_va_list_several_composites
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	.seh_save_fplr_x	16
	sub	sp, sp, #672
	.seh_stackalloc	672
	.seh_endprologue
	str	x0, [sp, #664]
	str	x1, [sp, #656]
	ldr	x8, [sp, #656]
	add	x9, x8, #8
	str	x9, [sp, #656]
	ldr	x1, [x8]
	add	x0, sp, #584
	mov	x2, #64
	str	x2, [sp]                        // 8-byte Folded Spill
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldrb	w8, [sp, #584]
	strb	w8, [sp, #655]
	ldr	x8, [sp, #656]
	add	x9, x8, #8
	str	x9, [sp, #656]
	ldr	x1, [x8]
	add	x0, sp, #512
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #516]
	str	w8, [sp, #580]
	ldr	x8, [sp, #656]
	add	x9, x8, #8
	str	x9, [sp, #656]
	ldr	x1, [x8]
	add	x0, sp, #440
	bl	memcpy
	ldr	x0, [sp, #448]
	bl	atoi
	ldr	x2, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #508]
	ldr	x8, [sp, #656]
	add	x9, x8, #8
	str	x9, [sp, #656]
	ldr	x1, [x8]
	add	x0, sp, #368
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldrb	w8, [sp, #368]
	strb	w8, [sp, #439]
	ldr	x8, [sp, #656]
	add	x9, x8, #8
	str	x9, [sp, #656]
	ldr	x1, [x8]
	add	x0, sp, #296
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #300]
	str	w8, [sp, #364]
	ldr	x8, [sp, #656]
	add	x9, x8, #8
	str	x9, [sp, #656]
	ldr	x1, [x8]
	add	x0, sp, #224
	bl	memcpy
	ldr	x0, [sp, #232]
	bl	atoi
	ldr	x2, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #292]
	ldr	x8, [sp, #656]
	add	x9, x8, #8
	str	x9, [sp, #656]
	ldr	x1, [x8]
	add	x0, sp, #152
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldrb	w8, [sp, #152]
	strb	w8, [sp, #223]
	ldr	x8, [sp, #656]
	add	x9, x8, #8
	str	x9, [sp, #656]
	ldr	x1, [x8]
	add	x0, sp, #80
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #84]
	str	w8, [sp, #148]
	ldr	x8, [sp, #656]
	add	x9, x8, #8
	str	x9, [sp, #656]
	ldr	x1, [x8]
	add	x0, sp, #8
	bl	memcpy
	ldr	x0, [sp, #16]
	bl	atoi
	str	w0, [sp, #76]
	ldrsb	w8, [sp, #655]
	ldr	w9, [sp, #580]
	add	w8, w8, w9
	ldr	w9, [sp, #508]
	add	w8, w8, w9
	ldrsb	w9, [sp, #439]
	add	w8, w8, w9
	ldr	w9, [sp, #364]
	add	w8, w8, w9
	ldr	w9, [sp, #292]
	add	w8, w8, w9
	ldrsb	w9, [sp, #223]
	add	w8, w8, w9
	ldr	w9, [sp, #148]
	add	w8, w8, w9
	ldr	w9, [sp, #76]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #672
	.seh_stackalloc	672
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	.seh_save_fplr_x	16
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_many_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_composites     // -- Begin function use_va_args_many_composites
	.p2align	2
use_va_args_many_composites:            // @use_va_args_many_composites
.seh_proc use_va_args_many_composites
// %bb.0:
	stp	x29, x30, [sp, #-80]!           // 16-byte Folded Spill
	.seh_save_fplr_x	80
	sub	sp, sp, #1376
	.seh_stackalloc	1376
	.seh_endprologue
	str	x7, [sp, #1448]
	str	x6, [sp, #1440]
	str	x5, [sp, #1432]
	str	x4, [sp, #1424]
	str	x3, [sp, #1416]
	str	x2, [sp, #1408]
	str	x1, [sp, #1400]
	str	x0, [sp, #1368]
	add	x8, sp, #1400
	str	x8, [sp, #1360]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1328]
	str	q2, [sp, #1312]
	str	q1, [sp, #1296]
	str	q0, [sp, #1280]
	ldrb	w8, [sp, #1280]
	strb	w8, [sp, #1359]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1248]
	str	q2, [sp, #1232]
	str	q1, [sp, #1216]
	str	q0, [sp, #1200]
	ldr	w8, [sp, #1204]
	str	w8, [sp, #1276]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1168]
	str	q2, [sp, #1152]
	str	q1, [sp, #1136]
	str	q0, [sp, #1120]
	ldr	x0, [sp, #1128]
	bl	atoi
	str	w0, [sp, #1196]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1088]
	str	q2, [sp, #1072]
	str	q1, [sp, #1056]
	str	q0, [sp, #1040]
	ldrb	w8, [sp, #1040]
	strb	w8, [sp, #1119]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1008]
	str	q2, [sp, #992]
	str	q1, [sp, #976]
	str	q0, [sp, #960]
	ldr	w8, [sp, #964]
	str	w8, [sp, #1036]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #928]
	str	q2, [sp, #912]
	str	q1, [sp, #896]
	str	q0, [sp, #880]
	ldr	x0, [sp, #888]
	bl	atoi
	str	w0, [sp, #956]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #848]
	str	q2, [sp, #832]
	str	q1, [sp, #816]
	str	q0, [sp, #800]
	ldrb	w8, [sp, #800]
	strb	w8, [sp, #879]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #768]
	str	q2, [sp, #752]
	str	q1, [sp, #736]
	str	q0, [sp, #720]
	ldr	w8, [sp, #724]
	str	w8, [sp, #796]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #688]
	str	q2, [sp, #672]
	str	q1, [sp, #656]
	str	q0, [sp, #640]
	ldr	x0, [sp, #648]
	bl	atoi
	str	w0, [sp, #716]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #608]
	str	q2, [sp, #592]
	str	q1, [sp, #576]
	str	q0, [sp, #560]
	ldrb	w8, [sp, #560]
	strb	w8, [sp, #639]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #528]
	str	q2, [sp, #512]
	str	q1, [sp, #496]
	str	q0, [sp, #480]
	ldr	w8, [sp, #484]
	str	w8, [sp, #556]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #448]
	str	q2, [sp, #432]
	str	q1, [sp, #416]
	str	q0, [sp, #400]
	ldr	x0, [sp, #408]
	bl	atoi
	str	w0, [sp, #476]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #368]
	str	q2, [sp, #352]
	str	q1, [sp, #336]
	str	q0, [sp, #320]
	ldr	w8, [sp, #324]
	str	w8, [sp, #396]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #288]
	str	q2, [sp, #272]
	str	q1, [sp, #256]
	str	q0, [sp, #240]
	ldr	w8, [sp, #244]
	str	w8, [sp, #316]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #208]
	str	q2, [sp, #192]
	str	q1, [sp, #176]
	str	q0, [sp, #160]
	ldr	x0, [sp, #168]
	bl	atoi
	str	w0, [sp, #236]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #128]
	str	q2, [sp, #112]
	str	q1, [sp, #96]
	str	q0, [sp, #80]
	ldr	w8, [sp, #84]
	str	w8, [sp, #156]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #48]
	str	q2, [sp, #32]
	str	q1, [sp, #16]
	str	q0, [sp]
	ldr	w8, [sp, #4]
	str	w8, [sp, #76]
	ldrsb	w8, [sp, #1359]
	ldr	w9, [sp, #1276]
	add	w8, w8, w9
	ldr	w9, [sp, #1196]
	add	w8, w8, w9
	ldrsb	w9, [sp, #1119]
	add	w8, w8, w9
	ldr	w9, [sp, #1036]
	add	w8, w8, w9
	ldr	w9, [sp, #956]
	add	w8, w8, w9
	ldrsb	w9, [sp, #879]
	add	w8, w8, w9
	ldr	w9, [sp, #796]
	add	w8, w8, w9
	ldr	w9, [sp, #716]
	add	w8, w8, w9
	ldrsb	w9, [sp, #639]
	add	w8, w8, w9
	ldr	w9, [sp, #556]
	add	w8, w8, w9
	ldr	w9, [sp, #476]
	add	w8, w8, w9
	ldr	w9, [sp, #396]
	add	w8, w8, w9
	ldr	w9, [sp, #316]
	add	w8, w8, w9
	ldr	w9, [sp, #236]
	add	w8, w8, w9
	ldr	w9, [sp, #156]
	add	w8, w8, w9
	ldr	w9, [sp, #76]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #1376
	.seh_stackalloc	1376
	ldp	x29, x30, [sp], #80             // 16-byte Folded Reload
	.seh_save_fplr_x	80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_many_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_composites     // -- Begin function use_va_list_many_composites
	.p2align	2
use_va_list_many_composites:            // @use_va_list_many_composites
.seh_proc use_va_list_many_composites
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	.seh_save_fplr_x	16
	sub	sp, sp, #1248
	.seh_stackalloc	1248
	.seh_endprologue
	str	x0, [sp, #1240]
	str	x1, [sp, #1232]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #1160
	mov	x2, #64
	str	x2, [sp]                        // 8-byte Folded Spill
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldrb	w8, [sp, #1160]
	strb	w8, [sp, #1231]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #1088
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #1092]
	str	w8, [sp, #1156]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #1016
	bl	memcpy
	ldr	x0, [sp, #1024]
	bl	atoi
	ldr	x2, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #1084]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #944
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldrb	w8, [sp, #944]
	strb	w8, [sp, #1015]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #872
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #876]
	str	w8, [sp, #940]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #800
	bl	memcpy
	ldr	x0, [sp, #808]
	bl	atoi
	ldr	x2, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #868]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #728
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldrb	w8, [sp, #728]
	strb	w8, [sp, #799]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #656
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #660]
	str	w8, [sp, #724]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #584
	bl	memcpy
	ldr	x0, [sp, #592]
	bl	atoi
	ldr	x2, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #652]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #512
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldrb	w8, [sp, #512]
	strb	w8, [sp, #583]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #440
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #444]
	str	w8, [sp, #508]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #368
	bl	memcpy
	ldr	x0, [sp, #376]
	bl	atoi
	ldr	x2, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #436]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #296
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #300]
	str	w8, [sp, #364]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #224
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #228]
	str	w8, [sp, #292]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #152
	bl	memcpy
	ldr	x0, [sp, #160]
	bl	atoi
	ldr	x2, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #220]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #80
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #84]
	str	w8, [sp, #148]
	ldr	x8, [sp, #1232]
	add	x9, x8, #8
	str	x9, [sp, #1232]
	ldr	x1, [x8]
	add	x0, sp, #8
	bl	memcpy
	ldr	w8, [sp, #12]
	str	w8, [sp, #76]
	ldrsb	w8, [sp, #1231]
	ldr	w9, [sp, #1156]
	add	w8, w8, w9
	ldr	w9, [sp, #1084]
	add	w8, w8, w9
	ldrsb	w9, [sp, #1015]
	add	w8, w8, w9
	ldr	w9, [sp, #940]
	add	w8, w8, w9
	ldr	w9, [sp, #868]
	add	w8, w8, w9
	ldrsb	w9, [sp, #799]
	add	w8, w8, w9
	ldr	w9, [sp, #724]
	add	w8, w8, w9
	ldr	w9, [sp, #652]
	add	w8, w8, w9
	ldrsb	w9, [sp, #583]
	add	w8, w8, w9
	ldr	w9, [sp, #508]
	add	w8, w8, w9
	ldr	w9, [sp, #436]
	add	w8, w8, w9
	ldr	w9, [sp, #364]
	add	w8, w8, w9
	ldr	w9, [sp, #292]
	add	w8, w8, w9
	ldr	w9, [sp, #220]
	add	w8, w8, w9
	ldr	w9, [sp, #148]
	add	w8, w8, w9
	ldr	w9, [sp, #76]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #1248
	.seh_stackalloc	1248
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	.seh_save_fplr_x	16
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_short_vector_8_bytes // -- Begin function use_va_args_few_short_vector_8_bytes
	.p2align	2
use_va_args_few_short_vector_8_bytes:   // @use_va_args_few_short_vector_8_bytes
.seh_proc use_va_args_few_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #112
	.seh_stackalloc	112
	.seh_endprologue
	str	x7, [sp, #104]
	str	x6, [sp, #96]
	str	x5, [sp, #88]
	str	x4, [sp, #80]
	str	x3, [sp, #72]
	str	x2, [sp, #64]
	str	x1, [sp, #56]
	str	x0, [sp, #40]
	add	x8, sp, #56
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	add	x9, x8, #8
	str	x9, [sp, #32]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	w8, [sp, #16]
	str	w8, [sp, #28]
	ldr	x8, [sp, #32]
	add	x9, x8, #8
	str	x9, [sp, #32]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	w8, [sp, #4]
	str	w8, [sp, #12]
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #112
	.seh_stackalloc	112
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_few_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_short_vector_8_bytes // -- Begin function use_va_list_few_short_vector_8_bytes
	.p2align	2
use_va_list_few_short_vector_8_bytes:   // @use_va_list_few_short_vector_8_bytes
.seh_proc use_va_list_few_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	.seh_endprologue
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	ldr	x8, [sp, #32]
	add	x9, x8, #8
	str	x9, [sp, #32]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	w8, [sp, #16]
	str	w8, [sp, #28]
	ldr	x8, [sp, #32]
	add	x9, x8, #8
	str	x9, [sp, #32]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	w8, [sp, #4]
	str	w8, [sp, #12]
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #48
	.seh_stackalloc	48
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_several_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_short_vector_8_bytes // -- Begin function use_va_args_several_short_vector_8_bytes
	.p2align	2
use_va_args_several_short_vector_8_bytes: // @use_va_args_several_short_vector_8_bytes
.seh_proc use_va_args_several_short_vector_8_bytes
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
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #140]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #112]
	ldr	w8, [sp, #116]
	str	w8, [sp, #124]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #96]
	ldr	w8, [sp, #96]
	str	w8, [sp, #108]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #80]
	ldr	w8, [sp, #84]
	str	w8, [sp, #92]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #64]
	ldr	w8, [sp, #64]
	str	w8, [sp, #76]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldr	w8, [sp, #52]
	str	w8, [sp, #60]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldr	w8, [sp, #32]
	str	w8, [sp, #44]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	w8, [sp, #20]
	str	w8, [sp, #28]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	w8, [sp]
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
	.def	use_va_list_several_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_short_vector_8_bytes // -- Begin function use_va_list_several_short_vector_8_bytes
	.p2align	2
use_va_list_several_short_vector_8_bytes: // @use_va_list_several_short_vector_8_bytes
.seh_proc use_va_list_several_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #160
	.seh_stackalloc	160
	.seh_endprologue
	str	x0, [sp, #152]
	str	x1, [sp, #144]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #140]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #112]
	ldr	w8, [sp, #116]
	str	w8, [sp, #124]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #96]
	ldr	w8, [sp, #96]
	str	w8, [sp, #108]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #80]
	ldr	w8, [sp, #84]
	str	w8, [sp, #92]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #64]
	ldr	w8, [sp, #64]
	str	w8, [sp, #76]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldr	w8, [sp, #52]
	str	w8, [sp, #60]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldr	w8, [sp, #32]
	str	w8, [sp, #44]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	w8, [sp, #20]
	str	w8, [sp, #28]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	w8, [sp]
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
	.def	use_va_args_many_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_short_vector_8_bytes // -- Begin function use_va_args_many_short_vector_8_bytes
	.p2align	2
use_va_args_many_short_vector_8_bytes:  // @use_va_args_many_short_vector_8_bytes
.seh_proc use_va_args_many_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #368
	.seh_stackalloc	368
	str	x30, [sp, #288]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 288
	.seh_endprologue
	str	x7, [sp, #360]
	str	x6, [sp, #352]
	str	x5, [sp, #344]
	str	x4, [sp, #336]
	str	x3, [sp, #328]
	str	x2, [sp, #320]
	str	x1, [sp, #312]
	str	x0, [sp, #280]
	add	x8, sp, #312
	str	x8, [sp, #272]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #256]
	ldr	w8, [sp, #256]
	str	w8, [sp, #268]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #240]
	ldr	w8, [sp, #244]
	str	w8, [sp, #252]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #224]
	ldr	w8, [sp, #224]
	str	w8, [sp, #236]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #208]
	ldr	w8, [sp, #212]
	str	w8, [sp, #220]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #192]
	ldr	w8, [sp, #192]
	str	w8, [sp, #204]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #176]
	ldr	w8, [sp, #180]
	str	w8, [sp, #188]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #160]
	ldr	w8, [sp, #160]
	str	w8, [sp, #172]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #144]
	ldr	w8, [sp, #148]
	str	w8, [sp, #156]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #140]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #112]
	ldr	w8, [sp, #116]
	str	w8, [sp, #124]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #96]
	ldr	w8, [sp, #96]
	str	w8, [sp, #108]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #80]
	ldr	w8, [sp, #84]
	str	w8, [sp, #92]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #64]
	ldr	w8, [sp, #64]
	str	w8, [sp, #76]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldr	w8, [sp, #52]
	str	w8, [sp, #60]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldr	w8, [sp, #32]
	str	w8, [sp, #44]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	w8, [sp, #20]
	str	w8, [sp, #28]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #12]
	ldr	w8, [sp, #268]
	ldr	w9, [sp, #252]
	add	w8, w8, w9
	ldr	w9, [sp, #236]
	add	w8, w8, w9
	ldr	w9, [sp, #220]
	add	w8, w8, w9
	ldr	w9, [sp, #204]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #172]
	add	w8, w8, w9
	ldr	w9, [sp, #156]
	add	w8, w8, w9
	ldr	w9, [sp, #140]
	add	w8, w8, w9
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
	ldr	x30, [sp, #288]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 288
	add	sp, sp, #368
	.seh_stackalloc	368
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_many_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_short_vector_8_bytes // -- Begin function use_va_list_many_short_vector_8_bytes
	.p2align	2
use_va_list_many_short_vector_8_bytes:  // @use_va_list_many_short_vector_8_bytes
.seh_proc use_va_list_many_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #304
	.seh_stackalloc	304
	str	x30, [sp, #288]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 288
	.seh_endprologue
	str	x0, [sp, #280]
	str	x1, [sp, #272]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #256]
	ldr	w8, [sp, #256]
	str	w8, [sp, #268]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #240]
	ldr	w8, [sp, #244]
	str	w8, [sp, #252]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #224]
	ldr	w8, [sp, #224]
	str	w8, [sp, #236]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #208]
	ldr	w8, [sp, #212]
	str	w8, [sp, #220]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #192]
	ldr	w8, [sp, #192]
	str	w8, [sp, #204]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #176]
	ldr	w8, [sp, #180]
	str	w8, [sp, #188]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #160]
	ldr	w8, [sp, #160]
	str	w8, [sp, #172]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #144]
	ldr	w8, [sp, #148]
	str	w8, [sp, #156]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #140]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #112]
	ldr	w8, [sp, #116]
	str	w8, [sp, #124]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #96]
	ldr	w8, [sp, #96]
	str	w8, [sp, #108]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #80]
	ldr	w8, [sp, #84]
	str	w8, [sp, #92]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #64]
	ldr	w8, [sp, #64]
	str	w8, [sp, #76]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldr	w8, [sp, #52]
	str	w8, [sp, #60]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldr	w8, [sp, #32]
	str	w8, [sp, #44]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	w8, [sp, #20]
	str	w8, [sp, #28]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #12]
	ldr	w8, [sp, #268]
	ldr	w9, [sp, #252]
	add	w8, w8, w9
	ldr	w9, [sp, #236]
	add	w8, w8, w9
	ldr	w9, [sp, #220]
	add	w8, w8, w9
	ldr	w9, [sp, #204]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #172]
	add	w8, w8, w9
	ldr	w9, [sp, #156]
	add	w8, w8, w9
	ldr	w9, [sp, #140]
	add	w8, w8, w9
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
	ldr	x30, [sp, #288]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 288
	add	sp, sp, #304
	.seh_stackalloc	304
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_not_short_vector_12_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_not_short_vector_12_bytes // -- Begin function use_va_args_few_not_short_vector_12_bytes
	.p2align	2
use_va_args_few_not_short_vector_12_bytes: // @use_va_args_few_not_short_vector_12_bytes
.seh_proc use_va_args_few_not_short_vector_12_bytes
// %bb.0:
	sub	sp, sp, #112
	.seh_stackalloc	112
	.seh_endprologue
	str	x7, [sp, #104]
	str	x6, [sp, #96]
	str	x5, [sp, #88]
	str	x4, [sp, #80]
	str	x3, [sp, #72]
	str	x2, [sp, #64]
	str	x1, [sp, #56]
	str	x0, [sp, #40]
	add	x8, sp, #56
	str	x8, [sp, #32]
	ldr	x9, [sp, #32]
	add	x8, x9, #16
	str	x8, [sp, #32]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #24]
	str	x8, [sp, #16]
	ldr	w8, [sp, #16]
	str	w8, [sp, #28]
	ldr	x9, [sp, #32]
	add	x8, x9, #16
	str	x8, [sp, #32]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #8]
	str	x8, [sp]
	ldr	w8, [sp, #4]
	str	w8, [sp, #12]
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #112
	.seh_stackalloc	112
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_few_not_short_vector_12_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_not_short_vector_12_bytes // -- Begin function use_va_list_few_not_short_vector_12_bytes
	.p2align	2
use_va_list_few_not_short_vector_12_bytes: // @use_va_list_few_not_short_vector_12_bytes
.seh_proc use_va_list_few_not_short_vector_12_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	.seh_endprologue
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	ldr	x8, [sp, #32]
	add	x9, x8, #16
	str	x9, [sp, #32]
	ldr	x9, [x8]
	str	x9, [sp, #16]
	ldr	w8, [x8, #8]
	str	w8, [sp, #24]
	ldr	w8, [sp, #16]
	str	w8, [sp, #28]
	ldr	x8, [sp, #32]
	add	x9, x8, #16
	str	x9, [sp, #32]
	ldr	x9, [x8]
	str	x9, [sp]
	ldr	w8, [x8, #8]
	str	w8, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [sp, #12]
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #12]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #48
	.seh_stackalloc	48
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_several_not_short_vector_12_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_not_short_vector_12_bytes // -- Begin function use_va_args_several_not_short_vector_12_bytes
	.p2align	2
use_va_args_several_not_short_vector_12_bytes: // @use_va_args_several_not_short_vector_12_bytes
.seh_proc use_va_args_several_not_short_vector_12_bytes
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
	.def	use_va_list_several_not_short_vector_12_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_not_short_vector_12_bytes // -- Begin function use_va_list_several_not_short_vector_12_bytes
	.p2align	2
use_va_list_several_not_short_vector_12_bytes: // @use_va_list_several_not_short_vector_12_bytes
.seh_proc use_va_list_several_not_short_vector_12_bytes
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
	.def	use_va_args_many_not_short_vector_12_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_not_short_vector_12_bytes // -- Begin function use_va_args_many_not_short_vector_12_bytes
	.p2align	2
use_va_args_many_not_short_vector_12_bytes: // @use_va_args_many_not_short_vector_12_bytes
.seh_proc use_va_args_many_not_short_vector_12_bytes
// %bb.0:
	sub	sp, sp, #368
	.seh_stackalloc	368
	str	x30, [sp, #288]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 288
	.seh_endprologue
	str	x7, [sp, #360]
	str	x6, [sp, #352]
	str	x5, [sp, #344]
	str	x4, [sp, #336]
	str	x3, [sp, #328]
	str	x2, [sp, #320]
	str	x1, [sp, #312]
	str	x0, [sp, #280]
	add	x8, sp, #312
	str	x8, [sp, #272]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #264]
	str	x8, [sp, #256]
	ldr	w8, [sp, #256]
	str	w8, [sp, #268]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #248]
	str	x8, [sp, #240]
	ldr	w8, [sp, #244]
	str	w8, [sp, #252]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #232]
	str	x8, [sp, #224]
	ldr	w8, [sp, #232]
	str	w8, [sp, #236]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #216]
	str	x8, [sp, #208]
	ldr	w8, [sp, #208]
	str	w8, [sp, #220]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #200]
	str	x8, [sp, #192]
	ldr	w8, [sp, #196]
	str	w8, [sp, #204]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #184]
	str	x8, [sp, #176]
	ldr	w8, [sp, #184]
	str	w8, [sp, #188]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #168]
	str	x8, [sp, #160]
	ldr	w8, [sp, #160]
	str	w8, [sp, #172]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #152]
	str	x8, [sp, #144]
	ldr	w8, [sp, #148]
	str	w8, [sp, #156]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #136]
	str	x8, [sp, #128]
	ldr	w8, [sp, #136]
	str	w8, [sp, #140]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #120]
	str	x8, [sp, #112]
	ldr	w8, [sp, #112]
	str	w8, [sp, #124]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #104]
	str	x8, [sp, #96]
	ldr	w8, [sp, #100]
	str	w8, [sp, #108]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #88]
	str	x8, [sp, #80]
	ldr	w8, [sp, #88]
	str	w8, [sp, #92]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #72]
	str	x8, [sp, #64]
	ldr	w8, [sp, #64]
	str	w8, [sp, #76]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #56]
	str	x8, [sp, #48]
	ldr	w8, [sp, #52]
	str	w8, [sp, #60]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #40]
	str	x8, [sp, #32]
	ldr	w8, [sp, #40]
	str	w8, [sp, #44]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #24]
	str	x8, [sp, #16]
	ldr	w8, [sp, #16]
	str	w8, [sp, #28]
	ldr	x9, [sp, #272]
	add	x8, x9, #16
	str	x8, [sp, #272]
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #8]
	str	x8, [sp]
	ldr	w8, [sp, #4]
	str	w8, [sp, #12]
	ldr	w8, [sp, #268]
	ldr	w9, [sp, #252]
	add	w8, w8, w9
	ldr	w9, [sp, #236]
	add	w8, w8, w9
	ldr	w9, [sp, #220]
	add	w8, w8, w9
	ldr	w9, [sp, #204]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #172]
	add	w8, w8, w9
	ldr	w9, [sp, #156]
	add	w8, w8, w9
	ldr	w9, [sp, #140]
	add	w8, w8, w9
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
	ldr	x30, [sp, #288]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 288
	add	sp, sp, #368
	.seh_stackalloc	368
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_many_not_short_vector_12_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_not_short_vector_12_bytes // -- Begin function use_va_list_many_not_short_vector_12_bytes
	.p2align	2
use_va_list_many_not_short_vector_12_bytes: // @use_va_list_many_not_short_vector_12_bytes
.seh_proc use_va_list_many_not_short_vector_12_bytes
// %bb.0:
	sub	sp, sp, #304
	.seh_stackalloc	304
	str	x30, [sp, #288]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 288
	.seh_endprologue
	str	x0, [sp, #280]
	str	x1, [sp, #272]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp, #256]
	ldr	w8, [x8, #8]
	str	w8, [sp, #264]
	ldr	w8, [sp, #256]
	str	w8, [sp, #268]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp, #240]
	ldr	w8, [x8, #8]
	str	w8, [sp, #248]
	ldr	w8, [sp, #244]
	str	w8, [sp, #252]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp, #224]
	ldr	w8, [x8, #8]
	str	w8, [sp, #232]
	ldr	w8, [sp, #232]
	str	w8, [sp, #236]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp, #208]
	ldr	w8, [x8, #8]
	str	w8, [sp, #216]
	ldr	w8, [sp, #208]
	str	w8, [sp, #220]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp, #192]
	ldr	w8, [x8, #8]
	str	w8, [sp, #200]
	ldr	w8, [sp, #196]
	str	w8, [sp, #204]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp, #176]
	ldr	w8, [x8, #8]
	str	w8, [sp, #184]
	ldr	w8, [sp, #184]
	str	w8, [sp, #188]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp, #160]
	ldr	w8, [x8, #8]
	str	w8, [sp, #168]
	ldr	w8, [sp, #160]
	str	w8, [sp, #172]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp, #144]
	ldr	w8, [x8, #8]
	str	w8, [sp, #152]
	ldr	w8, [sp, #148]
	str	w8, [sp, #156]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp, #128]
	ldr	w8, [x8, #8]
	str	w8, [sp, #136]
	ldr	w8, [sp, #136]
	str	w8, [sp, #140]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp, #112]
	ldr	w8, [x8, #8]
	str	w8, [sp, #120]
	ldr	w8, [sp, #112]
	str	w8, [sp, #124]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp, #96]
	ldr	w8, [x8, #8]
	str	w8, [sp, #104]
	ldr	w8, [sp, #100]
	str	w8, [sp, #108]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp, #80]
	ldr	w8, [x8, #8]
	str	w8, [sp, #88]
	ldr	w8, [sp, #88]
	str	w8, [sp, #92]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp, #64]
	ldr	w8, [x8, #8]
	str	w8, [sp, #72]
	ldr	w8, [sp, #64]
	str	w8, [sp, #76]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp, #48]
	ldr	w8, [x8, #8]
	str	w8, [sp, #56]
	ldr	w8, [sp, #52]
	str	w8, [sp, #60]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp, #32]
	ldr	w8, [x8, #8]
	str	w8, [sp, #40]
	ldr	w8, [sp, #40]
	str	w8, [sp, #44]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp, #16]
	ldr	w8, [x8, #8]
	str	w8, [sp, #24]
	ldr	w8, [sp, #16]
	str	w8, [sp, #28]
	ldr	x8, [sp, #272]
	add	x9, x8, #16
	str	x9, [sp, #272]
	ldr	x9, [x8]
	str	x9, [sp]
	ldr	w8, [x8, #8]
	str	w8, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [sp, #12]
	ldr	w8, [sp, #268]
	ldr	w9, [sp, #252]
	add	w8, w8, w9
	ldr	w9, [sp, #236]
	add	w8, w8, w9
	ldr	w9, [sp, #220]
	add	w8, w8, w9
	ldr	w9, [sp, #204]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #172]
	add	w8, w8, w9
	ldr	w9, [sp, #156]
	add	w8, w8, w9
	ldr	w9, [sp, #140]
	add	w8, w8, w9
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
	ldr	x30, [sp, #288]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 288
	add	sp, sp, #304
	.seh_stackalloc	304
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_short_vector_16_bytes // -- Begin function use_va_args_few_short_vector_16_bytes
	.p2align	2
use_va_args_few_short_vector_16_bytes:  // @use_va_args_few_short_vector_16_bytes
.seh_proc use_va_args_few_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #144
	.seh_stackalloc	144
	.seh_endprologue
	str	x7, [sp, #136]
	str	x6, [sp, #128]
	str	x5, [sp, #120]
	str	x4, [sp, #112]
	str	x3, [sp, #104]
	str	x2, [sp, #96]
	str	x1, [sp, #88]
	str	x0, [sp, #72]
	add	x8, sp, #88
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	add	x9, x8, #16
	str	x9, [sp, #64]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	w8, [sp, #32]
	str	w8, [sp, #60]
	ldr	x8, [sp, #64]
	add	x9, x8, #16
	str	x9, [sp, #64]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	w8, [sp, #4]
	str	w8, [sp, #28]
	ldr	w8, [sp, #60]
	ldr	w9, [sp, #28]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #144
	.seh_stackalloc	144
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_few_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_short_vector_16_bytes // -- Begin function use_va_list_few_short_vector_16_bytes
	.p2align	2
use_va_list_few_short_vector_16_bytes:  // @use_va_list_few_short_vector_16_bytes
.seh_proc use_va_list_few_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #80
	.seh_stackalloc	80
	.seh_endprologue
	str	x0, [sp, #72]
	str	x1, [sp, #64]
	ldr	x8, [sp, #64]
	add	x9, x8, #16
	str	x9, [sp, #64]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	w8, [sp, #32]
	str	w8, [sp, #60]
	ldr	x8, [sp, #64]
	add	x9, x8, #16
	str	x9, [sp, #64]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	w8, [sp, #4]
	str	w8, [sp, #28]
	ldr	w8, [sp, #60]
	ldr	w9, [sp, #28]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #80
	.seh_stackalloc	80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_several_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_short_vector_16_bytes // -- Begin function use_va_args_several_short_vector_16_bytes
	.p2align	2
use_va_args_several_short_vector_16_bytes: // @use_va_args_several_short_vector_16_bytes
.seh_proc use_va_args_several_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #384
	.seh_stackalloc	384
	str	x30, [sp, #304]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 304
	.seh_endprologue
	str	x7, [sp, #376]
	str	x6, [sp, #368]
	str	x5, [sp, #360]
	str	x4, [sp, #352]
	str	x3, [sp, #344]
	str	x2, [sp, #336]
	str	x1, [sp, #328]
	str	x0, [sp, #296]
	add	x8, sp, #328
	str	x8, [sp, #288]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #256]
	ldr	w8, [sp, #256]
	str	w8, [sp, #284]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #224]
	ldr	w8, [sp, #228]
	str	w8, [sp, #252]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	w8, [sp, #200]
	str	w8, [sp, #220]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #160]
	ldr	w8, [sp, #172]
	str	w8, [sp, #188]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #156]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	w8, [sp, #100]
	str	w8, [sp, #124]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	w8, [sp, #72]
	str	w8, [sp, #92]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	w8, [sp, #44]
	str	w8, [sp, #60]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #28]
	ldr	w8, [sp, #284]
	ldr	w9, [sp, #252]
	add	w8, w8, w9
	ldr	w9, [sp, #220]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #156]
	add	w8, w8, w9
	ldr	w9, [sp, #124]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w0, w8, w9
	.seh_startepilogue
	ldr	x30, [sp, #304]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 304
	add	sp, sp, #384
	.seh_stackalloc	384
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_several_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_short_vector_16_bytes // -- Begin function use_va_list_several_short_vector_16_bytes
	.p2align	2
use_va_list_several_short_vector_16_bytes: // @use_va_list_several_short_vector_16_bytes
.seh_proc use_va_list_several_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #320
	.seh_stackalloc	320
	str	x30, [sp, #304]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 304
	.seh_endprologue
	str	x0, [sp, #296]
	str	x1, [sp, #288]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #256]
	ldr	w8, [sp, #256]
	str	w8, [sp, #284]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #224]
	ldr	w8, [sp, #228]
	str	w8, [sp, #252]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	w8, [sp, #200]
	str	w8, [sp, #220]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #160]
	ldr	w8, [sp, #172]
	str	w8, [sp, #188]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #156]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	w8, [sp, #100]
	str	w8, [sp, #124]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	w8, [sp, #72]
	str	w8, [sp, #92]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	w8, [sp, #44]
	str	w8, [sp, #60]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #28]
	ldr	w8, [sp, #284]
	ldr	w9, [sp, #252]
	add	w8, w8, w9
	ldr	w9, [sp, #220]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #156]
	add	w8, w8, w9
	ldr	w9, [sp, #124]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w0, w8, w9
	.seh_startepilogue
	ldr	x30, [sp, #304]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 304
	add	sp, sp, #320
	.seh_stackalloc	320
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_many_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_short_vector_16_bytes // -- Begin function use_va_args_many_short_vector_16_bytes
	.p2align	2
use_va_args_many_short_vector_16_bytes: // @use_va_args_many_short_vector_16_bytes
.seh_proc use_va_args_many_short_vector_16_bytes
// %bb.0:
	str	x30, [sp, #-80]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 80
	sub	sp, sp, #560
	.seh_stackalloc	560
	.seh_endprologue
	str	x7, [sp, #632]
	str	x6, [sp, #624]
	str	x5, [sp, #616]
	str	x4, [sp, #608]
	str	x3, [sp, #600]
	str	x2, [sp, #592]
	str	x1, [sp, #584]
	str	x0, [sp, #552]
	add	x8, sp, #584
	str	x8, [sp, #544]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #512]
	ldr	w8, [sp, #512]
	str	w8, [sp, #540]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #480]
	ldr	w8, [sp, #484]
	str	w8, [sp, #508]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #448]
	ldr	w8, [sp, #456]
	str	w8, [sp, #476]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #416]
	ldr	w8, [sp, #428]
	str	w8, [sp, #444]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #384]
	ldr	w8, [sp, #384]
	str	w8, [sp, #412]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #352]
	ldr	w8, [sp, #356]
	str	w8, [sp, #380]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #320]
	ldr	w8, [sp, #328]
	str	w8, [sp, #348]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #288]
	ldr	w8, [sp, #300]
	str	w8, [sp, #316]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #256]
	ldr	w8, [sp, #256]
	str	w8, [sp, #284]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #224]
	ldr	w8, [sp, #228]
	str	w8, [sp, #252]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	w8, [sp, #200]
	str	w8, [sp, #220]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #160]
	ldr	w8, [sp, #172]
	str	w8, [sp, #188]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #156]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	w8, [sp, #100]
	str	w8, [sp, #124]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	w8, [sp, #72]
	str	w8, [sp, #92]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	w8, [sp, #44]
	str	w8, [sp, #60]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #28]
	ldr	w8, [sp, #540]
	ldr	w9, [sp, #508]
	add	w8, w8, w9
	ldr	w9, [sp, #476]
	add	w8, w8, w9
	ldr	w9, [sp, #444]
	add	w8, w8, w9
	ldr	w9, [sp, #412]
	add	w8, w8, w9
	ldr	w9, [sp, #380]
	add	w8, w8, w9
	ldr	w9, [sp, #348]
	add	w8, w8, w9
	ldr	w9, [sp, #316]
	add	w8, w8, w9
	ldr	w9, [sp, #284]
	add	w8, w8, w9
	ldr	w9, [sp, #252]
	add	w8, w8, w9
	ldr	w9, [sp, #220]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #156]
	add	w8, w8, w9
	ldr	w9, [sp, #124]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #560
	.seh_stackalloc	560
	ldr	x30, [sp], #80                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_many_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_short_vector_16_bytes // -- Begin function use_va_list_many_short_vector_16_bytes
	.p2align	2
use_va_list_many_short_vector_16_bytes: // @use_va_list_many_short_vector_16_bytes
.seh_proc use_va_list_many_short_vector_16_bytes
// %bb.0:
	str	x30, [sp, #-16]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 16
	sub	sp, sp, #560
	.seh_stackalloc	560
	.seh_endprologue
	str	x0, [sp, #552]
	str	x1, [sp, #544]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #512]
	ldr	w8, [sp, #512]
	str	w8, [sp, #540]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #480]
	ldr	w8, [sp, #484]
	str	w8, [sp, #508]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #448]
	ldr	w8, [sp, #456]
	str	w8, [sp, #476]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #416]
	ldr	w8, [sp, #428]
	str	w8, [sp, #444]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #384]
	ldr	w8, [sp, #384]
	str	w8, [sp, #412]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #352]
	ldr	w8, [sp, #356]
	str	w8, [sp, #380]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #320]
	ldr	w8, [sp, #328]
	str	w8, [sp, #348]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #288]
	ldr	w8, [sp, #300]
	str	w8, [sp, #316]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #256]
	ldr	w8, [sp, #256]
	str	w8, [sp, #284]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #224]
	ldr	w8, [sp, #228]
	str	w8, [sp, #252]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	w8, [sp, #200]
	str	w8, [sp, #220]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #160]
	ldr	w8, [sp, #172]
	str	w8, [sp, #188]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #156]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	w8, [sp, #100]
	str	w8, [sp, #124]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	w8, [sp, #72]
	str	w8, [sp, #92]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	w8, [sp, #44]
	str	w8, [sp, #60]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #28]
	ldr	w8, [sp, #540]
	ldr	w9, [sp, #508]
	add	w8, w8, w9
	ldr	w9, [sp, #476]
	add	w8, w8, w9
	ldr	w9, [sp, #444]
	add	w8, w8, w9
	ldr	w9, [sp, #412]
	add	w8, w8, w9
	ldr	w9, [sp, #380]
	add	w8, w8, w9
	ldr	w9, [sp, #348]
	add	w8, w8, w9
	ldr	w9, [sp, #316]
	add	w8, w8, w9
	ldr	w9, [sp, #284]
	add	w8, w8, w9
	ldr	w9, [sp, #252]
	add	w8, w8, w9
	ldr	w9, [sp, #220]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #156]
	add	w8, w8, w9
	ldr	w9, [sp, #124]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #560
	.seh_stackalloc	560
	ldr	x30, [sp], #16                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 16
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_hfa_2_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_hfa_2_floats    // -- Begin function use_va_args_few_hfa_2_floats
	.p2align	2
use_va_args_few_hfa_2_floats:           // @use_va_args_few_hfa_2_floats
.seh_proc use_va_args_few_hfa_2_floats
// %bb.0:
	sub	sp, sp, #112
	.seh_stackalloc	112
	.seh_endprologue
	str	x7, [sp, #104]
	str	x6, [sp, #96]
	str	x5, [sp, #88]
	str	x4, [sp, #80]
	str	x3, [sp, #72]
	str	x2, [sp, #64]
	str	x1, [sp, #56]
	str	x0, [sp, #40]
	add	x8, sp, #56
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	add	x9, x8, #8
	str	x9, [sp, #32]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	s0, [sp, #16]
	str	s0, [sp, #28]
	ldr	x8, [sp, #32]
	add	x9, x8, #8
	str	x9, [sp, #32]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	s0, [sp, #4]
	str	s0, [sp, #12]
	ldr	s0, [sp, #28]
	ldr	s1, [sp, #12]
	fadd	s0, s0, s1
	fcvtzs	w0, s0
	.seh_startepilogue
	add	sp, sp, #112
	.seh_stackalloc	112
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_few_hfa_2_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_hfa_2_floats    // -- Begin function use_va_list_few_hfa_2_floats
	.p2align	2
use_va_list_few_hfa_2_floats:           // @use_va_list_few_hfa_2_floats
.seh_proc use_va_list_few_hfa_2_floats
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	.seh_endprologue
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	ldr	x8, [sp, #32]
	add	x9, x8, #8
	str	x9, [sp, #32]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	w8, [sp, #16]
	str	w8, [sp, #28]
	ldr	x8, [sp, #32]
	add	x9, x8, #8
	str	x9, [sp, #32]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	w8, [sp, #4]
	str	w8, [sp, #12]
	ldr	s0, [sp, #28]
	ldr	s1, [sp, #12]
	fadd	s0, s0, s1
	fcvtzs	w0, s0
	.seh_startepilogue
	add	sp, sp, #48
	.seh_stackalloc	48
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_several_hfa_2_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_hfa_2_floats // -- Begin function use_va_args_several_hfa_2_floats
	.p2align	2
use_va_args_several_hfa_2_floats:       // @use_va_args_several_hfa_2_floats
.seh_proc use_va_args_several_hfa_2_floats
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
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #128]
	ldr	s0, [sp, #128]
	str	s0, [sp, #140]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #112]
	ldr	s0, [sp, #116]
	str	s0, [sp, #124]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #96]
	ldr	s0, [sp, #96]
	str	s0, [sp, #108]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #80]
	ldr	s0, [sp, #84]
	str	s0, [sp, #92]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #64]
	ldr	s0, [sp, #64]
	str	s0, [sp, #76]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldr	s0, [sp, #52]
	str	s0, [sp, #60]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldr	s0, [sp, #32]
	str	s0, [sp, #44]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	s0, [sp, #20]
	str	s0, [sp, #28]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	s0, [sp]
	str	s0, [sp, #12]
	ldr	s0, [sp, #140]
	ldr	s1, [sp, #124]
	fadd	s0, s0, s1
	ldr	s1, [sp, #108]
	fadd	s0, s0, s1
	ldr	s1, [sp, #92]
	fadd	s0, s0, s1
	ldr	s1, [sp, #76]
	fadd	s0, s0, s1
	ldr	s1, [sp, #60]
	fadd	s0, s0, s1
	ldr	s1, [sp, #44]
	fadd	s0, s0, s1
	ldr	s1, [sp, #28]
	fadd	s0, s0, s1
	ldr	s1, [sp, #12]
	fadd	s0, s0, s1
	fcvtzs	w0, s0
	.seh_startepilogue
	add	sp, sp, #224
	.seh_stackalloc	224
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_several_hfa_2_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_hfa_2_floats // -- Begin function use_va_list_several_hfa_2_floats
	.p2align	2
use_va_list_several_hfa_2_floats:       // @use_va_list_several_hfa_2_floats
.seh_proc use_va_list_several_hfa_2_floats
// %bb.0:
	sub	sp, sp, #160
	.seh_stackalloc	160
	.seh_endprologue
	str	x0, [sp, #152]
	str	x1, [sp, #144]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #140]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #112]
	ldr	w8, [sp, #116]
	str	w8, [sp, #124]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #96]
	ldr	w8, [sp, #96]
	str	w8, [sp, #108]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #80]
	ldr	w8, [sp, #84]
	str	w8, [sp, #92]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #64]
	ldr	w8, [sp, #64]
	str	w8, [sp, #76]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldr	w8, [sp, #52]
	str	w8, [sp, #60]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldr	w8, [sp, #32]
	str	w8, [sp, #44]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	w8, [sp, #20]
	str	w8, [sp, #28]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #12]
	ldr	s0, [sp, #140]
	ldr	s1, [sp, #124]
	fadd	s0, s0, s1
	ldr	s1, [sp, #108]
	fadd	s0, s0, s1
	ldr	s1, [sp, #92]
	fadd	s0, s0, s1
	ldr	s1, [sp, #76]
	fadd	s0, s0, s1
	ldr	s1, [sp, #60]
	fadd	s0, s0, s1
	ldr	s1, [sp, #44]
	fadd	s0, s0, s1
	ldr	s1, [sp, #28]
	fadd	s0, s0, s1
	ldr	s1, [sp, #12]
	fadd	s0, s0, s1
	fcvtzs	w0, s0
	.seh_startepilogue
	add	sp, sp, #160
	.seh_stackalloc	160
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_many_hfa_2_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_hfa_2_floats   // -- Begin function use_va_args_many_hfa_2_floats
	.p2align	2
use_va_args_many_hfa_2_floats:          // @use_va_args_many_hfa_2_floats
.seh_proc use_va_args_many_hfa_2_floats
// %bb.0:
	sub	sp, sp, #368
	.seh_stackalloc	368
	str	x30, [sp, #288]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 288
	.seh_endprologue
	str	x7, [sp, #360]
	str	x6, [sp, #352]
	str	x5, [sp, #344]
	str	x4, [sp, #336]
	str	x3, [sp, #328]
	str	x2, [sp, #320]
	str	x1, [sp, #312]
	str	x0, [sp, #280]
	add	x8, sp, #312
	str	x8, [sp, #272]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #256]
	ldr	s0, [sp, #256]
	str	s0, [sp, #268]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #240]
	ldr	s0, [sp, #244]
	str	s0, [sp, #252]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #224]
	ldr	s0, [sp, #224]
	str	s0, [sp, #236]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #208]
	ldr	s0, [sp, #212]
	str	s0, [sp, #220]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #192]
	ldr	s0, [sp, #192]
	str	s0, [sp, #204]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #176]
	ldr	s0, [sp, #180]
	str	s0, [sp, #188]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #160]
	ldr	s0, [sp, #160]
	str	s0, [sp, #172]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #144]
	ldr	s0, [sp, #148]
	str	s0, [sp, #156]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #128]
	ldr	s0, [sp, #128]
	str	s0, [sp, #140]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #112]
	ldr	s0, [sp, #116]
	str	s0, [sp, #124]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #96]
	ldr	s0, [sp, #96]
	str	s0, [sp, #108]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #80]
	ldr	s0, [sp, #84]
	str	s0, [sp, #92]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #64]
	ldr	s0, [sp, #64]
	str	s0, [sp, #76]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldr	s0, [sp, #52]
	str	s0, [sp, #60]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldr	s0, [sp, #32]
	str	s0, [sp, #44]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	s0, [sp, #20]
	str	s0, [sp, #28]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	s0, [sp]
	str	s0, [sp, #12]
	ldr	s0, [sp, #268]
	ldr	s1, [sp, #252]
	fadd	s0, s0, s1
	ldr	s1, [sp, #236]
	fadd	s0, s0, s1
	ldr	s1, [sp, #220]
	fadd	s0, s0, s1
	ldr	s1, [sp, #204]
	fadd	s0, s0, s1
	ldr	s1, [sp, #188]
	fadd	s0, s0, s1
	ldr	s1, [sp, #172]
	fadd	s0, s0, s1
	ldr	s1, [sp, #156]
	fadd	s0, s0, s1
	ldr	s1, [sp, #140]
	fadd	s0, s0, s1
	ldr	s1, [sp, #124]
	fadd	s0, s0, s1
	ldr	s1, [sp, #108]
	fadd	s0, s0, s1
	ldr	s1, [sp, #92]
	fadd	s0, s0, s1
	ldr	s1, [sp, #76]
	fadd	s0, s0, s1
	ldr	s1, [sp, #60]
	fadd	s0, s0, s1
	ldr	s1, [sp, #44]
	fadd	s0, s0, s1
	ldr	s1, [sp, #28]
	fadd	s0, s0, s1
	ldr	s1, [sp, #12]
	fadd	s0, s0, s1
	fcvtzs	w0, s0
	.seh_startepilogue
	ldr	x30, [sp, #288]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 288
	add	sp, sp, #368
	.seh_stackalloc	368
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_many_hfa_2_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_hfa_2_floats   // -- Begin function use_va_list_many_hfa_2_floats
	.p2align	2
use_va_list_many_hfa_2_floats:          // @use_va_list_many_hfa_2_floats
.seh_proc use_va_list_many_hfa_2_floats
// %bb.0:
	sub	sp, sp, #304
	.seh_stackalloc	304
	str	x30, [sp, #288]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 288
	.seh_endprologue
	str	x0, [sp, #280]
	str	x1, [sp, #272]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #256]
	ldr	w8, [sp, #256]
	str	w8, [sp, #268]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #240]
	ldr	w8, [sp, #244]
	str	w8, [sp, #252]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #224]
	ldr	w8, [sp, #224]
	str	w8, [sp, #236]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #208]
	ldr	w8, [sp, #212]
	str	w8, [sp, #220]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #192]
	ldr	w8, [sp, #192]
	str	w8, [sp, #204]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #176]
	ldr	w8, [sp, #180]
	str	w8, [sp, #188]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #160]
	ldr	w8, [sp, #160]
	str	w8, [sp, #172]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #144]
	ldr	w8, [sp, #148]
	str	w8, [sp, #156]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #140]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #112]
	ldr	w8, [sp, #116]
	str	w8, [sp, #124]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #96]
	ldr	w8, [sp, #96]
	str	w8, [sp, #108]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #80]
	ldr	w8, [sp, #84]
	str	w8, [sp, #92]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #64]
	ldr	w8, [sp, #64]
	str	w8, [sp, #76]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldr	w8, [sp, #52]
	str	w8, [sp, #60]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #32]
	ldr	w8, [sp, #32]
	str	w8, [sp, #44]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	w8, [sp, #20]
	str	w8, [sp, #28]
	ldr	x8, [sp, #272]
	add	x9, x8, #8
	str	x9, [sp, #272]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #12]
	ldr	s0, [sp, #268]
	ldr	s1, [sp, #252]
	fadd	s0, s0, s1
	ldr	s1, [sp, #236]
	fadd	s0, s0, s1
	ldr	s1, [sp, #220]
	fadd	s0, s0, s1
	ldr	s1, [sp, #204]
	fadd	s0, s0, s1
	ldr	s1, [sp, #188]
	fadd	s0, s0, s1
	ldr	s1, [sp, #172]
	fadd	s0, s0, s1
	ldr	s1, [sp, #156]
	fadd	s0, s0, s1
	ldr	s1, [sp, #140]
	fadd	s0, s0, s1
	ldr	s1, [sp, #124]
	fadd	s0, s0, s1
	ldr	s1, [sp, #108]
	fadd	s0, s0, s1
	ldr	s1, [sp, #92]
	fadd	s0, s0, s1
	ldr	s1, [sp, #76]
	fadd	s0, s0, s1
	ldr	s1, [sp, #60]
	fadd	s0, s0, s1
	ldr	s1, [sp, #44]
	fadd	s0, s0, s1
	ldr	s1, [sp, #28]
	fadd	s0, s0, s1
	ldr	s1, [sp, #12]
	fadd	s0, s0, s1
	fcvtzs	w0, s0
	.seh_startepilogue
	ldr	x30, [sp, #288]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 288
	add	sp, sp, #304
	.seh_stackalloc	304
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_hfa_4_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_hfa_4_floats    // -- Begin function use_va_args_few_hfa_4_floats
	.p2align	2
use_va_args_few_hfa_4_floats:           // @use_va_args_few_hfa_4_floats
.seh_proc use_va_args_few_hfa_4_floats
// %bb.0:
	sub	sp, sp, #144
	.seh_stackalloc	144
	.seh_endprologue
	str	x7, [sp, #136]
	str	x6, [sp, #128]
	str	x5, [sp, #120]
	str	x4, [sp, #112]
	str	x3, [sp, #104]
	str	x2, [sp, #96]
	str	x1, [sp, #88]
	str	x0, [sp, #72]
	add	x8, sp, #88
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	add	x9, x8, #16
	str	x9, [sp, #64]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	s0, [sp, #32]
	str	s0, [sp, #60]
	ldr	x8, [sp, #64]
	add	x9, x8, #16
	str	x9, [sp, #64]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	s0, [sp, #4]
	str	s0, [sp, #28]
	ldr	s0, [sp, #60]
	ldr	s1, [sp, #28]
	fadd	s0, s0, s1
	fcvtzs	w0, s0
	.seh_startepilogue
	add	sp, sp, #144
	.seh_stackalloc	144
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_few_hfa_4_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_hfa_4_floats    // -- Begin function use_va_list_few_hfa_4_floats
	.p2align	2
use_va_list_few_hfa_4_floats:           // @use_va_list_few_hfa_4_floats
.seh_proc use_va_list_few_hfa_4_floats
// %bb.0:
	sub	sp, sp, #80
	.seh_stackalloc	80
	.seh_endprologue
	str	x0, [sp, #72]
	str	x1, [sp, #64]
	ldr	x8, [sp, #64]
	add	x9, x8, #16
	str	x9, [sp, #64]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	w8, [sp, #32]
	str	w8, [sp, #60]
	ldr	x8, [sp, #64]
	add	x9, x8, #16
	str	x9, [sp, #64]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	w8, [sp, #4]
	str	w8, [sp, #28]
	ldr	s0, [sp, #60]
	ldr	s1, [sp, #28]
	fadd	s0, s0, s1
	fcvtzs	w0, s0
	.seh_startepilogue
	add	sp, sp, #80
	.seh_stackalloc	80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_several_hfa_4_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_hfa_4_floats // -- Begin function use_va_args_several_hfa_4_floats
	.p2align	2
use_va_args_several_hfa_4_floats:       // @use_va_args_several_hfa_4_floats
.seh_proc use_va_args_several_hfa_4_floats
// %bb.0:
	sub	sp, sp, #384
	.seh_stackalloc	384
	str	x30, [sp, #304]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 304
	.seh_endprologue
	str	x7, [sp, #376]
	str	x6, [sp, #368]
	str	x5, [sp, #360]
	str	x4, [sp, #352]
	str	x3, [sp, #344]
	str	x2, [sp, #336]
	str	x1, [sp, #328]
	str	x0, [sp, #296]
	add	x8, sp, #328
	str	x8, [sp, #288]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #256]
	ldr	s0, [sp, #256]
	str	s0, [sp, #284]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #224]
	ldr	s0, [sp, #228]
	str	s0, [sp, #252]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	s0, [sp, #200]
	str	s0, [sp, #220]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #160]
	ldr	s0, [sp, #172]
	str	s0, [sp, #188]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #128]
	ldr	s0, [sp, #128]
	str	s0, [sp, #156]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	s0, [sp, #100]
	str	s0, [sp, #124]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	s0, [sp, #72]
	str	s0, [sp, #92]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	s0, [sp, #44]
	str	s0, [sp, #60]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	s0, [sp]
	str	s0, [sp, #28]
	ldr	s0, [sp, #284]
	ldr	s1, [sp, #252]
	fadd	s0, s0, s1
	ldr	s1, [sp, #220]
	fadd	s0, s0, s1
	ldr	s1, [sp, #188]
	fadd	s0, s0, s1
	ldr	s1, [sp, #156]
	fadd	s0, s0, s1
	ldr	s1, [sp, #124]
	fadd	s0, s0, s1
	ldr	s1, [sp, #92]
	fadd	s0, s0, s1
	ldr	s1, [sp, #60]
	fadd	s0, s0, s1
	ldr	s1, [sp, #28]
	fadd	s0, s0, s1
	fcvtzs	w0, s0
	.seh_startepilogue
	ldr	x30, [sp, #304]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 304
	add	sp, sp, #384
	.seh_stackalloc	384
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_several_hfa_4_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_hfa_4_floats // -- Begin function use_va_list_several_hfa_4_floats
	.p2align	2
use_va_list_several_hfa_4_floats:       // @use_va_list_several_hfa_4_floats
.seh_proc use_va_list_several_hfa_4_floats
// %bb.0:
	sub	sp, sp, #320
	.seh_stackalloc	320
	str	x30, [sp, #304]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 304
	.seh_endprologue
	str	x0, [sp, #296]
	str	x1, [sp, #288]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #256]
	ldr	w8, [sp, #256]
	str	w8, [sp, #284]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #224]
	ldr	w8, [sp, #228]
	str	w8, [sp, #252]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	w8, [sp, #200]
	str	w8, [sp, #220]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #160]
	ldr	w8, [sp, #172]
	str	w8, [sp, #188]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #156]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	w8, [sp, #100]
	str	w8, [sp, #124]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	w8, [sp, #72]
	str	w8, [sp, #92]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	w8, [sp, #44]
	str	w8, [sp, #60]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #28]
	ldr	s0, [sp, #284]
	ldr	s1, [sp, #252]
	fadd	s0, s0, s1
	ldr	s1, [sp, #220]
	fadd	s0, s0, s1
	ldr	s1, [sp, #188]
	fadd	s0, s0, s1
	ldr	s1, [sp, #156]
	fadd	s0, s0, s1
	ldr	s1, [sp, #124]
	fadd	s0, s0, s1
	ldr	s1, [sp, #92]
	fadd	s0, s0, s1
	ldr	s1, [sp, #60]
	fadd	s0, s0, s1
	ldr	s1, [sp, #28]
	fadd	s0, s0, s1
	fcvtzs	w0, s0
	.seh_startepilogue
	ldr	x30, [sp, #304]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 304
	add	sp, sp, #320
	.seh_stackalloc	320
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_many_hfa_4_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_hfa_4_floats   // -- Begin function use_va_args_many_hfa_4_floats
	.p2align	2
use_va_args_many_hfa_4_floats:          // @use_va_args_many_hfa_4_floats
.seh_proc use_va_args_many_hfa_4_floats
// %bb.0:
	str	x30, [sp, #-80]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 80
	sub	sp, sp, #560
	.seh_stackalloc	560
	.seh_endprologue
	str	x7, [sp, #632]
	str	x6, [sp, #624]
	str	x5, [sp, #616]
	str	x4, [sp, #608]
	str	x3, [sp, #600]
	str	x2, [sp, #592]
	str	x1, [sp, #584]
	str	x0, [sp, #552]
	add	x8, sp, #584
	str	x8, [sp, #544]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #512]
	ldr	s0, [sp, #512]
	str	s0, [sp, #540]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #480]
	ldr	s0, [sp, #484]
	str	s0, [sp, #508]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #448]
	ldr	s0, [sp, #456]
	str	s0, [sp, #476]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #416]
	ldr	s0, [sp, #428]
	str	s0, [sp, #444]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #384]
	ldr	s0, [sp, #384]
	str	s0, [sp, #412]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #352]
	ldr	s0, [sp, #356]
	str	s0, [sp, #380]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #320]
	ldr	s0, [sp, #328]
	str	s0, [sp, #348]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #288]
	ldr	s0, [sp, #300]
	str	s0, [sp, #316]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #256]
	ldr	s0, [sp, #256]
	str	s0, [sp, #284]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #224]
	ldr	s0, [sp, #228]
	str	s0, [sp, #252]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	s0, [sp, #200]
	str	s0, [sp, #220]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #160]
	ldr	s0, [sp, #172]
	str	s0, [sp, #188]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #128]
	ldr	s0, [sp, #128]
	str	s0, [sp, #156]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	s0, [sp, #100]
	str	s0, [sp, #124]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	s0, [sp, #72]
	str	s0, [sp, #92]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	s0, [sp, #44]
	str	s0, [sp, #60]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	s0, [sp]
	str	s0, [sp, #28]
	ldr	s0, [sp, #540]
	ldr	s1, [sp, #508]
	fadd	s0, s0, s1
	ldr	s1, [sp, #476]
	fadd	s0, s0, s1
	ldr	s1, [sp, #444]
	fadd	s0, s0, s1
	ldr	s1, [sp, #412]
	fadd	s0, s0, s1
	ldr	s1, [sp, #380]
	fadd	s0, s0, s1
	ldr	s1, [sp, #348]
	fadd	s0, s0, s1
	ldr	s1, [sp, #316]
	fadd	s0, s0, s1
	ldr	s1, [sp, #284]
	fadd	s0, s0, s1
	ldr	s1, [sp, #252]
	fadd	s0, s0, s1
	ldr	s1, [sp, #220]
	fadd	s0, s0, s1
	ldr	s1, [sp, #188]
	fadd	s0, s0, s1
	ldr	s1, [sp, #156]
	fadd	s0, s0, s1
	ldr	s1, [sp, #124]
	fadd	s0, s0, s1
	ldr	s1, [sp, #92]
	fadd	s0, s0, s1
	ldr	s1, [sp, #60]
	fadd	s0, s0, s1
	ldr	s1, [sp, #28]
	fadd	s0, s0, s1
	fcvtzs	w0, s0
	.seh_startepilogue
	add	sp, sp, #560
	.seh_stackalloc	560
	ldr	x30, [sp], #80                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_many_hfa_4_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_hfa_4_floats   // -- Begin function use_va_list_many_hfa_4_floats
	.p2align	2
use_va_list_many_hfa_4_floats:          // @use_va_list_many_hfa_4_floats
.seh_proc use_va_list_many_hfa_4_floats
// %bb.0:
	str	x30, [sp, #-16]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 16
	sub	sp, sp, #560
	.seh_stackalloc	560
	.seh_endprologue
	str	x0, [sp, #552]
	str	x1, [sp, #544]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #512]
	ldr	w8, [sp, #512]
	str	w8, [sp, #540]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #480]
	ldr	w8, [sp, #484]
	str	w8, [sp, #508]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #448]
	ldr	w8, [sp, #456]
	str	w8, [sp, #476]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #416]
	ldr	w8, [sp, #428]
	str	w8, [sp, #444]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #384]
	ldr	w8, [sp, #384]
	str	w8, [sp, #412]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #352]
	ldr	w8, [sp, #356]
	str	w8, [sp, #380]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #320]
	ldr	w8, [sp, #328]
	str	w8, [sp, #348]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #288]
	ldr	w8, [sp, #300]
	str	w8, [sp, #316]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #256]
	ldr	w8, [sp, #256]
	str	w8, [sp, #284]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #224]
	ldr	w8, [sp, #228]
	str	w8, [sp, #252]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	w8, [sp, #200]
	str	w8, [sp, #220]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #160]
	ldr	w8, [sp, #172]
	str	w8, [sp, #188]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #156]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	w8, [sp, #100]
	str	w8, [sp, #124]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	w8, [sp, #72]
	str	w8, [sp, #92]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	w8, [sp, #44]
	str	w8, [sp, #60]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #28]
	ldr	s0, [sp, #540]
	ldr	s1, [sp, #508]
	fadd	s0, s0, s1
	ldr	s1, [sp, #476]
	fadd	s0, s0, s1
	ldr	s1, [sp, #444]
	fadd	s0, s0, s1
	ldr	s1, [sp, #412]
	fadd	s0, s0, s1
	ldr	s1, [sp, #380]
	fadd	s0, s0, s1
	ldr	s1, [sp, #348]
	fadd	s0, s0, s1
	ldr	s1, [sp, #316]
	fadd	s0, s0, s1
	ldr	s1, [sp, #284]
	fadd	s0, s0, s1
	ldr	s1, [sp, #252]
	fadd	s0, s0, s1
	ldr	s1, [sp, #220]
	fadd	s0, s0, s1
	ldr	s1, [sp, #188]
	fadd	s0, s0, s1
	ldr	s1, [sp, #156]
	fadd	s0, s0, s1
	ldr	s1, [sp, #124]
	fadd	s0, s0, s1
	ldr	s1, [sp, #92]
	fadd	s0, s0, s1
	ldr	s1, [sp, #60]
	fadd	s0, s0, s1
	ldr	s1, [sp, #28]
	fadd	s0, s0, s1
	fcvtzs	w0, s0
	.seh_startepilogue
	add	sp, sp, #560
	.seh_stackalloc	560
	ldr	x30, [sp], #16                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 16
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_hfa_2_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_hfa_2_doubles   // -- Begin function use_va_args_few_hfa_2_doubles
	.p2align	2
use_va_args_few_hfa_2_doubles:          // @use_va_args_few_hfa_2_doubles
.seh_proc use_va_args_few_hfa_2_doubles
// %bb.0:
	sub	sp, sp, #144
	.seh_stackalloc	144
	.seh_endprologue
	str	x7, [sp, #136]
	str	x6, [sp, #128]
	str	x5, [sp, #120]
	str	x4, [sp, #112]
	str	x3, [sp, #104]
	str	x2, [sp, #96]
	str	x1, [sp, #88]
	str	x0, [sp, #72]
	add	x8, sp, #88
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	add	x9, x8, #16
	str	x9, [sp, #64]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	d0, [sp, #32]
	str	d0, [sp, #56]
	ldr	x8, [sp, #64]
	add	x9, x8, #16
	str	x9, [sp, #64]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	d0, [sp, #8]
	str	d0, [sp, #24]
	ldr	d0, [sp, #56]
	ldr	d1, [sp, #24]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #144
	.seh_stackalloc	144
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_few_hfa_2_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_hfa_2_doubles   // -- Begin function use_va_list_few_hfa_2_doubles
	.p2align	2
use_va_list_few_hfa_2_doubles:          // @use_va_list_few_hfa_2_doubles
.seh_proc use_va_list_few_hfa_2_doubles
// %bb.0:
	sub	sp, sp, #80
	.seh_stackalloc	80
	.seh_endprologue
	str	x0, [sp, #72]
	str	x1, [sp, #64]
	ldr	x8, [sp, #64]
	add	x9, x8, #16
	str	x9, [sp, #64]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	x8, [sp, #32]
	str	x8, [sp, #56]
	ldr	x8, [sp, #64]
	add	x9, x8, #16
	str	x9, [sp, #64]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	x8, [sp, #8]
	str	x8, [sp, #24]
	ldr	d0, [sp, #56]
	ldr	d1, [sp, #24]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #80
	.seh_stackalloc	80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_several_hfa_2_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_hfa_2_doubles // -- Begin function use_va_args_several_hfa_2_doubles
	.p2align	2
use_va_args_several_hfa_2_doubles:      // @use_va_args_several_hfa_2_doubles
.seh_proc use_va_args_several_hfa_2_doubles
// %bb.0:
	sub	sp, sp, #384
	.seh_stackalloc	384
	str	x30, [sp, #304]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 304
	.seh_endprologue
	str	x7, [sp, #376]
	str	x6, [sp, #368]
	str	x5, [sp, #360]
	str	x4, [sp, #352]
	str	x3, [sp, #344]
	str	x2, [sp, #336]
	str	x1, [sp, #328]
	str	x0, [sp, #296]
	add	x8, sp, #328
	str	x8, [sp, #288]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #256]
	ldr	d0, [sp, #256]
	str	d0, [sp, #280]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #224]
	ldr	d0, [sp, #232]
	str	d0, [sp, #248]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	d0, [sp, #192]
	str	d0, [sp, #216]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #160]
	ldr	d0, [sp, #168]
	str	d0, [sp, #184]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #128]
	ldr	d0, [sp, #128]
	str	d0, [sp, #152]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	d0, [sp, #104]
	str	d0, [sp, #120]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	d0, [sp, #64]
	str	d0, [sp, #88]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	d0, [sp, #40]
	str	d0, [sp, #56]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	d0, [sp]
	str	d0, [sp, #24]
	ldr	d0, [sp, #280]
	ldr	d1, [sp, #248]
	fadd	d0, d0, d1
	ldr	d1, [sp, #216]
	fadd	d0, d0, d1
	ldr	d1, [sp, #184]
	fadd	d0, d0, d1
	ldr	d1, [sp, #152]
	fadd	d0, d0, d1
	ldr	d1, [sp, #120]
	fadd	d0, d0, d1
	ldr	d1, [sp, #88]
	fadd	d0, d0, d1
	ldr	d1, [sp, #56]
	fadd	d0, d0, d1
	ldr	d1, [sp, #24]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	ldr	x30, [sp, #304]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 304
	add	sp, sp, #384
	.seh_stackalloc	384
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_several_hfa_2_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_hfa_2_doubles // -- Begin function use_va_list_several_hfa_2_doubles
	.p2align	2
use_va_list_several_hfa_2_doubles:      // @use_va_list_several_hfa_2_doubles
.seh_proc use_va_list_several_hfa_2_doubles
// %bb.0:
	sub	sp, sp, #320
	.seh_stackalloc	320
	str	x30, [sp, #304]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 304
	.seh_endprologue
	str	x0, [sp, #296]
	str	x1, [sp, #288]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #256]
	ldr	x8, [sp, #256]
	str	x8, [sp, #280]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #224]
	ldr	x8, [sp, #232]
	str	x8, [sp, #248]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	x8, [sp, #192]
	str	x8, [sp, #216]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #160]
	ldr	x8, [sp, #168]
	str	x8, [sp, #184]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #128]
	ldr	x8, [sp, #128]
	str	x8, [sp, #152]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	x8, [sp, #104]
	str	x8, [sp, #120]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	x8, [sp, #64]
	str	x8, [sp, #88]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	x8, [sp, #40]
	str	x8, [sp, #56]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	x8, [sp]
	str	x8, [sp, #24]
	ldr	d0, [sp, #280]
	ldr	d1, [sp, #248]
	fadd	d0, d0, d1
	ldr	d1, [sp, #216]
	fadd	d0, d0, d1
	ldr	d1, [sp, #184]
	fadd	d0, d0, d1
	ldr	d1, [sp, #152]
	fadd	d0, d0, d1
	ldr	d1, [sp, #120]
	fadd	d0, d0, d1
	ldr	d1, [sp, #88]
	fadd	d0, d0, d1
	ldr	d1, [sp, #56]
	fadd	d0, d0, d1
	ldr	d1, [sp, #24]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	ldr	x30, [sp, #304]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 304
	add	sp, sp, #320
	.seh_stackalloc	320
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_many_hfa_2_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_hfa_2_doubles  // -- Begin function use_va_args_many_hfa_2_doubles
	.p2align	2
use_va_args_many_hfa_2_doubles:         // @use_va_args_many_hfa_2_doubles
.seh_proc use_va_args_many_hfa_2_doubles
// %bb.0:
	str	x30, [sp, #-80]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 80
	sub	sp, sp, #560
	.seh_stackalloc	560
	.seh_endprologue
	str	x7, [sp, #632]
	str	x6, [sp, #624]
	str	x5, [sp, #616]
	str	x4, [sp, #608]
	str	x3, [sp, #600]
	str	x2, [sp, #592]
	str	x1, [sp, #584]
	str	x0, [sp, #552]
	add	x8, sp, #584
	str	x8, [sp, #544]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #512]
	ldr	d0, [sp, #512]
	str	d0, [sp, #536]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #480]
	ldr	d0, [sp, #488]
	str	d0, [sp, #504]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #448]
	ldr	d0, [sp, #448]
	str	d0, [sp, #472]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #416]
	ldr	d0, [sp, #424]
	str	d0, [sp, #440]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #384]
	ldr	d0, [sp, #384]
	str	d0, [sp, #408]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #352]
	ldr	d0, [sp, #360]
	str	d0, [sp, #376]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #320]
	ldr	d0, [sp, #320]
	str	d0, [sp, #344]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #288]
	ldr	d0, [sp, #296]
	str	d0, [sp, #312]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #256]
	ldr	d0, [sp, #256]
	str	d0, [sp, #280]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #224]
	ldr	d0, [sp, #232]
	str	d0, [sp, #248]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	d0, [sp, #192]
	str	d0, [sp, #216]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #160]
	ldr	d0, [sp, #168]
	str	d0, [sp, #184]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #128]
	ldr	d0, [sp, #128]
	str	d0, [sp, #152]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	d0, [sp, #104]
	str	d0, [sp, #120]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	d0, [sp, #64]
	str	d0, [sp, #88]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	d0, [sp, #40]
	str	d0, [sp, #56]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	d0, [sp]
	str	d0, [sp, #24]
	ldr	d0, [sp, #536]
	ldr	d1, [sp, #504]
	fadd	d0, d0, d1
	ldr	d1, [sp, #472]
	fadd	d0, d0, d1
	ldr	d1, [sp, #440]
	fadd	d0, d0, d1
	ldr	d1, [sp, #408]
	fadd	d0, d0, d1
	ldr	d1, [sp, #376]
	fadd	d0, d0, d1
	ldr	d1, [sp, #344]
	fadd	d0, d0, d1
	ldr	d1, [sp, #312]
	fadd	d0, d0, d1
	ldr	d1, [sp, #280]
	fadd	d0, d0, d1
	ldr	d1, [sp, #248]
	fadd	d0, d0, d1
	ldr	d1, [sp, #216]
	fadd	d0, d0, d1
	ldr	d1, [sp, #184]
	fadd	d0, d0, d1
	ldr	d1, [sp, #152]
	fadd	d0, d0, d1
	ldr	d1, [sp, #120]
	fadd	d0, d0, d1
	ldr	d1, [sp, #88]
	fadd	d0, d0, d1
	ldr	d1, [sp, #56]
	fadd	d0, d0, d1
	ldr	d1, [sp, #24]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #560
	.seh_stackalloc	560
	ldr	x30, [sp], #80                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_many_hfa_2_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_hfa_2_doubles  // -- Begin function use_va_list_many_hfa_2_doubles
	.p2align	2
use_va_list_many_hfa_2_doubles:         // @use_va_list_many_hfa_2_doubles
.seh_proc use_va_list_many_hfa_2_doubles
// %bb.0:
	str	x30, [sp, #-16]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 16
	sub	sp, sp, #560
	.seh_stackalloc	560
	.seh_endprologue
	str	x0, [sp, #552]
	str	x1, [sp, #544]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #512]
	ldr	x8, [sp, #512]
	str	x8, [sp, #536]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #480]
	ldr	x8, [sp, #488]
	str	x8, [sp, #504]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #448]
	ldr	x8, [sp, #448]
	str	x8, [sp, #472]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #416]
	ldr	x8, [sp, #424]
	str	x8, [sp, #440]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #384]
	ldr	x8, [sp, #384]
	str	x8, [sp, #408]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #352]
	ldr	x8, [sp, #360]
	str	x8, [sp, #376]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #320]
	ldr	x8, [sp, #320]
	str	x8, [sp, #344]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #288]
	ldr	x8, [sp, #296]
	str	x8, [sp, #312]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #256]
	ldr	x8, [sp, #256]
	str	x8, [sp, #280]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #224]
	ldr	x8, [sp, #232]
	str	x8, [sp, #248]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	x8, [sp, #192]
	str	x8, [sp, #216]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #160]
	ldr	x8, [sp, #168]
	str	x8, [sp, #184]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #128]
	ldr	x8, [sp, #128]
	str	x8, [sp, #152]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	x8, [sp, #104]
	str	x8, [sp, #120]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	x8, [sp, #64]
	str	x8, [sp, #88]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	x8, [sp, #40]
	str	x8, [sp, #56]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	x8, [sp]
	str	x8, [sp, #24]
	ldr	d0, [sp, #536]
	ldr	d1, [sp, #504]
	fadd	d0, d0, d1
	ldr	d1, [sp, #472]
	fadd	d0, d0, d1
	ldr	d1, [sp, #440]
	fadd	d0, d0, d1
	ldr	d1, [sp, #408]
	fadd	d0, d0, d1
	ldr	d1, [sp, #376]
	fadd	d0, d0, d1
	ldr	d1, [sp, #344]
	fadd	d0, d0, d1
	ldr	d1, [sp, #312]
	fadd	d0, d0, d1
	ldr	d1, [sp, #280]
	fadd	d0, d0, d1
	ldr	d1, [sp, #248]
	fadd	d0, d0, d1
	ldr	d1, [sp, #216]
	fadd	d0, d0, d1
	ldr	d1, [sp, #184]
	fadd	d0, d0, d1
	ldr	d1, [sp, #152]
	fadd	d0, d0, d1
	ldr	d1, [sp, #120]
	fadd	d0, d0, d1
	ldr	d1, [sp, #88]
	fadd	d0, d0, d1
	ldr	d1, [sp, #56]
	fadd	d0, d0, d1
	ldr	d1, [sp, #24]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #560
	.seh_stackalloc	560
	ldr	x30, [sp], #16                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 16
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_hfa_4_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_hfa_4_doubles   // -- Begin function use_va_args_few_hfa_4_doubles
	.p2align	2
use_va_args_few_hfa_4_doubles:          // @use_va_args_few_hfa_4_doubles
.seh_proc use_va_args_few_hfa_4_doubles
// %bb.0:
	sub	sp, sp, #176
	.seh_stackalloc	176
	.seh_endprologue
	str	x7, [sp, #168]
	str	x6, [sp, #160]
	str	x5, [sp, #152]
	str	x4, [sp, #144]
	str	x3, [sp, #136]
	str	x2, [sp, #128]
	str	x1, [sp, #120]
	str	x0, [sp, #104]
	add	x8, sp, #120
	str	x8, [sp, #96]
	ldr	x8, [sp, #96]
	add	x9, x8, #8
	str	x9, [sp, #96]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #64]
	str	q0, [sp, #48]
	ldr	d0, [sp, #48]
	str	d0, [sp, #88]
	ldr	x8, [sp, #96]
	add	x9, x8, #8
	str	x9, [sp, #96]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #16]
	str	q0, [sp]
	ldr	d0, [sp, #8]
	str	d0, [sp, #40]
	ldr	d0, [sp, #88]
	ldr	d1, [sp, #40]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #176
	.seh_stackalloc	176
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_few_hfa_4_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_hfa_4_doubles   // -- Begin function use_va_list_few_hfa_4_doubles
	.p2align	2
use_va_list_few_hfa_4_doubles:          // @use_va_list_few_hfa_4_doubles
.seh_proc use_va_list_few_hfa_4_doubles
// %bb.0:
	sub	sp, sp, #112
	.seh_stackalloc	112
	.seh_endprologue
	str	x0, [sp, #104]
	str	x1, [sp, #96]
	ldr	x8, [sp, #96]
	add	x9, x8, #8
	str	x9, [sp, #96]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #48]
	ldr	q0, [x8, #16]
	str	q0, [sp, #64]
	ldr	x8, [sp, #48]
	str	x8, [sp, #88]
	ldr	x8, [sp, #96]
	add	x9, x8, #8
	str	x9, [sp, #96]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	q0, [x8, #16]
	str	q0, [sp, #16]
	ldr	x8, [sp, #8]
	str	x8, [sp, #40]
	ldr	d0, [sp, #88]
	ldr	d1, [sp, #40]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #112
	.seh_stackalloc	112
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_several_hfa_4_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_hfa_4_doubles // -- Begin function use_va_args_several_hfa_4_doubles
	.p2align	2
use_va_args_several_hfa_4_doubles:      // @use_va_args_several_hfa_4_doubles
.seh_proc use_va_args_several_hfa_4_doubles
// %bb.0:
	str	x30, [sp, #-80]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 80
	sub	sp, sp, #448
	.seh_stackalloc	448
	.seh_endprologue
	str	x7, [sp, #520]
	str	x6, [sp, #512]
	str	x5, [sp, #504]
	str	x4, [sp, #496]
	str	x3, [sp, #488]
	str	x2, [sp, #480]
	str	x1, [sp, #472]
	str	x0, [sp, #440]
	add	x8, sp, #472
	str	x8, [sp, #432]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #400]
	str	q0, [sp, #384]
	ldr	d0, [sp, #384]
	str	d0, [sp, #424]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #352]
	str	q0, [sp, #336]
	ldr	d0, [sp, #344]
	str	d0, [sp, #376]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #304]
	str	q0, [sp, #288]
	ldr	d0, [sp, #304]
	str	d0, [sp, #328]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #256]
	str	q0, [sp, #240]
	ldr	d0, [sp, #264]
	str	d0, [sp, #280]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #208]
	str	q0, [sp, #192]
	ldr	d0, [sp, #192]
	str	d0, [sp, #232]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #160]
	str	q0, [sp, #144]
	ldr	d0, [sp, #152]
	str	d0, [sp, #184]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #112]
	str	q0, [sp, #96]
	ldr	d0, [sp, #112]
	str	d0, [sp, #136]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #64]
	str	q0, [sp, #48]
	ldr	d0, [sp, #72]
	str	d0, [sp, #88]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #16]
	str	q0, [sp]
	ldr	d0, [sp]
	str	d0, [sp, #40]
	ldr	d0, [sp, #424]
	ldr	d1, [sp, #376]
	fadd	d0, d0, d1
	ldr	d1, [sp, #328]
	fadd	d0, d0, d1
	ldr	d1, [sp, #280]
	fadd	d0, d0, d1
	ldr	d1, [sp, #232]
	fadd	d0, d0, d1
	ldr	d1, [sp, #184]
	fadd	d0, d0, d1
	ldr	d1, [sp, #136]
	fadd	d0, d0, d1
	ldr	d1, [sp, #88]
	fadd	d0, d0, d1
	ldr	d1, [sp, #40]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #448
	.seh_stackalloc	448
	ldr	x30, [sp], #80                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_several_hfa_4_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_hfa_4_doubles // -- Begin function use_va_list_several_hfa_4_doubles
	.p2align	2
use_va_list_several_hfa_4_doubles:      // @use_va_list_several_hfa_4_doubles
.seh_proc use_va_list_several_hfa_4_doubles
// %bb.0:
	sub	sp, sp, #464
	.seh_stackalloc	464
	str	x30, [sp, #448]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 448
	.seh_endprologue
	str	x0, [sp, #440]
	str	x1, [sp, #432]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #384]
	ldr	q0, [x8, #16]
	str	q0, [sp, #400]
	ldr	x8, [sp, #384]
	str	x8, [sp, #424]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #336]
	ldr	q0, [x8, #16]
	str	q0, [sp, #352]
	ldr	x8, [sp, #344]
	str	x8, [sp, #376]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #288]
	ldr	q0, [x8, #16]
	str	q0, [sp, #304]
	ldr	x8, [sp, #304]
	str	x8, [sp, #328]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #240]
	ldr	q0, [x8, #16]
	str	q0, [sp, #256]
	ldr	x8, [sp, #264]
	str	x8, [sp, #280]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	q0, [x8, #16]
	str	q0, [sp, #208]
	ldr	x8, [sp, #192]
	str	x8, [sp, #232]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #144]
	ldr	q0, [x8, #16]
	str	q0, [sp, #160]
	ldr	x8, [sp, #152]
	str	x8, [sp, #184]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	q0, [x8, #16]
	str	q0, [sp, #112]
	ldr	x8, [sp, #112]
	str	x8, [sp, #136]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #48]
	ldr	q0, [x8, #16]
	str	q0, [sp, #64]
	ldr	x8, [sp, #72]
	str	x8, [sp, #88]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	q0, [x8, #16]
	str	q0, [sp, #16]
	ldr	x8, [sp]
	str	x8, [sp, #40]
	ldr	d0, [sp, #424]
	ldr	d1, [sp, #376]
	fadd	d0, d0, d1
	ldr	d1, [sp, #328]
	fadd	d0, d0, d1
	ldr	d1, [sp, #280]
	fadd	d0, d0, d1
	ldr	d1, [sp, #232]
	fadd	d0, d0, d1
	ldr	d1, [sp, #184]
	fadd	d0, d0, d1
	ldr	d1, [sp, #136]
	fadd	d0, d0, d1
	ldr	d1, [sp, #88]
	fadd	d0, d0, d1
	ldr	d1, [sp, #40]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	ldr	x30, [sp, #448]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 448
	add	sp, sp, #464
	.seh_stackalloc	464
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_many_hfa_4_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_hfa_4_doubles  // -- Begin function use_va_args_many_hfa_4_doubles
	.p2align	2
use_va_args_many_hfa_4_doubles:         // @use_va_args_many_hfa_4_doubles
.seh_proc use_va_args_many_hfa_4_doubles
// %bb.0:
	str	x30, [sp, #-80]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 80
	sub	sp, sp, #832
	.seh_stackalloc	832
	.seh_endprologue
	str	x7, [sp, #904]
	str	x6, [sp, #896]
	str	x5, [sp, #888]
	str	x4, [sp, #880]
	str	x3, [sp, #872]
	str	x2, [sp, #864]
	str	x1, [sp, #856]
	str	x0, [sp, #824]
	add	x8, sp, #856
	str	x8, [sp, #816]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #784]
	str	q0, [sp, #768]
	ldr	d0, [sp, #768]
	str	d0, [sp, #808]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #736]
	str	q0, [sp, #720]
	ldr	d0, [sp, #728]
	str	d0, [sp, #760]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #688]
	str	q0, [sp, #672]
	ldr	d0, [sp, #688]
	str	d0, [sp, #712]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #640]
	str	q0, [sp, #624]
	ldr	d0, [sp, #648]
	str	d0, [sp, #664]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #592]
	str	q0, [sp, #576]
	ldr	d0, [sp, #576]
	str	d0, [sp, #616]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #544]
	str	q0, [sp, #528]
	ldr	d0, [sp, #536]
	str	d0, [sp, #568]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #496]
	str	q0, [sp, #480]
	ldr	d0, [sp, #496]
	str	d0, [sp, #520]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #448]
	str	q0, [sp, #432]
	ldr	d0, [sp, #456]
	str	d0, [sp, #472]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #400]
	str	q0, [sp, #384]
	ldr	d0, [sp, #384]
	str	d0, [sp, #424]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #352]
	str	q0, [sp, #336]
	ldr	d0, [sp, #344]
	str	d0, [sp, #376]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #304]
	str	q0, [sp, #288]
	ldr	d0, [sp, #304]
	str	d0, [sp, #328]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #256]
	str	q0, [sp, #240]
	ldr	d0, [sp, #264]
	str	d0, [sp, #280]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #208]
	str	q0, [sp, #192]
	ldr	d0, [sp, #192]
	str	d0, [sp, #232]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #160]
	str	q0, [sp, #144]
	ldr	d0, [sp, #152]
	str	d0, [sp, #184]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #112]
	str	q0, [sp, #96]
	ldr	d0, [sp, #112]
	str	d0, [sp, #136]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #64]
	str	q0, [sp, #48]
	ldr	d0, [sp, #72]
	str	d0, [sp, #88]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #16]
	str	q0, [sp]
	ldr	d0, [sp]
	str	d0, [sp, #40]
	ldr	d0, [sp, #808]
	ldr	d1, [sp, #760]
	fadd	d0, d0, d1
	ldr	d1, [sp, #712]
	fadd	d0, d0, d1
	ldr	d1, [sp, #664]
	fadd	d0, d0, d1
	ldr	d1, [sp, #616]
	fadd	d0, d0, d1
	ldr	d1, [sp, #568]
	fadd	d0, d0, d1
	ldr	d1, [sp, #520]
	fadd	d0, d0, d1
	ldr	d1, [sp, #472]
	fadd	d0, d0, d1
	ldr	d1, [sp, #424]
	fadd	d0, d0, d1
	ldr	d1, [sp, #376]
	fadd	d0, d0, d1
	ldr	d1, [sp, #328]
	fadd	d0, d0, d1
	ldr	d1, [sp, #280]
	fadd	d0, d0, d1
	ldr	d1, [sp, #232]
	fadd	d0, d0, d1
	ldr	d1, [sp, #184]
	fadd	d0, d0, d1
	ldr	d1, [sp, #136]
	fadd	d0, d0, d1
	ldr	d1, [sp, #88]
	fadd	d0, d0, d1
	ldr	d1, [sp, #40]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #832
	.seh_stackalloc	832
	ldr	x30, [sp], #80                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_many_hfa_4_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_hfa_4_doubles  // -- Begin function use_va_list_many_hfa_4_doubles
	.p2align	2
use_va_list_many_hfa_4_doubles:         // @use_va_list_many_hfa_4_doubles
.seh_proc use_va_list_many_hfa_4_doubles
// %bb.0:
	str	x30, [sp, #-16]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 16
	sub	sp, sp, #832
	.seh_stackalloc	832
	.seh_endprologue
	str	x0, [sp, #824]
	str	x1, [sp, #816]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #768]
	ldr	q0, [x8, #16]
	str	q0, [sp, #784]
	ldr	x8, [sp, #768]
	str	x8, [sp, #808]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #720]
	ldr	q0, [x8, #16]
	str	q0, [sp, #736]
	ldr	x8, [sp, #728]
	str	x8, [sp, #760]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #672]
	ldr	q0, [x8, #16]
	str	q0, [sp, #688]
	ldr	x8, [sp, #688]
	str	x8, [sp, #712]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #624]
	ldr	q0, [x8, #16]
	str	q0, [sp, #640]
	ldr	x8, [sp, #648]
	str	x8, [sp, #664]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #576]
	ldr	q0, [x8, #16]
	str	q0, [sp, #592]
	ldr	x8, [sp, #576]
	str	x8, [sp, #616]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #528]
	ldr	q0, [x8, #16]
	str	q0, [sp, #544]
	ldr	x8, [sp, #536]
	str	x8, [sp, #568]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #480]
	ldr	q0, [x8, #16]
	str	q0, [sp, #496]
	ldr	x8, [sp, #496]
	str	x8, [sp, #520]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #432]
	ldr	q0, [x8, #16]
	str	q0, [sp, #448]
	ldr	x8, [sp, #456]
	str	x8, [sp, #472]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #384]
	ldr	q0, [x8, #16]
	str	q0, [sp, #400]
	ldr	x8, [sp, #384]
	str	x8, [sp, #424]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #336]
	ldr	q0, [x8, #16]
	str	q0, [sp, #352]
	ldr	x8, [sp, #344]
	str	x8, [sp, #376]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #288]
	ldr	q0, [x8, #16]
	str	q0, [sp, #304]
	ldr	x8, [sp, #304]
	str	x8, [sp, #328]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #240]
	ldr	q0, [x8, #16]
	str	q0, [sp, #256]
	ldr	x8, [sp, #264]
	str	x8, [sp, #280]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	q0, [x8, #16]
	str	q0, [sp, #208]
	ldr	x8, [sp, #192]
	str	x8, [sp, #232]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #144]
	ldr	q0, [x8, #16]
	str	q0, [sp, #160]
	ldr	x8, [sp, #152]
	str	x8, [sp, #184]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	q0, [x8, #16]
	str	q0, [sp, #112]
	ldr	x8, [sp, #112]
	str	x8, [sp, #136]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #48]
	ldr	q0, [x8, #16]
	str	q0, [sp, #64]
	ldr	x8, [sp, #72]
	str	x8, [sp, #88]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	q0, [x8, #16]
	str	q0, [sp, #16]
	ldr	x8, [sp]
	str	x8, [sp, #40]
	ldr	d0, [sp, #808]
	ldr	d1, [sp, #760]
	fadd	d0, d0, d1
	ldr	d1, [sp, #712]
	fadd	d0, d0, d1
	ldr	d1, [sp, #664]
	fadd	d0, d0, d1
	ldr	d1, [sp, #616]
	fadd	d0, d0, d1
	ldr	d1, [sp, #568]
	fadd	d0, d0, d1
	ldr	d1, [sp, #520]
	fadd	d0, d0, d1
	ldr	d1, [sp, #472]
	fadd	d0, d0, d1
	ldr	d1, [sp, #424]
	fadd	d0, d0, d1
	ldr	d1, [sp, #376]
	fadd	d0, d0, d1
	ldr	d1, [sp, #328]
	fadd	d0, d0, d1
	ldr	d1, [sp, #280]
	fadd	d0, d0, d1
	ldr	d1, [sp, #232]
	fadd	d0, d0, d1
	ldr	d1, [sp, #184]
	fadd	d0, d0, d1
	ldr	d1, [sp, #136]
	fadd	d0, d0, d1
	ldr	d1, [sp, #88]
	fadd	d0, d0, d1
	ldr	d1, [sp, #40]
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #832
	.seh_stackalloc	832
	ldr	x30, [sp], #16                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 16
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_hva_2_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_hva_2_short_vector_8_bytes // -- Begin function use_va_args_few_hva_2_short_vector_8_bytes
	.p2align	2
use_va_args_few_hva_2_short_vector_8_bytes: // @use_va_args_few_hva_2_short_vector_8_bytes
.seh_proc use_va_args_few_hva_2_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #144
	.seh_stackalloc	144
	.seh_endprologue
	str	x7, [sp, #136]
	str	x6, [sp, #128]
	str	x5, [sp, #120]
	str	x4, [sp, #112]
	str	x3, [sp, #104]
	str	x2, [sp, #96]
	str	x1, [sp, #88]
	str	x0, [sp, #72]
	add	x8, sp, #88
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	add	x9, x8, #16
	str	x9, [sp, #64]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	w8, [sp, #32]
	str	w8, [sp, #60]
	ldr	x8, [sp, #64]
	add	x9, x8, #16
	str	x9, [sp, #64]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	w8, [sp, #12]
	str	w8, [sp, #28]
	ldr	w8, [sp, #60]
	ldr	w9, [sp, #28]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #144
	.seh_stackalloc	144
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_few_hva_2_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_hva_2_short_vector_8_bytes // -- Begin function use_va_list_few_hva_2_short_vector_8_bytes
	.p2align	2
use_va_list_few_hva_2_short_vector_8_bytes: // @use_va_list_few_hva_2_short_vector_8_bytes
.seh_proc use_va_list_few_hva_2_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #80
	.seh_stackalloc	80
	.seh_endprologue
	str	x0, [sp, #72]
	str	x1, [sp, #64]
	ldr	x8, [sp, #64]
	add	x9, x8, #16
	str	x9, [sp, #64]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	w8, [sp, #32]
	str	w8, [sp, #60]
	ldr	x8, [sp, #64]
	add	x9, x8, #16
	str	x9, [sp, #64]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	w8, [sp, #12]
	str	w8, [sp, #28]
	ldr	w8, [sp, #60]
	ldr	w9, [sp, #28]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #80
	.seh_stackalloc	80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_several_hva_2_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_hva_2_short_vector_8_bytes // -- Begin function use_va_args_several_hva_2_short_vector_8_bytes
	.p2align	2
use_va_args_several_hva_2_short_vector_8_bytes: // @use_va_args_several_hva_2_short_vector_8_bytes
.seh_proc use_va_args_several_hva_2_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #384
	.seh_stackalloc	384
	str	x30, [sp, #304]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 304
	.seh_endprologue
	str	x7, [sp, #376]
	str	x6, [sp, #368]
	str	x5, [sp, #360]
	str	x4, [sp, #352]
	str	x3, [sp, #344]
	str	x2, [sp, #336]
	str	x1, [sp, #328]
	str	x0, [sp, #296]
	add	x8, sp, #328
	str	x8, [sp, #288]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #256]
	ldr	w8, [sp, #256]
	str	w8, [sp, #284]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #224]
	ldr	w8, [sp, #236]
	str	w8, [sp, #252]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	w8, [sp, #192]
	str	w8, [sp, #220]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #160]
	ldr	w8, [sp, #172]
	str	w8, [sp, #188]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #156]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	w8, [sp, #108]
	str	w8, [sp, #124]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	w8, [sp, #64]
	str	w8, [sp, #92]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	w8, [sp, #44]
	str	w8, [sp, #60]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #28]
	ldr	w8, [sp, #284]
	ldr	w9, [sp, #252]
	add	w8, w8, w9
	ldr	w9, [sp, #220]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #156]
	add	w8, w8, w9
	ldr	w9, [sp, #124]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w0, w8, w9
	.seh_startepilogue
	ldr	x30, [sp, #304]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 304
	add	sp, sp, #384
	.seh_stackalloc	384
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_several_hva_2_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_hva_2_short_vector_8_bytes // -- Begin function use_va_list_several_hva_2_short_vector_8_bytes
	.p2align	2
use_va_list_several_hva_2_short_vector_8_bytes: // @use_va_list_several_hva_2_short_vector_8_bytes
.seh_proc use_va_list_several_hva_2_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #320
	.seh_stackalloc	320
	str	x30, [sp, #304]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 304
	.seh_endprologue
	str	x0, [sp, #296]
	str	x1, [sp, #288]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #256]
	ldr	w8, [sp, #256]
	str	w8, [sp, #284]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #224]
	ldr	w8, [sp, #236]
	str	w8, [sp, #252]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	w8, [sp, #192]
	str	w8, [sp, #220]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #160]
	ldr	w8, [sp, #172]
	str	w8, [sp, #188]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #156]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	w8, [sp, #108]
	str	w8, [sp, #124]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	w8, [sp, #64]
	str	w8, [sp, #92]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	w8, [sp, #44]
	str	w8, [sp, #60]
	ldr	x8, [sp, #288]
	add	x9, x8, #16
	str	x9, [sp, #288]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #28]
	ldr	w8, [sp, #284]
	ldr	w9, [sp, #252]
	add	w8, w8, w9
	ldr	w9, [sp, #220]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #156]
	add	w8, w8, w9
	ldr	w9, [sp, #124]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w0, w8, w9
	.seh_startepilogue
	ldr	x30, [sp, #304]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 304
	add	sp, sp, #320
	.seh_stackalloc	320
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_many_hva_2_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_hva_2_short_vector_8_bytes // -- Begin function use_va_args_many_hva_2_short_vector_8_bytes
	.p2align	2
use_va_args_many_hva_2_short_vector_8_bytes: // @use_va_args_many_hva_2_short_vector_8_bytes
.seh_proc use_va_args_many_hva_2_short_vector_8_bytes
// %bb.0:
	str	x30, [sp, #-80]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 80
	sub	sp, sp, #560
	.seh_stackalloc	560
	.seh_endprologue
	str	x7, [sp, #632]
	str	x6, [sp, #624]
	str	x5, [sp, #616]
	str	x4, [sp, #608]
	str	x3, [sp, #600]
	str	x2, [sp, #592]
	str	x1, [sp, #584]
	str	x0, [sp, #552]
	add	x8, sp, #584
	str	x8, [sp, #544]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #512]
	ldr	w8, [sp, #512]
	str	w8, [sp, #540]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #480]
	ldr	w8, [sp, #492]
	str	w8, [sp, #508]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #448]
	ldr	w8, [sp, #448]
	str	w8, [sp, #476]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #416]
	ldr	w8, [sp, #428]
	str	w8, [sp, #444]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #384]
	ldr	w8, [sp, #384]
	str	w8, [sp, #412]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #352]
	ldr	w8, [sp, #364]
	str	w8, [sp, #380]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #320]
	ldr	w8, [sp, #320]
	str	w8, [sp, #348]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #288]
	ldr	w8, [sp, #300]
	str	w8, [sp, #316]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #256]
	ldr	w8, [sp, #256]
	str	w8, [sp, #284]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #224]
	ldr	w8, [sp, #236]
	str	w8, [sp, #252]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	w8, [sp, #192]
	str	w8, [sp, #220]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #160]
	ldr	w8, [sp, #172]
	str	w8, [sp, #188]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #156]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	w8, [sp, #108]
	str	w8, [sp, #124]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	w8, [sp, #64]
	str	w8, [sp, #92]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	w8, [sp, #44]
	str	w8, [sp, #60]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #28]
	ldr	w8, [sp, #540]
	ldr	w9, [sp, #508]
	add	w8, w8, w9
	ldr	w9, [sp, #476]
	add	w8, w8, w9
	ldr	w9, [sp, #444]
	add	w8, w8, w9
	ldr	w9, [sp, #412]
	add	w8, w8, w9
	ldr	w9, [sp, #380]
	add	w8, w8, w9
	ldr	w9, [sp, #348]
	add	w8, w8, w9
	ldr	w9, [sp, #316]
	add	w8, w8, w9
	ldr	w9, [sp, #284]
	add	w8, w8, w9
	ldr	w9, [sp, #252]
	add	w8, w8, w9
	ldr	w9, [sp, #220]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #156]
	add	w8, w8, w9
	ldr	w9, [sp, #124]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #560
	.seh_stackalloc	560
	ldr	x30, [sp], #80                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_many_hva_2_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_hva_2_short_vector_8_bytes // -- Begin function use_va_list_many_hva_2_short_vector_8_bytes
	.p2align	2
use_va_list_many_hva_2_short_vector_8_bytes: // @use_va_list_many_hva_2_short_vector_8_bytes
.seh_proc use_va_list_many_hva_2_short_vector_8_bytes
// %bb.0:
	str	x30, [sp, #-16]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 16
	sub	sp, sp, #560
	.seh_stackalloc	560
	.seh_endprologue
	str	x0, [sp, #552]
	str	x1, [sp, #544]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #512]
	ldr	w8, [sp, #512]
	str	w8, [sp, #540]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #480]
	ldr	w8, [sp, #492]
	str	w8, [sp, #508]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #448]
	ldr	w8, [sp, #448]
	str	w8, [sp, #476]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #416]
	ldr	w8, [sp, #428]
	str	w8, [sp, #444]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #384]
	ldr	w8, [sp, #384]
	str	w8, [sp, #412]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #352]
	ldr	w8, [sp, #364]
	str	w8, [sp, #380]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #320]
	ldr	w8, [sp, #320]
	str	w8, [sp, #348]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #288]
	ldr	w8, [sp, #300]
	str	w8, [sp, #316]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #256]
	ldr	w8, [sp, #256]
	str	w8, [sp, #284]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #224]
	ldr	w8, [sp, #236]
	str	w8, [sp, #252]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	w8, [sp, #192]
	str	w8, [sp, #220]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #160]
	ldr	w8, [sp, #172]
	str	w8, [sp, #188]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #128]
	ldr	w8, [sp, #128]
	str	w8, [sp, #156]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	w8, [sp, #108]
	str	w8, [sp, #124]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	w8, [sp, #64]
	str	w8, [sp, #92]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	w8, [sp, #44]
	str	w8, [sp, #60]
	ldr	x8, [sp, #544]
	add	x9, x8, #16
	str	x9, [sp, #544]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #28]
	ldr	w8, [sp, #540]
	ldr	w9, [sp, #508]
	add	w8, w8, w9
	ldr	w9, [sp, #476]
	add	w8, w8, w9
	ldr	w9, [sp, #444]
	add	w8, w8, w9
	ldr	w9, [sp, #412]
	add	w8, w8, w9
	ldr	w9, [sp, #380]
	add	w8, w8, w9
	ldr	w9, [sp, #348]
	add	w8, w8, w9
	ldr	w9, [sp, #316]
	add	w8, w8, w9
	ldr	w9, [sp, #284]
	add	w8, w8, w9
	ldr	w9, [sp, #252]
	add	w8, w8, w9
	ldr	w9, [sp, #220]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #156]
	add	w8, w8, w9
	ldr	w9, [sp, #124]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #60]
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #560
	.seh_stackalloc	560
	ldr	x30, [sp], #16                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 16
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_hva_4_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_hva_4_short_vector_8_bytes // -- Begin function use_va_args_few_hva_4_short_vector_8_bytes
	.p2align	2
use_va_args_few_hva_4_short_vector_8_bytes: // @use_va_args_few_hva_4_short_vector_8_bytes
.seh_proc use_va_args_few_hva_4_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #176
	.seh_stackalloc	176
	.seh_endprologue
	str	x7, [sp, #168]
	str	x6, [sp, #160]
	str	x5, [sp, #152]
	str	x4, [sp, #144]
	str	x3, [sp, #136]
	str	x2, [sp, #128]
	str	x1, [sp, #120]
	str	x0, [sp, #104]
	add	x8, sp, #120
	str	x8, [sp, #96]
	ldr	x8, [sp, #96]
	add	x9, x8, #8
	str	x9, [sp, #96]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #64]
	str	q0, [sp, #48]
	ldr	w8, [sp, #48]
	str	w8, [sp, #92]
	ldr	x8, [sp, #96]
	add	x9, x8, #8
	str	x9, [sp, #96]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #16]
	str	q0, [sp]
	ldr	w8, [sp, #12]
	str	w8, [sp, #44]
	ldr	w8, [sp, #92]
	ldr	w9, [sp, #44]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #176
	.seh_stackalloc	176
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_few_hva_4_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_hva_4_short_vector_8_bytes // -- Begin function use_va_list_few_hva_4_short_vector_8_bytes
	.p2align	2
use_va_list_few_hva_4_short_vector_8_bytes: // @use_va_list_few_hva_4_short_vector_8_bytes
.seh_proc use_va_list_few_hva_4_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #112
	.seh_stackalloc	112
	.seh_endprologue
	str	x0, [sp, #104]
	str	x1, [sp, #96]
	ldr	x8, [sp, #96]
	add	x9, x8, #8
	str	x9, [sp, #96]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #48]
	ldr	q0, [x8, #16]
	str	q0, [sp, #64]
	ldr	w8, [sp, #48]
	str	w8, [sp, #92]
	ldr	x8, [sp, #96]
	add	x9, x8, #8
	str	x9, [sp, #96]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	q0, [x8, #16]
	str	q0, [sp, #16]
	ldr	w8, [sp, #12]
	str	w8, [sp, #44]
	ldr	w8, [sp, #92]
	ldr	w9, [sp, #44]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #112
	.seh_stackalloc	112
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_several_hva_4_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_hva_4_short_vector_8_bytes // -- Begin function use_va_args_several_hva_4_short_vector_8_bytes
	.p2align	2
use_va_args_several_hva_4_short_vector_8_bytes: // @use_va_args_several_hva_4_short_vector_8_bytes
.seh_proc use_va_args_several_hva_4_short_vector_8_bytes
// %bb.0:
	str	x30, [sp, #-80]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 80
	sub	sp, sp, #448
	.seh_stackalloc	448
	.seh_endprologue
	str	x7, [sp, #520]
	str	x6, [sp, #512]
	str	x5, [sp, #504]
	str	x4, [sp, #496]
	str	x3, [sp, #488]
	str	x2, [sp, #480]
	str	x1, [sp, #472]
	str	x0, [sp, #440]
	add	x8, sp, #472
	str	x8, [sp, #432]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #400]
	str	q0, [sp, #384]
	ldr	w8, [sp, #384]
	str	w8, [sp, #428]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #352]
	str	q0, [sp, #336]
	ldr	w8, [sp, #348]
	str	w8, [sp, #380]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #304]
	str	q0, [sp, #288]
	ldr	w8, [sp, #304]
	str	w8, [sp, #332]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #256]
	str	q0, [sp, #240]
	ldr	w8, [sp, #268]
	str	w8, [sp, #284]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #208]
	str	q0, [sp, #192]
	ldr	w8, [sp, #192]
	str	w8, [sp, #236]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #160]
	str	q0, [sp, #144]
	ldr	w8, [sp, #156]
	str	w8, [sp, #188]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #112]
	str	q0, [sp, #96]
	ldr	w8, [sp, #112]
	str	w8, [sp, #140]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #64]
	str	q0, [sp, #48]
	ldr	w8, [sp, #76]
	str	w8, [sp, #92]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #16]
	str	q0, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #44]
	ldr	w8, [sp, #428]
	ldr	w9, [sp, #380]
	add	w8, w8, w9
	ldr	w9, [sp, #332]
	add	w8, w8, w9
	ldr	w9, [sp, #284]
	add	w8, w8, w9
	ldr	w9, [sp, #236]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #140]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #448
	.seh_stackalloc	448
	ldr	x30, [sp], #80                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_several_hva_4_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_hva_4_short_vector_8_bytes // -- Begin function use_va_list_several_hva_4_short_vector_8_bytes
	.p2align	2
use_va_list_several_hva_4_short_vector_8_bytes: // @use_va_list_several_hva_4_short_vector_8_bytes
.seh_proc use_va_list_several_hva_4_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #464
	.seh_stackalloc	464
	str	x30, [sp, #448]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 448
	.seh_endprologue
	str	x0, [sp, #440]
	str	x1, [sp, #432]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #384]
	ldr	q0, [x8, #16]
	str	q0, [sp, #400]
	ldr	w8, [sp, #384]
	str	w8, [sp, #428]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #336]
	ldr	q0, [x8, #16]
	str	q0, [sp, #352]
	ldr	w8, [sp, #348]
	str	w8, [sp, #380]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #288]
	ldr	q0, [x8, #16]
	str	q0, [sp, #304]
	ldr	w8, [sp, #304]
	str	w8, [sp, #332]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #240]
	ldr	q0, [x8, #16]
	str	q0, [sp, #256]
	ldr	w8, [sp, #268]
	str	w8, [sp, #284]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	q0, [x8, #16]
	str	q0, [sp, #208]
	ldr	w8, [sp, #192]
	str	w8, [sp, #236]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #144]
	ldr	q0, [x8, #16]
	str	q0, [sp, #160]
	ldr	w8, [sp, #156]
	str	w8, [sp, #188]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	q0, [x8, #16]
	str	q0, [sp, #112]
	ldr	w8, [sp, #112]
	str	w8, [sp, #140]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #48]
	ldr	q0, [x8, #16]
	str	q0, [sp, #64]
	ldr	w8, [sp, #76]
	str	w8, [sp, #92]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	q0, [x8, #16]
	str	q0, [sp, #16]
	ldr	w8, [sp]
	str	w8, [sp, #44]
	ldr	w8, [sp, #428]
	ldr	w9, [sp, #380]
	add	w8, w8, w9
	ldr	w9, [sp, #332]
	add	w8, w8, w9
	ldr	w9, [sp, #284]
	add	w8, w8, w9
	ldr	w9, [sp, #236]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #140]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w0, w8, w9
	.seh_startepilogue
	ldr	x30, [sp, #448]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 448
	add	sp, sp, #464
	.seh_stackalloc	464
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_many_hva_4_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_hva_4_short_vector_8_bytes // -- Begin function use_va_args_many_hva_4_short_vector_8_bytes
	.p2align	2
use_va_args_many_hva_4_short_vector_8_bytes: // @use_va_args_many_hva_4_short_vector_8_bytes
.seh_proc use_va_args_many_hva_4_short_vector_8_bytes
// %bb.0:
	str	x30, [sp, #-80]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 80
	sub	sp, sp, #832
	.seh_stackalloc	832
	.seh_endprologue
	str	x7, [sp, #904]
	str	x6, [sp, #896]
	str	x5, [sp, #888]
	str	x4, [sp, #880]
	str	x3, [sp, #872]
	str	x2, [sp, #864]
	str	x1, [sp, #856]
	str	x0, [sp, #824]
	add	x8, sp, #856
	str	x8, [sp, #816]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #784]
	str	q0, [sp, #768]
	ldr	w8, [sp, #768]
	str	w8, [sp, #812]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #736]
	str	q0, [sp, #720]
	ldr	w8, [sp, #732]
	str	w8, [sp, #764]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #688]
	str	q0, [sp, #672]
	ldr	w8, [sp, #688]
	str	w8, [sp, #716]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #640]
	str	q0, [sp, #624]
	ldr	w8, [sp, #652]
	str	w8, [sp, #668]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #592]
	str	q0, [sp, #576]
	ldr	w8, [sp, #576]
	str	w8, [sp, #620]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #544]
	str	q0, [sp, #528]
	ldr	w8, [sp, #540]
	str	w8, [sp, #572]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #496]
	str	q0, [sp, #480]
	ldr	w8, [sp, #496]
	str	w8, [sp, #524]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #448]
	str	q0, [sp, #432]
	ldr	w8, [sp, #460]
	str	w8, [sp, #476]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #400]
	str	q0, [sp, #384]
	ldr	w8, [sp, #384]
	str	w8, [sp, #428]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #352]
	str	q0, [sp, #336]
	ldr	w8, [sp, #348]
	str	w8, [sp, #380]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #304]
	str	q0, [sp, #288]
	ldr	w8, [sp, #304]
	str	w8, [sp, #332]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #256]
	str	q0, [sp, #240]
	ldr	w8, [sp, #268]
	str	w8, [sp, #284]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #208]
	str	q0, [sp, #192]
	ldr	w8, [sp, #192]
	str	w8, [sp, #236]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #160]
	str	q0, [sp, #144]
	ldr	w8, [sp, #156]
	str	w8, [sp, #188]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #112]
	str	q0, [sp, #96]
	ldr	w8, [sp, #112]
	str	w8, [sp, #140]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #64]
	str	q0, [sp, #48]
	ldr	w8, [sp, #76]
	str	w8, [sp, #92]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #16]
	str	q0, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #44]
	ldr	w8, [sp, #812]
	ldr	w9, [sp, #764]
	add	w8, w8, w9
	ldr	w9, [sp, #716]
	add	w8, w8, w9
	ldr	w9, [sp, #668]
	add	w8, w8, w9
	ldr	w9, [sp, #620]
	add	w8, w8, w9
	ldr	w9, [sp, #572]
	add	w8, w8, w9
	ldr	w9, [sp, #524]
	add	w8, w8, w9
	ldr	w9, [sp, #476]
	add	w8, w8, w9
	ldr	w9, [sp, #428]
	add	w8, w8, w9
	ldr	w9, [sp, #380]
	add	w8, w8, w9
	ldr	w9, [sp, #332]
	add	w8, w8, w9
	ldr	w9, [sp, #284]
	add	w8, w8, w9
	ldr	w9, [sp, #236]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #140]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #832
	.seh_stackalloc	832
	ldr	x30, [sp], #80                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_many_hva_4_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_hva_4_short_vector_8_bytes // -- Begin function use_va_list_many_hva_4_short_vector_8_bytes
	.p2align	2
use_va_list_many_hva_4_short_vector_8_bytes: // @use_va_list_many_hva_4_short_vector_8_bytes
.seh_proc use_va_list_many_hva_4_short_vector_8_bytes
// %bb.0:
	str	x30, [sp, #-16]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 16
	sub	sp, sp, #832
	.seh_stackalloc	832
	.seh_endprologue
	str	x0, [sp, #824]
	str	x1, [sp, #816]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #768]
	ldr	q0, [x8, #16]
	str	q0, [sp, #784]
	ldr	w8, [sp, #768]
	str	w8, [sp, #812]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #720]
	ldr	q0, [x8, #16]
	str	q0, [sp, #736]
	ldr	w8, [sp, #732]
	str	w8, [sp, #764]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #672]
	ldr	q0, [x8, #16]
	str	q0, [sp, #688]
	ldr	w8, [sp, #688]
	str	w8, [sp, #716]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #624]
	ldr	q0, [x8, #16]
	str	q0, [sp, #640]
	ldr	w8, [sp, #652]
	str	w8, [sp, #668]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #576]
	ldr	q0, [x8, #16]
	str	q0, [sp, #592]
	ldr	w8, [sp, #576]
	str	w8, [sp, #620]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #528]
	ldr	q0, [x8, #16]
	str	q0, [sp, #544]
	ldr	w8, [sp, #540]
	str	w8, [sp, #572]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #480]
	ldr	q0, [x8, #16]
	str	q0, [sp, #496]
	ldr	w8, [sp, #496]
	str	w8, [sp, #524]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #432]
	ldr	q0, [x8, #16]
	str	q0, [sp, #448]
	ldr	w8, [sp, #460]
	str	w8, [sp, #476]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #384]
	ldr	q0, [x8, #16]
	str	q0, [sp, #400]
	ldr	w8, [sp, #384]
	str	w8, [sp, #428]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #336]
	ldr	q0, [x8, #16]
	str	q0, [sp, #352]
	ldr	w8, [sp, #348]
	str	w8, [sp, #380]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #288]
	ldr	q0, [x8, #16]
	str	q0, [sp, #304]
	ldr	w8, [sp, #304]
	str	w8, [sp, #332]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #240]
	ldr	q0, [x8, #16]
	str	q0, [sp, #256]
	ldr	w8, [sp, #268]
	str	w8, [sp, #284]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	q0, [x8, #16]
	str	q0, [sp, #208]
	ldr	w8, [sp, #192]
	str	w8, [sp, #236]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #144]
	ldr	q0, [x8, #16]
	str	q0, [sp, #160]
	ldr	w8, [sp, #156]
	str	w8, [sp, #188]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	q0, [x8, #16]
	str	q0, [sp, #112]
	ldr	w8, [sp, #112]
	str	w8, [sp, #140]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #48]
	ldr	q0, [x8, #16]
	str	q0, [sp, #64]
	ldr	w8, [sp, #76]
	str	w8, [sp, #92]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	q0, [x8, #16]
	str	q0, [sp, #16]
	ldr	w8, [sp]
	str	w8, [sp, #44]
	ldr	w8, [sp, #812]
	ldr	w9, [sp, #764]
	add	w8, w8, w9
	ldr	w9, [sp, #716]
	add	w8, w8, w9
	ldr	w9, [sp, #668]
	add	w8, w8, w9
	ldr	w9, [sp, #620]
	add	w8, w8, w9
	ldr	w9, [sp, #572]
	add	w8, w8, w9
	ldr	w9, [sp, #524]
	add	w8, w8, w9
	ldr	w9, [sp, #476]
	add	w8, w8, w9
	ldr	w9, [sp, #428]
	add	w8, w8, w9
	ldr	w9, [sp, #380]
	add	w8, w8, w9
	ldr	w9, [sp, #332]
	add	w8, w8, w9
	ldr	w9, [sp, #284]
	add	w8, w8, w9
	ldr	w9, [sp, #236]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #140]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #832
	.seh_stackalloc	832
	ldr	x30, [sp], #16                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 16
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_hva_2_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_hva_2_short_vector_16_bytes // -- Begin function use_va_args_few_hva_2_short_vector_16_bytes
	.p2align	2
use_va_args_few_hva_2_short_vector_16_bytes: // @use_va_args_few_hva_2_short_vector_16_bytes
.seh_proc use_va_args_few_hva_2_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #176
	.seh_stackalloc	176
	.seh_endprologue
	str	x7, [sp, #168]
	str	x6, [sp, #160]
	str	x5, [sp, #152]
	str	x4, [sp, #144]
	str	x3, [sp, #136]
	str	x2, [sp, #128]
	str	x1, [sp, #120]
	str	x0, [sp, #104]
	add	x8, sp, #120
	str	x8, [sp, #96]
	ldr	x8, [sp, #96]
	add	x9, x8, #8
	str	x9, [sp, #96]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #64]
	str	q0, [sp, #48]
	ldr	w8, [sp, #48]
	str	w8, [sp, #92]
	ldr	x8, [sp, #96]
	add	x9, x8, #8
	str	x9, [sp, #96]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #16]
	str	q0, [sp]
	ldr	w8, [sp, #20]
	str	w8, [sp, #44]
	ldr	w8, [sp, #92]
	ldr	w9, [sp, #44]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #176
	.seh_stackalloc	176
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_few_hva_2_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_hva_2_short_vector_16_bytes // -- Begin function use_va_list_few_hva_2_short_vector_16_bytes
	.p2align	2
use_va_list_few_hva_2_short_vector_16_bytes: // @use_va_list_few_hva_2_short_vector_16_bytes
.seh_proc use_va_list_few_hva_2_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #112
	.seh_stackalloc	112
	.seh_endprologue
	str	x0, [sp, #104]
	str	x1, [sp, #96]
	ldr	x8, [sp, #96]
	add	x9, x8, #8
	str	x9, [sp, #96]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #48]
	ldr	q0, [x8, #16]
	str	q0, [sp, #64]
	ldr	w8, [sp, #48]
	str	w8, [sp, #92]
	ldr	x8, [sp, #96]
	add	x9, x8, #8
	str	x9, [sp, #96]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	q0, [x8, #16]
	str	q0, [sp, #16]
	ldr	w8, [sp, #20]
	str	w8, [sp, #44]
	ldr	w8, [sp, #92]
	ldr	w9, [sp, #44]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #112
	.seh_stackalloc	112
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_several_hva_2_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_hva_2_short_vector_16_bytes // -- Begin function use_va_args_several_hva_2_short_vector_16_bytes
	.p2align	2
use_va_args_several_hva_2_short_vector_16_bytes: // @use_va_args_several_hva_2_short_vector_16_bytes
.seh_proc use_va_args_several_hva_2_short_vector_16_bytes
// %bb.0:
	str	x30, [sp, #-80]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 80
	sub	sp, sp, #448
	.seh_stackalloc	448
	.seh_endprologue
	str	x7, [sp, #520]
	str	x6, [sp, #512]
	str	x5, [sp, #504]
	str	x4, [sp, #496]
	str	x3, [sp, #488]
	str	x2, [sp, #480]
	str	x1, [sp, #472]
	str	x0, [sp, #440]
	add	x8, sp, #472
	str	x8, [sp, #432]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #400]
	str	q0, [sp, #384]
	ldr	w8, [sp, #384]
	str	w8, [sp, #428]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #352]
	str	q0, [sp, #336]
	ldr	w8, [sp, #356]
	str	w8, [sp, #380]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #304]
	str	q0, [sp, #288]
	ldr	w8, [sp, #288]
	str	w8, [sp, #332]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #256]
	str	q0, [sp, #240]
	ldr	w8, [sp, #260]
	str	w8, [sp, #284]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #208]
	str	q0, [sp, #192]
	ldr	w8, [sp, #192]
	str	w8, [sp, #236]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #160]
	str	q0, [sp, #144]
	ldr	w8, [sp, #164]
	str	w8, [sp, #188]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #112]
	str	q0, [sp, #96]
	ldr	w8, [sp, #96]
	str	w8, [sp, #140]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #64]
	str	q0, [sp, #48]
	ldr	w8, [sp, #68]
	str	w8, [sp, #92]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #16]
	str	q0, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #44]
	ldr	w8, [sp, #428]
	ldr	w9, [sp, #380]
	add	w8, w8, w9
	ldr	w9, [sp, #332]
	add	w8, w8, w9
	ldr	w9, [sp, #284]
	add	w8, w8, w9
	ldr	w9, [sp, #236]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #140]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #448
	.seh_stackalloc	448
	ldr	x30, [sp], #80                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_several_hva_2_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_hva_2_short_vector_16_bytes // -- Begin function use_va_list_several_hva_2_short_vector_16_bytes
	.p2align	2
use_va_list_several_hva_2_short_vector_16_bytes: // @use_va_list_several_hva_2_short_vector_16_bytes
.seh_proc use_va_list_several_hva_2_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #464
	.seh_stackalloc	464
	str	x30, [sp, #448]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 448
	.seh_endprologue
	str	x0, [sp, #440]
	str	x1, [sp, #432]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #384]
	ldr	q0, [x8, #16]
	str	q0, [sp, #400]
	ldr	w8, [sp, #384]
	str	w8, [sp, #428]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #336]
	ldr	q0, [x8, #16]
	str	q0, [sp, #352]
	ldr	w8, [sp, #356]
	str	w8, [sp, #380]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #288]
	ldr	q0, [x8, #16]
	str	q0, [sp, #304]
	ldr	w8, [sp, #288]
	str	w8, [sp, #332]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #240]
	ldr	q0, [x8, #16]
	str	q0, [sp, #256]
	ldr	w8, [sp, #260]
	str	w8, [sp, #284]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	q0, [x8, #16]
	str	q0, [sp, #208]
	ldr	w8, [sp, #192]
	str	w8, [sp, #236]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #144]
	ldr	q0, [x8, #16]
	str	q0, [sp, #160]
	ldr	w8, [sp, #164]
	str	w8, [sp, #188]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	q0, [x8, #16]
	str	q0, [sp, #112]
	ldr	w8, [sp, #96]
	str	w8, [sp, #140]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #48]
	ldr	q0, [x8, #16]
	str	q0, [sp, #64]
	ldr	w8, [sp, #68]
	str	w8, [sp, #92]
	ldr	x8, [sp, #432]
	add	x9, x8, #8
	str	x9, [sp, #432]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	q0, [x8, #16]
	str	q0, [sp, #16]
	ldr	w8, [sp]
	str	w8, [sp, #44]
	ldr	w8, [sp, #428]
	ldr	w9, [sp, #380]
	add	w8, w8, w9
	ldr	w9, [sp, #332]
	add	w8, w8, w9
	ldr	w9, [sp, #284]
	add	w8, w8, w9
	ldr	w9, [sp, #236]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #140]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w0, w8, w9
	.seh_startepilogue
	ldr	x30, [sp, #448]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 448
	add	sp, sp, #464
	.seh_stackalloc	464
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_many_hva_2_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_hva_2_short_vector_16_bytes // -- Begin function use_va_args_many_hva_2_short_vector_16_bytes
	.p2align	2
use_va_args_many_hva_2_short_vector_16_bytes: // @use_va_args_many_hva_2_short_vector_16_bytes
.seh_proc use_va_args_many_hva_2_short_vector_16_bytes
// %bb.0:
	str	x30, [sp, #-80]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 80
	sub	sp, sp, #832
	.seh_stackalloc	832
	.seh_endprologue
	str	x7, [sp, #904]
	str	x6, [sp, #896]
	str	x5, [sp, #888]
	str	x4, [sp, #880]
	str	x3, [sp, #872]
	str	x2, [sp, #864]
	str	x1, [sp, #856]
	str	x0, [sp, #824]
	add	x8, sp, #856
	str	x8, [sp, #816]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #784]
	str	q0, [sp, #768]
	ldr	w8, [sp, #768]
	str	w8, [sp, #812]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #736]
	str	q0, [sp, #720]
	ldr	w8, [sp, #740]
	str	w8, [sp, #764]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #688]
	str	q0, [sp, #672]
	ldr	w8, [sp, #672]
	str	w8, [sp, #716]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #640]
	str	q0, [sp, #624]
	ldr	w8, [sp, #644]
	str	w8, [sp, #668]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #592]
	str	q0, [sp, #576]
	ldr	w8, [sp, #576]
	str	w8, [sp, #620]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #544]
	str	q0, [sp, #528]
	ldr	w8, [sp, #548]
	str	w8, [sp, #572]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #496]
	str	q0, [sp, #480]
	ldr	w8, [sp, #480]
	str	w8, [sp, #524]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #448]
	str	q0, [sp, #432]
	ldr	w8, [sp, #452]
	str	w8, [sp, #476]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #400]
	str	q0, [sp, #384]
	ldr	w8, [sp, #384]
	str	w8, [sp, #428]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #352]
	str	q0, [sp, #336]
	ldr	w8, [sp, #356]
	str	w8, [sp, #380]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #304]
	str	q0, [sp, #288]
	ldr	w8, [sp, #288]
	str	w8, [sp, #332]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #256]
	str	q0, [sp, #240]
	ldr	w8, [sp, #260]
	str	w8, [sp, #284]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #208]
	str	q0, [sp, #192]
	ldr	w8, [sp, #192]
	str	w8, [sp, #236]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #160]
	str	q0, [sp, #144]
	ldr	w8, [sp, #164]
	str	w8, [sp, #188]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #112]
	str	q0, [sp, #96]
	ldr	w8, [sp, #96]
	str	w8, [sp, #140]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #64]
	str	q0, [sp, #48]
	ldr	w8, [sp, #68]
	str	w8, [sp, #92]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #16]
	str	q0, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #44]
	ldr	w8, [sp, #812]
	ldr	w9, [sp, #764]
	add	w8, w8, w9
	ldr	w9, [sp, #716]
	add	w8, w8, w9
	ldr	w9, [sp, #668]
	add	w8, w8, w9
	ldr	w9, [sp, #620]
	add	w8, w8, w9
	ldr	w9, [sp, #572]
	add	w8, w8, w9
	ldr	w9, [sp, #524]
	add	w8, w8, w9
	ldr	w9, [sp, #476]
	add	w8, w8, w9
	ldr	w9, [sp, #428]
	add	w8, w8, w9
	ldr	w9, [sp, #380]
	add	w8, w8, w9
	ldr	w9, [sp, #332]
	add	w8, w8, w9
	ldr	w9, [sp, #284]
	add	w8, w8, w9
	ldr	w9, [sp, #236]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #140]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #832
	.seh_stackalloc	832
	ldr	x30, [sp], #80                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_many_hva_2_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_hva_2_short_vector_16_bytes // -- Begin function use_va_list_many_hva_2_short_vector_16_bytes
	.p2align	2
use_va_list_many_hva_2_short_vector_16_bytes: // @use_va_list_many_hva_2_short_vector_16_bytes
.seh_proc use_va_list_many_hva_2_short_vector_16_bytes
// %bb.0:
	str	x30, [sp, #-16]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 16
	sub	sp, sp, #832
	.seh_stackalloc	832
	.seh_endprologue
	str	x0, [sp, #824]
	str	x1, [sp, #816]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #768]
	ldr	q0, [x8, #16]
	str	q0, [sp, #784]
	ldr	w8, [sp, #768]
	str	w8, [sp, #812]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #720]
	ldr	q0, [x8, #16]
	str	q0, [sp, #736]
	ldr	w8, [sp, #740]
	str	w8, [sp, #764]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #672]
	ldr	q0, [x8, #16]
	str	q0, [sp, #688]
	ldr	w8, [sp, #672]
	str	w8, [sp, #716]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #624]
	ldr	q0, [x8, #16]
	str	q0, [sp, #640]
	ldr	w8, [sp, #644]
	str	w8, [sp, #668]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #576]
	ldr	q0, [x8, #16]
	str	q0, [sp, #592]
	ldr	w8, [sp, #576]
	str	w8, [sp, #620]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #528]
	ldr	q0, [x8, #16]
	str	q0, [sp, #544]
	ldr	w8, [sp, #548]
	str	w8, [sp, #572]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #480]
	ldr	q0, [x8, #16]
	str	q0, [sp, #496]
	ldr	w8, [sp, #480]
	str	w8, [sp, #524]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #432]
	ldr	q0, [x8, #16]
	str	q0, [sp, #448]
	ldr	w8, [sp, #452]
	str	w8, [sp, #476]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #384]
	ldr	q0, [x8, #16]
	str	q0, [sp, #400]
	ldr	w8, [sp, #384]
	str	w8, [sp, #428]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #336]
	ldr	q0, [x8, #16]
	str	q0, [sp, #352]
	ldr	w8, [sp, #356]
	str	w8, [sp, #380]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #288]
	ldr	q0, [x8, #16]
	str	q0, [sp, #304]
	ldr	w8, [sp, #288]
	str	w8, [sp, #332]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #240]
	ldr	q0, [x8, #16]
	str	q0, [sp, #256]
	ldr	w8, [sp, #260]
	str	w8, [sp, #284]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #192]
	ldr	q0, [x8, #16]
	str	q0, [sp, #208]
	ldr	w8, [sp, #192]
	str	w8, [sp, #236]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #144]
	ldr	q0, [x8, #16]
	str	q0, [sp, #160]
	ldr	w8, [sp, #164]
	str	w8, [sp, #188]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	q0, [x8, #16]
	str	q0, [sp, #112]
	ldr	w8, [sp, #96]
	str	w8, [sp, #140]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp, #48]
	ldr	q0, [x8, #16]
	str	q0, [sp, #64]
	ldr	w8, [sp, #68]
	str	w8, [sp, #92]
	ldr	x8, [sp, #816]
	add	x9, x8, #8
	str	x9, [sp, #816]
	ldr	x8, [x8]
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	q0, [x8, #16]
	str	q0, [sp, #16]
	ldr	w8, [sp]
	str	w8, [sp, #44]
	ldr	w8, [sp, #812]
	ldr	w9, [sp, #764]
	add	w8, w8, w9
	ldr	w9, [sp, #716]
	add	w8, w8, w9
	ldr	w9, [sp, #668]
	add	w8, w8, w9
	ldr	w9, [sp, #620]
	add	w8, w8, w9
	ldr	w9, [sp, #572]
	add	w8, w8, w9
	ldr	w9, [sp, #524]
	add	w8, w8, w9
	ldr	w9, [sp, #476]
	add	w8, w8, w9
	ldr	w9, [sp, #428]
	add	w8, w8, w9
	ldr	w9, [sp, #380]
	add	w8, w8, w9
	ldr	w9, [sp, #332]
	add	w8, w8, w9
	ldr	w9, [sp, #284]
	add	w8, w8, w9
	ldr	w9, [sp, #236]
	add	w8, w8, w9
	ldr	w9, [sp, #188]
	add	w8, w8, w9
	ldr	w9, [sp, #140]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #832
	.seh_stackalloc	832
	ldr	x30, [sp], #16                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 16
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_few_hva_4_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_few_hva_4_short_vector_16_bytes // -- Begin function use_va_args_few_hva_4_short_vector_16_bytes
	.p2align	2
use_va_args_few_hva_4_short_vector_16_bytes: // @use_va_args_few_hva_4_short_vector_16_bytes
.seh_proc use_va_args_few_hva_4_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #240
	.seh_stackalloc	240
	.seh_endprologue
	str	x7, [sp, #232]
	str	x6, [sp, #224]
	str	x5, [sp, #216]
	str	x4, [sp, #208]
	str	x3, [sp, #200]
	str	x2, [sp, #192]
	str	x1, [sp, #184]
	str	x0, [sp, #168]
	add	x8, sp, #184
	str	x8, [sp, #160]
	ldr	x8, [sp, #160]
	add	x9, x8, #8
	str	x9, [sp, #160]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #128]
	str	q2, [sp, #112]
	str	q1, [sp, #96]
	str	q0, [sp, #80]
	ldr	w8, [sp, #80]
	str	w8, [sp, #156]
	ldr	x8, [sp, #160]
	add	x9, x8, #8
	str	x9, [sp, #160]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #48]
	str	q2, [sp, #32]
	str	q1, [sp, #16]
	str	q0, [sp]
	ldr	w8, [sp, #20]
	str	w8, [sp, #76]
	ldr	w8, [sp, #156]
	ldr	w9, [sp, #76]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #240
	.seh_stackalloc	240
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_few_hva_4_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_few_hva_4_short_vector_16_bytes // -- Begin function use_va_list_few_hva_4_short_vector_16_bytes
	.p2align	2
use_va_list_few_hva_4_short_vector_16_bytes: // @use_va_list_few_hva_4_short_vector_16_bytes
.seh_proc use_va_list_few_hva_4_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #176
	.seh_stackalloc	176
	str	x30, [sp, #160]                 // 8-byte Folded Spill
	.seh_save_reg	x30, 160
	.seh_endprologue
	str	x0, [sp, #152]
	str	x1, [sp, #144]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x1, [x8]
	add	x0, sp, #76
	mov	x2, #64
	str	x2, [sp]                        // 8-byte Folded Spill
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #76]
	str	w8, [sp, #140]
	ldr	x8, [sp, #144]
	add	x9, x8, #8
	str	x9, [sp, #144]
	ldr	x1, [x8]
	add	x0, sp, #8
	bl	memcpy
	ldr	w8, [sp, #28]
	str	w8, [sp, #72]
	ldr	w8, [sp, #140]
	ldr	w9, [sp, #72]
	add	w0, w8, w9
	.seh_startepilogue
	ldr	x30, [sp, #160]                 // 8-byte Folded Reload
	.seh_save_reg	x30, 160
	add	sp, sp, #176
	.seh_stackalloc	176
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_several_hva_4_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_several_hva_4_short_vector_16_bytes // -- Begin function use_va_args_several_hva_4_short_vector_16_bytes
	.p2align	2
use_va_args_several_hva_4_short_vector_16_bytes: // @use_va_args_several_hva_4_short_vector_16_bytes
.seh_proc use_va_args_several_hva_4_short_vector_16_bytes
// %bb.0:
	str	x30, [sp, #-80]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 80
	sub	sp, sp, #736
	.seh_stackalloc	736
	.seh_endprologue
	str	x7, [sp, #808]
	str	x6, [sp, #800]
	str	x5, [sp, #792]
	str	x4, [sp, #784]
	str	x3, [sp, #776]
	str	x2, [sp, #768]
	str	x1, [sp, #760]
	str	x0, [sp, #728]
	add	x8, sp, #760
	str	x8, [sp, #720]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #688]
	str	q2, [sp, #672]
	str	q1, [sp, #656]
	str	q0, [sp, #640]
	ldr	w8, [sp, #640]
	str	w8, [sp, #716]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #608]
	str	q2, [sp, #592]
	str	q1, [sp, #576]
	str	q0, [sp, #560]
	ldr	w8, [sp, #580]
	str	w8, [sp, #636]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #528]
	str	q2, [sp, #512]
	str	q1, [sp, #496]
	str	q0, [sp, #480]
	ldr	w8, [sp, #520]
	str	w8, [sp, #556]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #448]
	str	q2, [sp, #432]
	str	q1, [sp, #416]
	str	q0, [sp, #400]
	ldr	w8, [sp, #460]
	str	w8, [sp, #476]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #368]
	str	q2, [sp, #352]
	str	q1, [sp, #336]
	str	q0, [sp, #320]
	ldr	w8, [sp, #320]
	str	w8, [sp, #396]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #288]
	str	q2, [sp, #272]
	str	q1, [sp, #256]
	str	q0, [sp, #240]
	ldr	w8, [sp, #260]
	str	w8, [sp, #316]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #208]
	str	q2, [sp, #192]
	str	q1, [sp, #176]
	str	q0, [sp, #160]
	ldr	w8, [sp, #200]
	str	w8, [sp, #236]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #128]
	str	q2, [sp, #112]
	str	q1, [sp, #96]
	str	q0, [sp, #80]
	ldr	w8, [sp, #140]
	str	w8, [sp, #156]
	ldr	x8, [sp, #720]
	add	x9, x8, #8
	str	x9, [sp, #720]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #48]
	str	q2, [sp, #32]
	str	q1, [sp, #16]
	str	q0, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #76]
	ldr	w8, [sp, #716]
	ldr	w9, [sp, #636]
	add	w8, w8, w9
	ldr	w9, [sp, #556]
	add	w8, w8, w9
	ldr	w9, [sp, #476]
	add	w8, w8, w9
	ldr	w9, [sp, #396]
	add	w8, w8, w9
	ldr	w9, [sp, #316]
	add	w8, w8, w9
	ldr	w9, [sp, #236]
	add	w8, w8, w9
	ldr	w9, [sp, #156]
	add	w8, w8, w9
	ldr	w9, [sp, #76]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #736
	.seh_stackalloc	736
	ldr	x30, [sp], #80                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_several_hva_4_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_several_hva_4_short_vector_16_bytes // -- Begin function use_va_list_several_hva_4_short_vector_16_bytes
	.p2align	2
use_va_list_several_hva_4_short_vector_16_bytes: // @use_va_list_several_hva_4_short_vector_16_bytes
.seh_proc use_va_list_several_hva_4_short_vector_16_bytes
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	.seh_save_fplr_x	16
	sub	sp, sp, #656
	.seh_stackalloc	656
	.seh_endprologue
	add	x10, sp, #640
	str	x10, [sp, #8]                   // 8-byte Folded Spill
	str	x0, [x10, #8]
	str	x1, [x10]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #572
	mov	x2, #64
	str	x2, [sp, #16]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #572]
	str	w8, [sp, #636]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #504
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #524]
	str	w8, [sp, #568]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #436
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #476]
	str	w8, [sp, #500]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #368
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #428]
	str	w8, [sp, #432]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #300
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #300]
	str	w8, [sp, #364]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #232
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #252]
	str	w8, [sp, #296]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #164
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #204]
	str	w8, [sp, #228]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #96
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #156]
	str	w8, [sp, #160]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #28
	bl	memcpy
	ldr	w8, [sp, #28]
	str	w8, [sp, #92]
	ldr	w8, [sp, #636]
	ldr	w9, [sp, #568]
	add	w8, w8, w9
	ldr	w9, [sp, #500]
	add	w8, w8, w9
	ldr	w9, [sp, #432]
	add	w8, w8, w9
	ldr	w9, [sp, #364]
	add	w8, w8, w9
	ldr	w9, [sp, #296]
	add	w8, w8, w9
	ldr	w9, [sp, #228]
	add	w8, w8, w9
	ldr	w9, [sp, #160]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #656
	.seh_stackalloc	656
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	.seh_save_fplr_x	16
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_many_hva_4_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_many_hva_4_short_vector_16_bytes // -- Begin function use_va_args_many_hva_4_short_vector_16_bytes
	.p2align	2
use_va_args_many_hva_4_short_vector_16_bytes: // @use_va_args_many_hva_4_short_vector_16_bytes
.seh_proc use_va_args_many_hva_4_short_vector_16_bytes
// %bb.0:
	str	x30, [sp, #-80]!                // 8-byte Folded Spill
	.seh_save_reg_x	x30, 80
	sub	sp, sp, #1376
	.seh_stackalloc	1376
	.seh_endprologue
	str	x7, [sp, #1448]
	str	x6, [sp, #1440]
	str	x5, [sp, #1432]
	str	x4, [sp, #1424]
	str	x3, [sp, #1416]
	str	x2, [sp, #1408]
	str	x1, [sp, #1400]
	str	x0, [sp, #1368]
	add	x8, sp, #1400
	str	x8, [sp, #1360]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1328]
	str	q2, [sp, #1312]
	str	q1, [sp, #1296]
	str	q0, [sp, #1280]
	ldr	w8, [sp, #1280]
	str	w8, [sp, #1356]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1248]
	str	q2, [sp, #1232]
	str	q1, [sp, #1216]
	str	q0, [sp, #1200]
	ldr	w8, [sp, #1220]
	str	w8, [sp, #1276]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1168]
	str	q2, [sp, #1152]
	str	q1, [sp, #1136]
	str	q0, [sp, #1120]
	ldr	w8, [sp, #1160]
	str	w8, [sp, #1196]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1088]
	str	q2, [sp, #1072]
	str	q1, [sp, #1056]
	str	q0, [sp, #1040]
	ldr	w8, [sp, #1100]
	str	w8, [sp, #1116]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1008]
	str	q2, [sp, #992]
	str	q1, [sp, #976]
	str	q0, [sp, #960]
	ldr	w8, [sp, #960]
	str	w8, [sp, #1036]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #928]
	str	q2, [sp, #912]
	str	q1, [sp, #896]
	str	q0, [sp, #880]
	ldr	w8, [sp, #900]
	str	w8, [sp, #956]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #848]
	str	q2, [sp, #832]
	str	q1, [sp, #816]
	str	q0, [sp, #800]
	ldr	w8, [sp, #840]
	str	w8, [sp, #876]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #768]
	str	q2, [sp, #752]
	str	q1, [sp, #736]
	str	q0, [sp, #720]
	ldr	w8, [sp, #780]
	str	w8, [sp, #796]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #688]
	str	q2, [sp, #672]
	str	q1, [sp, #656]
	str	q0, [sp, #640]
	ldr	w8, [sp, #640]
	str	w8, [sp, #716]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #608]
	str	q2, [sp, #592]
	str	q1, [sp, #576]
	str	q0, [sp, #560]
	ldr	w8, [sp, #580]
	str	w8, [sp, #636]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #528]
	str	q2, [sp, #512]
	str	q1, [sp, #496]
	str	q0, [sp, #480]
	ldr	w8, [sp, #520]
	str	w8, [sp, #556]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #448]
	str	q2, [sp, #432]
	str	q1, [sp, #416]
	str	q0, [sp, #400]
	ldr	w8, [sp, #460]
	str	w8, [sp, #476]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #368]
	str	q2, [sp, #352]
	str	q1, [sp, #336]
	str	q0, [sp, #320]
	ldr	w8, [sp, #320]
	str	w8, [sp, #396]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #288]
	str	q2, [sp, #272]
	str	q1, [sp, #256]
	str	q0, [sp, #240]
	ldr	w8, [sp, #260]
	str	w8, [sp, #316]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #208]
	str	q2, [sp, #192]
	str	q1, [sp, #176]
	str	q0, [sp, #160]
	ldr	w8, [sp, #200]
	str	w8, [sp, #236]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #128]
	str	q2, [sp, #112]
	str	q1, [sp, #96]
	str	q0, [sp, #80]
	ldr	w8, [sp, #140]
	str	w8, [sp, #156]
	ldr	x8, [sp, #1360]
	add	x9, x8, #8
	str	x9, [sp, #1360]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #48]
	str	q2, [sp, #32]
	str	q1, [sp, #16]
	str	q0, [sp]
	ldr	w8, [sp]
	str	w8, [sp, #76]
	ldr	w8, [sp, #1356]
	ldr	w9, [sp, #1276]
	add	w8, w8, w9
	ldr	w9, [sp, #1196]
	add	w8, w8, w9
	ldr	w9, [sp, #1116]
	add	w8, w8, w9
	ldr	w9, [sp, #1036]
	add	w8, w8, w9
	ldr	w9, [sp, #956]
	add	w8, w8, w9
	ldr	w9, [sp, #876]
	add	w8, w8, w9
	ldr	w9, [sp, #796]
	add	w8, w8, w9
	ldr	w9, [sp, #716]
	add	w8, w8, w9
	ldr	w9, [sp, #636]
	add	w8, w8, w9
	ldr	w9, [sp, #556]
	add	w8, w8, w9
	ldr	w9, [sp, #476]
	add	w8, w8, w9
	ldr	w9, [sp, #396]
	add	w8, w8, w9
	ldr	w9, [sp, #316]
	add	w8, w8, w9
	ldr	w9, [sp, #236]
	add	w8, w8, w9
	ldr	w9, [sp, #156]
	add	w8, w8, w9
	ldr	w9, [sp, #76]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #1376
	.seh_stackalloc	1376
	ldr	x30, [sp], #80                  // 8-byte Folded Reload
	.seh_save_reg_x	x30, 80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_many_hva_4_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_many_hva_4_short_vector_16_bytes // -- Begin function use_va_list_many_hva_4_short_vector_16_bytes
	.p2align	2
use_va_list_many_hva_4_short_vector_16_bytes: // @use_va_list_many_hva_4_short_vector_16_bytes
.seh_proc use_va_list_many_hva_4_short_vector_16_bytes
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	.seh_save_fplr_x	16
	sub	sp, sp, #1200
	.seh_stackalloc	1200
	.seh_endprologue
	add	x10, sp, #1184
	str	x10, [sp, #8]                   // 8-byte Folded Spill
	str	x0, [x10, #8]
	str	x1, [x10]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #1116
	mov	x2, #64
	str	x2, [sp, #16]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #1116]
	str	w8, [sp, #1180]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #1048
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #1068]
	str	w8, [sp, #1112]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #980
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #1020]
	str	w8, [sp, #1044]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #912
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #972]
	str	w8, [sp, #976]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #844
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #844]
	str	w8, [sp, #908]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #776
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #796]
	str	w8, [sp, #840]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #708
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #748]
	str	w8, [sp, #772]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #640
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #700]
	str	w8, [sp, #704]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #572
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #572]
	str	w8, [sp, #636]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #504
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #524]
	str	w8, [sp, #568]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #436
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #476]
	str	w8, [sp, #500]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #368
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #428]
	str	w8, [sp, #432]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #300
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #300]
	str	w8, [sp, #364]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #232
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #252]
	str	w8, [sp, #296]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #164
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #204]
	str	w8, [sp, #228]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #96
	bl	memcpy
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #156]
	str	w8, [sp, #160]
	ldr	x8, [x10]
	add	x9, x8, #8
	str	x9, [x10]
	ldr	x1, [x8]
	add	x0, sp, #28
	bl	memcpy
	ldr	w8, [sp, #28]
	str	w8, [sp, #92]
	ldr	w8, [sp, #1180]
	ldr	w9, [sp, #1112]
	add	w8, w8, w9
	ldr	w9, [sp, #1044]
	add	w8, w8, w9
	ldr	w9, [sp, #976]
	add	w8, w8, w9
	ldr	w9, [sp, #908]
	add	w8, w8, w9
	ldr	w9, [sp, #840]
	add	w8, w8, w9
	ldr	w9, [sp, #772]
	add	w8, w8, w9
	ldr	w9, [sp, #704]
	add	w8, w8, w9
	ldr	w9, [sp, #636]
	add	w8, w8, w9
	ldr	w9, [sp, #568]
	add	w8, w8, w9
	ldr	w9, [sp, #500]
	add	w8, w8, w9
	ldr	w9, [sp, #432]
	add	w8, w8, w9
	ldr	w9, [sp, #364]
	add	w8, w8, w9
	ldr	w9, [sp, #296]
	add	w8, w8, w9
	ldr	w9, [sp, #228]
	add	w8, w8, w9
	ldr	w9, [sp, #160]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #1200
	.seh_stackalloc	1200
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	.seh_save_fplr_x	16
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_ints_and_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_ints_and_composites // -- Begin function use_va_args_ints_and_composites
	.p2align	2
use_va_args_ints_and_composites:        // @use_va_args_ints_and_composites
.seh_proc use_va_args_ints_and_composites
// %bb.0:
	stp	x29, x30, [sp, #-80]!           // 16-byte Folded Spill
	.seh_save_fplr_x	80
	sub	sp, sp, #432
	.seh_stackalloc	432
	.seh_endprologue
	add	x8, sp, #96
	str	x8, [sp]                        // 8-byte Folded Spill
	str	x7, [sp, #504]
	str	x6, [sp, #496]
	str	x5, [sp, #488]
	str	x4, [sp, #480]
	str	x3, [sp, #472]
	str	x2, [sp, #464]
	str	x1, [sp, #456]
	str	x0, [sp, #424]
	add	x9, sp, #456
	str	x9, [sp, #416]
	ldr	x9, [sp, #416]
	add	x10, x9, #8
	str	x10, [sp, #416]
	ldr	w9, [x9]
	str	w9, [sp, #412]
	ldr	x9, [sp, #416]
	add	x10, x9, #8
	str	x10, [sp, #416]
	ldr	w9, [x9]
	str	w9, [sp, #408]
	ldr	x9, [sp, #416]
	add	x10, x9, #8
	str	x10, [sp, #416]
	ldr	x9, [x9]
	ldr	q0, [x9]
	ldr	q1, [x9, #16]
	ldr	q2, [x9, #32]
	ldr	q3, [x9, #48]
	str	q3, [x8, #288]
	str	q2, [x8, #272]
	str	q1, [x8, #256]
	str	q0, [x8, #240]
	ldr	x0, [sp, #344]
	bl	atoi
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #404]
	ldr	x9, [sp, #416]
	add	x10, x9, #8
	str	x10, [sp, #416]
	ldr	w9, [x9]
	str	w9, [sp, #332]
	ldr	x9, [sp, #416]
	add	x10, x9, #8
	str	x10, [sp, #416]
	ldr	w9, [x9]
	str	w9, [sp, #328]
	ldr	x9, [sp, #416]
	add	x10, x9, #8
	str	x10, [sp, #416]
	ldr	x9, [x9]
	ldr	q0, [x9]
	ldr	q1, [x9, #16]
	ldr	q2, [x9, #32]
	ldr	q3, [x9, #48]
	str	q3, [x8, #208]
	str	q2, [x8, #192]
	str	q1, [x8, #176]
	str	q0, [x8, #160]
	ldr	x0, [sp, #264]
	bl	atoi
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #324]
	ldr	x9, [sp, #416]
	add	x10, x9, #8
	str	x10, [sp, #416]
	ldr	w9, [x9]
	str	w9, [sp, #252]
	ldr	x9, [sp, #416]
	add	x10, x9, #8
	str	x10, [sp, #416]
	ldr	w9, [x9]
	str	w9, [sp, #248]
	ldr	x9, [sp, #416]
	add	x10, x9, #8
	str	x10, [sp, #416]
	ldr	x9, [x9]
	ldr	q0, [x9]
	ldr	q1, [x9, #16]
	ldr	q2, [x9, #32]
	ldr	q3, [x9, #48]
	str	q3, [x8, #128]
	str	q2, [x8, #112]
	str	q1, [x8, #96]
	str	q0, [x8, #80]
	ldr	x0, [sp, #184]
	bl	atoi
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #244]
	ldr	x9, [sp, #416]
	add	x10, x9, #8
	str	x10, [sp, #416]
	ldr	w9, [x9]
	str	w9, [sp, #172]
	ldr	x9, [sp, #416]
	add	x10, x9, #8
	str	x10, [sp, #416]
	ldr	w9, [x9]
	str	w9, [sp, #168]
	ldr	x9, [sp, #416]
	add	x10, x9, #8
	str	x10, [sp, #416]
	ldr	x9, [x9]
	ldr	q0, [x9]
	ldr	q1, [x9, #16]
	ldr	q2, [x9, #32]
	ldr	q3, [x9, #48]
	str	q3, [x8, #48]
	str	q2, [sp, #128]
	str	q1, [sp, #112]
	str	q0, [sp, #96]
	ldr	x0, [sp, #104]
	bl	atoi
	str	w0, [sp, #164]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #92]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #88]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #64]
	str	q2, [sp, #48]
	str	q1, [sp, #32]
	str	q0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	atoi
	str	w0, [sp, #84]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #8]
	ldr	w8, [sp, #412]
	ldr	w9, [sp, #408]
	add	w8, w8, w9
	ldr	w9, [sp, #404]
	add	w8, w8, w9
	ldr	w9, [sp, #332]
	add	w8, w8, w9
	ldr	w9, [sp, #328]
	add	w8, w8, w9
	ldr	w9, [sp, #324]
	add	w8, w8, w9
	ldr	w9, [sp, #252]
	add	w8, w8, w9
	ldr	w9, [sp, #248]
	add	w8, w8, w9
	ldr	w9, [sp, #244]
	add	w8, w8, w9
	ldr	w9, [sp, #172]
	add	w8, w8, w9
	ldr	w9, [sp, #168]
	add	w8, w8, w9
	ldr	w9, [sp, #164]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #88]
	add	w8, w8, w9
	ldr	w9, [sp, #84]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w8, w8, w9
	ldr	w9, [sp, #8]
	add	w0, w8, w9
	.seh_startepilogue
	add	sp, sp, #432
	.seh_stackalloc	432
	ldp	x29, x30, [sp], #80             // 16-byte Folded Reload
	.seh_save_fplr_x	80
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_ints_and_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_ints_and_composites // -- Begin function use_va_list_ints_and_composites
	.p2align	2
use_va_list_ints_and_composites:        // @use_va_list_ints_and_composites
.seh_proc use_va_list_ints_and_composites
// %bb.0:
	sub	sp, sp, #448
	.seh_stackalloc	448
	stp	x29, x30, [sp, #432]            // 16-byte Folded Spill
	.seh_save_fplr	432
	.seh_endprologue
	str	x0, [sp, #424]
	str	x1, [sp, #416]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #412]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #408]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	x1, [x8]
	add	x0, sp, #336
	mov	x2, #64
	str	x2, [sp]                        // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #344]
	bl	atoi
	ldr	x2, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #404]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #332]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #328]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	x1, [x8]
	add	x0, sp, #256
	bl	memcpy
	ldr	x0, [sp, #264]
	bl	atoi
	ldr	x2, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #324]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #252]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #248]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	x1, [x8]
	add	x0, sp, #176
	bl	memcpy
	ldr	x0, [sp, #184]
	bl	atoi
	ldr	x2, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #244]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #172]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #168]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	x1, [x8]
	add	x0, sp, #96
	bl	memcpy
	ldr	x0, [sp, #104]
	bl	atoi
	ldr	x2, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #164]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #92]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #88]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	x1, [x8]
	add	x0, sp, #16
	bl	memcpy
	ldr	x0, [sp, #24]
	bl	atoi
	str	w0, [sp, #84]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	x8, [sp, #416]
	add	x9, x8, #8
	str	x9, [sp, #416]
	ldr	w8, [x8]
	str	w8, [sp, #8]
	ldr	w8, [sp, #412]
	ldr	w9, [sp, #408]
	add	w8, w8, w9
	ldr	w9, [sp, #404]
	add	w8, w8, w9
	ldr	w9, [sp, #332]
	add	w8, w8, w9
	ldr	w9, [sp, #328]
	add	w8, w8, w9
	ldr	w9, [sp, #324]
	add	w8, w8, w9
	ldr	w9, [sp, #252]
	add	w8, w8, w9
	ldr	w9, [sp, #248]
	add	w8, w8, w9
	ldr	w9, [sp, #244]
	add	w8, w8, w9
	ldr	w9, [sp, #172]
	add	w8, w8, w9
	ldr	w9, [sp, #168]
	add	w8, w8, w9
	ldr	w9, [sp, #164]
	add	w8, w8, w9
	ldr	w9, [sp, #92]
	add	w8, w8, w9
	ldr	w9, [sp, #88]
	add	w8, w8, w9
	ldr	w9, [sp, #84]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w8, w8, w9
	ldr	w9, [sp, #8]
	add	w0, w8, w9
	.seh_startepilogue
	ldp	x29, x30, [sp, #432]            // 16-byte Folded Reload
	.seh_save_fplr	432
	add	sp, sp, #448
	.seh_stackalloc	448
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_ints_and_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_ints_and_floats     // -- Begin function use_va_args_ints_and_floats
	.p2align	2
use_va_args_ints_and_floats:            // @use_va_args_ints_and_floats
.seh_proc use_va_args_ints_and_floats
// %bb.0:
	sub	sp, sp, #192
	.seh_stackalloc	192
	.seh_endprologue
	str	x7, [sp, #184]
	str	x6, [sp, #176]
	str	x5, [sp, #168]
	str	x4, [sp, #160]
	str	x3, [sp, #152]
	str	x2, [sp, #144]
	str	x1, [sp, #136]
	str	x0, [sp, #120]
	add	x8, sp, #136
	str	x8, [sp, #112]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #108]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #104]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	d0, [x8]
	str	d0, [sp, #96]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	d0, [x8]
	str	d0, [sp, #88]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #84]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #80]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	d0, [x8]
	str	d0, [sp, #72]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	d0, [x8]
	str	d0, [sp, #64]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #60]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #56]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	d0, [x8]
	str	d0, [sp, #48]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	d0, [x8]
	str	d0, [sp, #40]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #36]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #32]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	d0, [x8]
	str	d0, [sp, #24]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	d0, [x8]
	str	d0, [sp, #16]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #108]
	ldr	w9, [sp, #104]
	add	w8, w8, w9
	scvtf	d0, w8
	ldr	d1, [sp, #96]
	fadd	d0, d0, d1
	ldr	d1, [sp, #88]
	fadd	d0, d0, d1
	ldr	s2, [sp, #84]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	s2, [sp, #80]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	d1, [sp, #72]
	fadd	d0, d0, d1
	ldr	d1, [sp, #64]
	fadd	d0, d0, d1
	ldr	s2, [sp, #60]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	s2, [sp, #56]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	d1, [sp, #48]
	fadd	d0, d0, d1
	ldr	d1, [sp, #40]
	fadd	d0, d0, d1
	ldr	s2, [sp, #36]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	s2, [sp, #32]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	d1, [sp, #24]
	fadd	d0, d0, d1
	ldr	d1, [sp, #16]
	fadd	d0, d0, d1
	ldr	s2, [sp, #12]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #192
	.seh_stackalloc	192
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_ints_and_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_ints_and_floats     // -- Begin function use_va_list_ints_and_floats
	.p2align	2
use_va_list_ints_and_floats:            // @use_va_list_ints_and_floats
.seh_proc use_va_list_ints_and_floats
// %bb.0:
	sub	sp, sp, #128
	.seh_stackalloc	128
	.seh_endprologue
	str	x0, [sp, #120]
	str	x1, [sp, #112]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #108]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #104]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	x8, [x8]
	str	x8, [sp, #96]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	x8, [x8]
	str	x8, [sp, #88]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #84]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #80]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	x8, [x8]
	str	x8, [sp, #72]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	x8, [x8]
	str	x8, [sp, #64]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #60]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #56]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	x8, [x8]
	str	x8, [sp, #40]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #36]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #32]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #112]
	add	x9, x8, #8
	str	x9, [sp, #112]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #108]
	ldr	w9, [sp, #104]
	add	w8, w8, w9
	scvtf	d0, w8
	ldr	d1, [sp, #96]
	fadd	d0, d0, d1
	ldr	d1, [sp, #88]
	fadd	d0, d0, d1
	ldr	s2, [sp, #84]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	s2, [sp, #80]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	d1, [sp, #72]
	fadd	d0, d0, d1
	ldr	d1, [sp, #64]
	fadd	d0, d0, d1
	ldr	s2, [sp, #60]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	s2, [sp, #56]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	d1, [sp, #48]
	fadd	d0, d0, d1
	ldr	d1, [sp, #40]
	fadd	d0, d0, d1
	ldr	s2, [sp, #36]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	s2, [sp, #32]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	d1, [sp, #24]
	fadd	d0, d0, d1
	ldr	d1, [sp, #16]
	fadd	d0, d0, d1
	ldr	s2, [sp, #12]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	add	sp, sp, #128
	.seh_stackalloc	128
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_args_ints_floats_and_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_args_ints_floats_and_composites // -- Begin function use_va_args_ints_floats_and_composites
	.p2align	2
use_va_args_ints_floats_and_composites: // @use_va_args_ints_floats_and_composites
.seh_proc use_va_args_ints_floats_and_composites
// %bb.0:
	sub	sp, sp, #400
	.seh_stackalloc	400
	stp	x29, x30, [sp, #320]            // 16-byte Folded Spill
	.seh_save_fplr	320
	.seh_endprologue
	add	x8, sp, #112
	str	x7, [sp, #392]
	str	x6, [sp, #384]
	str	x5, [sp, #376]
	str	x4, [sp, #368]
	str	x3, [sp, #360]
	str	x2, [sp, #352]
	str	x1, [sp, #344]
	str	x0, [sp, #312]
	add	x9, sp, #344
	str	x9, [sp, #304]
	ldr	x9, [sp, #304]
	add	x10, x9, #8
	str	x10, [sp, #304]
	ldr	w9, [x9]
	str	w9, [sp, #300]
	ldr	x9, [sp, #304]
	add	x10, x9, #8
	str	x10, [sp, #304]
	ldr	w9, [x9]
	str	w9, [sp, #296]
	ldr	x9, [sp, #304]
	add	x10, x9, #8
	str	x10, [sp, #304]
	ldr	d0, [x9]
	str	d0, [sp, #288]
	ldr	x9, [sp, #304]
	add	x10, x9, #8
	str	x10, [sp, #304]
	ldr	d0, [x9]
	str	d0, [sp, #280]
	ldr	x9, [sp, #304]
	add	x10, x9, #8
	str	x10, [sp, #304]
	ldr	x9, [x9]
	ldr	q0, [x9]
	ldr	q1, [x9, #16]
	ldr	q2, [x9, #32]
	ldr	q3, [x9, #48]
	str	q3, [x8, #144]
	str	q2, [x8, #128]
	str	q1, [x8, #112]
	str	q0, [x8, #96]
	ldr	w9, [sp, #212]
	str	w9, [sp, #276]
	ldr	x9, [sp, #304]
	add	x10, x9, #8
	str	x10, [sp, #304]
	ldr	w9, [x9]
	str	w9, [sp, #204]
	ldr	x9, [sp, #304]
	add	x10, x9, #8
	str	x10, [sp, #304]
	ldr	w9, [x9]
	str	w9, [sp, #200]
	ldr	x9, [sp, #304]
	add	x10, x9, #8
	str	x10, [sp, #304]
	ldr	d0, [x9]
	str	d0, [sp, #192]
	ldr	x9, [sp, #304]
	add	x10, x9, #8
	str	x10, [sp, #304]
	ldr	d0, [x9]
	str	d0, [sp, #184]
	ldr	x9, [sp, #304]
	add	x10, x9, #8
	str	x10, [sp, #304]
	ldr	x9, [x9]
	ldr	q0, [x9]
	ldr	q1, [x9, #16]
	ldr	q2, [x9, #32]
	ldr	q3, [x9, #48]
	str	q3, [x8, #48]
	str	q2, [x8, #32]
	str	q1, [sp, #128]
	str	q0, [sp, #112]
	ldrb	w8, [sp, #112]
	strb	w8, [sp, #183]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	w8, [x8]
	str	w8, [sp, #108]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	w8, [x8]
	str	w8, [sp, #104]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	d0, [x8]
	str	d0, [sp, #96]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	d0, [x8]
	str	d0, [sp, #88]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	x8, [x8]
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #64]
	str	q2, [sp, #48]
	str	q1, [sp, #32]
	str	q0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	atoi
	str	w0, [sp, #84]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	w8, [x8]
	str	w8, [sp, #8]
	ldr	w8, [sp, #300]
	ldr	w9, [sp, #296]
	add	w8, w8, w9
	scvtf	d0, w8
	ldr	d1, [sp, #288]
	fadd	d0, d0, d1
	ldr	d1, [sp, #280]
	fadd	d0, d0, d1
	ldr	s2, [sp, #276]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	s2, [sp, #204]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	s2, [sp, #200]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	d1, [sp, #192]
	fadd	d0, d0, d1
	ldr	d1, [sp, #184]
	fadd	d0, d0, d1
	ldrsb	w8, [sp, #183]
	scvtf	d1, w8
	fadd	d0, d0, d1
	ldr	s2, [sp, #108]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	s2, [sp, #104]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	d1, [sp, #96]
	fadd	d0, d0, d1
	ldr	d1, [sp, #88]
	fadd	d0, d0, d1
	ldr	s2, [sp, #84]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	s2, [sp, #12]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	s2, [sp, #8]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	ldp	x29, x30, [sp, #320]            // 16-byte Folded Reload
	.seh_save_fplr	320
	add	sp, sp, #400
	.seh_stackalloc	400
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.def	use_va_list_ints_floats_and_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	use_va_list_ints_floats_and_composites // -- Begin function use_va_list_ints_floats_and_composites
	.p2align	2
use_va_list_ints_floats_and_composites: // @use_va_list_ints_floats_and_composites
.seh_proc use_va_list_ints_floats_and_composites
// %bb.0:
	sub	sp, sp, #336
	.seh_stackalloc	336
	stp	x29, x30, [sp, #320]            // 16-byte Folded Spill
	.seh_save_fplr	320
	.seh_endprologue
	str	x0, [sp, #312]
	str	x1, [sp, #304]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	w8, [x8]
	str	w8, [sp, #300]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	w8, [x8]
	str	w8, [sp, #296]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	x8, [x8]
	str	x8, [sp, #288]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	x8, [x8]
	str	x8, [sp, #280]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	x1, [x8]
	add	x0, sp, #208
	mov	x2, #64
	str	x2, [sp]                        // 8-byte Folded Spill
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #212]
	str	w8, [sp, #276]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	w8, [x8]
	str	w8, [sp, #204]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	w8, [x8]
	str	w8, [sp, #200]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	x8, [x8]
	str	x8, [sp, #192]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	x8, [x8]
	str	x8, [sp, #184]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	x1, [x8]
	add	x0, sp, #112
	bl	memcpy
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldrb	w8, [sp, #112]
	strb	w8, [sp, #183]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	w8, [x8]
	str	w8, [sp, #108]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	w8, [x8]
	str	w8, [sp, #104]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	x8, [x8]
	str	x8, [sp, #96]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	x8, [x8]
	str	x8, [sp, #88]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	x1, [x8]
	add	x0, sp, #16
	bl	memcpy
	ldr	x0, [sp, #24]
	bl	atoi
	str	w0, [sp, #84]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	x8, [sp, #304]
	add	x9, x8, #8
	str	x9, [sp, #304]
	ldr	w8, [x8]
	str	w8, [sp, #8]
	ldr	w8, [sp, #300]
	ldr	w9, [sp, #296]
	add	w8, w8, w9
	scvtf	d0, w8
	ldr	d1, [sp, #288]
	fadd	d0, d0, d1
	ldr	d1, [sp, #280]
	fadd	d0, d0, d1
	ldr	s2, [sp, #276]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	s2, [sp, #204]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	s2, [sp, #200]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	d1, [sp, #192]
	fadd	d0, d0, d1
	ldr	d1, [sp, #184]
	fadd	d0, d0, d1
	ldrsb	w8, [sp, #183]
	scvtf	d1, w8
	fadd	d0, d0, d1
	ldr	s2, [sp, #108]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	s2, [sp, #104]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	d1, [sp, #96]
	fadd	d0, d0, d1
	ldr	d1, [sp, #88]
	fadd	d0, d0, d1
	ldr	s2, [sp, #84]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	s2, [sp, #12]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	ldr	s2, [sp, #8]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fadd	d0, d0, d1
	fcvtzs	w0, d0
	.seh_startepilogue
	ldp	x29, x30, [sp, #320]            // 16-byte Folded Reload
	.seh_save_fplr	320
	add	sp, sp, #336
	.seh_stackalloc	336
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.section	.drectve,"yn"
	.ascii	" -export:use_va_args_no_arguments"
	.ascii	" -export:use_va_list_no_arguments"
	.ascii	" -export:use_va_args_few_longs"
	.ascii	" -export:use_va_list_few_longs"
	.ascii	" -export:use_va_args_several_longs"
	.ascii	" -export:use_va_list_several_longs"
	.ascii	" -export:use_va_args_many_longs"
	.ascii	" -export:use_va_list_many_longs"
	.ascii	" -export:use_va_args_few_ints"
	.ascii	" -export:use_va_list_few_ints"
	.ascii	" -export:use_va_args_several_ints"
	.ascii	" -export:use_va_list_several_ints"
	.ascii	" -export:use_va_args_many_ints"
	.ascii	" -export:use_va_list_many_ints"
	.ascii	" -export:use_va_args_few_doubles"
	.ascii	" -export:use_va_list_few_doubles"
	.ascii	" -export:use_va_args_several_doubles"
	.ascii	" -export:use_va_list_several_doubles"
	.ascii	" -export:use_va_args_many_doubles"
	.ascii	" -export:use_va_list_many_doubles"
	.ascii	" -export:use_va_args_few_floats"
	.ascii	" -export:use_va_list_few_floats"
	.ascii	" -export:use_va_args_several_floats"
	.ascii	" -export:use_va_list_several_floats"
	.ascii	" -export:use_va_args_many_floats"
	.ascii	" -export:use_va_list_many_floats"
	.ascii	" -export:use_va_args_few_strings"
	.ascii	" -export:use_va_list_few_strings"
	.ascii	" -export:use_va_args_several_strings"
	.ascii	" -export:use_va_list_several_strings"
	.ascii	" -export:use_va_args_many_strings"
	.ascii	" -export:use_va_list_many_strings"
	.ascii	" -export:use_va_args_few_composites"
	.ascii	" -export:use_va_list_few_composites"
	.ascii	" -export:use_va_args_several_composites"
	.ascii	" -export:use_va_list_several_composites"
	.ascii	" -export:use_va_args_many_composites"
	.ascii	" -export:use_va_list_many_composites"
	.ascii	" -export:use_va_args_few_short_vector_8_bytes"
	.ascii	" -export:use_va_list_few_short_vector_8_bytes"
	.ascii	" -export:use_va_args_several_short_vector_8_bytes"
	.ascii	" -export:use_va_list_several_short_vector_8_bytes"
	.ascii	" -export:use_va_args_many_short_vector_8_bytes"
	.ascii	" -export:use_va_list_many_short_vector_8_bytes"
	.ascii	" -export:use_va_args_few_not_short_vector_12_bytes"
	.ascii	" -export:use_va_list_few_not_short_vector_12_bytes"
	.ascii	" -export:use_va_args_several_not_short_vector_12_bytes"
	.ascii	" -export:use_va_list_several_not_short_vector_12_bytes"
	.ascii	" -export:use_va_args_many_not_short_vector_12_bytes"
	.ascii	" -export:use_va_list_many_not_short_vector_12_bytes"
	.ascii	" -export:use_va_args_few_short_vector_16_bytes"
	.ascii	" -export:use_va_list_few_short_vector_16_bytes"
	.ascii	" -export:use_va_args_several_short_vector_16_bytes"
	.ascii	" -export:use_va_list_several_short_vector_16_bytes"
	.ascii	" -export:use_va_args_many_short_vector_16_bytes"
	.ascii	" -export:use_va_list_many_short_vector_16_bytes"
	.ascii	" -export:use_va_args_few_hfa_2_floats"
	.ascii	" -export:use_va_list_few_hfa_2_floats"
	.ascii	" -export:use_va_args_several_hfa_2_floats"
	.ascii	" -export:use_va_list_several_hfa_2_floats"
	.ascii	" -export:use_va_args_many_hfa_2_floats"
	.ascii	" -export:use_va_list_many_hfa_2_floats"
	.ascii	" -export:use_va_args_few_hfa_4_floats"
	.ascii	" -export:use_va_list_few_hfa_4_floats"
	.ascii	" -export:use_va_args_several_hfa_4_floats"
	.ascii	" -export:use_va_list_several_hfa_4_floats"
	.ascii	" -export:use_va_args_many_hfa_4_floats"
	.ascii	" -export:use_va_list_many_hfa_4_floats"
	.ascii	" -export:use_va_args_few_hfa_2_doubles"
	.ascii	" -export:use_va_list_few_hfa_2_doubles"
	.ascii	" -export:use_va_args_several_hfa_2_doubles"
	.ascii	" -export:use_va_list_several_hfa_2_doubles"
	.ascii	" -export:use_va_args_many_hfa_2_doubles"
	.ascii	" -export:use_va_list_many_hfa_2_doubles"
	.ascii	" -export:use_va_args_few_hfa_4_doubles"
	.ascii	" -export:use_va_list_few_hfa_4_doubles"
	.ascii	" -export:use_va_args_several_hfa_4_doubles"
	.ascii	" -export:use_va_list_several_hfa_4_doubles"
	.ascii	" -export:use_va_args_many_hfa_4_doubles"
	.ascii	" -export:use_va_list_many_hfa_4_doubles"
	.ascii	" -export:use_va_args_few_hva_2_short_vector_8_bytes"
	.ascii	" -export:use_va_list_few_hva_2_short_vector_8_bytes"
	.ascii	" -export:use_va_args_several_hva_2_short_vector_8_bytes"
	.ascii	" -export:use_va_list_several_hva_2_short_vector_8_bytes"
	.ascii	" -export:use_va_args_many_hva_2_short_vector_8_bytes"
	.ascii	" -export:use_va_list_many_hva_2_short_vector_8_bytes"
	.ascii	" -export:use_va_args_few_hva_4_short_vector_8_bytes"
	.ascii	" -export:use_va_list_few_hva_4_short_vector_8_bytes"
	.ascii	" -export:use_va_args_several_hva_4_short_vector_8_bytes"
	.ascii	" -export:use_va_list_several_hva_4_short_vector_8_bytes"
	.ascii	" -export:use_va_args_many_hva_4_short_vector_8_bytes"
	.ascii	" -export:use_va_list_many_hva_4_short_vector_8_bytes"
	.ascii	" -export:use_va_args_few_hva_2_short_vector_16_bytes"
	.ascii	" -export:use_va_list_few_hva_2_short_vector_16_bytes"
	.ascii	" -export:use_va_args_several_hva_2_short_vector_16_bytes"
	.ascii	" -export:use_va_list_several_hva_2_short_vector_16_bytes"
	.ascii	" -export:use_va_args_many_hva_2_short_vector_16_bytes"
	.ascii	" -export:use_va_list_many_hva_2_short_vector_16_bytes"
	.ascii	" -export:use_va_args_few_hva_4_short_vector_16_bytes"
	.ascii	" -export:use_va_list_few_hva_4_short_vector_16_bytes"
	.ascii	" -export:use_va_args_several_hva_4_short_vector_16_bytes"
	.ascii	" -export:use_va_list_several_hva_4_short_vector_16_bytes"
	.ascii	" -export:use_va_args_many_hva_4_short_vector_16_bytes"
	.ascii	" -export:use_va_list_many_hva_4_short_vector_16_bytes"
	.ascii	" -export:use_va_args_ints_and_composites"
	.ascii	" -export:use_va_list_ints_and_composites"
	.ascii	" -export:use_va_args_ints_and_floats"
	.ascii	" -export:use_va_list_ints_and_floats"
	.ascii	" -export:use_va_args_ints_floats_and_composites"
	.ascii	" -export:use_va_list_ints_floats_and_composites"
	.addrsig
	.addrsig_sym atoi
