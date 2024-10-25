	.arch armv8-a
	.file	"size-of-dll.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	size_of_long
	.type	size_of_long, %function
size_of_long:
.LFB0:
	.cfi_startproc
// size-of-dll.c:10:   return sizeof(long);
	mov	w0, 8	// _1,
// size-of-dll.c:11: }
	ret	
	.cfi_endproc
.LFE0:
	.size	size_of_long, .-size_of_long
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
