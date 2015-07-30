section .text

global ft_strdup
extern ft_strlen
extern ft_puts
extern malloc

ft_strdup:
	push rdi
	call ft_strlen
	mov rdi, rax
	call malloc
	cmp rax, 0
	jz end
	pop rdi
	mov rcx, rax

loop:
	mov cl, [rdi]
	mov [rcx], cl
	inc rdi
	inc rcx
	cmp byte[rdi], 0
	jg loop

continue:
	mov cl, 0
	mov [rcx], cl
	lea rax, [rel rcx]

end:
	ret
