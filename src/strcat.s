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
extern _ft_strlen_bytes
global _ft_strcat
_ft_strcat:
    push rbp
    mov rbp, rsp
    xor rcx, rcx
    push rsi
    push rdi
    call _ft_strlen_bytes
    pop rsi
    pop rdi
    ; add rdi, rax
loop1:
    cmp byte[rsi + rcx], 0
    je exit
    mov byte[rdi + rcx + rax], byte[rsi + rcx]
    inc rcx
    jmp loop1
exit:
    pop rdi
    mov rax, rdi
    leave
    ret
    
