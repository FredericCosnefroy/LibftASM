section .text

global ft_isalpha
extern ft_isrange

ft_isalpha:
	mov rsi, 'a'
	mov rdx, 'z'
	call ft_isrange
	cmp rax, 1
	je true
	mov rsi, 'A'
	mov rdx, 'Z'
	call ft_isrange

true:
	ret
