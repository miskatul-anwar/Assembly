# moving_immediate_data: mov immediate data between registers and memory
.section .data

.section .bss 
  .lcomm buffer 1

.section .text
  .globl _start

_start:
  nop
moving_immediate_data_to_register:
  movl $100, %eax
  movl $0, %ebx
  int $0x80
