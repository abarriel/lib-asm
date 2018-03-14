section .data
	nul: db "(null)", 10
    .len: equ $ - nul
    feed: db 10
section .text
	global _ft_puts
	extern _ft_strlen_bytes
; rdi, rsi, rdx
null:
    mov rax, 0x2000004
    mov rdi, 1
    lea rsi, [rel nul]
    mov rdx, nul.len
    syscall
    mov al, dl
    neg rax
    leave
    ret    
_ft_puts:
    push rbp
    mov rbp, rsp
    cmp rdi, 0
    je null
    mov rsi, rdi
    push rsi
    call _ft_strlen_bytes
    pop rsi
    mov rdi, 1
    mov rdx, rax
	mov rax, 0x2000004
	syscall
    mov rdi, 1
    lea rsi, [rel feed] ; if i want to concat, and i will, how do it nicely
    mov rdx, 1
	mov rax, 0x2000004
	syscall
    mov al, dl
    neg rax
    leave
    ret
