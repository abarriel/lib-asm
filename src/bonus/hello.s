%define SYCALL 0×2000004
section .data
	hello: db "Hello World", 10
section .text
	global _ft_hello
	extern _printf
_ft_hello:
	push rbp
	mov rbp, rsp
	mov rdi, 1
	lea rsi, [rel hello]
	mov rdx, 12
	mov rax, 0x2000004
	syscall
	leave
	ret

