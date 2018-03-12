; int		ft_isascii(int c)
global _ft_isascii
_ft_isascii: 
    push rbp
    mov rbp, rsp
	xor eax, eax
	cmp rdi, 0
	jl exit
    cmp rdi, 127
   	ja exit
	inc eax
exit:
	leave
	ret
