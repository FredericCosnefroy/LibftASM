%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define READ				3

section .bss
	buff		resb 192
	buff_size	equ $ - buff

section .text

global _ft_cat
extern _ft_puts
extern _ft_bzero

_ft_cat:
	cmp rdi, 0
	jl .ret

.loop:
	lea rsi, [rel buff]
	mov rdx, buff_size
	mov rax, MACH_SYSCALL(READ)
	syscall
	push rax
	push rdi
	lea rdi, [rel buff]
	call _ft_puts
	lea rdi, [rel buff]
	mov rsi, buff_size
	call _ft_bzero
	pop rdi
	pop rax
	cmp		rax, 0
	jg		.loop

.ret:
	ret
