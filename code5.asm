section .data
  amar_nam db "Miskatul Anwar" , 0
section .text
  global _start
_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, amar_nam
	mov rdx, 14
  syscall

  mov rax, 69
  mov rdx, rdx
  syscall
