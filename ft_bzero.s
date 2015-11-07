section .text

global _ft_bzero

_ft_bzero:
	cmp rsi, 0
	jz end
	
loop:
	mov dl, 0
	mov [rdi], dl
	inc rdi
	dec rsi
	cmp rsi, 0
	jg loop

end:
	ret
