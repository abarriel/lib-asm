; rdi, rsi, rdx
; rcx counter
; rax acc
; fast as hell
global _ft_strlen_bytes
_ft_strlen_bytes:
    push rbp
    mov rbp, rsp
    mov rsi, rdi
    add rsi, -1
depth1: ; depth 1  ptr = rsi
    add rsi, 1
    mov ecx, esi ; if ((int)p & 3 === 0)
    and ecx, 3
    jne ret_depth1
depth2:
    mov eax, dword [rsi] ; *(int*)p
    add rsi, 4 ; 4 bytes at a time
    mov edx, eax
    not eax
    sub edx, 0x01010101
    and eax, 0x80808080
    and eax, edx
    je depth2
    add rsi, -4
ret_depth1:
    cmp byte [rsi], 0 ; *p = 0
    jne depth1
    sub rdi, rsi
    mov rax, rdi
    neg rax
    leave
    ret
