.model small
.stack 100h
.data 
    r db "Enter a number (1-4): $"
    n db 00h, 0Ah, '$'
    x db ?
    a db 'A-Z: $'
    b db 'Z-A: $'
    c db 'a-z: $'
    d db 'z-a: $'
    i db 'Invalid input. Please enter a number between 1 to 4. $'
    ;Md Jahidul Islam
.code
main proc 
    ;newline
    mov ax,@data
    mov ds,ax
    
    lea dx,r
    mov ah,09
    int 21h
    
    mov ah,01h
    int 21h
    sub al,'0'
    mov x,al
    
    lea dx,n
    mov ah,09h
    int 21h
    
    cmp x,1
    jb invalid
    cmp x,4
    ja invalid
    mov al,x
    
    cmp al,1
    je step1
    cmp al,2
    je step2
    cmp al,3
    je step3
    cmp al,4
    je step4
    
    jmp ep
invalid:
       lea dx,i
       mov ah,09h
       int 21h
       jmp ep
       
step1:
     lea dx,a
     mov ah,09h
     int 21h
     mov al,'A'
     l1:
        mov dl,al
        mov ah,02h
        int 21h
        inc al
        cmp al,'Z'+1
        jne l1
        jmp ep
step2:
     lea dx,b
     mov ah,09h
     int 21h
     mov al,'Z'
     l2:
        mov dl,al
        mov ah,02h
        int 21h
        dec al
        cmp al,'A'- 1
        jne l2
        jmp ep  
 step3:
     lea dx,c
     mov ah,09h
     int 21h
     mov al,'a'
     l3:
        mov dl,al
        mov ah,02h
        int 21h
        inc al
        cmp al,'z'+1
        jne l3
        jmp ep  
step4:
     lea dx,a
     mov ah,09h
     int 21h
     mov al,'z'
     l4:
        mov dl,al
        mov ah,02h
        int 21h
        dec al
        cmp al,'a'-1
        jne l4
        jmp ep 
 ep:
    lea dx,n
    mov ah,09h
    int 21h
    mov ax,4C00h
    int 21h
 main endp
end main