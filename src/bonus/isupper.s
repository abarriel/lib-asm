; int	ft_isupper(int c)

section .text
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
	jmp exit

exit:
	leave
	ret
