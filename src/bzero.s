; void				ft_bzero(void *s, size_t n);
; void				*ft_memset(void *s, int c, size_t n);
; rdi, rsi, rdx
global _ft_bzero
extern _memset
_ft_bzero:
    push rbp
    mov rbp, rsp
    mov rdx, rsi
    xor rsi, rsi
    call _memset
    leave
	ret
