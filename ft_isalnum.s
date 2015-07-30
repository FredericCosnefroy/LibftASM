section .text

global ft_isalnum
extern ft_isdigit
extern ft_isalpha

ft_isalnum:
	call ft_isalpha
	cmp rax, 1
	je true
	call ft_isdigit

true:
	ret
