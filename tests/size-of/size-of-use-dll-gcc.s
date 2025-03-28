	.arch armv8-a
;# GNU C23 (GCC) version 15.0.1 20250131 (experimental) (aarch64-w64-mingw32)
;#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

;# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
;# options passed: -march=armv8-a -mtune=cortex-a53 -O0
	.text
	.align	2
	.global	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	sub	x10, sp, #8192	;#,,
	str	xzr, [x10, 4080]	;#,
	stp	x29, x30, [sp, -16]!	;#,,,
	mov	x29, sp	;#,
	.seh_endprologue
;# size-of-use-dll.c:13: int main() {
	bl	__main		;#
;# size-of-use-dll.c:14:   return size_of_long();
	adrp	x0, __imp_size_of_long	;# tmp105,
	add	x0, x0, :lo12:__imp_size_of_long	;# tmp104, tmp105,
	ldr	x0, [x0]	;# tmp103,
	blr	x0		;# tmp103
;# size-of-use-dll.c:15: }
	ldp	x29, x30, [sp], 16	;#,,,
	ret	
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
