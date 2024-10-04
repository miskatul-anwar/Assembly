.section .data
  var1:
    .int 10

.section .bss
  .lcomm var2, 4

.section .text
  .globl _start

_start:
  movl var1, %ecx      # Load the value of 'var1' into %ecx
  movl $var2, %ebx     # Load the address of 'var2' into %ebx
  movl %ecx, (%ebx)    # Store the value of %ecx into the address of 'var2'

exit:
  movl $1, %eax        # Syscall number for exit
  movl $0, %ebx        # Exit status 0
  int $0x80            # Trigger interrupt to exit
