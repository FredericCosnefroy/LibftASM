section .text

global _ft_isdigit
extern _ft_isrange

_ft_isdigit:
	mov rsi, '0'
	mov rdx, '9'
	call _ft_isrange
	ret
