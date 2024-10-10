.section .data
hello_msg:
  .asciz "Hello, World!\n"

.section .text
  .globl _start
_start:
  nop
  mov $1, %rax        # Syscall number for sys_write
  mov $1, %rdi        # File descriptor (stdout)
  mov $hello_msg, %rsi # Message to write
  mov $13, %rdx       # Length of the message
  syscall             # Make the system call

exit:
  mov $60, %rax       # Syscall number for sys_exit
  xor %rdi, %rdi      # Exit status (0)
  syscall             # Make the system call
