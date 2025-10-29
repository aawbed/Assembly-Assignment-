section .data
    sum db 0

section .text
    global _start

_start:
    mov ecx, 15      ; start value
    mov eax, 0       ; sum = 0

loop_start:
    add eax, ecx
    inc ecx
    cmp ecx, 26      ; stop when ecx = 26
    jne loop_start

    ; Exit (Linux syscall)
    mov ebx, eax     ; return sum in ebx for exit code
    mov eax, 1       ; sys_exit
    int 0x80
