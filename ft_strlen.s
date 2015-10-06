section .text

global ft_strlen

ft_strlen:
	mov rsi, rdi
	mov rax, 0
	mov ecx, -1
	cld
	repnz scasb
	mov rax, -2
	sub rax, rcx

end:
	ret
