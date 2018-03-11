section .text
    global _ft_isalpha

_ft_isalpha: 
    push rbp
    mov rbp, rsp
	xor eax, eax
    
    cmp rdi, 122
   	ja exit
	cmp rdi, 65
	jl exit
    cmp rdi, 90
    jle success
    cmp rdi, 97
    jge success
  	leave
	ret

success:
    inc eax

exit:
	leave
	ret
