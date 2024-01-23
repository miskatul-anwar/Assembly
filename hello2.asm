.global _start
; A simple practice on assembly language
.global _start
.intel_syntax noprefix

_start:
        
        mov rax, 1 ; sys_write
        mov rdi, 1
        lea rsi, [Hello_world]
        mov rdx, 13
        syscall

        mov rax, 60
        mov rdi, 69 ;sys_exit
        syscall 
Hello_world:
        .asciz "Hello World.\n"