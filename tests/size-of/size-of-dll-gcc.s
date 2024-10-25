	.arch armv8-a
;# GNU C23 (GCC) version 15.0.1 20250131 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed: -march=armv8-a -mtune=cortex-a53 -O0
	.text
	.align	2
	.global	size_of_long
	.def	size_of_long;	.scl	2;	.type	32;	.endef
	.seh_proc	size_of_long
size_of_long:
	.seh_endprologue
;# size-of-dll.c:10:   return sizeof(long);
	mov	w0, 4	;# _1,
;# size-of-dll.c:11: }
	ret	
	.seh_endproc
