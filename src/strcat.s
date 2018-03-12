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
; rdi, rsi, rdx
