global _ft_min
_ft_min:
	push rbp
	mov rbp, rsp
	mov eax, esi
	cmp edi, eax
	jg exit
	mov eax, edi
exit:
	leave
	ret
