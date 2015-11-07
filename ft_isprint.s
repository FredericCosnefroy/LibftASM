section .text

global _ft_isprint
extern _ft_isrange

_ft_isprint:
	mov rsi, ' '
	mov rdx, '~'
	call _ft_isrange
