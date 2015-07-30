section .text

global ft_isascii
extern ft_isrange

ft_isascii:
	mov rsi, 0
	mov rdx, 127
	call ft_isrange
	ret
