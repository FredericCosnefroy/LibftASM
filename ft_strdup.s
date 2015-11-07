section .text

global _ft_strdup
extern _ft_strlen
extern _ft_memcpy
extern _malloc

_ft_strdup:
	call _ft_strlen
	add rax, 1
	push rax
	push rdi
	mov rdi, rax
	call _malloc
	pop rsi
	pop rdx
	mov rdi, rax
	call _ft_memcpy
	ret
