#include "macros.h"

	.text
	.p2align 4,,15
	.globl	avx_clear2
	.type	avx_clear2, @function
avx_clear2:
	vxorps	%xmm0, %xmm0, %xmm0
	.rept REPEAT
	vcvtsd2ss	%xmm1, %xmm0, %xmm0
	.endr
	ret
	.size	avx_clear2, .-avx_clear2
	.section	.note.GNU-stack,"",@progbits
