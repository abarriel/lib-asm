; int		ft_isascii(int c)
; {
	; return (c >= 0 && c <= 127);
; }


section .text
    global _ft_isascii

_ft_isascii: 
    push rbp
    mov rbp, rsp
	xor eax, eax
	cmp rdi, 0
	jl exit
    cmp rdi, 127
   	ja exit
	inc eax
	jmp exit

exit:
	leave
	ret
