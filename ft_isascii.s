section .text

global _ft_isascii
extern _ft_isrange

_ft_isascii:
	mov rsi, 0
	mov rdx, 127
	call _ft_isrange
	ret
