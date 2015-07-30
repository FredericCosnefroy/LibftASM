section .text

global ft_tolower
extern ft_isrange

ft_tolower:
	mov rsi, 'A'
	mov rdx, 'Z'
	call ft_isrange
	cmp rax, 1
	jne end
	add rdi, 32

end:
	mov rax, rdi
	ret
