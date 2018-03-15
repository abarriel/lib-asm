; char	*ft_strcat(char *dest, const char *src)
; {
; 	size_t len;
; 	size_t i;

; 	i = 0;
; 	len = ft_strlen(dest);
; 	while (src[i] != '\0')
; 	{
; 		dest[len + i] = src[i];
; 		i++;
; 	}
; 	dest[len + i] = '\0';
; 	return (dest);
; }

; rdi dest
; rsi src
; rdx
global _ft_strcat
_ft_strcat:
    push rbp
    mov rbp, rsp
    mov rax, rdi
len:
	cmp	byte[rdi], 0
	je	copy
    inc rdi
	jmp	len
copy:
	cmp	byte[rsi], 0
    je end
    movsb
    jmp	copy
end:
    leave
    ret