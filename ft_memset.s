section .text

global _ft_memset

_ft_memset:
	cmp rdx, 0
	jz end
	push rdi
	mov rax, rsi
	mov rcx, rdx
	cld
	rep stosb
	pop rax

end:
	ret
