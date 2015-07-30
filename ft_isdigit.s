section .text

global ft_isdigit
extern ft_isrange

ft_isdigit:
	mov rsi, '0'
	mov rdx, '9'
	call ft_isrange
	ret
