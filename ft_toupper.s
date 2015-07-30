section .text

global ft_toupper
extern ft_isrange

ft_toupper:
	mov rcx, rdi
	mov rsi, 'a'
	mov rdx, 'z'
	call ft_isrange
	cmp rax, 1
	jne end
	sub rcx, 32

end:
	mov rax, rcx
	ret
