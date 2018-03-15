; void	*ft_memcpy(void *dest, const void *src, size_t n)
; rdi, rsi, rdx
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
