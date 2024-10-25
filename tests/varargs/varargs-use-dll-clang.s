	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"varargs-use-dll.c"
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
	.def	__chkstk;
	.scl	2;
	.type	32;
	.endef
	.globl	__chkstk                        // -- Begin function __chkstk
	.p2align	2
__chkstk:                               // @__chkstk
// %bb.0:
	ret
                                        // -- End function
	.def	test_va_list_no_arguments;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_no_arguments       // -- Begin function test_va_list_no_arguments
	.p2align	2
test_va_list_no_arguments:              // @test_va_list_no_arguments
.seh_proc test_va_list_no_arguments
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_no_arguments;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_no_arguments // -- Begin function use_indirect_va_list_no_arguments
	.p2align	2
use_indirect_va_list_no_arguments:      // @use_indirect_va_list_no_arguments
.seh_proc use_indirect_va_list_no_arguments
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_no_arguments;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_no_arguments // -- Begin function test_indirect_va_list_no_arguments
	.p2align	2
test_indirect_va_list_no_arguments:     // @test_indirect_va_list_no_arguments
.seh_proc test_indirect_va_list_no_arguments
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
	bl	use_indirect_va_list_no_arguments
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
	.def	test_va_list_few_longs;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_longs          // -- Begin function test_va_list_few_longs
	.p2align	2
test_va_list_few_longs:                 // @test_va_list_few_longs
.seh_proc test_va_list_few_longs
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_longs;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_longs  // -- Begin function use_indirect_va_list_few_longs
	.p2align	2
use_indirect_va_list_few_longs:         // @use_indirect_va_list_few_longs
.seh_proc use_indirect_va_list_few_longs
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_longs;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_longs // -- Begin function test_indirect_va_list_few_longs
	.p2align	2
test_indirect_va_list_few_longs:        // @test_indirect_va_list_few_longs
.seh_proc test_indirect_va_list_few_longs
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
	bl	use_indirect_va_list_few_longs
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
	.def	test_va_list_several_longs;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_longs      // -- Begin function test_va_list_several_longs
	.p2align	2
test_va_list_several_longs:             // @test_va_list_several_longs
.seh_proc test_va_list_several_longs
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_longs;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_longs // -- Begin function use_indirect_va_list_several_longs
	.p2align	2
use_indirect_va_list_several_longs:     // @use_indirect_va_list_several_longs
.seh_proc use_indirect_va_list_several_longs
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_longs;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_longs // -- Begin function test_indirect_va_list_several_longs
	.p2align	2
test_indirect_va_list_several_longs:    // @test_indirect_va_list_several_longs
.seh_proc test_indirect_va_list_several_longs
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
	bl	use_indirect_va_list_several_longs
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
	.def	test_va_list_many_longs;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_longs         // -- Begin function test_va_list_many_longs
	.p2align	2
test_va_list_many_longs:                // @test_va_list_many_longs
.seh_proc test_va_list_many_longs
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_longs;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_longs // -- Begin function use_indirect_va_list_many_longs
	.p2align	2
use_indirect_va_list_many_longs:        // @use_indirect_va_list_many_longs
.seh_proc use_indirect_va_list_many_longs
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_longs;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_longs // -- Begin function test_indirect_va_list_many_longs
	.p2align	2
test_indirect_va_list_many_longs:       // @test_indirect_va_list_many_longs
.seh_proc test_indirect_va_list_many_longs
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
	bl	use_indirect_va_list_many_longs
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
	.def	test_va_list_few_ints;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_ints           // -- Begin function test_va_list_few_ints
	.p2align	2
test_va_list_few_ints:                  // @test_va_list_few_ints
.seh_proc test_va_list_few_ints
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_ints;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_ints   // -- Begin function use_indirect_va_list_few_ints
	.p2align	2
use_indirect_va_list_few_ints:          // @use_indirect_va_list_few_ints
.seh_proc use_indirect_va_list_few_ints
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_ints;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_ints  // -- Begin function test_indirect_va_list_few_ints
	.p2align	2
test_indirect_va_list_few_ints:         // @test_indirect_va_list_few_ints
.seh_proc test_indirect_va_list_few_ints
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
	bl	use_indirect_va_list_few_ints
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
	.def	test_va_list_several_ints;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_ints       // -- Begin function test_va_list_several_ints
	.p2align	2
test_va_list_several_ints:              // @test_va_list_several_ints
.seh_proc test_va_list_several_ints
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_ints;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_ints // -- Begin function use_indirect_va_list_several_ints
	.p2align	2
use_indirect_va_list_several_ints:      // @use_indirect_va_list_several_ints
.seh_proc use_indirect_va_list_several_ints
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_ints;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_ints // -- Begin function test_indirect_va_list_several_ints
	.p2align	2
test_indirect_va_list_several_ints:     // @test_indirect_va_list_several_ints
.seh_proc test_indirect_va_list_several_ints
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
	bl	use_indirect_va_list_several_ints
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
	.def	test_va_list_many_ints;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_ints          // -- Begin function test_va_list_many_ints
	.p2align	2
test_va_list_many_ints:                 // @test_va_list_many_ints
.seh_proc test_va_list_many_ints
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_ints;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_ints  // -- Begin function use_indirect_va_list_many_ints
	.p2align	2
use_indirect_va_list_many_ints:         // @use_indirect_va_list_many_ints
.seh_proc use_indirect_va_list_many_ints
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_ints;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_ints // -- Begin function test_indirect_va_list_many_ints
	.p2align	2
test_indirect_va_list_many_ints:        // @test_indirect_va_list_many_ints
.seh_proc test_indirect_va_list_many_ints
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
	bl	use_indirect_va_list_many_ints
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
	.def	test_va_list_few_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_doubles        // -- Begin function test_va_list_few_doubles
	.p2align	2
test_va_list_few_doubles:               // @test_va_list_few_doubles
.seh_proc test_va_list_few_doubles
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_doubles // -- Begin function use_indirect_va_list_few_doubles
	.p2align	2
use_indirect_va_list_few_doubles:       // @use_indirect_va_list_few_doubles
.seh_proc use_indirect_va_list_few_doubles
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_doubles // -- Begin function test_indirect_va_list_few_doubles
	.p2align	2
test_indirect_va_list_few_doubles:      // @test_indirect_va_list_few_doubles
.seh_proc test_indirect_va_list_few_doubles
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
	bl	use_indirect_va_list_few_doubles
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
	.def	test_va_list_several_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_doubles    // -- Begin function test_va_list_several_doubles
	.p2align	2
test_va_list_several_doubles:           // @test_va_list_several_doubles
.seh_proc test_va_list_several_doubles
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_doubles // -- Begin function use_indirect_va_list_several_doubles
	.p2align	2
use_indirect_va_list_several_doubles:   // @use_indirect_va_list_several_doubles
.seh_proc use_indirect_va_list_several_doubles
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_doubles // -- Begin function test_indirect_va_list_several_doubles
	.p2align	2
test_indirect_va_list_several_doubles:  // @test_indirect_va_list_several_doubles
.seh_proc test_indirect_va_list_several_doubles
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
	bl	use_indirect_va_list_several_doubles
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
	.def	test_va_list_many_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_doubles       // -- Begin function test_va_list_many_doubles
	.p2align	2
test_va_list_many_doubles:              // @test_va_list_many_doubles
.seh_proc test_va_list_many_doubles
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_doubles // -- Begin function use_indirect_va_list_many_doubles
	.p2align	2
use_indirect_va_list_many_doubles:      // @use_indirect_va_list_many_doubles
.seh_proc use_indirect_va_list_many_doubles
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_doubles // -- Begin function test_indirect_va_list_many_doubles
	.p2align	2
test_indirect_va_list_many_doubles:     // @test_indirect_va_list_many_doubles
.seh_proc test_indirect_va_list_many_doubles
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
	bl	use_indirect_va_list_many_doubles
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
	.def	test_va_list_few_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_floats         // -- Begin function test_va_list_few_floats
	.p2align	2
test_va_list_few_floats:                // @test_va_list_few_floats
.seh_proc test_va_list_few_floats
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.12
	add	x0, x0, :lo12:.L.str.12
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_floats // -- Begin function use_indirect_va_list_few_floats
	.p2align	2
use_indirect_va_list_few_floats:        // @use_indirect_va_list_few_floats
.seh_proc use_indirect_va_list_few_floats
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.12
	add	x0, x0, :lo12:.L.str.12
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_floats // -- Begin function test_indirect_va_list_few_floats
	.p2align	2
test_indirect_va_list_few_floats:       // @test_indirect_va_list_few_floats
.seh_proc test_indirect_va_list_few_floats
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
	bl	use_indirect_va_list_few_floats
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
	.def	test_va_list_several_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_floats     // -- Begin function test_va_list_several_floats
	.p2align	2
test_va_list_several_floats:            // @test_va_list_several_floats
.seh_proc test_va_list_several_floats
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.13
	add	x0, x0, :lo12:.L.str.13
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_floats // -- Begin function use_indirect_va_list_several_floats
	.p2align	2
use_indirect_va_list_several_floats:    // @use_indirect_va_list_several_floats
.seh_proc use_indirect_va_list_several_floats
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.13
	add	x0, x0, :lo12:.L.str.13
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_floats // -- Begin function test_indirect_va_list_several_floats
	.p2align	2
test_indirect_va_list_several_floats:   // @test_indirect_va_list_several_floats
.seh_proc test_indirect_va_list_several_floats
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
	bl	use_indirect_va_list_several_floats
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
	.def	test_va_list_many_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_floats        // -- Begin function test_va_list_many_floats
	.p2align	2
test_va_list_many_floats:               // @test_va_list_many_floats
.seh_proc test_va_list_many_floats
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.14
	add	x0, x0, :lo12:.L.str.14
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_floats // -- Begin function use_indirect_va_list_many_floats
	.p2align	2
use_indirect_va_list_many_floats:       // @use_indirect_va_list_many_floats
.seh_proc use_indirect_va_list_many_floats
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.14
	add	x0, x0, :lo12:.L.str.14
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_floats // -- Begin function test_indirect_va_list_many_floats
	.p2align	2
test_indirect_va_list_many_floats:      // @test_indirect_va_list_many_floats
.seh_proc test_indirect_va_list_many_floats
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
	bl	use_indirect_va_list_many_floats
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
	.def	test_va_list_few_strings;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_strings        // -- Begin function test_va_list_few_strings
	.p2align	2
test_va_list_few_strings:               // @test_va_list_few_strings
.seh_proc test_va_list_few_strings
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.15
	add	x0, x0, :lo12:.L.str.15
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_strings;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_strings // -- Begin function use_indirect_va_list_few_strings
	.p2align	2
use_indirect_va_list_few_strings:       // @use_indirect_va_list_few_strings
.seh_proc use_indirect_va_list_few_strings
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.15
	add	x0, x0, :lo12:.L.str.15
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_strings;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_strings // -- Begin function test_indirect_va_list_few_strings
	.p2align	2
test_indirect_va_list_few_strings:      // @test_indirect_va_list_few_strings
.seh_proc test_indirect_va_list_few_strings
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
	bl	use_indirect_va_list_few_strings
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
	.def	test_va_list_several_strings;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_strings    // -- Begin function test_va_list_several_strings
	.p2align	2
test_va_list_several_strings:           // @test_va_list_several_strings
.seh_proc test_va_list_several_strings
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.16
	add	x0, x0, :lo12:.L.str.16
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_strings;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_strings // -- Begin function use_indirect_va_list_several_strings
	.p2align	2
use_indirect_va_list_several_strings:   // @use_indirect_va_list_several_strings
.seh_proc use_indirect_va_list_several_strings
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.16
	add	x0, x0, :lo12:.L.str.16
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_strings;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_strings // -- Begin function test_indirect_va_list_several_strings
	.p2align	2
test_indirect_va_list_several_strings:  // @test_indirect_va_list_several_strings
.seh_proc test_indirect_va_list_several_strings
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
	bl	use_indirect_va_list_several_strings
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
	.def	test_va_list_many_strings;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_strings       // -- Begin function test_va_list_many_strings
	.p2align	2
test_va_list_many_strings:              // @test_va_list_many_strings
.seh_proc test_va_list_many_strings
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.17
	add	x0, x0, :lo12:.L.str.17
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_strings;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_strings // -- Begin function use_indirect_va_list_many_strings
	.p2align	2
use_indirect_va_list_many_strings:      // @use_indirect_va_list_many_strings
.seh_proc use_indirect_va_list_many_strings
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.17
	add	x0, x0, :lo12:.L.str.17
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_strings;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_strings // -- Begin function test_indirect_va_list_many_strings
	.p2align	2
test_indirect_va_list_many_strings:     // @test_indirect_va_list_many_strings
.seh_proc test_indirect_va_list_many_strings
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
	bl	use_indirect_va_list_many_strings
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
	.def	test_va_list_few_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_composites     // -- Begin function test_va_list_few_composites
	.p2align	2
test_va_list_few_composites:            // @test_va_list_few_composites
.seh_proc test_va_list_few_composites
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.18
	add	x0, x0, :lo12:.L.str.18
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_composites // -- Begin function use_indirect_va_list_few_composites
	.p2align	2
use_indirect_va_list_few_composites:    // @use_indirect_va_list_few_composites
.seh_proc use_indirect_va_list_few_composites
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.18
	add	x0, x0, :lo12:.L.str.18
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_composites // -- Begin function test_indirect_va_list_few_composites
	.p2align	2
test_indirect_va_list_few_composites:   // @test_indirect_va_list_few_composites
.seh_proc test_indirect_va_list_few_composites
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
	bl	use_indirect_va_list_few_composites
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
	.def	test_va_list_several_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_composites // -- Begin function test_va_list_several_composites
	.p2align	2
test_va_list_several_composites:        // @test_va_list_several_composites
.seh_proc test_va_list_several_composites
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.19
	add	x0, x0, :lo12:.L.str.19
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_composites // -- Begin function use_indirect_va_list_several_composites
	.p2align	2
use_indirect_va_list_several_composites: // @use_indirect_va_list_several_composites
.seh_proc use_indirect_va_list_several_composites
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.19
	add	x0, x0, :lo12:.L.str.19
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_composites // -- Begin function test_indirect_va_list_several_composites
	.p2align	2
test_indirect_va_list_several_composites: // @test_indirect_va_list_several_composites
.seh_proc test_indirect_va_list_several_composites
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
	bl	use_indirect_va_list_several_composites
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
	.def	test_va_list_many_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_composites    // -- Begin function test_va_list_many_composites
	.p2align	2
test_va_list_many_composites:           // @test_va_list_many_composites
.seh_proc test_va_list_many_composites
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.20
	add	x0, x0, :lo12:.L.str.20
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_composites // -- Begin function use_indirect_va_list_many_composites
	.p2align	2
use_indirect_va_list_many_composites:   // @use_indirect_va_list_many_composites
.seh_proc use_indirect_va_list_many_composites
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.20
	add	x0, x0, :lo12:.L.str.20
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_composites // -- Begin function test_indirect_va_list_many_composites
	.p2align	2
test_indirect_va_list_many_composites:  // @test_indirect_va_list_many_composites
.seh_proc test_indirect_va_list_many_composites
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
	bl	use_indirect_va_list_many_composites
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
	.def	test_va_list_few_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_short_vector_8_bytes // -- Begin function test_va_list_few_short_vector_8_bytes
	.p2align	2
test_va_list_few_short_vector_8_bytes:  // @test_va_list_few_short_vector_8_bytes
.seh_proc test_va_list_few_short_vector_8_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.21
	add	x0, x0, :lo12:.L.str.21
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_short_vector_8_bytes // -- Begin function use_indirect_va_list_few_short_vector_8_bytes
	.p2align	2
use_indirect_va_list_few_short_vector_8_bytes: // @use_indirect_va_list_few_short_vector_8_bytes
.seh_proc use_indirect_va_list_few_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.21
	add	x0, x0, :lo12:.L.str.21
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_short_vector_8_bytes // -- Begin function test_indirect_va_list_few_short_vector_8_bytes
	.p2align	2
test_indirect_va_list_few_short_vector_8_bytes: // @test_indirect_va_list_few_short_vector_8_bytes
.seh_proc test_indirect_va_list_few_short_vector_8_bytes
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
	bl	use_indirect_va_list_few_short_vector_8_bytes
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
	.def	test_va_list_several_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_short_vector_8_bytes // -- Begin function test_va_list_several_short_vector_8_bytes
	.p2align	2
test_va_list_several_short_vector_8_bytes: // @test_va_list_several_short_vector_8_bytes
.seh_proc test_va_list_several_short_vector_8_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.22
	add	x0, x0, :lo12:.L.str.22
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_short_vector_8_bytes // -- Begin function use_indirect_va_list_several_short_vector_8_bytes
	.p2align	2
use_indirect_va_list_several_short_vector_8_bytes: // @use_indirect_va_list_several_short_vector_8_bytes
.seh_proc use_indirect_va_list_several_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.22
	add	x0, x0, :lo12:.L.str.22
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_short_vector_8_bytes // -- Begin function test_indirect_va_list_several_short_vector_8_bytes
	.p2align	2
test_indirect_va_list_several_short_vector_8_bytes: // @test_indirect_va_list_several_short_vector_8_bytes
.seh_proc test_indirect_va_list_several_short_vector_8_bytes
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
	bl	use_indirect_va_list_several_short_vector_8_bytes
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
	.def	test_va_list_many_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_short_vector_8_bytes // -- Begin function test_va_list_many_short_vector_8_bytes
	.p2align	2
test_va_list_many_short_vector_8_bytes: // @test_va_list_many_short_vector_8_bytes
.seh_proc test_va_list_many_short_vector_8_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.23
	add	x0, x0, :lo12:.L.str.23
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_short_vector_8_bytes // -- Begin function use_indirect_va_list_many_short_vector_8_bytes
	.p2align	2
use_indirect_va_list_many_short_vector_8_bytes: // @use_indirect_va_list_many_short_vector_8_bytes
.seh_proc use_indirect_va_list_many_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.23
	add	x0, x0, :lo12:.L.str.23
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_short_vector_8_bytes // -- Begin function test_indirect_va_list_many_short_vector_8_bytes
	.p2align	2
test_indirect_va_list_many_short_vector_8_bytes: // @test_indirect_va_list_many_short_vector_8_bytes
.seh_proc test_indirect_va_list_many_short_vector_8_bytes
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
	bl	use_indirect_va_list_many_short_vector_8_bytes
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
	.def	test_va_list_few_not_short_vector_12_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_not_short_vector_12_bytes // -- Begin function test_va_list_few_not_short_vector_12_bytes
	.p2align	2
test_va_list_few_not_short_vector_12_bytes: // @test_va_list_few_not_short_vector_12_bytes
.seh_proc test_va_list_few_not_short_vector_12_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.24
	add	x0, x0, :lo12:.L.str.24
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_not_short_vector_12_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_not_short_vector_12_bytes // -- Begin function use_indirect_va_list_few_not_short_vector_12_bytes
	.p2align	2
use_indirect_va_list_few_not_short_vector_12_bytes: // @use_indirect_va_list_few_not_short_vector_12_bytes
.seh_proc use_indirect_va_list_few_not_short_vector_12_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.24
	add	x0, x0, :lo12:.L.str.24
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_not_short_vector_12_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_not_short_vector_12_bytes // -- Begin function test_indirect_va_list_few_not_short_vector_12_bytes
	.p2align	2
test_indirect_va_list_few_not_short_vector_12_bytes: // @test_indirect_va_list_few_not_short_vector_12_bytes
.seh_proc test_indirect_va_list_few_not_short_vector_12_bytes
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
	bl	use_indirect_va_list_few_not_short_vector_12_bytes
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
	.def	test_va_list_several_not_short_vector_12_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_not_short_vector_12_bytes // -- Begin function test_va_list_several_not_short_vector_12_bytes
	.p2align	2
test_va_list_several_not_short_vector_12_bytes: // @test_va_list_several_not_short_vector_12_bytes
.seh_proc test_va_list_several_not_short_vector_12_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.25
	add	x0, x0, :lo12:.L.str.25
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_not_short_vector_12_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_not_short_vector_12_bytes // -- Begin function use_indirect_va_list_several_not_short_vector_12_bytes
	.p2align	2
use_indirect_va_list_several_not_short_vector_12_bytes: // @use_indirect_va_list_several_not_short_vector_12_bytes
.seh_proc use_indirect_va_list_several_not_short_vector_12_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.25
	add	x0, x0, :lo12:.L.str.25
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_not_short_vector_12_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_not_short_vector_12_bytes // -- Begin function test_indirect_va_list_several_not_short_vector_12_bytes
	.p2align	2
test_indirect_va_list_several_not_short_vector_12_bytes: // @test_indirect_va_list_several_not_short_vector_12_bytes
.seh_proc test_indirect_va_list_several_not_short_vector_12_bytes
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
	bl	use_indirect_va_list_several_not_short_vector_12_bytes
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
	.def	test_va_list_many_not_short_vector_12_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_not_short_vector_12_bytes // -- Begin function test_va_list_many_not_short_vector_12_bytes
	.p2align	2
test_va_list_many_not_short_vector_12_bytes: // @test_va_list_many_not_short_vector_12_bytes
.seh_proc test_va_list_many_not_short_vector_12_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.26
	add	x0, x0, :lo12:.L.str.26
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_not_short_vector_12_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_not_short_vector_12_bytes // -- Begin function use_indirect_va_list_many_not_short_vector_12_bytes
	.p2align	2
use_indirect_va_list_many_not_short_vector_12_bytes: // @use_indirect_va_list_many_not_short_vector_12_bytes
.seh_proc use_indirect_va_list_many_not_short_vector_12_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.26
	add	x0, x0, :lo12:.L.str.26
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_not_short_vector_12_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_not_short_vector_12_bytes // -- Begin function test_indirect_va_list_many_not_short_vector_12_bytes
	.p2align	2
test_indirect_va_list_many_not_short_vector_12_bytes: // @test_indirect_va_list_many_not_short_vector_12_bytes
.seh_proc test_indirect_va_list_many_not_short_vector_12_bytes
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
	bl	use_indirect_va_list_many_not_short_vector_12_bytes
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
	.def	test_va_list_few_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_short_vector_16_bytes // -- Begin function test_va_list_few_short_vector_16_bytes
	.p2align	2
test_va_list_few_short_vector_16_bytes: // @test_va_list_few_short_vector_16_bytes
.seh_proc test_va_list_few_short_vector_16_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.27
	add	x0, x0, :lo12:.L.str.27
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_short_vector_16_bytes // -- Begin function use_indirect_va_list_few_short_vector_16_bytes
	.p2align	2
use_indirect_va_list_few_short_vector_16_bytes: // @use_indirect_va_list_few_short_vector_16_bytes
.seh_proc use_indirect_va_list_few_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.27
	add	x0, x0, :lo12:.L.str.27
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_short_vector_16_bytes // -- Begin function test_indirect_va_list_few_short_vector_16_bytes
	.p2align	2
