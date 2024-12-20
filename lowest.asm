org 100h
jmp start

start:
    mov ah,1
    int 21h
    mov bl,al

    mov ah,1
    int 21h
    mov bh,al

    cmp bl,bh
    jl print_bl
    mov dl,bh
    jmp print_dl

print_bl:
    mov dl,bl

print_dl:
    mov ah,2
    int 21h