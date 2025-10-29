section .text
    global _start

_start:
    mov ecx, 25      ; start value
    mov eax, 0       ; sum = 0

loop_start:
    add eax, ecx
    dec ecx
    cmp ecx, 14      ; stop when ecx = 14
    jne loop_start

    ; Exit (Linux syscall)
    mov ebx, eax
    mov eax, 1
    int 0x80
