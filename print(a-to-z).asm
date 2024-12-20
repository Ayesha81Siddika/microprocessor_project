org 100h

mov bl,'a'

p2:
    mov ah,2
    mov dl,bl
    int 21h

    add bl,1

    cmp bl,'z'+1
    jne p2