; char	*ft_strdup(const char *s)
; {
; 	char	*d;

; 	if (!(d = (char*)malloc(sizeof(char) * (ft_strlen(s) + 1))))
; 		return (NULL);
; 	ft_memcpy(d, s, ft_strlen(s) + 1);
; 	return (d);
; }
; rdi, rsi, rdx
global _ft_strdup
extern _malloc
extern _ft_strlen_bytes
extern _ft_memcpy
_ft_strdup:
    push rbp
    mov rbp, rsp
    mov rsi, rdi ; mov s to 2nd argument for memcpy 
    push rsi ; save the snd argument
    call _ft_strlen_bytes ; call ft_strlen with rdi = s
    inc rax ; add 1 to len for the zero
    mov rdx, rax ; mov len to rdx (3parametre for memcpy)
    push rdx ; save the 3nd parameters
    mov rdi, 0 ; mov len to rdi (1parameters for malloc)
    call _malloc
    test rax, rax ; test if malloc is null
    je exit
    pop rdx ; get the 3nd parameters 
    pop rsi ; get s for 2 nd arametrs
    mov rdi, rax ; gete 
    call _ft_memcpy
exit:
    leave
    ret