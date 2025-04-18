.section .data
res:
  .asciz "The smallest value is "
lr:
  .ascii ".\n"
consts:
  .int 43,144,32,432,122,4,32,11

.section .bss 
  .comm ans,1

.section .text
  .globl _start

_start:
  nop
  movl consts, %ebx
  movl $1, %edi

find_smallest_val:
  movl consts(,%edi,4),%eax
  cmp %ebx, %eax
  inc %edi
  cmp $8, %edi
  jne find_smallest_val 
  addl $0x30, %ebx
  movl %ebx, ans
