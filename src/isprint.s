; int		ft_isprint(int c)
global _ft_isprint
_ft_isprint: 
    push rbp
    mov rbp, rsp
	xor eax, eax
	cmp rdi, 32
	jl exit
    cmp rdi, 126
   	ja exit
	inc eax
exit:
	leave
	ret
