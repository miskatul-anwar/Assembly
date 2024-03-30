section .data
  wheredoyou db "I live in Chittagong!" , 0
section .text
  global _start
_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, wheredoyou
    mov rdx, 21
    syscall

    mov rax, 0
    mov rdx, rdx 
    syscall
