section .text

global ft_memcpy

ft_memcpy:
	mov rax, rdi
	jmp loop

inc:
	inc rdi
	inc rsi
	dec rdx

loop:
	mov cl, [rsi]
	mov [rdi], cl
	cmp rdx, 0
	jg inc

end:
	ret
