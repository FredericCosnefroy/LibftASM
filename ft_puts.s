%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

section .text

global _ft_puts
extern _ft_strlen

_ft_puts:
	call _ft_strlen
	mov rsi, rdi
	mov rdi, 1
	mov rdx, rax
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	ret
