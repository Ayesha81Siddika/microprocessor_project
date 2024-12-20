org 100h

mov bl, '1'

L2:
    mov ah, 2
    mov dl, bl
    int 21h

    inc bl
    cmp bl, '9'
    jg end
    jmp L2