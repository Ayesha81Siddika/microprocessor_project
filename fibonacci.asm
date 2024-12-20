ORG 100H
    LEA DX,MSG1
    MOV AH,09H
    INT 21H
    
    MOV DL,20H
    MOV AH,02H
    INT 21H
    
    MOV BH,1
    MOV DH,1
    MOV CX,9
    
    FIBLOOP:
        OR DL,30H
        MOV AH,02H
        INT 21H
        MOV DL,DH
        MOV DH,BH
        
        PUSH DX
            MOV AL,DL
            MOV AH,DH
            ADD AH,AL
            MOV BH,AH
            
         POP DX
      LOOP FIBLOOP
      
      RET
      
MSG1 DB "FIBONACCI FIRST 5 TERMS", 0DH,0AH
     DB "START FROM 0 WHILE OTHERS LIKE" ,0DH,0AH
     DB "TO INCLUDE THE 1 IN THE FIRST TERM", 0DH,0AH,"$"
     
     FIBTERM DB 12 DUP(0)