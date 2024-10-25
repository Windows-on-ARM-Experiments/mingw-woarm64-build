	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"size-of-dll.c"
	.def	size_of_long;
	.scl	2;
	.type	32;
	.endef
	.globl	size_of_long                    // -- Begin function size_of_long
	.p2align	2
size_of_long:                           // @size_of_long
// %bb.0:
	mov	w0, #4
	ret
                                        // -- End function
	.section	.drectve,"yn"
	.ascii	" -export:size_of_long"
	.addrsig
