; int	ft_isupper(int c)
global _ft_islower
_ft_islower: 
    push rbp
    mov rbp, rsp
	xor eax, eax
	cmp rdi, 97
	jl exit
    cmp rdi, 122
   	ja exit
	inc eax
exit:
	leave
	ret
