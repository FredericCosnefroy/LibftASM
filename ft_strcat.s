section .text

global ft_strcat
extern ft_strlen

ft_strcat:
	call ft_strlen
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
