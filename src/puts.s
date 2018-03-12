section .data
	nul: db "(null)"
section .text
	global _ft_puts
	extern _ft_strlen
; rdi, rsi, rdx
standards:
    lea rsi, [rel nul]
    mov rdx, 6
    jmp exit
_ft_puts:
    push rbp
    mov rbp, rsp
    cmp rdi, 0 ; why i can do cmp [rsp + 4], 0
    je standards
    mov rsi, rdi
    call _ft_strlen ; why rdi chansge after the call
    mov rdi, 1
    mov rdx, rax
exit:
	mov rax, 0x2000004
	syscall
    mov rdi, 1
    mov byte[rsi], 10 ; if i want to concat, and i will, how do it nicely
    mov rdx, 1
	mov rax, 0x2000004
	syscall
    leave
    ret
