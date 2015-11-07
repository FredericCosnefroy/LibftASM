section .text

global _ft_strcat
extern _ft_strlen

_ft_strcat:
	call _ft_strlen
	mov rcx, rdi
	add rcx, rax
	jmp loop

inc:
	inc rcx
	inc rsi

loop:
	mov cl, [rsi]
	mov [rcx], cl
	cmp cl, 0
	jg inc

end:
	mov rax, rdi
	ret
