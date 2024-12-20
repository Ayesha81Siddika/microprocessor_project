.MODEL SMALL
.STACK 100H

.DATA 
    w db 5            
    h db 5           
    p db '*', '$' 
    msg db "The Rectangle width or height is 5", 10, 13, "$"

.CODE 
main proc
    MOV AX,@DATA         
    MOV DS,AX             

    LEA DX,msg              
    MOV AH,09H            
    INT 21H

    MOV BL,[h]    
row:
    MOV CL,[w]     

column:
    MOV DL,[p]   
    MOV AH,02H               
    INT 21H

    DEC CL                   
    JNZ column         

    MOV DL,0AH              
    MOV AH,02H
    INT 21H
    MOV DL,0DH              
    MOV AH,02H
    INT 21H

    DEC BL                   
    JNZ row

    MOV AH,4CH
    INT 21H

main endp
END main