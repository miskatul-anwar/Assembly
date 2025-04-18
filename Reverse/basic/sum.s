.section .data
msg:        .asciz "The sum is: %d\n"
input_fmt:  .asciz "%d"

.section .bss
    .lcomm num1, 4
    .lcomm num2, 4
    .lcomm result, 4

.section .text
    .globl _start
    .extern printf, scanf

_start:
    nop

    # Prompt for first integer
    movq $input_fmt, %rdi       # Format for input
    movq $num1, %rsi            # Store input at num1
    call scanf

    # Prompt for second integer
    movq $input_fmt, %rdi       # Format for input
    movq $num2, %rsi            # Store input at num2
    call scanf

    # Load numbers and add them
    movl num1, %eax             # Load num1 into %eax
    movl num2, %ebx             # Load num2 into %ebx
    addl %ebx, %eax             # Add %ebx (num2) to %eax (num1)

    # Store the result
    movl %eax, result           # Move sum to result

    # Print the result
    movq $msg, %rdi             # Format for printing
    movl result, %esi           # Load the result into %esi
    call printf

    # Exit the program
    movq $60, %rax              # Syscall number for exit
    xor %rdi, %rdi              # Exit status (0)
    syscall
