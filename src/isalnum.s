global _ft_isalnum
success:
    inc eax
    jmp exit
_ft_isalnum: 
    push rbp
    mov rbp, rsp
	xor eax, eax
    cmp rdi, 122
   	ja exit
    cmp rdi, 97
    jge success
    cmp rdi, 90
	jg exit
    cmp rdi, 65
    jge success
	cmp rdi, 48
	jl exit
    cmp rdi, 57
    jle success
exit:
	leave
	ret
