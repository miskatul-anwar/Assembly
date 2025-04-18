section .data

section .bss
  buffer resb 1

section .text
  global _start

_start:
  nop

moving_immediate_data_:
  mov eax, 100
  mov byte[buffer], 0x50

exit:
  mov eax, 1
  mov ebx, 0
  int 0x80
