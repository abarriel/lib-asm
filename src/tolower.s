;int	ft_tolower(int c)
global _ft_tolower
_ft_tolower:
	push rbp
	mov rbp, rsp
	mov	eax, edi
	cmp eax, 65
	jl exit
	cmp eax, 90
	ja exit
	add eax, 32 
exit:
	leave
	ret
