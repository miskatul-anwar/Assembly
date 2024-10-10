.section .data
array:
  .int 5,6,7,8,9,8,6,5,4,3

.section .text
  .globl _start

_start:
  movl array, %eax
  movl $array, %edi
  movl $25, 4(%edi)
  movl $1, %edi
  movl array(, %edi, 4), %ebx

exit:
  movl $1, %eax 
  movl $0, %ebx
  int $0x80
