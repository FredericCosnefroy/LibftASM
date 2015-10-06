section .text

global ft_memcpy
extern ft_strlen

ft_memcpy:
	push rdi
	mov rcx, rdx
	cld
	repnz movsb
	pop rax
	ret