test_indirect_va_list_few_short_vector_16_bytes: // @test_indirect_va_list_few_short_vector_16_bytes
.seh_proc test_indirect_va_list_few_short_vector_16_bytes
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
	bl	use_indirect_va_list_few_short_vector_16_bytes
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
	.def	test_va_list_several_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_short_vector_16_bytes // -- Begin function test_va_list_several_short_vector_16_bytes
	.p2align	2
test_va_list_several_short_vector_16_bytes: // @test_va_list_several_short_vector_16_bytes
.seh_proc test_va_list_several_short_vector_16_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.28
	add	x0, x0, :lo12:.L.str.28
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_short_vector_16_bytes // -- Begin function use_indirect_va_list_several_short_vector_16_bytes
	.p2align	2
use_indirect_va_list_several_short_vector_16_bytes: // @use_indirect_va_list_several_short_vector_16_bytes
.seh_proc use_indirect_va_list_several_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.28
	add	x0, x0, :lo12:.L.str.28
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_short_vector_16_bytes // -- Begin function test_indirect_va_list_several_short_vector_16_bytes
	.p2align	2
test_indirect_va_list_several_short_vector_16_bytes: // @test_indirect_va_list_several_short_vector_16_bytes
.seh_proc test_indirect_va_list_several_short_vector_16_bytes
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
	bl	use_indirect_va_list_several_short_vector_16_bytes
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
	.def	test_va_list_many_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_short_vector_16_bytes // -- Begin function test_va_list_many_short_vector_16_bytes
	.p2align	2
test_va_list_many_short_vector_16_bytes: // @test_va_list_many_short_vector_16_bytes
.seh_proc test_va_list_many_short_vector_16_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.29
	add	x0, x0, :lo12:.L.str.29
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_short_vector_16_bytes // -- Begin function use_indirect_va_list_many_short_vector_16_bytes
	.p2align	2
use_indirect_va_list_many_short_vector_16_bytes: // @use_indirect_va_list_many_short_vector_16_bytes
.seh_proc use_indirect_va_list_many_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.29
	add	x0, x0, :lo12:.L.str.29
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_short_vector_16_bytes // -- Begin function test_indirect_va_list_many_short_vector_16_bytes
	.p2align	2
test_indirect_va_list_many_short_vector_16_bytes: // @test_indirect_va_list_many_short_vector_16_bytes
.seh_proc test_indirect_va_list_many_short_vector_16_bytes
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
	bl	use_indirect_va_list_many_short_vector_16_bytes
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
	.def	test_va_list_few_hfa_2_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_hfa_2_floats   // -- Begin function test_va_list_few_hfa_2_floats
	.p2align	2
test_va_list_few_hfa_2_floats:          // @test_va_list_few_hfa_2_floats
.seh_proc test_va_list_few_hfa_2_floats
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.30
	add	x0, x0, :lo12:.L.str.30
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_hfa_2_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_hfa_2_floats // -- Begin function use_indirect_va_list_few_hfa_2_floats
	.p2align	2
use_indirect_va_list_few_hfa_2_floats:  // @use_indirect_va_list_few_hfa_2_floats
.seh_proc use_indirect_va_list_few_hfa_2_floats
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.30
	add	x0, x0, :lo12:.L.str.30
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_hfa_2_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_hfa_2_floats // -- Begin function test_indirect_va_list_few_hfa_2_floats
	.p2align	2
test_indirect_va_list_few_hfa_2_floats: // @test_indirect_va_list_few_hfa_2_floats
.seh_proc test_indirect_va_list_few_hfa_2_floats
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
	bl	use_indirect_va_list_few_hfa_2_floats
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
	.def	test_va_list_several_hfa_2_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_hfa_2_floats // -- Begin function test_va_list_several_hfa_2_floats
	.p2align	2
test_va_list_several_hfa_2_floats:      // @test_va_list_several_hfa_2_floats
.seh_proc test_va_list_several_hfa_2_floats
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.31
	add	x0, x0, :lo12:.L.str.31
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_hfa_2_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_hfa_2_floats // -- Begin function use_indirect_va_list_several_hfa_2_floats
	.p2align	2
use_indirect_va_list_several_hfa_2_floats: // @use_indirect_va_list_several_hfa_2_floats
.seh_proc use_indirect_va_list_several_hfa_2_floats
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.31
	add	x0, x0, :lo12:.L.str.31
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_hfa_2_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_hfa_2_floats // -- Begin function test_indirect_va_list_several_hfa_2_floats
	.p2align	2
test_indirect_va_list_several_hfa_2_floats: // @test_indirect_va_list_several_hfa_2_floats
.seh_proc test_indirect_va_list_several_hfa_2_floats
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
	bl	use_indirect_va_list_several_hfa_2_floats
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
	.def	test_va_list_many_hfa_2_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_hfa_2_floats  // -- Begin function test_va_list_many_hfa_2_floats
	.p2align	2
test_va_list_many_hfa_2_floats:         // @test_va_list_many_hfa_2_floats
.seh_proc test_va_list_many_hfa_2_floats
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.32
	add	x0, x0, :lo12:.L.str.32
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_hfa_2_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_hfa_2_floats // -- Begin function use_indirect_va_list_many_hfa_2_floats
	.p2align	2
use_indirect_va_list_many_hfa_2_floats: // @use_indirect_va_list_many_hfa_2_floats
.seh_proc use_indirect_va_list_many_hfa_2_floats
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.32
	add	x0, x0, :lo12:.L.str.32
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_hfa_2_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_hfa_2_floats // -- Begin function test_indirect_va_list_many_hfa_2_floats
	.p2align	2
test_indirect_va_list_many_hfa_2_floats: // @test_indirect_va_list_many_hfa_2_floats
.seh_proc test_indirect_va_list_many_hfa_2_floats
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
	bl	use_indirect_va_list_many_hfa_2_floats
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
	.def	test_va_list_few_hfa_4_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_hfa_4_floats   // -- Begin function test_va_list_few_hfa_4_floats
	.p2align	2
test_va_list_few_hfa_4_floats:          // @test_va_list_few_hfa_4_floats
.seh_proc test_va_list_few_hfa_4_floats
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.33
	add	x0, x0, :lo12:.L.str.33
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_hfa_4_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_hfa_4_floats // -- Begin function use_indirect_va_list_few_hfa_4_floats
	.p2align	2
use_indirect_va_list_few_hfa_4_floats:  // @use_indirect_va_list_few_hfa_4_floats
.seh_proc use_indirect_va_list_few_hfa_4_floats
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.33
	add	x0, x0, :lo12:.L.str.33
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_hfa_4_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_hfa_4_floats // -- Begin function test_indirect_va_list_few_hfa_4_floats
	.p2align	2
test_indirect_va_list_few_hfa_4_floats: // @test_indirect_va_list_few_hfa_4_floats
.seh_proc test_indirect_va_list_few_hfa_4_floats
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
	bl	use_indirect_va_list_few_hfa_4_floats
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
	.def	test_va_list_several_hfa_4_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_hfa_4_floats // -- Begin function test_va_list_several_hfa_4_floats
	.p2align	2
test_va_list_several_hfa_4_floats:      // @test_va_list_several_hfa_4_floats
.seh_proc test_va_list_several_hfa_4_floats
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.34
	add	x0, x0, :lo12:.L.str.34
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_hfa_4_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_hfa_4_floats // -- Begin function use_indirect_va_list_several_hfa_4_floats
	.p2align	2
use_indirect_va_list_several_hfa_4_floats: // @use_indirect_va_list_several_hfa_4_floats
.seh_proc use_indirect_va_list_several_hfa_4_floats
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.34
	add	x0, x0, :lo12:.L.str.34
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_hfa_4_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_hfa_4_floats // -- Begin function test_indirect_va_list_several_hfa_4_floats
	.p2align	2
test_indirect_va_list_several_hfa_4_floats: // @test_indirect_va_list_several_hfa_4_floats
.seh_proc test_indirect_va_list_several_hfa_4_floats
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
	bl	use_indirect_va_list_several_hfa_4_floats
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
	.def	test_va_list_many_hfa_4_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_hfa_4_floats  // -- Begin function test_va_list_many_hfa_4_floats
	.p2align	2
test_va_list_many_hfa_4_floats:         // @test_va_list_many_hfa_4_floats
.seh_proc test_va_list_many_hfa_4_floats
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.35
	add	x0, x0, :lo12:.L.str.35
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_hfa_4_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_hfa_4_floats // -- Begin function use_indirect_va_list_many_hfa_4_floats
	.p2align	2
use_indirect_va_list_many_hfa_4_floats: // @use_indirect_va_list_many_hfa_4_floats
.seh_proc use_indirect_va_list_many_hfa_4_floats
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.35
	add	x0, x0, :lo12:.L.str.35
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_hfa_4_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_hfa_4_floats // -- Begin function test_indirect_va_list_many_hfa_4_floats
	.p2align	2
test_indirect_va_list_many_hfa_4_floats: // @test_indirect_va_list_many_hfa_4_floats
.seh_proc test_indirect_va_list_many_hfa_4_floats
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
	bl	use_indirect_va_list_many_hfa_4_floats
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
	.def	test_va_list_few_hfa_2_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_hfa_2_doubles  // -- Begin function test_va_list_few_hfa_2_doubles
	.p2align	2
test_va_list_few_hfa_2_doubles:         // @test_va_list_few_hfa_2_doubles
.seh_proc test_va_list_few_hfa_2_doubles
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.36
	add	x0, x0, :lo12:.L.str.36
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_hfa_2_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_hfa_2_doubles // -- Begin function use_indirect_va_list_few_hfa_2_doubles
	.p2align	2
use_indirect_va_list_few_hfa_2_doubles: // @use_indirect_va_list_few_hfa_2_doubles
.seh_proc use_indirect_va_list_few_hfa_2_doubles
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.36
	add	x0, x0, :lo12:.L.str.36
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_hfa_2_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_hfa_2_doubles // -- Begin function test_indirect_va_list_few_hfa_2_doubles
	.p2align	2
test_indirect_va_list_few_hfa_2_doubles: // @test_indirect_va_list_few_hfa_2_doubles
.seh_proc test_indirect_va_list_few_hfa_2_doubles
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
	bl	use_indirect_va_list_few_hfa_2_doubles
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
	.def	test_va_list_several_hfa_2_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_hfa_2_doubles // -- Begin function test_va_list_several_hfa_2_doubles
	.p2align	2
test_va_list_several_hfa_2_doubles:     // @test_va_list_several_hfa_2_doubles
.seh_proc test_va_list_several_hfa_2_doubles
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.37
	add	x0, x0, :lo12:.L.str.37
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_hfa_2_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_hfa_2_doubles // -- Begin function use_indirect_va_list_several_hfa_2_doubles
	.p2align	2
use_indirect_va_list_several_hfa_2_doubles: // @use_indirect_va_list_several_hfa_2_doubles
.seh_proc use_indirect_va_list_several_hfa_2_doubles
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.37
	add	x0, x0, :lo12:.L.str.37
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_hfa_2_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_hfa_2_doubles // -- Begin function test_indirect_va_list_several_hfa_2_doubles
	.p2align	2
test_indirect_va_list_several_hfa_2_doubles: // @test_indirect_va_list_several_hfa_2_doubles
.seh_proc test_indirect_va_list_several_hfa_2_doubles
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
	bl	use_indirect_va_list_several_hfa_2_doubles
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
	.def	test_va_list_many_hfa_2_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_hfa_2_doubles // -- Begin function test_va_list_many_hfa_2_doubles
	.p2align	2
test_va_list_many_hfa_2_doubles:        // @test_va_list_many_hfa_2_doubles
.seh_proc test_va_list_many_hfa_2_doubles
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.38
	add	x0, x0, :lo12:.L.str.38
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_hfa_2_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_hfa_2_doubles // -- Begin function use_indirect_va_list_many_hfa_2_doubles
	.p2align	2
use_indirect_va_list_many_hfa_2_doubles: // @use_indirect_va_list_many_hfa_2_doubles
.seh_proc use_indirect_va_list_many_hfa_2_doubles
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.38
	add	x0, x0, :lo12:.L.str.38
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_hfa_2_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_hfa_2_doubles // -- Begin function test_indirect_va_list_many_hfa_2_doubles
	.p2align	2
test_indirect_va_list_many_hfa_2_doubles: // @test_indirect_va_list_many_hfa_2_doubles
.seh_proc test_indirect_va_list_many_hfa_2_doubles
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
	bl	use_indirect_va_list_many_hfa_2_doubles
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
	.def	test_va_list_few_hfa_4_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_hfa_4_doubles  // -- Begin function test_va_list_few_hfa_4_doubles
	.p2align	2
test_va_list_few_hfa_4_doubles:         // @test_va_list_few_hfa_4_doubles
.seh_proc test_va_list_few_hfa_4_doubles
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.39
	add	x0, x0, :lo12:.L.str.39
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_hfa_4_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_hfa_4_doubles // -- Begin function use_indirect_va_list_few_hfa_4_doubles
	.p2align	2
use_indirect_va_list_few_hfa_4_doubles: // @use_indirect_va_list_few_hfa_4_doubles
.seh_proc use_indirect_va_list_few_hfa_4_doubles
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.39
	add	x0, x0, :lo12:.L.str.39
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_hfa_4_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_hfa_4_doubles // -- Begin function test_indirect_va_list_few_hfa_4_doubles
	.p2align	2
test_indirect_va_list_few_hfa_4_doubles: // @test_indirect_va_list_few_hfa_4_doubles
.seh_proc test_indirect_va_list_few_hfa_4_doubles
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
	bl	use_indirect_va_list_few_hfa_4_doubles
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
	.def	test_va_list_several_hfa_4_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_hfa_4_doubles // -- Begin function test_va_list_several_hfa_4_doubles
	.p2align	2
test_va_list_several_hfa_4_doubles:     // @test_va_list_several_hfa_4_doubles
.seh_proc test_va_list_several_hfa_4_doubles
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.40
	add	x0, x0, :lo12:.L.str.40
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_hfa_4_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_hfa_4_doubles // -- Begin function use_indirect_va_list_several_hfa_4_doubles
	.p2align	2
use_indirect_va_list_several_hfa_4_doubles: // @use_indirect_va_list_several_hfa_4_doubles
.seh_proc use_indirect_va_list_several_hfa_4_doubles
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.40
	add	x0, x0, :lo12:.L.str.40
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_hfa_4_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_hfa_4_doubles // -- Begin function test_indirect_va_list_several_hfa_4_doubles
	.p2align	2
test_indirect_va_list_several_hfa_4_doubles: // @test_indirect_va_list_several_hfa_4_doubles
.seh_proc test_indirect_va_list_several_hfa_4_doubles
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
	bl	use_indirect_va_list_several_hfa_4_doubles
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
	.def	test_va_list_many_hfa_4_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_hfa_4_doubles // -- Begin function test_va_list_many_hfa_4_doubles
	.p2align	2
test_va_list_many_hfa_4_doubles:        // @test_va_list_many_hfa_4_doubles
.seh_proc test_va_list_many_hfa_4_doubles
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.41
	add	x0, x0, :lo12:.L.str.41
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_hfa_4_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_hfa_4_doubles // -- Begin function use_indirect_va_list_many_hfa_4_doubles
	.p2align	2
use_indirect_va_list_many_hfa_4_doubles: // @use_indirect_va_list_many_hfa_4_doubles
.seh_proc use_indirect_va_list_many_hfa_4_doubles
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.41
	add	x0, x0, :lo12:.L.str.41
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_hfa_4_doubles;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_hfa_4_doubles // -- Begin function test_indirect_va_list_many_hfa_4_doubles
	.p2align	2
test_indirect_va_list_many_hfa_4_doubles: // @test_indirect_va_list_many_hfa_4_doubles
.seh_proc test_indirect_va_list_many_hfa_4_doubles
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
	bl	use_indirect_va_list_many_hfa_4_doubles
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
	.def	test_va_list_few_hva_2_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_hva_2_short_vector_8_bytes // -- Begin function test_va_list_few_hva_2_short_vector_8_bytes
	.p2align	2
test_va_list_few_hva_2_short_vector_8_bytes: // @test_va_list_few_hva_2_short_vector_8_bytes
.seh_proc test_va_list_few_hva_2_short_vector_8_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.42
	add	x0, x0, :lo12:.L.str.42
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_hva_2_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_hva_2_short_vector_8_bytes // -- Begin function use_indirect_va_list_few_hva_2_short_vector_8_bytes
	.p2align	2
use_indirect_va_list_few_hva_2_short_vector_8_bytes: // @use_indirect_va_list_few_hva_2_short_vector_8_bytes
.seh_proc use_indirect_va_list_few_hva_2_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.42
	add	x0, x0, :lo12:.L.str.42
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_hva_2_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_hva_2_short_vector_8_bytes // -- Begin function test_indirect_va_list_few_hva_2_short_vector_8_bytes
	.p2align	2
test_indirect_va_list_few_hva_2_short_vector_8_bytes: // @test_indirect_va_list_few_hva_2_short_vector_8_bytes
.seh_proc test_indirect_va_list_few_hva_2_short_vector_8_bytes
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
	bl	use_indirect_va_list_few_hva_2_short_vector_8_bytes
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
	.def	test_va_list_several_hva_2_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_hva_2_short_vector_8_bytes // -- Begin function test_va_list_several_hva_2_short_vector_8_bytes
	.p2align	2
test_va_list_several_hva_2_short_vector_8_bytes: // @test_va_list_several_hva_2_short_vector_8_bytes
.seh_proc test_va_list_several_hva_2_short_vector_8_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.43
	add	x0, x0, :lo12:.L.str.43
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_hva_2_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_hva_2_short_vector_8_bytes // -- Begin function use_indirect_va_list_several_hva_2_short_vector_8_bytes
	.p2align	2
use_indirect_va_list_several_hva_2_short_vector_8_bytes: // @use_indirect_va_list_several_hva_2_short_vector_8_bytes
.seh_proc use_indirect_va_list_several_hva_2_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.43
	add	x0, x0, :lo12:.L.str.43
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_hva_2_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_hva_2_short_vector_8_bytes // -- Begin function test_indirect_va_list_several_hva_2_short_vector_8_bytes
	.p2align	2
test_indirect_va_list_several_hva_2_short_vector_8_bytes: // @test_indirect_va_list_several_hva_2_short_vector_8_bytes
.seh_proc test_indirect_va_list_several_hva_2_short_vector_8_bytes
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
	bl	use_indirect_va_list_several_hva_2_short_vector_8_bytes
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
	.def	test_va_list_many_hva_2_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_hva_2_short_vector_8_bytes // -- Begin function test_va_list_many_hva_2_short_vector_8_bytes
	.p2align	2
test_va_list_many_hva_2_short_vector_8_bytes: // @test_va_list_many_hva_2_short_vector_8_bytes
.seh_proc test_va_list_many_hva_2_short_vector_8_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.44
	add	x0, x0, :lo12:.L.str.44
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_hva_2_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_hva_2_short_vector_8_bytes // -- Begin function use_indirect_va_list_many_hva_2_short_vector_8_bytes
	.p2align	2
use_indirect_va_list_many_hva_2_short_vector_8_bytes: // @use_indirect_va_list_many_hva_2_short_vector_8_bytes
.seh_proc use_indirect_va_list_many_hva_2_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.44
	add	x0, x0, :lo12:.L.str.44
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_hva_2_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_hva_2_short_vector_8_bytes // -- Begin function test_indirect_va_list_many_hva_2_short_vector_8_bytes
	.p2align	2
test_indirect_va_list_many_hva_2_short_vector_8_bytes: // @test_indirect_va_list_many_hva_2_short_vector_8_bytes
.seh_proc test_indirect_va_list_many_hva_2_short_vector_8_bytes
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
	bl	use_indirect_va_list_many_hva_2_short_vector_8_bytes
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
	.def	test_va_list_few_hva_4_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_hva_4_short_vector_8_bytes // -- Begin function test_va_list_few_hva_4_short_vector_8_bytes
	.p2align	2
test_va_list_few_hva_4_short_vector_8_bytes: // @test_va_list_few_hva_4_short_vector_8_bytes
.seh_proc test_va_list_few_hva_4_short_vector_8_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.45
	add	x0, x0, :lo12:.L.str.45
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_hva_4_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_hva_4_short_vector_8_bytes // -- Begin function use_indirect_va_list_few_hva_4_short_vector_8_bytes
	.p2align	2
use_indirect_va_list_few_hva_4_short_vector_8_bytes: // @use_indirect_va_list_few_hva_4_short_vector_8_bytes
.seh_proc use_indirect_va_list_few_hva_4_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.45
	add	x0, x0, :lo12:.L.str.45
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_hva_4_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_hva_4_short_vector_8_bytes // -- Begin function test_indirect_va_list_few_hva_4_short_vector_8_bytes
	.p2align	2
test_indirect_va_list_few_hva_4_short_vector_8_bytes: // @test_indirect_va_list_few_hva_4_short_vector_8_bytes
.seh_proc test_indirect_va_list_few_hva_4_short_vector_8_bytes
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
	bl	use_indirect_va_list_few_hva_4_short_vector_8_bytes
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
	.def	test_va_list_several_hva_4_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_hva_4_short_vector_8_bytes // -- Begin function test_va_list_several_hva_4_short_vector_8_bytes
	.p2align	2
test_va_list_several_hva_4_short_vector_8_bytes: // @test_va_list_several_hva_4_short_vector_8_bytes
.seh_proc test_va_list_several_hva_4_short_vector_8_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.46
	add	x0, x0, :lo12:.L.str.46
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_hva_4_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_hva_4_short_vector_8_bytes // -- Begin function use_indirect_va_list_several_hva_4_short_vector_8_bytes
	.p2align	2
use_indirect_va_list_several_hva_4_short_vector_8_bytes: // @use_indirect_va_list_several_hva_4_short_vector_8_bytes
.seh_proc use_indirect_va_list_several_hva_4_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.46
	add	x0, x0, :lo12:.L.str.46
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_hva_4_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_hva_4_short_vector_8_bytes // -- Begin function test_indirect_va_list_several_hva_4_short_vector_8_bytes
	.p2align	2
test_indirect_va_list_several_hva_4_short_vector_8_bytes: // @test_indirect_va_list_several_hva_4_short_vector_8_bytes
.seh_proc test_indirect_va_list_several_hva_4_short_vector_8_bytes
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
	bl	use_indirect_va_list_several_hva_4_short_vector_8_bytes
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
	.def	test_va_list_many_hva_4_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_hva_4_short_vector_8_bytes // -- Begin function test_va_list_many_hva_4_short_vector_8_bytes
	.p2align	2
