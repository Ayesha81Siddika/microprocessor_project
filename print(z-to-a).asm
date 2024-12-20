org 100h

mov bl,'z'

p2:
    mov ah,2
    mov dl,bl
    int 21h

    sub bl,1

    cmp bl,'a'-1
    jg p2