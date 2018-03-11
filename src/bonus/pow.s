; int		ft_pow(int s1)
; {
; 	int	i;

; 	i = 0;
; 	while (s1 > 0)
; 	{
; 		s1 /= 10;
; 		i++;
; 	}
; 	return (i);
; }
section .text
    global _ft_pow

_ft_pow: 
    push rbp
    mov rbp, rsp
	xor edi, edi
loop:
	test edi, edi
	jle exit
	mov eax, 10
	mov ecx, edi
	div ecx
	mov edi, eax
	inc eax
	jmp loop
exit:
	leave
	ret
