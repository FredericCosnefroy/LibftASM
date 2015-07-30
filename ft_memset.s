section .text

global ft_memset

ft_memset:
	mov rax, rdi
	cmp rdx, 0
	jz end
	
loop:
	mov cl, sil
	mov [rdi], cl
	inc rdi
	dec rdx
	cmp rdx, 0
	jg loop

end:
	ret
