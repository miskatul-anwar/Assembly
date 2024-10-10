.section .bss
  .lcomm var2, 4
.section .text
  .globl _start
_start:
  movl $10, %ecx 
  movl %eax, var2
exit:
  movl $1, %eax
  movl $0, %ebx
  int $0x80


