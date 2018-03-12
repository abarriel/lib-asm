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
; global _ft_bzero
; _ft_bzero:
;     push rbp
;     mov rbp, rsp
; loop:
; 	cmp rsi, 0
; 	je exit
;     mov byte[rdi], 0
; 	add rdi, 1
; 	sub rsi, 1
; 	jmp loop
; exit:
;     leave
; 	ret
 