%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

section .text

global ft_puts
extern ft_strlen

ft_puts:
	call ft_strlen
	mov rsi, rdi
	mov rdi, 1
	mov rdx, rax
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	ret
