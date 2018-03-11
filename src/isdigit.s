; int	ft_isdigit(int c)
; {
; 	return (c >= '0' && c <= '9');
; }

section .text
    global _ft_isdigit

_ft_isdigit: 
    push rbp
    mov rbp, rsp
	xor eax, eax
	cmp rdi, '0'
	jl exit
    cmp rdi, '9'
   	ja exit
	inc eax
	jmp exit

exit:
	leave
	ret
