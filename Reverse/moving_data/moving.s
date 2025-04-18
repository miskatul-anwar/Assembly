.section .data
.section .text
  .globl _start

_start:
  nop
  movl $22, %edx
moving:
  movl %edx, %eax

exit:
  movl $1, %eax
  movl $0, %ebx
  int $0x80
