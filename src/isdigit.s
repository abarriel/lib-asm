; int	ft_isdigit(int c)
global _ft_isdigit
_ft_isdigit: 
    push rbp
    mov rbp, rsp
	xor eax, eax
	cmp rdi, 48
	jl exit
    cmp rdi, 57
   	ja exit
	inc eax
exit:
	leave
	ret
