.MODEL SMALL
.DATA 
    VAL1 DB 0
    NL1 DB 0AH,0DH, 'ENTER HOW MANY VALUES: $'
    NL2 DB 0AH,0DH, 'ENTER VALUE: $'
    NL3 DB 0AH,0DH, 'AVERAGE: $'
.CODE 
MAIN PROC
    MOV AX, @DATA         
    MOV DS, AX

    LEA DX, NL1
    MOV AH, 09H
    INT 21H

    MOV AH,01H
    INT 21H
    SUB AL,30H   
    MOV CL,AL      
    MOV BL,AL          
    MOV VAL1,0       

LBL1:
    LEA DX, NL2
    MOV AH, 09H
    INT 21H

    MOV AH, 01H
    INT 21H
    SUB AL, 30H           
    ADD AL, VAL1         
    MOV VAL1, AL          
    LOOP LBL1      

LBL2:
    LEA DX,NL3
    MOV AH,09H
    INT 21H

    MOV AX,0             
    MOV AL,VAL1         
    DIV BL                

    ADD AL,30H           
    MOV DL,AL            
    MOV AH,02H      
    INT 21H

    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

