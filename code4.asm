section .data
  whoami db "Who am I?" , 0 
section .text
  global _start
_start:
  mov rax, 1
  mov rdi, 1
  mov rsi, whoami
  mov rdx, 9
  syscall

  mov rax, 60
  xor rdx, rdi 
  syscall
