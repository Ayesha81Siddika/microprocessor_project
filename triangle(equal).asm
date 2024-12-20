.MODEL SMALL
.DATA
.CODE
MAIN PROC
    MOV CX,1          
    MOV DX,15       
LINE:
    MOV BX,DX         
    SUB BX,CX         
SPACE:
    MOV AH,0EH        
    MOV AL,' '      
    INT 10H
    DEC BX             
    JNZ SPACE   

    MOV BX,CX         
    ADD BX,CX         
    DEC BX            
STAR:
    MOV AH,0EH      
    MOV AL,'*'        
    INT 10H
    DEC BX        
    JNZ STAR     

    MOV AH,0EH       
    MOV AL,0DH        
    INT 10H
    MOV AL,0AH  
    INT 10H

    INC CX            
    CMP CX,DX         
    JBE LINE     

    MOV AH,4CH 
    INT 21H
MAIN ENDP
END MAIN

