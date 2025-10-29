section .text
    global factorial

factorial:
    mov rax, 1           ; result = 1
    mov rcx, rdi         ; n (passed in rdi)
    test rcx, rcx
    jle done

loop_start:
    imul rax, rcx
    loop loop_start

done:
    ret
    
section .note.GNU-stack noalloc noexec nowrite align=1
