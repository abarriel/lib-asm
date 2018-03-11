; int	ft_isupper(int c)

section .text
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
	jmp exit

exit:
	leave
	ret
