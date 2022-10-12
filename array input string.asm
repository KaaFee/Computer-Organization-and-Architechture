.MODEL SMALL
.STACK 100h
.DATA

ARR DB 50 DUP(?)

MSG DB 0AH,0DH, 'ENTER THE LENGTH OF YOUR NAME: $'
MSG2 DB 0AH,0DH,'What is your name: $'
MSG3 DB 0AH,0DH,'WELCOME: $'  
MSG4 DB 0AH,0DH,'ENTER THE LENGTH OF YOUR DATE OF BIRTH $'
 MSG5 DB 0AH,0DH,'WHICH DATE DID YOU BORN: $'
MSG6 DB 0AH,0DH,'YOUR DOB IS: $' 


.CODE

MAIN PROC

    MOV AX,@DATA
    MOV DS,AX
  
        LEA DX, MSG.
        MOV AH, 9
        INT 21h
        
         MOV AH,1
        INT 21H
        AND AL,0FH
             
             
        MOV CL,AL
        MOV BL,AL
        MOV SI,0
        MOV CX,6
        
        LEA DX,MSG2
        MOV AH,9
        INT 21h            
             
        PRINT_LOOP:
           MOV AH,1
           INT 21H
           MOV ARR[SI],AL
           INC SI 
           DEC CX
           
           JG PRINT_LOOP 
                  
        MOV CX,6  
        MOV SI,0
        
        LEA DX,MSG3
        MOV AH,9
        INT 21h 
            
        MOV AH,2
        PRINT_LOOP2:
           MOV DL,ARR[SI]
            INT 21h
            INC SI
            DEC CX 
           
           JG PRINT_LOOP2 
                         
                         
                         
           ;DATE OF BIRTH
                         
           LEA DX, MSG4
        MOV AH, 9
        INT 21h
        
         MOV AH,1
        INT 21H
        AND AL,0FH
             
             
        MOV CL,AL
        MOV BL,AL
        MOV SI,0
        MOV CX,6
        
        LEA DX,MSG5
        MOV AH,9
        INT 21h            
             
        PRINT_LOOP3:
           MOV AH,1
           INT 21H
           MOV ARR[SI],AL
           INC SI 
           DEC CX
           
           JG PRINT_LOOP3 
                  
        MOV CX,6  
        MOV SI,0
        
        LEA DX,MSG6
        MOV AH,9
        INT 21h 
            
        MOV AH,2
        PRINT_LOOP4:
           MOV DL,ARR[SI]
            INT 21h
            INC SI
            DEC CX 
           
           JG PRINT_LOOP4
         

    Exit:
        MOV AH,4CH
        INT 21h


        MAIN ENDP
        END MAIN