test_va_list_many_hva_4_short_vector_8_bytes: // @test_va_list_many_hva_4_short_vector_8_bytes
.seh_proc test_va_list_many_hva_4_short_vector_8_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.47
	add	x0, x0, :lo12:.L.str.47
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_hva_4_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_hva_4_short_vector_8_bytes // -- Begin function use_indirect_va_list_many_hva_4_short_vector_8_bytes
	.p2align	2
use_indirect_va_list_many_hva_4_short_vector_8_bytes: // @use_indirect_va_list_many_hva_4_short_vector_8_bytes
.seh_proc use_indirect_va_list_many_hva_4_short_vector_8_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.47
	add	x0, x0, :lo12:.L.str.47
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_hva_4_short_vector_8_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_hva_4_short_vector_8_bytes // -- Begin function test_indirect_va_list_many_hva_4_short_vector_8_bytes
	.p2align	2
test_indirect_va_list_many_hva_4_short_vector_8_bytes: // @test_indirect_va_list_many_hva_4_short_vector_8_bytes
.seh_proc test_indirect_va_list_many_hva_4_short_vector_8_bytes
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
	bl	use_indirect_va_list_many_hva_4_short_vector_8_bytes
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
	.def	test_va_list_few_hva_2_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_hva_2_short_vector_16_bytes // -- Begin function test_va_list_few_hva_2_short_vector_16_bytes
	.p2align	2
test_va_list_few_hva_2_short_vector_16_bytes: // @test_va_list_few_hva_2_short_vector_16_bytes
.seh_proc test_va_list_few_hva_2_short_vector_16_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.48
	add	x0, x0, :lo12:.L.str.48
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_hva_2_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_hva_2_short_vector_16_bytes // -- Begin function use_indirect_va_list_few_hva_2_short_vector_16_bytes
	.p2align	2
use_indirect_va_list_few_hva_2_short_vector_16_bytes: // @use_indirect_va_list_few_hva_2_short_vector_16_bytes
.seh_proc use_indirect_va_list_few_hva_2_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.48
	add	x0, x0, :lo12:.L.str.48
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_hva_2_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_hva_2_short_vector_16_bytes // -- Begin function test_indirect_va_list_few_hva_2_short_vector_16_bytes
	.p2align	2
test_indirect_va_list_few_hva_2_short_vector_16_bytes: // @test_indirect_va_list_few_hva_2_short_vector_16_bytes
.seh_proc test_indirect_va_list_few_hva_2_short_vector_16_bytes
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
	bl	use_indirect_va_list_few_hva_2_short_vector_16_bytes
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
	.def	test_va_list_several_hva_2_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_hva_2_short_vector_16_bytes // -- Begin function test_va_list_several_hva_2_short_vector_16_bytes
	.p2align	2
test_va_list_several_hva_2_short_vector_16_bytes: // @test_va_list_several_hva_2_short_vector_16_bytes
.seh_proc test_va_list_several_hva_2_short_vector_16_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.49
	add	x0, x0, :lo12:.L.str.49
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_hva_2_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_hva_2_short_vector_16_bytes // -- Begin function use_indirect_va_list_several_hva_2_short_vector_16_bytes
	.p2align	2
use_indirect_va_list_several_hva_2_short_vector_16_bytes: // @use_indirect_va_list_several_hva_2_short_vector_16_bytes
.seh_proc use_indirect_va_list_several_hva_2_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.49
	add	x0, x0, :lo12:.L.str.49
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_hva_2_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_hva_2_short_vector_16_bytes // -- Begin function test_indirect_va_list_several_hva_2_short_vector_16_bytes
	.p2align	2
test_indirect_va_list_several_hva_2_short_vector_16_bytes: // @test_indirect_va_list_several_hva_2_short_vector_16_bytes
.seh_proc test_indirect_va_list_several_hva_2_short_vector_16_bytes
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
	bl	use_indirect_va_list_several_hva_2_short_vector_16_bytes
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
	.def	test_va_list_many_hva_2_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_hva_2_short_vector_16_bytes // -- Begin function test_va_list_many_hva_2_short_vector_16_bytes
	.p2align	2
test_va_list_many_hva_2_short_vector_16_bytes: // @test_va_list_many_hva_2_short_vector_16_bytes
.seh_proc test_va_list_many_hva_2_short_vector_16_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.50
	add	x0, x0, :lo12:.L.str.50
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_hva_2_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_hva_2_short_vector_16_bytes // -- Begin function use_indirect_va_list_many_hva_2_short_vector_16_bytes
	.p2align	2
use_indirect_va_list_many_hva_2_short_vector_16_bytes: // @use_indirect_va_list_many_hva_2_short_vector_16_bytes
.seh_proc use_indirect_va_list_many_hva_2_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.50
	add	x0, x0, :lo12:.L.str.50
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_hva_2_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_hva_2_short_vector_16_bytes // -- Begin function test_indirect_va_list_many_hva_2_short_vector_16_bytes
	.p2align	2
test_indirect_va_list_many_hva_2_short_vector_16_bytes: // @test_indirect_va_list_many_hva_2_short_vector_16_bytes
.seh_proc test_indirect_va_list_many_hva_2_short_vector_16_bytes
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
	bl	use_indirect_va_list_many_hva_2_short_vector_16_bytes
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
	.def	test_va_list_few_hva_4_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_few_hva_4_short_vector_16_bytes // -- Begin function test_va_list_few_hva_4_short_vector_16_bytes
	.p2align	2
test_va_list_few_hva_4_short_vector_16_bytes: // @test_va_list_few_hva_4_short_vector_16_bytes
.seh_proc test_va_list_few_hva_4_short_vector_16_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.51
	add	x0, x0, :lo12:.L.str.51
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_few_hva_4_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_few_hva_4_short_vector_16_bytes // -- Begin function use_indirect_va_list_few_hva_4_short_vector_16_bytes
	.p2align	2
use_indirect_va_list_few_hva_4_short_vector_16_bytes: // @use_indirect_va_list_few_hva_4_short_vector_16_bytes
.seh_proc use_indirect_va_list_few_hva_4_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.51
	add	x0, x0, :lo12:.L.str.51
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_few_hva_4_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_few_hva_4_short_vector_16_bytes // -- Begin function test_indirect_va_list_few_hva_4_short_vector_16_bytes
	.p2align	2
test_indirect_va_list_few_hva_4_short_vector_16_bytes: // @test_indirect_va_list_few_hva_4_short_vector_16_bytes
.seh_proc test_indirect_va_list_few_hva_4_short_vector_16_bytes
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
	bl	use_indirect_va_list_few_hva_4_short_vector_16_bytes
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
	.def	test_va_list_several_hva_4_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_several_hva_4_short_vector_16_bytes // -- Begin function test_va_list_several_hva_4_short_vector_16_bytes
	.p2align	2
test_va_list_several_hva_4_short_vector_16_bytes: // @test_va_list_several_hva_4_short_vector_16_bytes
.seh_proc test_va_list_several_hva_4_short_vector_16_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.52
	add	x0, x0, :lo12:.L.str.52
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_several_hva_4_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_several_hva_4_short_vector_16_bytes // -- Begin function use_indirect_va_list_several_hva_4_short_vector_16_bytes
	.p2align	2
use_indirect_va_list_several_hva_4_short_vector_16_bytes: // @use_indirect_va_list_several_hva_4_short_vector_16_bytes
.seh_proc use_indirect_va_list_several_hva_4_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.52
	add	x0, x0, :lo12:.L.str.52
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_several_hva_4_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_several_hva_4_short_vector_16_bytes // -- Begin function test_indirect_va_list_several_hva_4_short_vector_16_bytes
	.p2align	2
test_indirect_va_list_several_hva_4_short_vector_16_bytes: // @test_indirect_va_list_several_hva_4_short_vector_16_bytes
.seh_proc test_indirect_va_list_several_hva_4_short_vector_16_bytes
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
	bl	use_indirect_va_list_several_hva_4_short_vector_16_bytes
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
	.def	test_va_list_many_hva_4_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_many_hva_4_short_vector_16_bytes // -- Begin function test_va_list_many_hva_4_short_vector_16_bytes
	.p2align	2
test_va_list_many_hva_4_short_vector_16_bytes: // @test_va_list_many_hva_4_short_vector_16_bytes
.seh_proc test_va_list_many_hva_4_short_vector_16_bytes
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.53
	add	x0, x0, :lo12:.L.str.53
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_many_hva_4_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_many_hva_4_short_vector_16_bytes // -- Begin function use_indirect_va_list_many_hva_4_short_vector_16_bytes
	.p2align	2
use_indirect_va_list_many_hva_4_short_vector_16_bytes: // @use_indirect_va_list_many_hva_4_short_vector_16_bytes
.seh_proc use_indirect_va_list_many_hva_4_short_vector_16_bytes
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.53
	add	x0, x0, :lo12:.L.str.53
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_many_hva_4_short_vector_16_bytes;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_many_hva_4_short_vector_16_bytes // -- Begin function test_indirect_va_list_many_hva_4_short_vector_16_bytes
	.p2align	2
test_indirect_va_list_many_hva_4_short_vector_16_bytes: // @test_indirect_va_list_many_hva_4_short_vector_16_bytes
.seh_proc test_indirect_va_list_many_hva_4_short_vector_16_bytes
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
	bl	use_indirect_va_list_many_hva_4_short_vector_16_bytes
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
	.def	test_va_list_ints_and_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_ints_and_composites // -- Begin function test_va_list_ints_and_composites
	.p2align	2
test_va_list_ints_and_composites:       // @test_va_list_ints_and_composites
.seh_proc test_va_list_ints_and_composites
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.54
	add	x0, x0, :lo12:.L.str.54
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_ints_and_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_ints_and_composites // -- Begin function use_indirect_va_list_ints_and_composites
	.p2align	2
use_indirect_va_list_ints_and_composites: // @use_indirect_va_list_ints_and_composites
.seh_proc use_indirect_va_list_ints_and_composites
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.54
	add	x0, x0, :lo12:.L.str.54
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_ints_and_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_ints_and_composites // -- Begin function test_indirect_va_list_ints_and_composites
	.p2align	2
test_indirect_va_list_ints_and_composites: // @test_indirect_va_list_ints_and_composites
.seh_proc test_indirect_va_list_ints_and_composites
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
	bl	use_indirect_va_list_ints_and_composites
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
	.def	test_va_list_ints_and_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_ints_and_floats    // -- Begin function test_va_list_ints_and_floats
	.p2align	2
test_va_list_ints_and_floats:           // @test_va_list_ints_and_floats
.seh_proc test_va_list_ints_and_floats
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.55
	add	x0, x0, :lo12:.L.str.55
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_ints_and_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_ints_and_floats // -- Begin function use_indirect_va_list_ints_and_floats
	.p2align	2
use_indirect_va_list_ints_and_floats:   // @use_indirect_va_list_ints_and_floats
.seh_proc use_indirect_va_list_ints_and_floats
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.55
	add	x0, x0, :lo12:.L.str.55
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_ints_and_floats;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_ints_and_floats // -- Begin function test_indirect_va_list_ints_and_floats
	.p2align	2
test_indirect_va_list_ints_and_floats:  // @test_indirect_va_list_ints_and_floats
.seh_proc test_indirect_va_list_ints_and_floats
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
	bl	use_indirect_va_list_ints_and_floats
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
	.def	test_va_list_ints_floats_and_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	test_va_list_ints_floats_and_composites // -- Begin function test_va_list_ints_floats_and_composites
	.p2align	2
test_va_list_ints_floats_and_composites: // @test_va_list_ints_floats_and_composites
.seh_proc test_va_list_ints_floats_and_composites
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
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.56
	add	x0, x0, :lo12:.L.str.56
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	__mingw_printf
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
	.def	use_indirect_va_list_ints_floats_and_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	use_indirect_va_list_ints_floats_and_composites // -- Begin function use_indirect_va_list_ints_floats_and_composites
	.p2align	2
