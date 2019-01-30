#include "macros.h"

	.text
	.p2align 4,,15
	.globl	avx
	.type	avx, @function
avx:
	.rept REPEAT
	vcvtsd2ss	%xmm1, %xmm0, %xmm0
	.endr
	ret
	.size	avx, .-avx
	.section	.note.GNU-stack,"",@progbits
