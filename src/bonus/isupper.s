; int	ft_isupper(int c)
global _ft_isupper
_ft_isupper: 
    push rbp
    mov rbp, rsp
	xor eax, eax
	cmp rdi, 65
	jl exit
    cmp rdi, 90
   	ja exit
	inc eax
exit:
	leave
	ret
