section .text

global _ft_isalpha
extern _ft_isrange

_ft_isalpha:
	mov rsi, 'a'
	mov rdx, 'z'
	call _ft_isrange
	cmp rax, 1
	je true
	mov rsi, 'A'
	mov rdx, 'Z'
	call _ft_isrange

true:
	ret
