section .text

global ft_isprint
extern ft_isrange

ft_isprint:
	mov rsi, ' '
	mov rdx, '~'
	call ft_isrange
