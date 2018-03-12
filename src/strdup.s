; char	*ft_strdup(const char *s)
; {
; 	char	*d;

; 	if (!(d = (char*)malloc(sizeof(char) * (ft_strlen(s) + 1))))
; 		return (NULL);
; 	ft_memcpy(d, s, ft_strlen(s) + 1);
; 	return (d);
; }
; rdi, rsi, rdx
