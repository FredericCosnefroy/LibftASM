section .text
global _ft_isrange

;int ft_inrange(char c, int start, int end)

_ft_isrange:
	cmp rdi, rsi
	jl false
	cmp rdi, rdx
	jg false
	jmp true
	
false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret

