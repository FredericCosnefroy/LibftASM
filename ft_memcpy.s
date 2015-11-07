section .text

global _ft_memcpy
extern _ft_strlen

_ft_memcpy:
	push rdi
	mov rcx, rdx
	cld
	repnz movsb
	pop rax
	ret
