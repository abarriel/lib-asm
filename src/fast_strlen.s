global _fast_strlen
_fast_strlen:
    push rbp
    mov rbp, rsp
    sub ecx, ecx
    not ecx
    mov eax, 0
    mov al, 0
    repne scasb
    inc ecx
    not ecx
    mov eax, ecx
    leave
    ret