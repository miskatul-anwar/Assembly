section .data
    msg db 'Enter a string: ', 0
    len equ $ - msg

    user_input db 100 ; reserve space for user input
    user_input_len equ 100

    output_msg db 'You entered: ', 0

section .text
    global _start

_start:
    ; Print message asking for input
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80

    ; Read input from user
    mov eax, 3     ; sys_read syscall number
    mov ebx, 0     ; file descriptor 0 (stdin)
    mov ecx, user_input
    mov edx, user_input_len
    int 0x80

    ; Print out the user input
    mov eax, 4
    mov ebx, 1
    mov ecx, output_msg
    mov edx, 13     ; Length of output message
    int 0x80

    ; Print the user input
    mov eax, 4
    mov ebx, 1
    mov ecx, user_input
    mov edx, user_input_len
    int 0x80

    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80

