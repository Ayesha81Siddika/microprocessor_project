org 100h
mov ah,1
int 21h
mov bl,al

mov ah,1
int 21h

add bl,al
sub bl,48

mov ah,2
mov dl,bl
int 21h
