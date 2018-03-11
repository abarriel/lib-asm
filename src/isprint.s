; int		ft_isprint(int c)
; {
; 	return (c >= 32 && c <= 126);
; }


section .text
    global _ft_isprint

_ft_isprint: 
    push rbp
    mov rbp, rsp
	xor eax, eax
	cmp rdi, 32
	jl exit
    cmp rdi, 126
   	ja exit
	inc eax
	jmp exit

exit:
	leave
	ret
