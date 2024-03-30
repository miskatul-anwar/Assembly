section .data
  ailabu db "I'm in a love with the shape of you!" , 0
section .text
  global _start

_start:
  ;Now, write the code to propose someone 
    mov rax, 1
    mov rdi, 1
    mov rsi, ailabu
    mov rdx, 100
    syscall
    
    mov rax, 60
    xor rdx, rdi
    syscall 
