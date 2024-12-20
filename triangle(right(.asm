INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.CODE 
main proc
    MOV BX,1          
    MOV CX,7          
    PRINTN "THE RIGHT ANGLE TRIANGLE"
L1: 
    PUSH CX            
    MOV AH,02H        
    MOV DL,32         
L2: 
    INT 21H            
    LOOP L2            

    MOV CX,BX         
    MOV DL,'*'       
L3: 
    INT 21H           
    LOOP L3            

    MOV AH,02H        
    MOV DL,0AH      
    INT 21H
    MOV DL,0DH       
    INT 21H

    INC BX      
    POP CX          
    LOOP L1          
exit: 
    MOV AH,4CH
    INT 21H
main ENDP
END main