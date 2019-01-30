#include "macros.h"

	.text
	.p2align 4,,15
	.globl	avx2
	.type	avx2, @function
avx2:
	.rept REPEAT
	vcvtsd2ss	%xmm1, %xmm1, %xmm0
	.endr
	ret
	.size	avx2, .-avx2
	.section	.note.GNU-stack,"",@progbits
