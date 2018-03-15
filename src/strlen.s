; check fast_strlen.s for optimization - I have to use repne here.s
global _ft_strlen
_ft_strlen:
    push rbp
    mov rbp, rsp
    sub ecx, ecx
    not ecx
    mov eax, 0
    repne scasb
    inc ecx
    not ecx
    mov eax, ecx
    leave
    ret
