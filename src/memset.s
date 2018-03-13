; rdi, rsi, rdx

; rdi   destination
; rsi   value (char)
; rdx   count (bytes)

global _ft_memset
_ft_memset:
    push rbp
    mov rbp, rsp
    mov al, sil
    mov rcx, rdx
    mov rbx, rdi
    rep stosb
    mov rax, rbx
    leave
    ret