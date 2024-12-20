org 100h
    jmp start

start:
    mov ah, 1
    int 21h
    mov bl, al

    mov ah, 1
    int 21h
    mov bh, al

    cmp bl, bh
    jg display_bl
    jmp display_bh

display_bl:
    mov ah, 2
    mov dl, bl
    int 21h
    jmp done

display_bh:
    mov ah, 2
    mov dl, bh
    int 21h
    jmp done

main endp 
end main
