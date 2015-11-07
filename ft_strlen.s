section .text

global _ft_strlen

_ft_strlen:
	mov		rax, rdi
	mov		cl, [rax]
	cmp		cl, 0
	jz		.ret
.loop:
	inc		rax
	mov		cl, [rax]
	cmp		cl, 0
	jnz		.loop
.ret:
	sub		rax, rdi
	ret