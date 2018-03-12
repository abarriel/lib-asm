global _ft_max
_ft_max:
	push rbp
	mov rbp, rsp
	mov eax, esi
	cmp edi, eax
	jl exit
	mov eax, edi
exit:
	leave
	ret
