section .data
  details db "My Name is Miskatul Anwar", 0
section .text
  global _start
_start:
  mov rax, 1
  mov rdi, 1
  mov rsi, details
  mov rdx, 70
  syscall

  mov rax, 100
  xor rdx, rdi
  syscall
