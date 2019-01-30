#include "macros.h"

	.text
	.p2align 4,,15
	.globl	sse_clear2
	.type	sse_clear2, @function
sse_clear2:
	pxor	%xmm0, %xmm0
	.rept REPEAT
	cvtsd2ss	%xmm1, %xmm0
	.endr
	ret
	.size	sse_clear2, .-sse_clear2
	.section	.note.GNU-stack,"",@progbits
