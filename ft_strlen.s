section .text

global ft_strlen

ft_strlen:
	mov rax, 0
	cmp byte[rdi], 0
	je end

loop:
	inc rax
	cmp byte[rdi + rax], 0
	jg loop

end:
	ret
