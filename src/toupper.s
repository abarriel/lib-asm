;int	ft_tolower(int c)
global _ft_toupper
_ft_toupper:
	push rbp
	mov rbp, rsp
	mov	eax, edi
	cmp eax, 97
	jl exit
	cmp eax, 122
	ja exit
	sub eax, 32 
exit:
	leave
	ret
