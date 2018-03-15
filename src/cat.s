; void	ft_cat(int fd);
; char buff[1024];
; int n;

; while((n = read(fd, buff, 1024)))
; {
;     // printf("%d\n", n);
;     if(n < 0)
;         return ;
;     write(1, buff, n);
; }
section		.bss
	buffer  resb 1024
section		.text
	global	_ft_cat
; rdi, rsi, rdx
; read ssize_t read(int fd, buf, size_t nbyte);  3
; write ssize_t write(int fd, buf, nbyte); 4 
_ft_cat:
	push rbp
	mov rbp, rsp
    mov r8, rdi
loop:
    mov rdi, r8
    lea rsi, [rel buffer]
    mov rdx, 1024
    mov rax, 0x2000003
	syscall
    jc exit
    test rax, rax
    jle exit
    mov rdi, 1
    mov rdx, rax
    mov rax, 0x2000004
	syscall
    jmp loop
exit:
    leave
    ret