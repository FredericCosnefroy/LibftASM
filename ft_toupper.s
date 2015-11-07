section .text

global _ft_toupper
extern _ft_isrange

_ft_toupper:
	mov rcx, rdi
	mov rsi, 'a'
	mov rdx, 'z'
	call _ft_isrange
	cmp rax, 1
	jne end
	sub rcx, 32

end:
	mov rax, rcx
	ret
