; void	*ft_memcpy(void *dest, const void *src, size_t n)
; {
; 	unsigned char *d;
; 	unsigned char *s;

; 	s = (unsigned char *)src;
; 	d = (unsigned char *)dest;
; 	if (n == 0 || dest == src)
; 		return (dest);
; 	while (n != '\0')
; 	{
; 		*d++ = *s++;
; 		n--;
; 	}
; 	return (dest);
; }
; rdi, rsi, rdx

; rdi   destination
; rsi   src (char)
; rdx   count (bytes)

global _ft_memcpy
_ft_memcpy:
    push rbp
    mov rbp, rsp
    push rdi
    mov rcx, rdx
    mov rax, rsi
    rep movsb
    pop rdi
    mov rax, rdi
    leave
    ret
