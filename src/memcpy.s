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
