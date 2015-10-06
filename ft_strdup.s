section .text

global ft_strdup
extern ft_strlen
extern ft_bzero

extern malloc

ft_strdup:
	call ft_strlen
	mov rdi, rax
	call malloc
	ret
