section .text

global _ft_tolower
extern _ft_isrange

_ft_tolower:
	mov rsi, 'A'
	mov rdx, 'Z'
	call _ft_isrange
	cmp rax, 1
	jne end
	add rdi, 32

end:
	mov rax, rdi
	ret