use_indirect_va_list_ints_floats_and_composites: // @use_indirect_va_list_ints_floats_and_composites
.seh_proc use_indirect_va_list_ints_floats_and_composites
// %bb.0:
	sub	sp, sp, #48
	.seh_stackalloc	48
	str	x30, [sp, #32]                  // 8-byte Folded Spill
	.seh_save_reg	x30, 32
	.seh_endprologue
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.56
	add	x0, x0, :lo12:.L.str.56
	str	x0, [sp]                        // 8-byte Folded Spill
	blr	x8
	ldr	x1, [sp]                        // 8-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w2, [sp, #12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	__mingw_printf
	ldr	w0, [sp, #12]
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
	.def	test_indirect_va_list_ints_floats_and_composites;
	.scl	2;
	.type	32;
	.endef
	.globl	test_indirect_va_list_ints_floats_and_composites // -- Begin function test_indirect_va_list_ints_floats_and_composites
	.p2align	2
test_indirect_va_list_ints_floats_and_composites: // @test_indirect_va_list_ints_floats_and_composites
.seh_proc test_indirect_va_list_ints_floats_and_composites
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
	bl	use_indirect_va_list_ints_floats_and_composites
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
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	.seh_save_fplr_x	16
	mov	x15, #427
	.seh_nop
	bl	__chkstk
	.seh_nop
	sub	sp, sp, x15, lsl #4
	.seh_stackalloc	6832
	.seh_endprologue
	mov	w8, wzr
	str	w8, [sp, #500]                  // 4-byte Folded Spill
	str	w8, [sp, #6828]
	str	w0, [sp, #6824]
	str	x1, [sp, #6816]
	mov	x8, sp
	mov	w9, #64
                                        // kill: def $x9 killed $w9
	str	x9, [x8, #24]
	str	x9, [x8, #16]
	mov	w9, #32
	mov	w6, w9
	str	x6, [x8, #8]
	str	x6, [x8]
	adrp	x0, .L.str.62
	add	x0, x0, :lo12:.L.str.62
	mov	w8, #8
	mov	w3, w8
	mov	w8, #16
	mov	w7, w8
	mov	x1, x3
	mov	x2, x7
	mov	x4, x7
	mov	x5, x7
	bl	__mingw_printf
	ldr	w8, [sp, #500]                  // 4-byte Folded Reload
	str	w8, [sp, #6812]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	str	x0, [sp, #504]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_no_arguments
	ldr	x8, [x8, :lo12:__imp_use_va_args_no_arguments]
	blr	x8
	ldr	x1, [sp, #504]                  // 8-byte Folded Reload
	str	w0, [sp, #6808]
	ldr	w2, [sp, #6808]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #6808]
	subs	w8, w8, #165
	b.eq	.LBB167_2
	b	.LBB167_1
.LBB167_1:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #6808]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #165
	bl	__mingw_printf
	b	.LBB167_2
.LBB167_2:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	str	x0, [sp, #488]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_few_longs
	ldr	x8, [x8, :lo12:__imp_use_va_args_few_longs]
	mov	w1, #100
	mov	w2, #42
	blr	x8
	ldr	x1, [sp, #488]                  // 8-byte Folded Reload
	str	w0, [sp, #6804]
	ldr	w2, [sp, #6804]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #6804]
	subs	w8, w8, #142
	b.eq	.LBB167_4
	b	.LBB167_3
.LBB167_3:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #6804]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #142
	bl	__mingw_printf
	b	.LBB167_4
.LBB167_4:
	mov	x9, sp
	mov	w8, #55
	str	w8, [x9, #8]
	mov	w8, #34
	str	w8, [x9]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	str	x0, [sp, #480]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_several_longs
	ldr	x8, [x8, :lo12:__imp_use_va_args_several_longs]
	mov	w1, #1
	mov	w2, #2
	mov	w3, #3
	mov	w4, #5
	mov	w5, #8
	mov	w6, #13
	mov	w7, #21
	blr	x8
	ldr	x1, [sp, #480]                  // 8-byte Folded Reload
	str	w0, [sp, #6800]
	ldr	w2, [sp, #6800]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #6800]
	subs	w8, w8, #142
	b.eq	.LBB167_6
	b	.LBB167_5
.LBB167_5:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #6800]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #142
	bl	__mingw_printf
	b	.LBB167_6
.LBB167_6:
	mov	x9, sp
	str	x9, [sp, #464]                  // 8-byte Folded Spill
	mov	w8, #2584
	str	w8, [x9, #72]
	mov	w8, #1597
	str	w8, [x9, #64]
	mov	w8, #987
	str	w8, [x9, #56]
	mov	w8, #610
	str	w8, [x9, #48]
	mov	w8, #377
	str	w8, [x9, #40]
	mov	w8, #233
	str	w8, [x9, #32]
	mov	w8, #144
	str	w8, [x9, #24]
	mov	w8, #89
	str	w8, [x9, #16]
	mov	w8, #55
	str	w8, [x9, #8]
	mov	w8, #34
	str	w8, [x9]
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	str	x0, [sp, #472]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_many_longs
	ldr	x8, [x8, :lo12:__imp_use_va_args_many_longs]
	mov	w1, #1
	mov	w2, #2
	mov	w3, #3
	mov	w4, #5
	mov	w5, #8
	mov	w6, #13
	mov	w7, #21
	blr	x8
	ldr	x1, [sp, #472]                  // 8-byte Folded Reload
	str	w0, [sp, #6796]
	ldr	w2, [sp, #6796]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #6796]
	mov	w9, #6763
	subs	w8, w8, w9
	b.eq	.LBB167_8
	b	.LBB167_7
.LBB167_7:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #6796]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #6763
	bl	__mingw_printf
	b	.LBB167_8
.LBB167_8:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	str	x0, [sp, #456]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_few_ints
	ldr	x8, [x8, :lo12:__imp_use_va_args_few_ints]
	mov	w1, #100
	mov	w2, #42
	blr	x8
	ldr	x1, [sp, #456]                  // 8-byte Folded Reload
	str	w0, [sp, #6792]
	ldr	w2, [sp, #6792]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #6792]
	subs	w8, w8, #142
	b.eq	.LBB167_10
	b	.LBB167_9
.LBB167_9:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #6792]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #142
	bl	__mingw_printf
	b	.LBB167_10
.LBB167_10:
	mov	x9, sp
	mov	w8, #55
	str	w8, [x9, #8]
	mov	w8, #34
	str	w8, [x9]
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	str	x0, [sp, #448]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_several_ints
	ldr	x8, [x8, :lo12:__imp_use_va_args_several_ints]
	mov	w1, #1
	mov	w2, #2
	mov	w3, #3
	mov	w4, #5
	mov	w5, #8
	mov	w6, #13
	mov	w7, #21
	blr	x8
	ldr	x1, [sp, #448]                  // 8-byte Folded Reload
	str	w0, [sp, #6788]
	ldr	w2, [sp, #6788]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #6788]
	subs	w8, w8, #142
	b.eq	.LBB167_12
	b	.LBB167_11
.LBB167_11:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #6788]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #142
	bl	__mingw_printf
	b	.LBB167_12
.LBB167_12:
	mov	x9, sp
	str	x9, [sp, #432]                  // 8-byte Folded Spill
	mov	w8, #2584
	str	w8, [x9, #72]
	mov	w8, #1597
	str	w8, [x9, #64]
	mov	w8, #987
	str	w8, [x9, #56]
	mov	w8, #610
	str	w8, [x9, #48]
	mov	w8, #377
	str	w8, [x9, #40]
	mov	w8, #233
	str	w8, [x9, #32]
	mov	w8, #144
	str	w8, [x9, #24]
	mov	w8, #89
	str	w8, [x9, #16]
	mov	w8, #55
	str	w8, [x9, #8]
	mov	w8, #34
	str	w8, [x9]
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	str	x0, [sp, #440]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_many_ints
	ldr	x8, [x8, :lo12:__imp_use_va_args_many_ints]
	mov	w1, #1
	mov	w2, #2
	mov	w3, #3
	mov	w4, #5
	mov	w5, #8
	mov	w6, #13
	mov	w7, #21
	blr	x8
	ldr	x1, [sp, #440]                  // 8-byte Folded Reload
	str	w0, [sp, #6784]
	ldr	w2, [sp, #6784]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #6784]
	mov	w9, #6763
	subs	w8, w8, w9
	b.eq	.LBB167_14
	b	.LBB167_13
.LBB167_13:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #6784]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #6763
	bl	__mingw_printf
	b	.LBB167_14
.LBB167_14:
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	str	x0, [sp, #424]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_few_doubles
	ldr	x8, [x8, :lo12:__imp_use_va_args_few_doubles]
	mov	x1, #4636737291354636288
	mov	x2, #4631107791820423168
	blr	x8
	ldr	x1, [sp, #424]                  // 8-byte Folded Reload
	str	w0, [sp, #6780]
	ldr	w2, [sp, #6780]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #6780]
	subs	w8, w8, #142
	b.eq	.LBB167_16
	b	.LBB167_15
.LBB167_15:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #6780]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #142
	bl	__mingw_printf
	b	.LBB167_16
.LBB167_16:
	mov	x9, sp
	mov	x8, #140737488355328
	movk	x8, #16459, lsl #48
	str	x8, [x9, #8]
	mov	x8, #4629981891913580544
	str	x8, [x9]
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	str	x0, [sp, #416]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_several_doubles
	ldr	x8, [x8, :lo12:__imp_use_va_args_several_doubles]
	mov	x1, #4607182418800017408
	mov	x2, #4611686018427387904
	mov	x3, #4613937818241073152
	mov	x4, #4617315517961601024
	mov	x5, #4620693217682128896
	mov	x6, #4623507967449235456
	mov	x7, #4626604192193052672
	blr	x8
	ldr	x1, [sp, #416]                  // 8-byte Folded Reload
	str	w0, [sp, #6776]
	ldr	w2, [sp, #6776]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #6776]
	subs	w8, w8, #142
	b.eq	.LBB167_18
	b	.LBB167_17
.LBB167_17:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #6776]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #142
	bl	__mingw_printf
	b	.LBB167_18
.LBB167_18:
	mov	x9, sp
	str	x9, [sp, #400]                  // 8-byte Folded Spill
	mov	x8, #52776558133248
	movk	x8, #16548, lsl #48
	str	x8, [x9, #72]
	mov	x8, #268280837177344
	movk	x8, #16536, lsl #48
	str	x8, [x9, #64]
	mov	x8, #237494511599616
	movk	x8, #16526, lsl #48
	str	x8, [x9, #56]
	mov	x8, #17592186044416
	movk	x8, #16515, lsl #48
	str	x8, [x9, #48]
	mov	x8, #158329674399744
	movk	x8, #16503, lsl #48
	str	x8, [x9, #40]
	mov	x8, #35184372088832
	movk	x8, #16493, lsl #48
	str	x8, [x9, #32]
	mov	x8, #4639270566145032192
	str	x8, [x9, #24]
	mov	x8, #70368744177664
	movk	x8, #16470, lsl #48
	str	x8, [x9, #16]
	mov	x8, #140737488355328
	movk	x8, #16459, lsl #48
	str	x8, [x9, #8]
	mov	x8, #4629981891913580544
	str	x8, [x9]
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
	str	x0, [sp, #408]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_many_doubles
	ldr	x8, [x8, :lo12:__imp_use_va_args_many_doubles]
	mov	x1, #4607182418800017408
	mov	x2, #4611686018427387904
	mov	x3, #4613937818241073152
	mov	x4, #4617315517961601024
	mov	x5, #4620693217682128896
	mov	x6, #4623507967449235456
	mov	x7, #4626604192193052672
	blr	x8
	ldr	x1, [sp, #408]                  // 8-byte Folded Reload
	str	w0, [sp, #6772]
	ldr	w2, [sp, #6772]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #6772]
	mov	w9, #6763
	subs	w8, w8, w9
	b.eq	.LBB167_20
	b	.LBB167_19
.LBB167_19:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #6772]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #6763
	bl	__mingw_printf
	b	.LBB167_20
.LBB167_20:
	adrp	x0, .L.str.12
	add	x0, x0, :lo12:.L.str.12
	str	x0, [sp, #392]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_few_floats
	ldr	x8, [x8, :lo12:__imp_use_va_args_few_floats]
	mov	x1, #4636737291354636288
	mov	x2, #4631107791820423168
	blr	x8
	ldr	x1, [sp, #392]                  // 8-byte Folded Reload
	str	w0, [sp, #6768]
	ldr	w2, [sp, #6768]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #6768]
	subs	w8, w8, #142
	b.eq	.LBB167_22
	b	.LBB167_21
.LBB167_21:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #6768]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #142
	bl	__mingw_printf
	b	.LBB167_22
.LBB167_22:
	mov	x9, sp
	mov	x8, #140737488355328
	movk	x8, #16459, lsl #48
	str	x8, [x9, #8]
	mov	x8, #4629981891913580544
	str	x8, [x9]
	adrp	x0, .L.str.13
	add	x0, x0, :lo12:.L.str.13
	str	x0, [sp, #384]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_several_floats
	ldr	x8, [x8, :lo12:__imp_use_va_args_several_floats]
	mov	x1, #4607182418800017408
	mov	x2, #4611686018427387904
	mov	x3, #4613937818241073152
	mov	x4, #4617315517961601024
	mov	x5, #4620693217682128896
	mov	x6, #4623507967449235456
	mov	x7, #4626604192193052672
	blr	x8
	ldr	x1, [sp, #384]                  // 8-byte Folded Reload
	str	w0, [sp, #6764]
	ldr	w2, [sp, #6764]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #6764]
	subs	w8, w8, #142
	b.eq	.LBB167_24
	b	.LBB167_23
.LBB167_23:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #6764]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #142
	bl	__mingw_printf
	b	.LBB167_24
.LBB167_24:
	mov	x9, sp
	str	x9, [sp, #368]                  // 8-byte Folded Spill
	mov	x8, #52776558133248
	movk	x8, #16548, lsl #48
	str	x8, [x9, #72]
	mov	x8, #268280837177344
	movk	x8, #16536, lsl #48
	str	x8, [x9, #64]
	mov	x8, #237494511599616
	movk	x8, #16526, lsl #48
	str	x8, [x9, #56]
	mov	x8, #17592186044416
	movk	x8, #16515, lsl #48
	str	x8, [x9, #48]
	mov	x8, #158329674399744
	movk	x8, #16503, lsl #48
	str	x8, [x9, #40]
	mov	x8, #35184372088832
	movk	x8, #16493, lsl #48
	str	x8, [x9, #32]
	mov	x8, #4639270566145032192
	str	x8, [x9, #24]
	mov	x8, #70368744177664
	movk	x8, #16470, lsl #48
	str	x8, [x9, #16]
	mov	x8, #140737488355328
	movk	x8, #16459, lsl #48
	str	x8, [x9, #8]
	mov	x8, #4629981891913580544
	str	x8, [x9]
	adrp	x0, .L.str.14
	add	x0, x0, :lo12:.L.str.14
	str	x0, [sp, #376]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_many_floats
	ldr	x8, [x8, :lo12:__imp_use_va_args_many_floats]
	mov	x1, #4607182418800017408
	mov	x2, #4611686018427387904
	mov	x3, #4613937818241073152
	mov	x4, #4617315517961601024
	mov	x5, #4620693217682128896
	mov	x6, #4623507967449235456
	mov	x7, #4626604192193052672
	blr	x8
	ldr	x1, [sp, #376]                  // 8-byte Folded Reload
	str	w0, [sp, #6760]
	ldr	w2, [sp, #6760]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #6760]
	mov	w9, #6763
	subs	w8, w8, w9
	b.eq	.LBB167_26
	b	.LBB167_25
.LBB167_25:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #6760]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #6763
	bl	__mingw_printf
	b	.LBB167_26
.LBB167_26:
	adrp	x8, a
	add	x8, x8, :lo12:a
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #6736]
	str	q2, [sp, #6720]
	str	q1, [sp, #6704]
	str	q0, [sp, #6688]
	adrp	x8, b
	add	x8, x8, :lo12:b
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #6672]
	str	q2, [sp, #6656]
	str	q1, [sp, #6640]
	str	q0, [sp, #6624]
	adrp	x0, .L.str.18
	add	x0, x0, :lo12:.L.str.18
	str	x0, [sp, #360]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_few_composites
	ldr	x8, [x8, :lo12:__imp_use_va_args_few_composites]
	add	x1, sp, #1, lsl #12             // =4096
	add	x1, x1, #2592
	add	x2, sp, #1, lsl #12             // =4096
	add	x2, x2, #2528
	blr	x8
	ldr	x1, [sp, #360]                  // 8-byte Folded Reload
	str	w0, [sp, #6756]
	ldr	w2, [sp, #6756]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #6756]
	subs	w8, w8, #3
	b.eq	.LBB167_28
	b	.LBB167_27
.LBB167_27:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #6756]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #3
	bl	__mingw_printf
	b	.LBB167_28
.LBB167_28:
	adrp	x8, a
	add	x8, x8, :lo12:a
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #6592]
	str	q2, [sp, #6576]
	str	q1, [sp, #6560]
	str	q0, [sp, #6544]
	adrp	x8, b
	add	x8, x8, :lo12:b
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #6528]
	str	q2, [sp, #6512]
	str	q1, [sp, #6496]
	str	q0, [sp, #6480]
	adrp	x8, c
	add	x8, x8, :lo12:c
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #6464]
	str	q2, [sp, #6448]
	str	q1, [sp, #6432]
	str	q0, [sp, #6416]
	adrp	x8, d
	add	x8, x8, :lo12:d
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #6400]
	str	q2, [sp, #6384]
	str	q1, [sp, #6368]
	str	q0, [sp, #6352]
	adrp	x8, e
	add	x8, x8, :lo12:e
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #6336]
	str	q2, [sp, #6320]
	str	q1, [sp, #6304]
	str	q0, [sp, #6288]
	adrp	x8, f
	add	x8, x8, :lo12:f
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #6272]
	str	q2, [sp, #6256]
	str	q1, [sp, #6240]
	str	q0, [sp, #6224]
	adrp	x8, g
	add	x8, x8, :lo12:g
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #6208]
	str	q2, [sp, #6192]
	str	q1, [sp, #6176]
	str	q0, [sp, #6160]
	adrp	x8, h
	add	x8, x8, :lo12:h
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #6144]
	str	q2, [sp, #6128]
	str	q1, [sp, #6112]
	str	q0, [sp, #6096]
	adrp	x8, i
	add	x8, x8, :lo12:i
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #6080]
	str	q2, [sp, #6064]
	str	q1, [sp, #6048]
	str	q0, [sp, #6032]
	mov	x9, sp
	add	x8, sp, #1, lsl #12             // =4096
	add	x8, x8, #1936
	str	x8, [x9, #8]
	add	x8, sp, #1, lsl #12             // =4096
	add	x8, x8, #2000
	str	x8, [x9]
	adrp	x0, .L.str.19
	add	x0, x0, :lo12:.L.str.19
	str	x0, [sp, #352]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_several_composites
	ldr	x8, [x8, :lo12:__imp_use_va_args_several_composites]
	add	x1, sp, #1, lsl #12             // =4096
	add	x1, x1, #2448
	add	x2, sp, #1, lsl #12             // =4096
	add	x2, x2, #2384
	add	x3, sp, #1, lsl #12             // =4096
	add	x3, x3, #2320
	add	x4, sp, #1, lsl #12             // =4096
	add	x4, x4, #2256
	add	x5, sp, #1, lsl #12             // =4096
	add	x5, x5, #2192
	add	x6, sp, #1, lsl #12             // =4096
	add	x6, x6, #2128
	add	x7, sp, #1, lsl #12             // =4096
	add	x7, x7, #2064
	blr	x8
	ldr	x1, [sp, #352]                  // 8-byte Folded Reload
	str	w0, [sp, #6620]
	ldr	w2, [sp, #6620]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #6620]
	subs	w8, w8, #142
	b.eq	.LBB167_30
	b	.LBB167_29
.LBB167_29:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #6620]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #142
	bl	__mingw_printf
	b	.LBB167_30
.LBB167_30:
	adrp	x8, a
	add	x8, x8, :lo12:a
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #6000]
	str	q2, [sp, #5984]
	str	q1, [sp, #5968]
	str	q0, [sp, #5952]
	adrp	x8, b
	add	x8, x8, :lo12:b
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #5936]
	str	q2, [sp, #5920]
	str	q1, [sp, #5904]
	str	q0, [sp, #5888]
	adrp	x8, c
	add	x8, x8, :lo12:c
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #5872]
	str	q2, [sp, #5856]
	str	q1, [sp, #5840]
	str	q0, [sp, #5824]
	adrp	x8, d
	add	x8, x8, :lo12:d
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #5808]
	str	q2, [sp, #5792]
	str	q1, [sp, #5776]
	str	q0, [sp, #5760]
	adrp	x8, e
	add	x8, x8, :lo12:e
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #5744]
	str	q2, [sp, #5728]
	str	q1, [sp, #5712]
	str	q0, [sp, #5696]
	adrp	x8, f
	add	x8, x8, :lo12:f
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #5680]
	str	q2, [sp, #5664]
	str	q1, [sp, #5648]
	str	q0, [sp, #5632]
	adrp	x8, g
	add	x8, x8, :lo12:g
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #5616]
	str	q2, [sp, #5600]
	str	q1, [sp, #5584]
	str	q0, [sp, #5568]
	adrp	x8, h
	add	x8, x8, :lo12:h
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #5552]
	str	q2, [sp, #5536]
	str	q1, [sp, #5520]
	str	q0, [sp, #5504]
	adrp	x8, i
	add	x8, x8, :lo12:i
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #5488]
	str	q2, [sp, #5472]
	str	q1, [sp, #5456]
	str	q0, [sp, #5440]
	adrp	x8, j
	add	x8, x8, :lo12:j
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #5424]
	str	q2, [sp, #5408]
	str	q1, [sp, #5392]
	str	q0, [sp, #5376]
	adrp	x8, k
	add	x8, x8, :lo12:k
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #5360]
	str	q2, [sp, #5344]
	str	q1, [sp, #5328]
	str	q0, [sp, #5312]
	adrp	x8, l
	add	x8, x8, :lo12:l
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #5296]
	str	q2, [sp, #5280]
	str	q1, [sp, #5264]
	str	q0, [sp, #5248]
	adrp	x8, m
	add	x8, x8, :lo12:m
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #5232]
	str	q2, [sp, #5216]
	str	q1, [sp, #5200]
	str	q0, [sp, #5184]
	adrp	x8, n
	add	x8, x8, :lo12:n
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #5168]
	str	q2, [sp, #5152]
	str	q1, [sp, #5136]
	str	q0, [sp, #5120]
	adrp	x8, o
	add	x8, x8, :lo12:o
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #5104]
	str	q2, [sp, #5088]
	str	q1, [sp, #5072]
	str	q0, [sp, #5056]
	adrp	x8, p
	add	x8, x8, :lo12:p
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #5040]
	str	q2, [sp, #5024]
	str	q1, [sp, #5008]
	str	q0, [sp, #4992]
	adrp	x8, q
	add	x8, x8, :lo12:q
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #4976]
	str	q2, [sp, #4960]
	str	q1, [sp, #4944]
	str	q0, [sp, #4928]
	mov	x9, sp
	str	x9, [sp, #336]                  // 8-byte Folded Spill
	add	x8, sp, #1, lsl #12             // =4096
	add	x8, x8, #832
	str	x8, [x9, #72]
	add	x8, sp, #1, lsl #12             // =4096
	add	x8, x8, #896
	str	x8, [x9, #64]
	add	x8, sp, #1, lsl #12             // =4096
	add	x8, x8, #960
	str	x8, [x9, #56]
	add	x8, sp, #1, lsl #12             // =4096
	add	x8, x8, #1024
	str	x8, [x9, #48]
	add	x8, sp, #1, lsl #12             // =4096
	add	x8, x8, #1088
	str	x8, [x9, #40]
	add	x8, sp, #1, lsl #12             // =4096
	add	x8, x8, #1152
	str	x8, [x9, #32]
	add	x8, sp, #1, lsl #12             // =4096
	add	x8, x8, #1216
	str	x8, [x9, #24]
	add	x8, sp, #1, lsl #12             // =4096
	add	x8, x8, #1280
	str	x8, [x9, #16]
	add	x8, sp, #1, lsl #12             // =4096
	add	x8, x8, #1344
	str	x8, [x9, #8]
	add	x8, sp, #1, lsl #12             // =4096
	add	x8, x8, #1408
	str	x8, [x9]
	adrp	x0, .L.str.20
	add	x0, x0, :lo12:.L.str.20
	str	x0, [sp, #344]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_many_composites
	ldr	x8, [x8, :lo12:__imp_use_va_args_many_composites]
	add	x1, sp, #1, lsl #12             // =4096
	add	x1, x1, #1856
	add	x2, sp, #1, lsl #12             // =4096
	add	x2, x2, #1792
	add	x3, sp, #1, lsl #12             // =4096
	add	x3, x3, #1728
	add	x4, sp, #1, lsl #12             // =4096
	add	x4, x4, #1664
	add	x5, sp, #1, lsl #12             // =4096
	add	x5, x5, #1600
	add	x6, sp, #1, lsl #12             // =4096
	add	x6, x6, #1536
	add	x7, sp, #1, lsl #12             // =4096
	add	x7, x7, #1472
	blr	x8
	ldr	x1, [sp, #344]                  // 8-byte Folded Reload
	str	w0, [sp, #6028]
	ldr	w2, [sp, #6028]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #6028]
	mov	w9, #6763
	subs	w8, w8, w9
	b.eq	.LBB167_32
	b	.LBB167_31
.LBB167_31:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #6028]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #6763
	bl	__mingw_printf
	b	.LBB167_32
.LBB167_32:
	adrp	x8, sv8_a
	add	x8, x8, :lo12:sv8_a
	ldr	x1, [x8]
	adrp	x8, sv8_b
	add	x8, x8, :lo12:sv8_b
	ldr	x2, [x8]
	adrp	x0, .L.str.21
	add	x0, x0, :lo12:.L.str.21
	str	x0, [sp, #328]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_few_short_vector_8_bytes
	ldr	x8, [x8, :lo12:__imp_use_va_args_few_short_vector_8_bytes]
	blr	x8
	ldr	x1, [sp, #328]                  // 8-byte Folded Reload
	str	w0, [sp, #4924]
	ldr	w2, [sp, #4924]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #4924]
	subs	w8, w8, #3
	b.eq	.LBB167_34
	b	.LBB167_33
.LBB167_33:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #4924]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #3
	bl	__mingw_printf
	b	.LBB167_34
.LBB167_34:
	adrp	x8, sv8_a
	add	x8, x8, :lo12:sv8_a
	ldr	x1, [x8]
	adrp	x8, sv8_b
	add	x8, x8, :lo12:sv8_b
	ldr	x2, [x8]
	adrp	x8, sv8_c
	add	x8, x8, :lo12:sv8_c
	ldr	x3, [x8]
	adrp	x8, sv8_d
	add	x8, x8, :lo12:sv8_d
	ldr	x4, [x8]
	adrp	x8, sv8_e
	add	x8, x8, :lo12:sv8_e
	ldr	x5, [x8]
	adrp	x8, sv8_f
	add	x8, x8, :lo12:sv8_f
	ldr	x6, [x8]
	adrp	x8, sv8_g
	add	x8, x8, :lo12:sv8_g
	ldr	x7, [x8]
	adrp	x8, sv8_h
	add	x8, x8, :lo12:sv8_h
	ldr	x8, [x8]
	adrp	x9, sv8_i
	add	x9, x9, :lo12:sv8_i
	ldr	x10, [x9]
	mov	x9, sp
	str	x10, [x9, #8]
	str	x8, [x9]
	adrp	x0, .L.str.22
	add	x0, x0, :lo12:.L.str.22
	str	x0, [sp, #320]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_several_short_vector_8_bytes
	ldr	x8, [x8, :lo12:__imp_use_va_args_several_short_vector_8_bytes]
	blr	x8
	ldr	x1, [sp, #320]                  // 8-byte Folded Reload
	str	w0, [sp, #4920]
	ldr	w2, [sp, #4920]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #4920]
	subs	w8, w8, #142
	b.eq	.LBB167_36
	b	.LBB167_35
.LBB167_35:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #4920]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #142
	bl	__mingw_printf
	b	.LBB167_36
.LBB167_36:
	adrp	x8, sv8_a
	add	x8, x8, :lo12:sv8_a
	ldr	x1, [x8]
	adrp	x8, sv8_b
	add	x8, x8, :lo12:sv8_b
	ldr	x2, [x8]
	adrp	x8, sv8_c
	add	x8, x8, :lo12:sv8_c
	ldr	x3, [x8]
	adrp	x8, sv8_d
	add	x8, x8, :lo12:sv8_d
	ldr	x4, [x8]
	adrp	x8, sv8_e
	add	x8, x8, :lo12:sv8_e
	ldr	x5, [x8]
	adrp	x8, sv8_f
	add	x8, x8, :lo12:sv8_f
	ldr	x6, [x8]
	adrp	x8, sv8_g
	add	x8, x8, :lo12:sv8_g
	ldr	x7, [x8]
	adrp	x8, sv8_h
	add	x8, x8, :lo12:sv8_h
	ldr	x8, [x8]
	adrp	x9, sv8_i
	add	x9, x9, :lo12:sv8_i
	ldr	x10, [x9]
	adrp	x9, sv8_j
	add	x9, x9, :lo12:sv8_j
	ldr	x11, [x9]
	adrp	x9, sv8_k
	add	x9, x9, :lo12:sv8_k
	ldr	x12, [x9]
	adrp	x9, sv8_l
	add	x9, x9, :lo12:sv8_l
	ldr	x13, [x9]
	adrp	x9, sv8_m
	add	x9, x9, :lo12:sv8_m
	ldr	x14, [x9]
	adrp	x9, sv8_n
	add	x9, x9, :lo12:sv8_n
	ldr	x15, [x9]
	adrp	x9, sv8_o
	add	x9, x9, :lo12:sv8_o
	ldr	x16, [x9]
	adrp	x9, sv8_p
	add	x9, x9, :lo12:sv8_p
	ldr	x17, [x9]
	adrp	x9, sv8_q
	add	x9, x9, :lo12:sv8_q
	ldr	x0, [x9]
	mov	x9, sp
	str	x9, [sp, #304]                  // 8-byte Folded Spill
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
	adrp	x0, .L.str.23
	add	x0, x0, :lo12:.L.str.23
	str	x0, [sp, #312]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_many_short_vector_8_bytes
	ldr	x8, [x8, :lo12:__imp_use_va_args_many_short_vector_8_bytes]
	blr	x8
	ldr	x1, [sp, #312]                  // 8-byte Folded Reload
	str	w0, [sp, #4916]
	ldr	w2, [sp, #4916]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #4916]
	mov	w9, #6763
	subs	w8, w8, w9
	b.eq	.LBB167_38
	b	.LBB167_37
.LBB167_37:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #4916]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #6763
	bl	__mingw_printf
	b	.LBB167_38
.LBB167_38:
	adrp	x9, nsv12_a
	add	x9, x9, :lo12:nsv12_a
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #4904]
	str	x8, [sp, #4896]
	ldr	x2, [sp, #4904]
	ldr	x1, [sp, #4896]
	adrp	x9, nsv12_b
	add	x9, x9, :lo12:nsv12_b
	ldr	x8, [x9]
	ldr	w9, [x9, #8]
	str	w9, [sp, #4888]
	str	x8, [sp, #4880]
	ldr	x4, [sp, #4888]
	ldr	x3, [sp, #4880]
	adrp	x0, .L.str.24
	add	x0, x0, :lo12:.L.str.24
	str	x0, [sp, #296]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_few_not_short_vector_12_bytes
	ldr	x8, [x8, :lo12:__imp_use_va_args_few_not_short_vector_12_bytes]
	blr	x8
	ldr	x1, [sp, #296]                  // 8-byte Folded Reload
	str	w0, [sp, #4912]
	ldr	w2, [sp, #4912]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #4912]
	subs	w8, w8, #3
	b.eq	.LBB167_40
	b	.LBB167_39
.LBB167_39:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #4912]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #3
	bl	__mingw_printf
	b	.LBB167_40
.LBB167_40:
	adrp	x8, sv16_a
	add	x8, x8, :lo12:sv16_a
	ldr	x2, [x8, #8]
	ldr	x1, [x8]
	adrp	x8, sv16_b
	add	x8, x8, :lo12:sv16_b
	ldr	x4, [x8, #8]
	ldr	x3, [x8]
	adrp	x0, .L.str.27
	add	x0, x0, :lo12:.L.str.27
	str	x0, [sp, #288]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_few_short_vector_16_bytes
	ldr	x8, [x8, :lo12:__imp_use_va_args_few_short_vector_16_bytes]
	blr	x8
	ldr	x1, [sp, #288]                  // 8-byte Folded Reload
	str	w0, [sp, #4876]
	ldr	w2, [sp, #4876]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #4876]
	subs	w8, w8, #3
	b.eq	.LBB167_42
	b	.LBB167_41
.LBB167_41:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #4876]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #3
	bl	__mingw_printf
	b	.LBB167_42
.LBB167_42:
	adrp	x8, hfa2f_a
	add	x8, x8, :lo12:hfa2f_a
	ldr	x1, [x8]
	adrp	x8, hfa2f_b
	add	x8, x8, :lo12:hfa2f_b
	ldr	x2, [x8]
	adrp	x0, .L.str.30
	add	x0, x0, :lo12:.L.str.30
	str	x0, [sp, #280]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_few_hfa_2_floats
	ldr	x8, [x8, :lo12:__imp_use_va_args_few_hfa_2_floats]
	blr	x8
	ldr	x1, [sp, #280]                  // 8-byte Folded Reload
	str	w0, [sp, #4872]
	ldr	w2, [sp, #4872]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #4872]
	subs	w8, w8, #3
	b.eq	.LBB167_44
	b	.LBB167_43
.LBB167_43:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #4872]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #3
	bl	__mingw_printf
	b	.LBB167_44
.LBB167_44:
	adrp	x8, hfa2f_a
	add	x8, x8, :lo12:hfa2f_a
	ldr	x1, [x8]
	adrp	x8, hfa2f_b
	add	x8, x8, :lo12:hfa2f_b
	ldr	x2, [x8]
	adrp	x8, hfa2f_c
	add	x8, x8, :lo12:hfa2f_c
	ldr	x3, [x8]
	adrp	x8, hfa2f_d
	add	x8, x8, :lo12:hfa2f_d
	ldr	x4, [x8]
	adrp	x8, hfa2f_e
	add	x8, x8, :lo12:hfa2f_e
	ldr	x5, [x8]
	adrp	x8, hfa2f_f
	add	x8, x8, :lo12:hfa2f_f
	ldr	x6, [x8]
	adrp	x8, hfa2f_g
	add	x8, x8, :lo12:hfa2f_g
	ldr	x7, [x8]
	adrp	x8, hfa2f_h
	add	x8, x8, :lo12:hfa2f_h
	ldr	x8, [x8]
	adrp	x9, hfa2f_i
	add	x9, x9, :lo12:hfa2f_i
	ldr	x10, [x9]
	mov	x9, sp
	str	x10, [x9, #8]
	str	x8, [x9]
	adrp	x0, .L.str.31
	add	x0, x0, :lo12:.L.str.31
	str	x0, [sp, #272]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_several_hfa_2_floats
	ldr	x8, [x8, :lo12:__imp_use_va_args_several_hfa_2_floats]
	blr	x8
	ldr	x1, [sp, #272]                  // 8-byte Folded Reload
	str	w0, [sp, #4868]
	ldr	w2, [sp, #4868]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #4868]
	subs	w8, w8, #142
	b.eq	.LBB167_46
	b	.LBB167_45
.LBB167_45:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #4868]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #142
	bl	__mingw_printf
	b	.LBB167_46
.LBB167_46:
	adrp	x8, hfa2f_a
	add	x8, x8, :lo12:hfa2f_a
	ldr	x1, [x8]
	adrp	x8, hfa2f_b
	add	x8, x8, :lo12:hfa2f_b
	ldr	x2, [x8]
	adrp	x8, hfa2f_c
	add	x8, x8, :lo12:hfa2f_c
	ldr	x3, [x8]
	adrp	x8, hfa2f_d
	add	x8, x8, :lo12:hfa2f_d
	ldr	x4, [x8]
	adrp	x8, hfa2f_e
	add	x8, x8, :lo12:hfa2f_e
	ldr	x5, [x8]
	adrp	x8, hfa2f_f
	add	x8, x8, :lo12:hfa2f_f
	ldr	x6, [x8]
	adrp	x8, hfa2f_g
	add	x8, x8, :lo12:hfa2f_g
	ldr	x7, [x8]
	adrp	x8, hfa2f_h
	add	x8, x8, :lo12:hfa2f_h
	ldr	x8, [x8]
	adrp	x9, hfa2f_i
	add	x9, x9, :lo12:hfa2f_i
	ldr	x10, [x9]
	adrp	x9, hfa2f_j
	add	x9, x9, :lo12:hfa2f_j
	ldr	x11, [x9]
	adrp	x9, hfa2f_k
	add	x9, x9, :lo12:hfa2f_k
	ldr	x12, [x9]
	adrp	x9, hfa2f_l
	add	x9, x9, :lo12:hfa2f_l
	ldr	x13, [x9]
	adrp	x9, hfa2f_m
	add	x9, x9, :lo12:hfa2f_m
	ldr	x14, [x9]
	adrp	x9, hfa2f_n
	add	x9, x9, :lo12:hfa2f_n
	ldr	x15, [x9]
	adrp	x9, hfa2f_o
	add	x9, x9, :lo12:hfa2f_o
	ldr	x16, [x9]
	adrp	x9, hfa2f_p
	add	x9, x9, :lo12:hfa2f_p
	ldr	x17, [x9]
	adrp	x9, hfa2f_q
	add	x9, x9, :lo12:hfa2f_q
	ldr	x0, [x9]
	mov	x9, sp
	str	x9, [sp, #256]                  // 8-byte Folded Spill
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
	adrp	x0, .L.str.32
	add	x0, x0, :lo12:.L.str.32
	str	x0, [sp, #264]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_many_hfa_2_floats
	ldr	x8, [x8, :lo12:__imp_use_va_args_many_hfa_2_floats]
	blr	x8
	ldr	x1, [sp, #264]                  // 8-byte Folded Reload
	str	w0, [sp, #4864]
	ldr	w2, [sp, #4864]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #4864]
	mov	w9, #6763
	subs	w8, w8, w9
	b.eq	.LBB167_48
	b	.LBB167_47
.LBB167_47:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #4864]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #6763
	bl	__mingw_printf
	b	.LBB167_48
.LBB167_48:
	adrp	x8, hfa4f_a
	add	x8, x8, :lo12:hfa4f_a
	ldr	x2, [x8, #8]
	ldr	x1, [x8]
	adrp	x8, hfa4f_b
	add	x8, x8, :lo12:hfa4f_b
	ldr	x4, [x8, #8]
	ldr	x3, [x8]
	adrp	x0, .L.str.33
	add	x0, x0, :lo12:.L.str.33
	str	x0, [sp, #248]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_few_hfa_4_floats
	ldr	x8, [x8, :lo12:__imp_use_va_args_few_hfa_4_floats]
	blr	x8
	ldr	x1, [sp, #248]                  // 8-byte Folded Reload
	str	w0, [sp, #4860]
	ldr	w2, [sp, #4860]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #4860]
	subs	w8, w8, #3
	b.eq	.LBB167_50
	b	.LBB167_49
.LBB167_49:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #4860]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #3
	bl	__mingw_printf
	b	.LBB167_50
.LBB167_50:
	adrp	x8, hfa2d_a
	add	x8, x8, :lo12:hfa2d_a
	ldr	x2, [x8, #8]
	ldr	x1, [x8]
	adrp	x8, hfa2d_b
	add	x8, x8, :lo12:hfa2d_b
	ldr	x4, [x8, #8]
	ldr	x3, [x8]
	adrp	x0, .L.str.36
	add	x0, x0, :lo12:.L.str.36
	str	x0, [sp, #240]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_few_hfa_2_doubles
	ldr	x8, [x8, :lo12:__imp_use_va_args_few_hfa_2_doubles]
	blr	x8
	ldr	x1, [sp, #240]                  // 8-byte Folded Reload
	str	w0, [sp, #4856]
	ldr	w2, [sp, #4856]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #4856]
	subs	w8, w8, #3
	b.eq	.LBB167_52
	b	.LBB167_51
.LBB167_51:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #4856]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #3
	bl	__mingw_printf
	b	.LBB167_52
.LBB167_52:
	adrp	x8, hfa4d_a
	add	x8, x8, :lo12:hfa4d_a
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4832]
	str	q0, [sp, #4816]
	adrp	x8, hfa4d_b
	add	x8, x8, :lo12:hfa4d_b
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4800]
	str	q0, [sp, #4784]
	adrp	x0, .L.str.39
	add	x0, x0, :lo12:.L.str.39
	str	x0, [sp, #232]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_few_hfa_4_doubles
	ldr	x8, [x8, :lo12:__imp_use_va_args_few_hfa_4_doubles]
	add	x1, sp, #1, lsl #12             // =4096
	add	x1, x1, #720
	add	x2, sp, #1, lsl #12             // =4096
	add	x2, x2, #688
	blr	x8
	ldr	x1, [sp, #232]                  // 8-byte Folded Reload
	str	w0, [sp, #4852]
	ldr	w2, [sp, #4852]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #4852]
	subs	w8, w8, #3
	b.eq	.LBB167_54
	b	.LBB167_53
.LBB167_53:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #4852]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #3
	bl	__mingw_printf
	b	.LBB167_54
.LBB167_54:
	adrp	x8, hva2sv8_a
	add	x8, x8, :lo12:hva2sv8_a
	ldr	x2, [x8, #8]
	ldr	x1, [x8]
	adrp	x8, hva2sv8_b
	add	x8, x8, :lo12:hva2sv8_b
	ldr	x4, [x8, #8]
	ldr	x3, [x8]
	adrp	x0, .L.str.42
	add	x0, x0, :lo12:.L.str.42
	str	x0, [sp, #224]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_few_hva_2_short_vector_8_bytes
	ldr	x8, [x8, :lo12:__imp_use_va_args_few_hva_2_short_vector_8_bytes]
	blr	x8
	ldr	x1, [sp, #224]                  // 8-byte Folded Reload
	str	w0, [sp, #4780]
	ldr	w2, [sp, #4780]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #4780]
	subs	w8, w8, #3
	b.eq	.LBB167_56
	b	.LBB167_55
.LBB167_55:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #4780]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #3
	bl	__mingw_printf
	b	.LBB167_56
.LBB167_56:
	adrp	x8, hva4sv8_a
	add	x8, x8, :lo12:hva4sv8_a
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4752]
	str	q0, [sp, #4736]
	adrp	x8, hva4sv8_b
	add	x8, x8, :lo12:hva4sv8_b
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4720]
	str	q0, [sp, #4704]
	adrp	x0, .L.str.45
	add	x0, x0, :lo12:.L.str.45
	str	x0, [sp, #216]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_few_hva_4_short_vector_8_bytes
	ldr	x8, [x8, :lo12:__imp_use_va_args_few_hva_4_short_vector_8_bytes]
	add	x1, sp, #1, lsl #12             // =4096
	add	x1, x1, #640
	add	x2, sp, #1, lsl #12             // =4096
	add	x2, x2, #608
	blr	x8
	ldr	x1, [sp, #216]                  // 8-byte Folded Reload
	str	w0, [sp, #4776]
	ldr	w2, [sp, #4776]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #4776]
	subs	w8, w8, #3
	b.eq	.LBB167_58
	b	.LBB167_57
.LBB167_57:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #4776]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #3
	bl	__mingw_printf
	b	.LBB167_58
.LBB167_58:
	adrp	x8, hva4sv8_a
	add	x8, x8, :lo12:hva4sv8_a
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4672]
	str	q0, [sp, #4656]
	adrp	x8, hva4sv8_b
	add	x8, x8, :lo12:hva4sv8_b
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4640]
	str	q0, [sp, #4624]
	adrp	x8, hva4sv8_c
	add	x8, x8, :lo12:hva4sv8_c
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4608]
	str	q0, [sp, #4592]
	adrp	x8, hva4sv8_d
	add	x8, x8, :lo12:hva4sv8_d
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4576]
	str	q0, [sp, #4560]
	adrp	x8, hva4sv8_e
	add	x8, x8, :lo12:hva4sv8_e
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4544]
	str	q0, [sp, #4528]
	adrp	x8, hva4sv8_f
	add	x8, x8, :lo12:hva4sv8_f
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4512]
	str	q0, [sp, #4496]
	adrp	x8, hva4sv8_g
	add	x8, x8, :lo12:hva4sv8_g
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4480]
	str	q0, [sp, #4464]
	adrp	x8, hva4sv8_h
	add	x8, x8, :lo12:hva4sv8_h
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4448]
	str	q0, [sp, #4432]
	adrp	x8, hva4sv8_i
	add	x8, x8, :lo12:hva4sv8_i
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4416]
	str	q0, [sp, #4400]
	mov	x9, sp
	add	x8, sp, #1, lsl #12             // =4096
	add	x8, x8, #304
	str	x8, [x9, #8]
	add	x8, sp, #1, lsl #12             // =4096
	add	x8, x8, #336
	str	x8, [x9]
	adrp	x0, .L.str.46
	add	x0, x0, :lo12:.L.str.46
	str	x0, [sp, #208]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_several_hva_4_short_vector_8_bytes
	ldr	x8, [x8, :lo12:__imp_use_va_args_several_hva_4_short_vector_8_bytes]
	add	x1, sp, #1, lsl #12             // =4096
	add	x1, x1, #560
	add	x2, sp, #1, lsl #12             // =4096
	add	x2, x2, #528
	add	x3, sp, #1, lsl #12             // =4096
	add	x3, x3, #496
	add	x4, sp, #1, lsl #12             // =4096
	add	x4, x4, #464
	add	x5, sp, #1, lsl #12             // =4096
	add	x5, x5, #432
	add	x6, sp, #1, lsl #12             // =4096
	add	x6, x6, #400
	add	x7, sp, #1, lsl #12             // =4096
	add	x7, x7, #368
	blr	x8
	ldr	x1, [sp, #208]                  // 8-byte Folded Reload
	str	w0, [sp, #4700]
	ldr	w2, [sp, #4700]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #4700]
	subs	w8, w8, #142
	b.eq	.LBB167_60
	b	.LBB167_59
.LBB167_59:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #4700]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #142
	bl	__mingw_printf
	b	.LBB167_60
.LBB167_60:
	adrp	x8, hva4sv8_a
	add	x8, x8, :lo12:hva4sv8_a
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4368]
	str	q0, [sp, #4352]
	adrp	x8, hva4sv8_b
	add	x8, x8, :lo12:hva4sv8_b
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4336]
	str	q0, [sp, #4320]
	adrp	x8, hva4sv8_c
	add	x8, x8, :lo12:hva4sv8_c
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4304]
	str	q0, [sp, #4288]
	adrp	x8, hva4sv8_d
	add	x8, x8, :lo12:hva4sv8_d
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4272]
	str	q0, [sp, #4256]
	adrp	x8, hva4sv8_e
	add	x8, x8, :lo12:hva4sv8_e
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4240]
	str	q0, [sp, #4224]
	adrp	x8, hva4sv8_f
	add	x8, x8, :lo12:hva4sv8_f
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4208]
	str	q0, [sp, #4192]
	adrp	x8, hva4sv8_g
	add	x8, x8, :lo12:hva4sv8_g
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4176]
	str	q0, [sp, #4160]
	adrp	x8, hva4sv8_h
	add	x8, x8, :lo12:hva4sv8_h
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4144]
	str	q0, [sp, #4128]
	adrp	x8, hva4sv8_i
	add	x8, x8, :lo12:hva4sv8_i
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4112]
	str	q0, [sp, #4096]
	adrp	x8, hva4sv8_j
	add	x8, x8, :lo12:hva4sv8_j
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4080]
	str	q0, [sp, #4064]
	adrp	x8, hva4sv8_k
	add	x8, x8, :lo12:hva4sv8_k
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4048]
	str	q0, [sp, #4032]
	adrp	x8, hva4sv8_l
	add	x8, x8, :lo12:hva4sv8_l
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #4016]
	str	q0, [sp, #4000]
	adrp	x8, hva4sv8_m
	add	x8, x8, :lo12:hva4sv8_m
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3984]
	str	q0, [sp, #3968]
	adrp	x8, hva4sv8_n
	add	x8, x8, :lo12:hva4sv8_n
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3952]
	str	q0, [sp, #3936]
	adrp	x8, hva4sv8_o
	add	x8, x8, :lo12:hva4sv8_o
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3920]
	str	q0, [sp, #3904]
	adrp	x8, hva4sv8_p
	add	x8, x8, :lo12:hva4sv8_p
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3888]
	str	q0, [sp, #3872]
	adrp	x8, hva4sv8_q
	add	x8, x8, :lo12:hva4sv8_q
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3856]
	str	q0, [sp, #3840]
	mov	x9, sp
	str	x9, [sp, #192]                  // 8-byte Folded Spill
	add	x8, sp, #3840
	str	x8, [x9, #72]
	add	x8, sp, #3872
	str	x8, [x9, #64]
	add	x8, sp, #3904
	str	x8, [x9, #56]
	add	x8, sp, #3936
	str	x8, [x9, #48]
	add	x8, sp, #3968
	str	x8, [x9, #40]
	add	x8, sp, #4000
	str	x8, [x9, #32]
	add	x8, sp, #4032
	str	x8, [x9, #24]
	add	x8, sp, #4064
	str	x8, [x9, #16]
	add	x8, sp, #1, lsl #12             // =4096
	str	x8, [x9, #8]
	add	x8, sp, #1, lsl #12             // =4096
	add	x8, x8, #32
	str	x8, [x9]
	adrp	x0, .L.str.47
	add	x0, x0, :lo12:.L.str.47
	str	x0, [sp, #200]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_many_hva_4_short_vector_8_bytes
	ldr	x8, [x8, :lo12:__imp_use_va_args_many_hva_4_short_vector_8_bytes]
	add	x1, sp, #1, lsl #12             // =4096
	add	x1, x1, #256
	add	x2, sp, #1, lsl #12             // =4096
	add	x2, x2, #224
	add	x3, sp, #1, lsl #12             // =4096
	add	x3, x3, #192
	add	x4, sp, #1, lsl #12             // =4096
	add	x4, x4, #160
	add	x5, sp, #1, lsl #12             // =4096
	add	x5, x5, #128
	add	x6, sp, #1, lsl #12             // =4096
	add	x6, x6, #96
	add	x7, sp, #1, lsl #12             // =4096
	add	x7, x7, #64
	blr	x8
	ldr	x1, [sp, #200]                  // 8-byte Folded Reload
	str	w0, [sp, #4396]
	ldr	w2, [sp, #4396]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #4396]
	mov	w9, #6763
	subs	w8, w8, w9
	b.eq	.LBB167_62
	b	.LBB167_61
.LBB167_61:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #4396]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #6763
	bl	__mingw_printf
	b	.LBB167_62
.LBB167_62:
	adrp	x8, hva2sv16_a
	add	x8, x8, :lo12:hva2sv16_a
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3808]
	str	q0, [sp, #3792]
	adrp	x8, hva2sv16_b
	add	x8, x8, :lo12:hva2sv16_b
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3776]
	str	q0, [sp, #3760]
	adrp	x0, .L.str.48
	add	x0, x0, :lo12:.L.str.48
	str	x0, [sp, #184]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_few_hva_2_short_vector_16_bytes
	ldr	x8, [x8, :lo12:__imp_use_va_args_few_hva_2_short_vector_16_bytes]
	add	x1, sp, #3792
	add	x2, sp, #3760
	blr	x8
	ldr	x1, [sp, #184]                  // 8-byte Folded Reload
	str	w0, [sp, #3836]
	ldr	w2, [sp, #3836]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #3836]
	subs	w8, w8, #3
	b.eq	.LBB167_64
	b	.LBB167_63
.LBB167_63:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #3836]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #3
	bl	__mingw_printf
	b	.LBB167_64
.LBB167_64:
	adrp	x8, hva2sv16_a
	add	x8, x8, :lo12:hva2sv16_a
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3728]
	str	q0, [sp, #3712]
	adrp	x8, hva2sv16_b
	add	x8, x8, :lo12:hva2sv16_b
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3696]
	str	q0, [sp, #3680]
	adrp	x8, hva2sv16_c
	add	x8, x8, :lo12:hva2sv16_c
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3664]
	str	q0, [sp, #3648]
	adrp	x8, hva2sv16_d
	add	x8, x8, :lo12:hva2sv16_d
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3632]
	str	q0, [sp, #3616]
	adrp	x8, hva2sv16_e
	add	x8, x8, :lo12:hva2sv16_e
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3600]
	str	q0, [sp, #3584]
	adrp	x8, hva2sv16_f
	add	x8, x8, :lo12:hva2sv16_f
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3568]
	str	q0, [sp, #3552]
	adrp	x8, hva2sv16_g
	add	x8, x8, :lo12:hva2sv16_g
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3536]
	str	q0, [sp, #3520]
	adrp	x8, hva2sv16_h
	add	x8, x8, :lo12:hva2sv16_h
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3504]
	str	q0, [sp, #3488]
	adrp	x8, hva2sv16_i
	add	x8, x8, :lo12:hva2sv16_i
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3472]
	str	q0, [sp, #3456]
	mov	x9, sp
	add	x8, sp, #3456
	str	x8, [x9, #8]
	add	x8, sp, #3488
	str	x8, [x9]
	adrp	x0, .L.str.49
	add	x0, x0, :lo12:.L.str.49
	str	x0, [sp, #176]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_several_hva_2_short_vector_16_bytes
	ldr	x8, [x8, :lo12:__imp_use_va_args_several_hva_2_short_vector_16_bytes]
	add	x1, sp, #3712
	add	x2, sp, #3680
	add	x3, sp, #3648
	add	x4, sp, #3616
	add	x5, sp, #3584
	add	x6, sp, #3552
	add	x7, sp, #3520
	blr	x8
	ldr	x1, [sp, #176]                  // 8-byte Folded Reload
	str	w0, [sp, #3756]
	ldr	w2, [sp, #3756]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #3756]
	subs	w8, w8, #142
	b.eq	.LBB167_66
	b	.LBB167_65
.LBB167_65:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #3756]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #142
	bl	__mingw_printf
	b	.LBB167_66
.LBB167_66:
	adrp	x8, hva2sv16_a
	add	x8, x8, :lo12:hva2sv16_a
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3424]
	str	q0, [sp, #3408]
	adrp	x8, hva2sv16_b
	add	x8, x8, :lo12:hva2sv16_b
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3392]
	str	q0, [sp, #3376]
	adrp	x8, hva2sv16_c
	add	x8, x8, :lo12:hva2sv16_c
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3360]
	str	q0, [sp, #3344]
	adrp	x8, hva2sv16_d
	add	x8, x8, :lo12:hva2sv16_d
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3328]
	str	q0, [sp, #3312]
	adrp	x8, hva2sv16_e
	add	x8, x8, :lo12:hva2sv16_e
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3296]
	str	q0, [sp, #3280]
	adrp	x8, hva2sv16_f
	add	x8, x8, :lo12:hva2sv16_f
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3264]
	str	q0, [sp, #3248]
	adrp	x8, hva2sv16_g
	add	x8, x8, :lo12:hva2sv16_g
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3232]
	str	q0, [sp, #3216]
	adrp	x8, hva2sv16_h
	add	x8, x8, :lo12:hva2sv16_h
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3200]
	str	q0, [sp, #3184]
	adrp	x8, hva2sv16_i
	add	x8, x8, :lo12:hva2sv16_i
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3168]
	str	q0, [sp, #3152]
	adrp	x8, hva2sv16_j
	add	x8, x8, :lo12:hva2sv16_j
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3136]
	str	q0, [sp, #3120]
	adrp	x8, hva2sv16_k
	add	x8, x8, :lo12:hva2sv16_k
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3104]
	str	q0, [sp, #3088]
	adrp	x8, hva2sv16_l
	add	x8, x8, :lo12:hva2sv16_l
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3072]
	str	q0, [sp, #3056]
	adrp	x8, hva2sv16_m
	add	x8, x8, :lo12:hva2sv16_m
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3040]
	str	q0, [sp, #3024]
	adrp	x8, hva2sv16_n
	add	x8, x8, :lo12:hva2sv16_n
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #3008]
	str	q0, [sp, #2992]
	adrp	x8, hva2sv16_o
	add	x8, x8, :lo12:hva2sv16_o
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #2976]
	str	q0, [sp, #2960]
	adrp	x8, hva2sv16_p
	add	x8, x8, :lo12:hva2sv16_p
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #2944]
	str	q0, [sp, #2928]
	adrp	x8, hva2sv16_q
	add	x8, x8, :lo12:hva2sv16_q
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	str	q1, [sp, #2912]
	str	q0, [sp, #2896]
	mov	x9, sp
	str	x9, [sp, #160]                  // 8-byte Folded Spill
	add	x8, sp, #2896
	str	x8, [x9, #72]
	add	x8, sp, #2928
	str	x8, [x9, #64]
	add	x8, sp, #2960
	str	x8, [x9, #56]
	add	x8, sp, #2992
	str	x8, [x9, #48]
	add	x8, sp, #3024
	str	x8, [x9, #40]
	add	x8, sp, #3056
	str	x8, [x9, #32]
	add	x8, sp, #3088
	str	x8, [x9, #24]
	add	x8, sp, #3120
	str	x8, [x9, #16]
	add	x8, sp, #3152
	str	x8, [x9, #8]
	add	x8, sp, #3184
	str	x8, [x9]
	adrp	x0, .L.str.50
	add	x0, x0, :lo12:.L.str.50
	str	x0, [sp, #168]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_many_hva_2_short_vector_16_bytes
	ldr	x8, [x8, :lo12:__imp_use_va_args_many_hva_2_short_vector_16_bytes]
	add	x1, sp, #3408
	add	x2, sp, #3376
	add	x3, sp, #3344
	add	x4, sp, #3312
	add	x5, sp, #3280
	add	x6, sp, #3248
	add	x7, sp, #3216
	blr	x8
	ldr	x1, [sp, #168]                  // 8-byte Folded Reload
	str	w0, [sp, #3452]
	ldr	w2, [sp, #3452]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #3452]
	mov	w9, #6763
	subs	w8, w8, w9
	b.eq	.LBB167_68
	b	.LBB167_67
.LBB167_67:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #3452]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #6763
	bl	__mingw_printf
	b	.LBB167_68
.LBB167_68:
	adrp	x8, hva4sv16_a
	add	x8, x8, :lo12:hva4sv16_a
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #2864]
	str	q2, [sp, #2848]
	str	q1, [sp, #2832]
	str	q0, [sp, #2816]
	adrp	x8, hva4sv16_b
	add	x8, x8, :lo12:hva4sv16_b
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #2800]
	str	q2, [sp, #2784]
	str	q1, [sp, #2768]
	str	q0, [sp, #2752]
	adrp	x0, .L.str.51
	add	x0, x0, :lo12:.L.str.51
	str	x0, [sp, #152]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_few_hva_4_short_vector_16_bytes
	ldr	x8, [x8, :lo12:__imp_use_va_args_few_hva_4_short_vector_16_bytes]
	add	x1, sp, #2816
	add	x2, sp, #2752
	blr	x8
	ldr	x1, [sp, #152]                  // 8-byte Folded Reload
	str	w0, [sp, #2892]
	ldr	w2, [sp, #2892]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #2892]
	subs	w8, w8, #3
	b.eq	.LBB167_70
	b	.LBB167_69
.LBB167_69:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #2892]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #3
	bl	__mingw_printf
	b	.LBB167_70
.LBB167_70:
	adrp	x8, hva4sv16_a
	add	x8, x8, :lo12:hva4sv16_a
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #2720]
	str	q2, [sp, #2704]
	str	q1, [sp, #2688]
	str	q0, [sp, #2672]
	adrp	x8, hva4sv16_b
	add	x8, x8, :lo12:hva4sv16_b
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #2656]
	str	q2, [sp, #2640]
	str	q1, [sp, #2624]
	str	q0, [sp, #2608]
	adrp	x8, hva4sv16_c
	add	x8, x8, :lo12:hva4sv16_c
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #2592]
	str	q2, [sp, #2576]
	str	q1, [sp, #2560]
	str	q0, [sp, #2544]
	adrp	x8, hva4sv16_d
	add	x8, x8, :lo12:hva4sv16_d
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #2528]
	str	q2, [sp, #2512]
	str	q1, [sp, #2496]
	str	q0, [sp, #2480]
	adrp	x8, hva4sv16_e
	add	x8, x8, :lo12:hva4sv16_e
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #2464]
	str	q2, [sp, #2448]
	str	q1, [sp, #2432]
	str	q0, [sp, #2416]
	adrp	x8, hva4sv16_f
	add	x8, x8, :lo12:hva4sv16_f
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #2400]
	str	q2, [sp, #2384]
	str	q1, [sp, #2368]
	str	q0, [sp, #2352]
	adrp	x8, hva4sv16_g
	add	x8, x8, :lo12:hva4sv16_g
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #2336]
	str	q2, [sp, #2320]
	str	q1, [sp, #2304]
	str	q0, [sp, #2288]
	adrp	x8, hva4sv16_h
	add	x8, x8, :lo12:hva4sv16_h
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #2272]
	str	q2, [sp, #2256]
	str	q1, [sp, #2240]
	str	q0, [sp, #2224]
	adrp	x8, hva4sv16_i
	add	x8, x8, :lo12:hva4sv16_i
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #2208]
	str	q2, [sp, #2192]
	str	q1, [sp, #2176]
	str	q0, [sp, #2160]
	mov	x9, sp
	add	x8, sp, #2160
	str	x8, [x9, #8]
	add	x8, sp, #2224
	str	x8, [x9]
	adrp	x0, .L.str.52
	add	x0, x0, :lo12:.L.str.52
	str	x0, [sp, #144]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_several_hva_4_short_vector_16_bytes
	ldr	x8, [x8, :lo12:__imp_use_va_args_several_hva_4_short_vector_16_bytes]
	add	x1, sp, #2672
	add	x2, sp, #2608
	add	x3, sp, #2544
	add	x4, sp, #2480
	add	x5, sp, #2416
	add	x6, sp, #2352
	add	x7, sp, #2288
	blr	x8
	ldr	x1, [sp, #144]                  // 8-byte Folded Reload
	str	w0, [sp, #2748]
	ldr	w2, [sp, #2748]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #2748]
	subs	w8, w8, #142
	b.eq	.LBB167_72
	b	.LBB167_71
.LBB167_71:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #2748]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #142
	bl	__mingw_printf
	b	.LBB167_72
.LBB167_72:
	adrp	x8, hva4sv16_a
	add	x8, x8, :lo12:hva4sv16_a
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #2128]
	str	q2, [sp, #2112]
	str	q1, [sp, #2096]
	str	q0, [sp, #2080]
	adrp	x8, hva4sv16_b
	add	x8, x8, :lo12:hva4sv16_b
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #2064]
	str	q2, [sp, #2048]
	str	q1, [sp, #2032]
	str	q0, [sp, #2016]
	adrp	x8, hva4sv16_c
	add	x8, x8, :lo12:hva4sv16_c
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #2000]
	str	q2, [sp, #1984]
	str	q1, [sp, #1968]
	str	q0, [sp, #1952]
	adrp	x8, hva4sv16_d
	add	x8, x8, :lo12:hva4sv16_d
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1936]
	str	q2, [sp, #1920]
	str	q1, [sp, #1904]
	str	q0, [sp, #1888]
	adrp	x8, hva4sv16_e
	add	x8, x8, :lo12:hva4sv16_e
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1872]
	str	q2, [sp, #1856]
	str	q1, [sp, #1840]
	str	q0, [sp, #1824]
	adrp	x8, hva4sv16_f
	add	x8, x8, :lo12:hva4sv16_f
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1808]
	str	q2, [sp, #1792]
	str	q1, [sp, #1776]
	str	q0, [sp, #1760]
	adrp	x8, hva4sv16_g
	add	x8, x8, :lo12:hva4sv16_g
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1744]
	str	q2, [sp, #1728]
	str	q1, [sp, #1712]
	str	q0, [sp, #1696]
	adrp	x8, hva4sv16_h
	add	x8, x8, :lo12:hva4sv16_h
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1680]
	str	q2, [sp, #1664]
	str	q1, [sp, #1648]
	str	q0, [sp, #1632]
	adrp	x8, hva4sv16_i
	add	x8, x8, :lo12:hva4sv16_i
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1616]
	str	q2, [sp, #1600]
	str	q1, [sp, #1584]
	str	q0, [sp, #1568]
	adrp	x8, hva4sv16_j
	add	x8, x8, :lo12:hva4sv16_j
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1552]
	str	q2, [sp, #1536]
	str	q1, [sp, #1520]
	str	q0, [sp, #1504]
	adrp	x8, hva4sv16_k
	add	x8, x8, :lo12:hva4sv16_k
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1488]
	str	q2, [sp, #1472]
	str	q1, [sp, #1456]
	str	q0, [sp, #1440]
	adrp	x8, hva4sv16_l
	add	x8, x8, :lo12:hva4sv16_l
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1424]
	str	q2, [sp, #1408]
	str	q1, [sp, #1392]
	str	q0, [sp, #1376]
	adrp	x8, hva4sv16_m
	add	x8, x8, :lo12:hva4sv16_m
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1360]
	str	q2, [sp, #1344]
	str	q1, [sp, #1328]
	str	q0, [sp, #1312]
	adrp	x8, hva4sv16_n
	add	x8, x8, :lo12:hva4sv16_n
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1296]
	str	q2, [sp, #1280]
	str	q1, [sp, #1264]
	str	q0, [sp, #1248]
	adrp	x8, hva4sv16_o
	add	x8, x8, :lo12:hva4sv16_o
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1232]
	str	q2, [sp, #1216]
	str	q1, [sp, #1200]
	str	q0, [sp, #1184]
	adrp	x8, hva4sv16_p
	add	x8, x8, :lo12:hva4sv16_p
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1168]
	str	q2, [sp, #1152]
	str	q1, [sp, #1136]
	str	q0, [sp, #1120]
	adrp	x8, hva4sv16_q
	add	x8, x8, :lo12:hva4sv16_q
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1104]
	str	q2, [sp, #1088]
	str	q1, [sp, #1072]
	str	q0, [sp, #1056]
	mov	x9, sp
	str	x9, [sp, #128]                  // 8-byte Folded Spill
	add	x8, sp, #1056
	str	x8, [x9, #72]
	add	x8, sp, #1120
	str	x8, [x9, #64]
	add	x8, sp, #1184
	str	x8, [x9, #56]
	add	x8, sp, #1248
	str	x8, [x9, #48]
	add	x8, sp, #1312
	str	x8, [x9, #40]
	add	x8, sp, #1376
	str	x8, [x9, #32]
	add	x8, sp, #1440
	str	x8, [x9, #24]
	add	x8, sp, #1504
	str	x8, [x9, #16]
	add	x8, sp, #1568
	str	x8, [x9, #8]
	add	x8, sp, #1632
	str	x8, [x9]
	adrp	x0, .L.str.53
	add	x0, x0, :lo12:.L.str.53
	str	x0, [sp, #136]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_many_hva_4_short_vector_16_bytes
	ldr	x8, [x8, :lo12:__imp_use_va_args_many_hva_4_short_vector_16_bytes]
	add	x1, sp, #2080
	add	x2, sp, #2016
	add	x3, sp, #1952
	add	x4, sp, #1888
	add	x5, sp, #1824
	add	x6, sp, #1760
	add	x7, sp, #1696
	blr	x8
	ldr	x1, [sp, #136]                  // 8-byte Folded Reload
	str	w0, [sp, #2156]
	ldr	w2, [sp, #2156]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #2156]
	mov	w9, #6763
	subs	w8, w8, w9
	b.eq	.LBB167_74
	b	.LBB167_73
.LBB167_73:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #2156]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #6763
	bl	__mingw_printf
	b	.LBB167_74
.LBB167_74:
	adrp	x8, c
	add	x8, x8, :lo12:c
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #1024]
	str	q2, [sp, #1008]
	str	q1, [sp, #992]
	str	q0, [sp, #976]
	adrp	x8, f
	add	x8, x8, :lo12:f
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #960]
	str	q2, [sp, #944]
	str	q1, [sp, #928]
	str	q0, [sp, #912]
	adrp	x8, i
	add	x8, x8, :lo12:i
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #896]
	str	q2, [sp, #880]
	str	q1, [sp, #864]
	str	q0, [sp, #848]
	adrp	x8, l
	add	x8, x8, :lo12:l
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #832]
	str	q2, [sp, #816]
	str	q1, [sp, #800]
	str	q0, [sp, #784]
	adrp	x8, o
	add	x8, x8, :lo12:o
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #768]
	str	q2, [sp, #752]
	str	q1, [sp, #736]
	str	q0, [sp, #720]
	mov	x9, sp
	str	x9, [sp, #112]                  // 8-byte Folded Spill
	mov	w8, #2584
	str	w8, [x9, #72]
	mov	w8, #1597
	str	w8, [x9, #64]
	add	x8, sp, #720
	str	x8, [x9, #56]
	mov	w8, #610
	str	w8, [x9, #48]
	mov	w8, #377
	str	w8, [x9, #40]
	add	x8, sp, #784
	str	x8, [x9, #32]
	mov	w8, #144
	str	w8, [x9, #24]
	mov	w8, #89
	str	w8, [x9, #16]
	add	x8, sp, #848
	str	x8, [x9, #8]
	mov	w8, #34
	str	w8, [x9]
	adrp	x0, .L.str.54
	add	x0, x0, :lo12:.L.str.54
	str	x0, [sp, #120]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_ints_and_composites
	ldr	x8, [x8, :lo12:__imp_use_va_args_ints_and_composites]
	mov	w1, #1
	mov	w2, #2
	add	x3, sp, #976
	mov	w4, #5
	mov	w5, #8
	add	x6, sp, #912
	mov	w7, #21
	blr	x8
	ldr	x1, [sp, #120]                  // 8-byte Folded Reload
	str	w0, [sp, #1052]
	ldr	w2, [sp, #1052]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #1052]
	mov	w9, #6763
	subs	w8, w8, w9
	b.eq	.LBB167_76
	b	.LBB167_75
.LBB167_75:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #1052]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #6763
	bl	__mingw_printf
	b	.LBB167_76
.LBB167_76:
	mov	x9, sp
	str	x9, [sp, #96]                   // 8-byte Folded Spill
	mov	w8, #2584
	str	w8, [x9, #72]
	mov	x8, #268280837177344
	movk	x8, #16536, lsl #48
	str	x8, [x9, #64]
	mov	x8, #237494511599616
	movk	x8, #16526, lsl #48
	str	x8, [x9, #56]
	mov	w8, #610
	str	w8, [x9, #48]
	mov	w8, #377
	str	w8, [x9, #40]
	mov	x8, #35184372088832
	movk	x8, #16493, lsl #48
	str	x8, [x9, #32]
	mov	x8, #4639270566145032192
	str	x8, [x9, #24]
	mov	w8, #89
	str	w8, [x9, #16]
	mov	w8, #55
	str	w8, [x9, #8]
	mov	x8, #4629981891913580544
	str	x8, [x9]
	adrp	x0, .L.str.55
	add	x0, x0, :lo12:.L.str.55
	str	x0, [sp, #104]                  // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_ints_and_floats
	ldr	x8, [x8, :lo12:__imp_use_va_args_ints_and_floats]
	mov	w1, #1
	mov	w2, #2
	mov	x3, #4613937818241073152
	mov	x4, #4617315517961601024
	mov	w5, #8
	mov	w6, #13
	mov	x7, #4626604192193052672
	blr	x8
	ldr	x1, [sp, #104]                  // 8-byte Folded Reload
	str	w0, [sp, #716]
	ldr	w2, [sp, #716]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #716]
	mov	w9, #6763
	subs	w8, w8, w9
	b.eq	.LBB167_78
	b	.LBB167_77
.LBB167_77:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #716]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #6763
	bl	__mingw_printf
	b	.LBB167_78
.LBB167_78:
	adrp	x8, e
	add	x8, x8, :lo12:e
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #688]
	str	q2, [sp, #672]
	str	q1, [sp, #656]
	str	q0, [sp, #640]
	adrp	x8, j
	add	x8, x8, :lo12:j
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #624]
	str	q2, [sp, #608]
	str	q1, [sp, #592]
	str	q0, [sp, #576]
	adrp	x8, o
	add	x8, x8, :lo12:o
	ldr	q0, [x8]
	ldr	q1, [x8, #16]
	ldr	q2, [x8, #32]
	ldr	q3, [x8, #48]
	str	q3, [sp, #560]
	str	q2, [sp, #544]
	str	q1, [sp, #528]
	str	q0, [sp, #512]
	mov	x9, sp
	str	x9, [sp, #80]                   // 8-byte Folded Spill
	mov	w8, #2584
	str	w8, [x9, #72]
	mov	w8, #1597
	str	w8, [x9, #64]
	add	x8, sp, #512
	str	x8, [x9, #56]
	mov	x8, #17592186044416
	movk	x8, #16515, lsl #48
	str	x8, [x9, #48]
	mov	x8, #158329674399744
	movk	x8, #16503, lsl #48
	str	x8, [x9, #40]
	mov	w8, #233
	str	w8, [x9, #32]
	mov	w8, #144
	str	w8, [x9, #24]
	add	x8, sp, #576
	str	x8, [x9, #16]
	mov	x8, #140737488355328
	movk	x8, #16459, lsl #48
	str	x8, [x9, #8]
	mov	x8, #4629981891913580544
	str	x8, [x9]
	adrp	x0, .L.str.56
	add	x0, x0, :lo12:.L.str.56
	str	x0, [sp, #88]                   // 8-byte Folded Spill
	adrp	x8, __imp_use_va_args_ints_floats_and_composites
	ldr	x8, [x8, :lo12:__imp_use_va_args_ints_floats_and_composites]
	mov	w1, #1
	mov	w2, #2
	mov	x3, #4613937818241073152
	mov	x4, #4617315517961601024
	add	x5, sp, #640
	mov	w6, #13
	mov	w7, #21
	blr	x8
	ldr	x1, [sp, #88]                   // 8-byte Folded Reload
	str	w0, [sp, #712]
	ldr	w2, [sp, #712]
	adrp	x0, .L.str.63
	add	x0, x0, :lo12:.L.str.63
	bl	__mingw_printf
	ldr	w8, [sp, #712]
	mov	w9, #6763
	subs	w8, w8, w9
	b.eq	.LBB167_80
	b	.LBB167_79
.LBB167_79:
	ldr	w8, [sp, #6812]
	add	w8, w8, #1
	str	w8, [sp, #6812]
	ldr	w2, [sp, #712]
	adrp	x0, .L.str.64
	add	x0, x0, :lo12:.L.str.64
	mov	w1, #6763
	bl	__mingw_printf
	b	.LBB167_80
.LBB167_80:
	ldr	w1, [sp, #6812]
	adrp	x0, .L.str.65
	add	x0, x0, :lo12:.L.str.65
	bl	__mingw_printf
	ldr	w0, [sp, #6812]
	.seh_startepilogue
	add	sp, sp, #1, lsl #12             // =4096
	.seh_stackalloc	4096
	add	sp, sp, #2736
	.seh_stackalloc	2736
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	.seh_save_fplr_x	16
	.seh_endepilogue
	ret
	.seh_endfunclet
	.seh_endproc
                                        // -- End function
	.section	.rdata,"dr"
.L.str:                                 // @.str
	.asciz	"no_arguments"

.L.str.1:                               // @.str.1
	.asciz	"\tuse_va_list_%s, result: %d\n"

.L.str.2:                               // @.str.2
	.asciz	"\tuse_va_list_%s_indirect, result: %d\n"

.L.str.3:                               // @.str.3
	.asciz	"few_longs"

.L.str.4:                               // @.str.4
	.asciz	"several_longs"

.L.str.5:                               // @.str.5
	.asciz	"many_longs"

.L.str.6:                               // @.str.6
	.asciz	"few_ints"

.L.str.7:                               // @.str.7
	.asciz	"several_ints"

.L.str.8:                               // @.str.8
	.asciz	"many_ints"

.L.str.9:                               // @.str.9
	.asciz	"few_doubles"

.L.str.10:                              // @.str.10
	.asciz	"several_doubles"

.L.str.11:                              // @.str.11
	.asciz	"many_doubles"

.L.str.12:                              // @.str.12
	.asciz	"few_floats"

.L.str.13:                              // @.str.13
	.asciz	"several_floats"

.L.str.14:                              // @.str.14
	.asciz	"many_floats"

.L.str.15:                              // @.str.15
	.asciz	"few_strings"

.L.str.16:                              // @.str.16
	.asciz	"several_strings"

.L.str.17:                              // @.str.17
	.asciz	"many_strings"

.L.str.18:                              // @.str.18
	.asciz	"few_composites"

.L.str.19:                              // @.str.19
	.asciz	"several_composites"

.L.str.20:                              // @.str.20
	.asciz	"many_composites"

.L.str.21:                              // @.str.21
	.asciz	"few_short_vector_8_bytes"

.L.str.22:                              // @.str.22
	.asciz	"several_short_vector_8_bytes"

.L.str.23:                              // @.str.23
	.asciz	"many_short_vector_8_bytes"

.L.str.24:                              // @.str.24
	.asciz	"few_not_short_vector_12_bytes"

.L.str.25:                              // @.str.25
	.asciz	"several_not_short_vector_12_bytes"

.L.str.26:                              // @.str.26
	.asciz	"many_not_short_vector_12_bytes"

.L.str.27:                              // @.str.27
	.asciz	"few_short_vector_16_bytes"

.L.str.28:                              // @.str.28
	.asciz	"several_short_vector_16_bytes"

.L.str.29:                              // @.str.29
	.asciz	"many_short_vector_16_bytes"

.L.str.30:                              // @.str.30
	.asciz	"few_hfa_2_floats"

.L.str.31:                              // @.str.31
	.asciz	"several_hfa_2_floats"

.L.str.32:                              // @.str.32
	.asciz	"many_hfa_2_floats"

.L.str.33:                              // @.str.33
	.asciz	"few_hfa_4_floats"

.L.str.34:                              // @.str.34
	.asciz	"several_hfa_4_floats"

.L.str.35:                              // @.str.35
	.asciz	"many_hfa_4_floats"

.L.str.36:                              // @.str.36
	.asciz	"few_hfa_2_doubles"

.L.str.37:                              // @.str.37
	.asciz	"several_hfa_2_doubles"

.L.str.38:                              // @.str.38
	.asciz	"many_hfa_2_doubles"

.L.str.39:                              // @.str.39
	.asciz	"few_hfa_4_doubles"

.L.str.40:                              // @.str.40
	.asciz	"several_hfa_4_doubles"

.L.str.41:                              // @.str.41
	.asciz	"many_hfa_4_doubles"

.L.str.42:                              // @.str.42
	.asciz	"few_hva_2_short_vector_8_bytes"

.L.str.43:                              // @.str.43
	.asciz	"several_hva_2_short_vector_8_bytes"

.L.str.44:                              // @.str.44
	.asciz	"many_hva_2_short_vector_8_bytes"

.L.str.45:                              // @.str.45
	.asciz	"few_hva_4_short_vector_8_bytes"

.L.str.46:                              // @.str.46
	.asciz	"several_hva_4_short_vector_8_bytes"

.L.str.47:                              // @.str.47
	.asciz	"many_hva_4_short_vector_8_bytes"

.L.str.48:                              // @.str.48
	.asciz	"few_hva_2_short_vector_16_bytes"

.L.str.49:                              // @.str.49
	.asciz	"several_hva_2_short_vector_16_bytes"

.L.str.50:                              // @.str.50
	.asciz	"many_hva_2_short_vector_16_bytes"

.L.str.51:                              // @.str.51
	.asciz	"few_hva_4_short_vector_16_bytes"

.L.str.52:                              // @.str.52
	.asciz	"several_hva_4_short_vector_16_bytes"

.L.str.53:                              // @.str.53
	.asciz	"many_hva_4_short_vector_16_bytes"

.L.str.54:                              // @.str.54
	.asciz	"ints_and_composites"

.L.str.55:                              // @.str.55
	.asciz	"ints_and_floats"

.L.str.56:                              // @.str.56
	.asciz	"ints_floats_and_composites"

	.data
	.globl	a                               // @a
	.p2align	3
a:
	.byte	1                               // 0x1
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.globl	b                               // @b
	.p2align	3
b:
	.byte	0                               // 0x0
	.zero	3
	.word	2                               // 0x2
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.section	.rdata,"dr"
.L.str.57:                              // @.str.57
	.asciz	"3"

	.data
	.globl	c                               // @c
	.p2align	3
c:
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	.L.str.57
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.globl	d                               // @d
	.p2align	3
d:
	.byte	5                               // 0x5
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.globl	e                               // @e
	.p2align	3
e:
	.byte	0                               // 0x0
	.zero	3
	.word	8                               // 0x8
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.section	.rdata,"dr"
.L.str.58:                              // @.str.58
	.asciz	"13"

	.data
	.globl	f                               // @f
	.p2align	3
f:
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	.L.str.58
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.globl	g                               // @g
	.p2align	3
g:
	.byte	21                              // 0x15
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.globl	h                               // @h
	.p2align	3
h:
	.byte	0                               // 0x0
	.zero	3
	.word	34                              // 0x22
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.section	.rdata,"dr"
.L.str.59:                              // @.str.59
	.asciz	"55"

	.data
	.globl	i                               // @i
	.p2align	3
i:
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	.L.str.59
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.globl	j                               // @j
	.p2align	3
j:
	.byte	89                              // 0x59
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.globl	k                               // @k
	.p2align	3
k:
	.byte	0                               // 0x0
	.zero	3
	.word	144                             // 0x90
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.section	.rdata,"dr"
.L.str.60:                              // @.str.60
	.asciz	"233"

	.data
	.globl	l                               // @l
	.p2align	3
l:
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	.L.str.60
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.globl	m                               // @m
	.p2align	3
m:
	.byte	0                               // 0x0
	.zero	3
	.word	377                             // 0x179
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.globl	n                               // @n
	.p2align	3
n:
	.byte	0                               // 0x0
	.zero	3
	.word	610                             // 0x262
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.section	.rdata,"dr"
.L.str.61:                              // @.str.61
	.asciz	"987"

	.data
	.globl	o                               // @o
	.p2align	3
o:
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	.L.str.61
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.globl	p                               // @p
	.p2align	3
p:
	.byte	0                               // 0x0
	.zero	3
	.word	1597                            // 0x63d
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.globl	q                               // @q
	.p2align	3
q:
	.byte	0                               // 0x0
	.zero	3
	.word	2584                            // 0xa18
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	0
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0x00000000                      // float 0

	.globl	sv8_a                           // @sv8_a
	.p2align	2
sv8_a:
	.word	1                               // 0x1
	.word	0                               // 0x0

	.globl	sv8_b                           // @sv8_b
	.p2align	2
sv8_b:
	.word	0                               // 0x0
	.word	2                               // 0x2

	.globl	sv8_c                           // @sv8_c
	.p2align	2
sv8_c:
	.word	3                               // 0x3
	.word	0                               // 0x0

	.globl	sv8_d                           // @sv8_d
	.p2align	2
sv8_d:
	.word	0                               // 0x0
	.word	5                               // 0x5

	.globl	sv8_e                           // @sv8_e
	.p2align	2
sv8_e:
	.word	8                               // 0x8
	.word	0                               // 0x0

	.globl	sv8_f                           // @sv8_f
	.p2align	2
sv8_f:
	.word	0                               // 0x0
	.word	13                              // 0xd

	.globl	sv8_g                           // @sv8_g
	.p2align	2
sv8_g:
	.word	21                              // 0x15
	.word	0                               // 0x0

	.globl	sv8_h                           // @sv8_h
	.p2align	2
sv8_h:
	.word	0                               // 0x0
	.word	34                              // 0x22

	.globl	sv8_i                           // @sv8_i
	.p2align	2
sv8_i:
	.word	55                              // 0x37
	.word	0                               // 0x0

	.globl	sv8_j                           // @sv8_j
	.p2align	2
sv8_j:
	.word	0                               // 0x0
	.word	89                              // 0x59

	.globl	sv8_k                           // @sv8_k
	.p2align	2
sv8_k:
	.word	144                             // 0x90
	.word	0                               // 0x0

	.globl	sv8_l                           // @sv8_l
	.p2align	2
sv8_l:
	.word	0                               // 0x0
	.word	233                             // 0xe9

	.globl	sv8_m                           // @sv8_m
	.p2align	2
sv8_m:
	.word	377                             // 0x179
	.word	0                               // 0x0

	.globl	sv8_n                           // @sv8_n
	.p2align	2
sv8_n:
	.word	0                               // 0x0
	.word	610                             // 0x262

	.globl	sv8_o                           // @sv8_o
	.p2align	2
sv8_o:
	.word	987                             // 0x3db
	.word	0                               // 0x0

	.globl	sv8_p                           // @sv8_p
	.p2align	2
sv8_p:
	.word	0                               // 0x0
	.word	1597                            // 0x63d

	.globl	sv8_q                           // @sv8_q
	.p2align	2
sv8_q:
	.word	2584                            // 0xa18
	.word	0                               // 0x0

	.globl	nsv12_a                         // @nsv12_a
	.p2align	2
nsv12_a:
	.word	1                               // 0x1
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	nsv12_b                         // @nsv12_b
	.p2align	2
nsv12_b:
	.word	0                               // 0x0
	.word	2                               // 0x2
	.word	0                               // 0x0

	.globl	nsv12_c                         // @nsv12_c
	.p2align	2
nsv12_c:
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	3                               // 0x3

	.globl	nsv12_d                         // @nsv12_d
	.p2align	2
nsv12_d:
	.word	5                               // 0x5
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	nsv12_e                         // @nsv12_e
	.p2align	2
nsv12_e:
	.word	0                               // 0x0
	.word	8                               // 0x8
	.word	0                               // 0x0

	.globl	nsv12_f                         // @nsv12_f
	.p2align	2
nsv12_f:
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	13                              // 0xd

	.globl	nsv12_g                         // @nsv12_g
	.p2align	2
nsv12_g:
	.word	21                              // 0x15
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	nsv12_h                         // @nsv12_h
	.p2align	2
nsv12_h:
	.word	0                               // 0x0
	.word	34                              // 0x22
	.word	0                               // 0x0

	.globl	nsv12_i                         // @nsv12_i
	.p2align	2
nsv12_i:
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	55                              // 0x37

	.globl	nsv12_j                         // @nsv12_j
	.p2align	2
nsv12_j:
	.word	89                              // 0x59
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	nsv12_k                         // @nsv12_k
	.p2align	2
nsv12_k:
	.word	0                               // 0x0
	.word	144                             // 0x90
	.word	0                               // 0x0

	.globl	nsv12_l                         // @nsv12_l
	.p2align	2
nsv12_l:
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	233                             // 0xe9

	.globl	nsv12_m                         // @nsv12_m
	.p2align	2
nsv12_m:
	.word	377                             // 0x179
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	nsv12_n                         // @nsv12_n
	.p2align	2
nsv12_n:
	.word	0                               // 0x0
	.word	610                             // 0x262
	.word	0                               // 0x0

	.globl	nsv12_o                         // @nsv12_o
	.p2align	2
nsv12_o:
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	987                             // 0x3db

	.globl	nsv12_p                         // @nsv12_p
	.p2align	2
nsv12_p:
	.word	1597                            // 0x63d
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	nsv12_q                         // @nsv12_q
	.p2align	2
nsv12_q:
	.word	0                               // 0x0
	.word	2584                            // 0xa18
	.word	0                               // 0x0

	.globl	sv16_a                          // @sv16_a
	.p2align	2
sv16_a:
	.word	1                               // 0x1
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	sv16_b                          // @sv16_b
	.p2align	2
sv16_b:
	.word	0                               // 0x0
	.word	2                               // 0x2
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	sv16_c                          // @sv16_c
	.p2align	2
sv16_c:
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	3                               // 0x3
	.word	0                               // 0x0

	.globl	sv16_d                          // @sv16_d
	.p2align	2
sv16_d:
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	5                               // 0x5

	.globl	sv16_e                          // @sv16_e
	.p2align	2
sv16_e:
	.word	8                               // 0x8
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	sv16_f                          // @sv16_f
	.p2align	2
sv16_f:
	.word	0                               // 0x0
	.word	13                              // 0xd
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	sv16_g                          // @sv16_g
	.p2align	2
sv16_g:
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	21                              // 0x15
	.word	0                               // 0x0

	.globl	sv16_h                          // @sv16_h
	.p2align	2
sv16_h:
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	34                              // 0x22

	.globl	sv16_i                          // @sv16_i
	.p2align	2
sv16_i:
	.word	55                              // 0x37
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	sv16_j                          // @sv16_j
	.p2align	2
sv16_j:
	.word	0                               // 0x0
	.word	89                              // 0x59
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	sv16_k                          // @sv16_k
	.p2align	2
sv16_k:
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	144                             // 0x90
	.word	0                               // 0x0

	.globl	sv16_l                          // @sv16_l
	.p2align	2
sv16_l:
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	233                             // 0xe9

	.globl	sv16_m                          // @sv16_m
	.p2align	2
sv16_m:
	.word	377                             // 0x179
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	sv16_n                          // @sv16_n
	.p2align	2
sv16_n:
	.word	0                               // 0x0
	.word	610                             // 0x262
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	sv16_o                          // @sv16_o
	.p2align	2
sv16_o:
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	987                             // 0x3db
	.word	0                               // 0x0

	.globl	sv16_p                          // @sv16_p
	.p2align	2
sv16_p:
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	1597                            // 0x63d

	.globl	sv16_q                          // @sv16_q
	.p2align	2
sv16_q:
	.word	2584                            // 0xa18
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	hfa2f_a                         // @hfa2f_a
	.p2align	2
hfa2f_a:
	.word	0x3f800000                      // float 1
	.word	0x00000000                      // float 0

	.globl	hfa2f_b                         // @hfa2f_b
	.p2align	2
hfa2f_b:
	.word	0x00000000                      // float 0
	.word	0x40000000                      // float 2

	.globl	hfa2f_c                         // @hfa2f_c
	.p2align	2
hfa2f_c:
	.word	0x40400000                      // float 3
	.word	0x00000000                      // float 0

	.globl	hfa2f_d                         // @hfa2f_d
	.p2align	2
hfa2f_d:
	.word	0x00000000                      // float 0
	.word	0x40a00000                      // float 5

	.globl	hfa2f_e                         // @hfa2f_e
	.p2align	2
hfa2f_e:
	.word	0x41000000                      // float 8
	.word	0x00000000                      // float 0

	.globl	hfa2f_f                         // @hfa2f_f
	.p2align	2
hfa2f_f:
	.word	0x00000000                      // float 0
	.word	0x41500000                      // float 13

	.globl	hfa2f_g                         // @hfa2f_g
	.p2align	2
hfa2f_g:
	.word	0x41a80000                      // float 21
	.word	0x00000000                      // float 0

	.globl	hfa2f_h                         // @hfa2f_h
	.p2align	2
hfa2f_h:
	.word	0x00000000                      // float 0
	.word	0x42080000                      // float 34

	.globl	hfa2f_i                         // @hfa2f_i
	.p2align	2
hfa2f_i:
	.word	0x425c0000                      // float 55
	.word	0x00000000                      // float 0

	.globl	hfa2f_j                         // @hfa2f_j
	.p2align	2
hfa2f_j:
	.word	0x00000000                      // float 0
	.word	0x42b20000                      // float 89

	.globl	hfa2f_k                         // @hfa2f_k
	.p2align	2
hfa2f_k:
	.word	0x43100000                      // float 144
	.word	0x00000000                      // float 0

	.globl	hfa2f_l                         // @hfa2f_l
	.p2align	2
hfa2f_l:
	.word	0x00000000                      // float 0
	.word	0x43690000                      // float 233

	.globl	hfa2f_m                         // @hfa2f_m
	.p2align	2
hfa2f_m:
	.word	0x43bc8000                      // float 377
	.word	0x00000000                      // float 0

	.globl	hfa2f_n                         // @hfa2f_n
	.p2align	2
hfa2f_n:
	.word	0x00000000                      // float 0
	.word	0x44188000                      // float 610

	.globl	hfa2f_o                         // @hfa2f_o
	.p2align	2
hfa2f_o:
	.word	0x4476c000                      // float 987
	.word	0x00000000                      // float 0

	.globl	hfa2f_p                         // @hfa2f_p
	.p2align	2
hfa2f_p:
	.word	0x00000000                      // float 0
	.word	0x44c7a000                      // float 1597

	.globl	hfa2f_q                         // @hfa2f_q
	.p2align	2
hfa2f_q:
	.word	0x45218000                      // float 2584
	.word	0x00000000                      // float 0

	.globl	hfa4f_a                         // @hfa4f_a
	.p2align	2
hfa4f_a:
	.word	0x3f800000                      // float 1
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0

	.globl	hfa4f_b                         // @hfa4f_b
	.p2align	2
hfa4f_b:
	.word	0x00000000                      // float 0
	.word	0x40000000                      // float 2
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0

	.globl	hfa4f_c                         // @hfa4f_c
	.p2align	2
hfa4f_c:
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x40400000                      // float 3
	.word	0x00000000                      // float 0

	.globl	hfa4f_d                         // @hfa4f_d
	.p2align	2
hfa4f_d:
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x40a00000                      // float 5

	.globl	hfa4f_e                         // @hfa4f_e
	.p2align	2
hfa4f_e:
	.word	0x41000000                      // float 8
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0

	.globl	hfa4f_f                         // @hfa4f_f
	.p2align	2
hfa4f_f:
	.word	0x00000000                      // float 0
	.word	0x41500000                      // float 13
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0

	.globl	hfa4f_g                         // @hfa4f_g
	.p2align	2
hfa4f_g:
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x41a80000                      // float 21
	.word	0x00000000                      // float 0

	.globl	hfa4f_h                         // @hfa4f_h
	.p2align	2
hfa4f_h:
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x42080000                      // float 34

	.globl	hfa4f_i                         // @hfa4f_i
	.p2align	2
hfa4f_i:
	.word	0x425c0000                      // float 55
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0

	.globl	hfa4f_j                         // @hfa4f_j
	.p2align	2
hfa4f_j:
	.word	0x00000000                      // float 0
	.word	0x42b20000                      // float 89
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0

	.globl	hfa4f_k                         // @hfa4f_k
	.p2align	2
hfa4f_k:
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x43100000                      // float 144
	.word	0x00000000                      // float 0

	.globl	hfa4f_l                         // @hfa4f_l
	.p2align	2
hfa4f_l:
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x43690000                      // float 233

	.globl	hfa4f_m                         // @hfa4f_m
	.p2align	2
hfa4f_m:
	.word	0x43bc8000                      // float 377
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0

	.globl	hfa4f_n                         // @hfa4f_n
	.p2align	2
hfa4f_n:
	.word	0x00000000                      // float 0
	.word	0x44188000                      // float 610
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0

	.globl	hfa4f_o                         // @hfa4f_o
	.p2align	2
hfa4f_o:
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x4476c000                      // float 987
	.word	0x00000000                      // float 0

	.globl	hfa4f_p                         // @hfa4f_p
	.p2align	2
hfa4f_p:
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x44c7a000                      // float 1597

	.globl	hfa4f_q                         // @hfa4f_q
	.p2align	2
hfa4f_q:
	.word	0x45218000                      // float 2584
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0
	.word	0x00000000                      // float 0

	.globl	hfa2d_a                         // @hfa2d_a
	.p2align	3
hfa2d_a:
	.xword	0x3ff0000000000000              // double 1
	.xword	0x0000000000000000              // double 0

	.globl	hfa2d_b                         // @hfa2d_b
	.p2align	3
hfa2d_b:
	.xword	0x0000000000000000              // double 0
	.xword	0x4000000000000000              // double 2

	.globl	hfa2d_c                         // @hfa2d_c
	.p2align	3
hfa2d_c:
	.xword	0x4008000000000000              // double 3
	.xword	0x0000000000000000              // double 0

	.globl	hfa2d_d                         // @hfa2d_d
	.p2align	3
hfa2d_d:
	.xword	0x0000000000000000              // double 0
	.xword	0x4014000000000000              // double 5

	.globl	hfa2d_e                         // @hfa2d_e
	.p2align	3
hfa2d_e:
	.xword	0x4020000000000000              // double 8
	.xword	0x0000000000000000              // double 0

	.globl	hfa2d_f                         // @hfa2d_f
	.p2align	3
hfa2d_f:
	.xword	0x0000000000000000              // double 0
	.xword	0x402a000000000000              // double 13

	.globl	hfa2d_g                         // @hfa2d_g
	.p2align	3
hfa2d_g:
	.xword	0x4035000000000000              // double 21
	.xword	0x0000000000000000              // double 0

	.globl	hfa2d_h                         // @hfa2d_h
	.p2align	3
hfa2d_h:
	.xword	0x0000000000000000              // double 0
	.xword	0x4041000000000000              // double 34

	.globl	hfa2d_i                         // @hfa2d_i
	.p2align	3
hfa2d_i:
	.xword	0x404b800000000000              // double 55
	.xword	0x0000000000000000              // double 0

	.globl	hfa2d_j                         // @hfa2d_j
	.p2align	3
hfa2d_j:
	.xword	0x0000000000000000              // double 0
	.xword	0x4056400000000000              // double 89

	.globl	hfa2d_k                         // @hfa2d_k
	.p2align	3
hfa2d_k:
	.xword	0x4062000000000000              // double 144
	.xword	0x0000000000000000              // double 0

	.globl	hfa2d_l                         // @hfa2d_l
	.p2align	3
hfa2d_l:
	.xword	0x0000000000000000              // double 0
	.xword	0x406d200000000000              // double 233

	.globl	hfa2d_m                         // @hfa2d_m
	.p2align	3
hfa2d_m:
	.xword	0x4077900000000000              // double 377
	.xword	0x0000000000000000              // double 0

	.globl	hfa2d_n                         // @hfa2d_n
	.p2align	3
hfa2d_n:
	.xword	0x0000000000000000              // double 0
	.xword	0x4083100000000000              // double 610

	.globl	hfa2d_o                         // @hfa2d_o
	.p2align	3
hfa2d_o:
	.xword	0x408ed80000000000              // double 987
	.xword	0x0000000000000000              // double 0

	.globl	hfa2d_p                         // @hfa2d_p
	.p2align	3
hfa2d_p:
	.xword	0x0000000000000000              // double 0
	.xword	0x4098f40000000000              // double 1597

	.globl	hfa2d_q                         // @hfa2d_q
	.p2align	3
hfa2d_q:
	.xword	0x40a4300000000000              // double 2584
	.xword	0x0000000000000000              // double 0

	.globl	hfa4d_a                         // @hfa4d_a
	.p2align	3
hfa4d_a:
	.xword	0x3ff0000000000000              // double 1
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0

	.globl	hfa4d_b                         // @hfa4d_b
	.p2align	3
hfa4d_b:
	.xword	0x0000000000000000              // double 0
	.xword	0x4000000000000000              // double 2
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0

	.globl	hfa4d_c                         // @hfa4d_c
	.p2align	3
hfa4d_c:
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x4008000000000000              // double 3
	.xword	0x0000000000000000              // double 0

	.globl	hfa4d_d                         // @hfa4d_d
	.p2align	3
hfa4d_d:
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x4014000000000000              // double 5

	.globl	hfa4d_e                         // @hfa4d_e
	.p2align	3
hfa4d_e:
	.xword	0x4020000000000000              // double 8
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0

	.globl	hfa4d_f                         // @hfa4d_f
	.p2align	3
hfa4d_f:
	.xword	0x0000000000000000              // double 0
	.xword	0x402a000000000000              // double 13
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0

	.globl	hfa4d_g                         // @hfa4d_g
	.p2align	3
hfa4d_g:
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x4035000000000000              // double 21
	.xword	0x0000000000000000              // double 0

	.globl	hfa4d_h                         // @hfa4d_h
	.p2align	3
hfa4d_h:
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x4041000000000000              // double 34

	.globl	hfa4d_i                         // @hfa4d_i
	.p2align	3
hfa4d_i:
	.xword	0x404b800000000000              // double 55
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0

	.globl	hfa4d_j                         // @hfa4d_j
	.p2align	3
hfa4d_j:
	.xword	0x0000000000000000              // double 0
	.xword	0x4056400000000000              // double 89
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0

	.globl	hfa4d_k                         // @hfa4d_k
	.p2align	3
hfa4d_k:
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x4062000000000000              // double 144
	.xword	0x0000000000000000              // double 0

	.globl	hfa4d_l                         // @hfa4d_l
	.p2align	3
hfa4d_l:
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x406d200000000000              // double 233

	.globl	hfa4d_m                         // @hfa4d_m
	.p2align	3
hfa4d_m:
	.xword	0x4077900000000000              // double 377
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0

	.globl	hfa4d_n                         // @hfa4d_n
	.p2align	3
hfa4d_n:
	.xword	0x0000000000000000              // double 0
	.xword	0x4083100000000000              // double 610
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0

	.globl	hfa4d_o                         // @hfa4d_o
	.p2align	3
hfa4d_o:
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x408ed80000000000              // double 987
	.xword	0x0000000000000000              // double 0

	.globl	hfa4d_p                         // @hfa4d_p
	.p2align	3
hfa4d_p:
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x4098f40000000000              // double 1597

	.globl	hfa4d_q                         // @hfa4d_q
	.p2align	3
hfa4d_q:
	.xword	0x40a4300000000000              // double 2584
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0

	.globl	hva2sv8_a                       // @hva2sv8_a
	.p2align	2
hva2sv8_a:
	.word	1                               // 0x1
	.word	0                               // 0x0
	.zero	8

	.globl	hva2sv8_b                       // @hva2sv8_b
	.p2align	2
hva2sv8_b:
	.zero	8
	.word	0                               // 0x0
	.word	2                               // 0x2

	.globl	hva2sv8_c                       // @hva2sv8_c
	.p2align	2
hva2sv8_c:
	.word	3                               // 0x3
	.word	0                               // 0x0
	.zero	8

	.globl	hva2sv8_d                       // @hva2sv8_d
	.p2align	2
hva2sv8_d:
	.zero	8
	.word	0                               // 0x0
	.word	5                               // 0x5

	.globl	hva2sv8_e                       // @hva2sv8_e
	.p2align	2
hva2sv8_e:
	.word	8                               // 0x8
	.word	0                               // 0x0
	.zero	8

	.globl	hva2sv8_f                       // @hva2sv8_f
	.p2align	2
hva2sv8_f:
	.zero	8
	.word	0                               // 0x0
	.word	13                              // 0xd

	.globl	hva2sv8_g                       // @hva2sv8_g
	.p2align	2
hva2sv8_g:
	.word	21                              // 0x15
	.word	0                               // 0x0
	.zero	8

	.globl	hva2sv8_h                       // @hva2sv8_h
	.p2align	2
hva2sv8_h:
	.zero	8
	.word	0                               // 0x0
	.word	34                              // 0x22

	.globl	hva2sv8_i                       // @hva2sv8_i
	.p2align	2
hva2sv8_i:
	.word	55                              // 0x37
	.word	0                               // 0x0
	.zero	8

	.globl	hva2sv8_j                       // @hva2sv8_j
	.p2align	2
hva2sv8_j:
	.zero	8
	.word	0                               // 0x0
	.word	89                              // 0x59

	.globl	hva2sv8_k                       // @hva2sv8_k
	.p2align	2
hva2sv8_k:
	.word	144                             // 0x90
	.word	0                               // 0x0
	.zero	8

	.globl	hva2sv8_l                       // @hva2sv8_l
	.p2align	2
hva2sv8_l:
	.zero	8
	.word	0                               // 0x0
	.word	233                             // 0xe9

	.globl	hva2sv8_m                       // @hva2sv8_m
	.p2align	2
hva2sv8_m:
	.word	377                             // 0x179
	.word	0                               // 0x0
	.zero	8

	.globl	hva2sv8_n                       // @hva2sv8_n
	.p2align	2
hva2sv8_n:
	.zero	8
	.word	0                               // 0x0
	.word	610                             // 0x262

	.globl	hva2sv8_o                       // @hva2sv8_o
	.p2align	2
hva2sv8_o:
	.word	987                             // 0x3db
	.word	0                               // 0x0
	.zero	8

	.globl	hva2sv8_p                       // @hva2sv8_p
	.p2align	2
hva2sv8_p:
	.zero	8
	.word	0                               // 0x0
	.word	1597                            // 0x63d

	.globl	hva2sv8_q                       // @hva2sv8_q
	.p2align	2
hva2sv8_q:
	.word	2584                            // 0xa18
	.word	0                               // 0x0
	.zero	8

	.globl	hva4sv8_a                       // @hva4sv8_a
	.p2align	2
hva4sv8_a:
	.word	1                               // 0x1
	.word	0                               // 0x0
	.zero	8
	.zero	8
	.zero	8

	.globl	hva4sv8_b                       // @hva4sv8_b
	.p2align	2
hva4sv8_b:
	.zero	8
	.word	0                               // 0x0
	.word	2                               // 0x2
	.zero	8
	.zero	8

	.globl	hva4sv8_c                       // @hva4sv8_c
	.p2align	2
hva4sv8_c:
	.zero	8
	.zero	8
	.word	3                               // 0x3
	.word	0                               // 0x0
	.zero	8

	.globl	hva4sv8_d                       // @hva4sv8_d
	.p2align	2
hva4sv8_d:
	.zero	8
	.zero	8
	.zero	8
	.word	0                               // 0x0
	.word	5                               // 0x5

	.globl	hva4sv8_e                       // @hva4sv8_e
	.p2align	2
hva4sv8_e:
	.word	8                               // 0x8
	.word	0                               // 0x0
	.zero	8
	.zero	8
	.zero	8

	.globl	hva4sv8_f                       // @hva4sv8_f
	.p2align	2
hva4sv8_f:
	.zero	8
	.word	0                               // 0x0
	.word	13                              // 0xd
	.zero	8
	.zero	8

	.globl	hva4sv8_g                       // @hva4sv8_g
	.p2align	2
hva4sv8_g:
	.zero	8
	.zero	8
	.word	21                              // 0x15
	.word	0                               // 0x0
	.zero	8

	.globl	hva4sv8_h                       // @hva4sv8_h
	.p2align	2
hva4sv8_h:
	.zero	8
	.zero	8
	.zero	8
	.word	0                               // 0x0
	.word	34                              // 0x22

	.globl	hva4sv8_i                       // @hva4sv8_i
	.p2align	2
hva4sv8_i:
	.word	55                              // 0x37
	.word	0                               // 0x0
	.zero	8
	.zero	8
	.zero	8

	.globl	hva4sv8_j                       // @hva4sv8_j
	.p2align	2
hva4sv8_j:
	.zero	8
	.word	0                               // 0x0
	.word	89                              // 0x59
	.zero	8
	.zero	8

	.globl	hva4sv8_k                       // @hva4sv8_k
	.p2align	2
hva4sv8_k:
	.zero	8
	.zero	8
	.word	144                             // 0x90
	.word	0                               // 0x0
	.zero	8

	.globl	hva4sv8_l                       // @hva4sv8_l
	.p2align	2
hva4sv8_l:
	.zero	8
	.zero	8
	.zero	8
	.word	0                               // 0x0
	.word	233                             // 0xe9

	.globl	hva4sv8_m                       // @hva4sv8_m
	.p2align	2
hva4sv8_m:
	.word	377                             // 0x179
	.word	0                               // 0x0
	.zero	8
	.zero	8
	.zero	8

	.globl	hva4sv8_n                       // @hva4sv8_n
	.p2align	2
hva4sv8_n:
	.zero	8
	.word	0                               // 0x0
	.word	610                             // 0x262
	.zero	8
	.zero	8

	.globl	hva4sv8_o                       // @hva4sv8_o
	.p2align	2
hva4sv8_o:
	.zero	8
	.zero	8
	.word	987                             // 0x3db
	.word	0                               // 0x0
	.zero	8

	.globl	hva4sv8_p                       // @hva4sv8_p
	.p2align	2
hva4sv8_p:
	.zero	8
	.zero	8
	.zero	8
	.word	0                               // 0x0
	.word	1597                            // 0x63d

	.globl	hva4sv8_q                       // @hva4sv8_q
	.p2align	2
hva4sv8_q:
	.word	2584                            // 0xa18
	.word	0                               // 0x0
	.zero	8
	.zero	8
	.zero	8

	.globl	hva2sv16_a                      // @hva2sv16_a
	.p2align	2
hva2sv16_a:
	.word	1                               // 0x1
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16

	.globl	hva2sv16_b                      // @hva2sv16_b
	.p2align	2
hva2sv16_b:
	.zero	16
	.word	0                               // 0x0
	.word	2                               // 0x2
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	hva2sv16_c                      // @hva2sv16_c
	.p2align	2
hva2sv16_c:
	.word	3                               // 0x3
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16

	.globl	hva2sv16_d                      // @hva2sv16_d
	.p2align	2
hva2sv16_d:
	.zero	16
	.word	0                               // 0x0
	.word	5                               // 0x5
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	hva2sv16_e                      // @hva2sv16_e
	.p2align	2
hva2sv16_e:
	.word	8                               // 0x8
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16

	.globl	hva2sv16_f                      // @hva2sv16_f
	.p2align	2
hva2sv16_f:
	.zero	16
	.word	0                               // 0x0
	.word	13                              // 0xd
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	hva2sv16_g                      // @hva2sv16_g
	.p2align	2
hva2sv16_g:
	.word	21                              // 0x15
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16

	.globl	hva2sv16_h                      // @hva2sv16_h
	.p2align	2
hva2sv16_h:
	.zero	16
	.word	0                               // 0x0
	.word	34                              // 0x22
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	hva2sv16_i                      // @hva2sv16_i
	.p2align	2
hva2sv16_i:
	.word	55                              // 0x37
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16

	.globl	hva2sv16_j                      // @hva2sv16_j
	.p2align	2
hva2sv16_j:
	.zero	16
	.word	0                               // 0x0
	.word	89                              // 0x59
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	hva2sv16_k                      // @hva2sv16_k
	.p2align	2
hva2sv16_k:
	.word	144                             // 0x90
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16

	.globl	hva2sv16_l                      // @hva2sv16_l
	.p2align	2
hva2sv16_l:
	.zero	16
	.word	0                               // 0x0
	.word	233                             // 0xe9
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	hva2sv16_m                      // @hva2sv16_m
	.p2align	2
hva2sv16_m:
	.word	377                             // 0x179
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16

	.globl	hva2sv16_n                      // @hva2sv16_n
	.p2align	2
hva2sv16_n:
	.zero	16
	.word	0                               // 0x0
	.word	610                             // 0x262
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	hva2sv16_o                      // @hva2sv16_o
	.p2align	2
hva2sv16_o:
	.word	987                             // 0x3db
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16

	.globl	hva2sv16_p                      // @hva2sv16_p
	.p2align	2
hva2sv16_p:
	.zero	16
	.word	0                               // 0x0
	.word	1597                            // 0x63d
	.word	0                               // 0x0
	.word	0                               // 0x0

	.globl	hva2sv16_q                      // @hva2sv16_q
	.p2align	2
hva2sv16_q:
	.word	2584                            // 0xa18
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16

	.globl	hva4sv16_a                      // @hva4sv16_a
	.p2align	2
hva4sv16_a:
	.word	1                               // 0x1
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16
	.zero	16
	.zero	16

	.globl	hva4sv16_b                      // @hva4sv16_b
	.p2align	2
hva4sv16_b:
	.zero	16
	.word	0                               // 0x0
	.word	2                               // 0x2
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16
	.zero	16

	.globl	hva4sv16_c                      // @hva4sv16_c
	.p2align	2
hva4sv16_c:
	.zero	16
	.zero	16
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	3                               // 0x3
	.word	0                               // 0x0
	.zero	16

	.globl	hva4sv16_d                      // @hva4sv16_d
	.p2align	2
hva4sv16_d:
	.zero	16
	.zero	16
	.zero	16
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	5                               // 0x5

	.globl	hva4sv16_e                      // @hva4sv16_e
	.p2align	2
hva4sv16_e:
	.word	8                               // 0x8
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16
	.zero	16
	.zero	16

	.globl	hva4sv16_f                      // @hva4sv16_f
	.p2align	2
hva4sv16_f:
	.zero	16
	.word	0                               // 0x0
	.word	13                              // 0xd
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16
	.zero	16

	.globl	hva4sv16_g                      // @hva4sv16_g
	.p2align	2
hva4sv16_g:
	.zero	16
	.zero	16
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	21                              // 0x15
	.word	0                               // 0x0
	.zero	16

	.globl	hva4sv16_h                      // @hva4sv16_h
	.p2align	2
hva4sv16_h:
	.zero	16
	.zero	16
	.zero	16
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	34                              // 0x22

	.globl	hva4sv16_i                      // @hva4sv16_i
	.p2align	2
hva4sv16_i:
	.word	55                              // 0x37
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16
	.zero	16
	.zero	16

	.globl	hva4sv16_j                      // @hva4sv16_j
	.p2align	2
hva4sv16_j:
	.zero	16
	.word	0                               // 0x0
	.word	89                              // 0x59
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16
	.zero	16

	.globl	hva4sv16_k                      // @hva4sv16_k
	.p2align	2
hva4sv16_k:
	.zero	16
	.zero	16
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	144                             // 0x90
	.word	0                               // 0x0
	.zero	16

	.globl	hva4sv16_l                      // @hva4sv16_l
	.p2align	2
hva4sv16_l:
	.zero	16
	.zero	16
	.zero	16
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	233                             // 0xe9

	.globl	hva4sv16_m                      // @hva4sv16_m
	.p2align	2
hva4sv16_m:
	.word	377                             // 0x179
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16
	.zero	16
	.zero	16

	.globl	hva4sv16_n                      // @hva4sv16_n
	.p2align	2
hva4sv16_n:
	.zero	16
	.word	0                               // 0x0
	.word	610                             // 0x262
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16
	.zero	16

	.globl	hva4sv16_o                      // @hva4sv16_o
	.p2align	2
hva4sv16_o:
	.zero	16
	.zero	16
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	987                             // 0x3db
	.word	0                               // 0x0
	.zero	16

	.globl	hva4sv16_p                      // @hva4sv16_p
	.p2align	2
hva4sv16_p:
	.zero	16
	.zero	16
	.zero	16
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	1597                            // 0x63d

	.globl	hva4sv16_q                      // @hva4sv16_q
	.p2align	2
hva4sv16_q:
	.word	2584                            // 0xa18
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.zero	16
	.zero	16
	.zero	16

	.section	.rdata,"dr"
.L.str.62:                              // @.str.62
	.asciz	"\tshort_vector_8_bytes size: %lu\n\tshort_vector_16_bytes size: %lu\n\thfa_2_floats size: %lu\n\thfa_4_floats size: %lu\n\thfa_2_doubles size: %lu\n\thfa_4_doubles size: %lu\n\thva_2_short_vector_8_bytes size: %lu\n\thva_4_short_vector_8_bytes size: %lu\n\thva_2_short_vector_16_bytes size: %lu\n\thva_4_short_vector_16_bytes size: %lu\n\tcomposite size: %lu\n"

.L.str.63:                              // @.str.63
	.asciz	"\tuse_va_args_%s result: %d\n"

.L.str.64:                              // @.str.64
	.asciz	"\t\ttest failed, expected: %d, actual: %d\n\n"

.L.str.65:                              // @.str.65
	.asciz	"\tfailures: %d\n"

	.addrsig
	.addrsig_sym __mingw_printf
	.addrsig_sym use_indirect_va_list_no_arguments
	.addrsig_sym use_indirect_va_list_few_longs
	.addrsig_sym use_indirect_va_list_several_longs
	.addrsig_sym use_indirect_va_list_many_longs
	.addrsig_sym use_indirect_va_list_few_ints
	.addrsig_sym use_indirect_va_list_several_ints
	.addrsig_sym use_indirect_va_list_many_ints
	.addrsig_sym use_indirect_va_list_few_doubles
	.addrsig_sym use_indirect_va_list_several_doubles
	.addrsig_sym use_indirect_va_list_many_doubles
	.addrsig_sym use_indirect_va_list_few_floats
	.addrsig_sym use_indirect_va_list_several_floats
	.addrsig_sym use_indirect_va_list_many_floats
	.addrsig_sym use_indirect_va_list_few_strings
	.addrsig_sym use_indirect_va_list_several_strings
	.addrsig_sym use_indirect_va_list_many_strings
	.addrsig_sym use_indirect_va_list_few_composites
	.addrsig_sym use_indirect_va_list_several_composites
	.addrsig_sym use_indirect_va_list_many_composites
	.addrsig_sym use_indirect_va_list_few_short_vector_8_bytes
	.addrsig_sym use_indirect_va_list_several_short_vector_8_bytes
	.addrsig_sym use_indirect_va_list_many_short_vector_8_bytes
	.addrsig_sym use_indirect_va_list_few_not_short_vector_12_bytes
	.addrsig_sym use_indirect_va_list_several_not_short_vector_12_bytes
	.addrsig_sym use_indirect_va_list_many_not_short_vector_12_bytes
	.addrsig_sym use_indirect_va_list_few_short_vector_16_bytes
	.addrsig_sym use_indirect_va_list_several_short_vector_16_bytes
	.addrsig_sym use_indirect_va_list_many_short_vector_16_bytes
	.addrsig_sym use_indirect_va_list_few_hfa_2_floats
	.addrsig_sym use_indirect_va_list_several_hfa_2_floats
	.addrsig_sym use_indirect_va_list_many_hfa_2_floats
	.addrsig_sym use_indirect_va_list_few_hfa_4_floats
	.addrsig_sym use_indirect_va_list_several_hfa_4_floats
	.addrsig_sym use_indirect_va_list_many_hfa_4_floats
	.addrsig_sym use_indirect_va_list_few_hfa_2_doubles
	.addrsig_sym use_indirect_va_list_several_hfa_2_doubles
	.addrsig_sym use_indirect_va_list_many_hfa_2_doubles
	.addrsig_sym use_indirect_va_list_few_hfa_4_doubles
	.addrsig_sym use_indirect_va_list_several_hfa_4_doubles
	.addrsig_sym use_indirect_va_list_many_hfa_4_doubles
	.addrsig_sym use_indirect_va_list_few_hva_2_short_vector_8_bytes
	.addrsig_sym use_indirect_va_list_several_hva_2_short_vector_8_bytes
	.addrsig_sym use_indirect_va_list_many_hva_2_short_vector_8_bytes
	.addrsig_sym use_indirect_va_list_few_hva_4_short_vector_8_bytes
	.addrsig_sym use_indirect_va_list_several_hva_4_short_vector_8_bytes
	.addrsig_sym use_indirect_va_list_many_hva_4_short_vector_8_bytes
	.addrsig_sym use_indirect_va_list_few_hva_2_short_vector_16_bytes
	.addrsig_sym use_indirect_va_list_several_hva_2_short_vector_16_bytes
	.addrsig_sym use_indirect_va_list_many_hva_2_short_vector_16_bytes
	.addrsig_sym use_indirect_va_list_few_hva_4_short_vector_16_bytes
	.addrsig_sym use_indirect_va_list_several_hva_4_short_vector_16_bytes
	.addrsig_sym use_indirect_va_list_many_hva_4_short_vector_16_bytes
	.addrsig_sym use_indirect_va_list_ints_and_composites
	.addrsig_sym use_indirect_va_list_ints_and_floats
	.addrsig_sym use_indirect_va_list_ints_floats_and_composites
	.addrsig_sym __mingw_vswprintf
	.addrsig_sym a
	.addrsig_sym b
	.addrsig_sym c
	.addrsig_sym d
	.addrsig_sym e
	.addrsig_sym f
	.addrsig_sym g
	.addrsig_sym h
	.addrsig_sym i
	.addrsig_sym j
	.addrsig_sym k
	.addrsig_sym l
	.addrsig_sym m
	.addrsig_sym n
	.addrsig_sym o
	.addrsig_sym p
	.addrsig_sym q
	.addrsig_sym sv8_a
	.addrsig_sym sv8_b
	.addrsig_sym sv8_c
	.addrsig_sym sv8_d
	.addrsig_sym sv8_e
	.addrsig_sym sv8_f
	.addrsig_sym sv8_g
	.addrsig_sym sv8_h
	.addrsig_sym sv8_i
	.addrsig_sym sv8_j
	.addrsig_sym sv8_k
	.addrsig_sym sv8_l
	.addrsig_sym sv8_m
	.addrsig_sym sv8_n
	.addrsig_sym sv8_o
	.addrsig_sym sv8_p
	.addrsig_sym sv8_q
	.addrsig_sym nsv12_a
	.addrsig_sym nsv12_b
	.addrsig_sym sv16_a
	.addrsig_sym sv16_b
	.addrsig_sym hfa2f_a
	.addrsig_sym hfa2f_b
	.addrsig_sym hfa2f_c
	.addrsig_sym hfa2f_d
	.addrsig_sym hfa2f_e
	.addrsig_sym hfa2f_f
	.addrsig_sym hfa2f_g
	.addrsig_sym hfa2f_h
	.addrsig_sym hfa2f_i
	.addrsig_sym hfa2f_j
	.addrsig_sym hfa2f_k
	.addrsig_sym hfa2f_l
	.addrsig_sym hfa2f_m
	.addrsig_sym hfa2f_n
	.addrsig_sym hfa2f_o
	.addrsig_sym hfa2f_p
	.addrsig_sym hfa2f_q
	.addrsig_sym hfa4f_a
	.addrsig_sym hfa4f_b
	.addrsig_sym hfa2d_a
	.addrsig_sym hfa2d_b
	.addrsig_sym hfa4d_a
	.addrsig_sym hfa4d_b
	.addrsig_sym hva2sv8_a
	.addrsig_sym hva2sv8_b
	.addrsig_sym hva4sv8_a
	.addrsig_sym hva4sv8_b
	.addrsig_sym hva4sv8_c
	.addrsig_sym hva4sv8_d
	.addrsig_sym hva4sv8_e
	.addrsig_sym hva4sv8_f
	.addrsig_sym hva4sv8_g
	.addrsig_sym hva4sv8_h
	.addrsig_sym hva4sv8_i
	.addrsig_sym hva4sv8_j
	.addrsig_sym hva4sv8_k
	.addrsig_sym hva4sv8_l
	.addrsig_sym hva4sv8_m
	.addrsig_sym hva4sv8_n
	.addrsig_sym hva4sv8_o
	.addrsig_sym hva4sv8_p
	.addrsig_sym hva4sv8_q
	.addrsig_sym hva2sv16_a
	.addrsig_sym hva2sv16_b
	.addrsig_sym hva2sv16_c
	.addrsig_sym hva2sv16_d
	.addrsig_sym hva2sv16_e
	.addrsig_sym hva2sv16_f
	.addrsig_sym hva2sv16_g
	.addrsig_sym hva2sv16_h
	.addrsig_sym hva2sv16_i
	.addrsig_sym hva2sv16_j
	.addrsig_sym hva2sv16_k
	.addrsig_sym hva2sv16_l
	.addrsig_sym hva2sv16_m
	.addrsig_sym hva2sv16_n
	.addrsig_sym hva2sv16_o
	.addrsig_sym hva2sv16_p
	.addrsig_sym hva2sv16_q
	.addrsig_sym hva4sv16_a
	.addrsig_sym hva4sv16_b
	.addrsig_sym hva4sv16_c
	.addrsig_sym hva4sv16_d
	.addrsig_sym hva4sv16_e
	.addrsig_sym hva4sv16_f
	.addrsig_sym hva4sv16_g
	.addrsig_sym hva4sv16_h
	.addrsig_sym hva4sv16_i
	.addrsig_sym hva4sv16_j
	.addrsig_sym hva4sv16_k
	.addrsig_sym hva4sv16_l
	.addrsig_sym hva4sv16_m
	.addrsig_sym hva4sv16_n
	.addrsig_sym hva4sv16_o
	.addrsig_sym hva4sv16_p
	.addrsig_sym hva4sv16_q
