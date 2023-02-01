.MODEL SMALL
.STACK 100H     
       
.DATA 

MSG1 DB 'HELLO$'
MSG2 DB 'GOOD MORNING$'
nl EQU 0AH  ;Definning Equates
cr EQU 0DH  ;Definning Equates
 
.CODE

MAIN PROC   
    MOV AX,@DATA    ;calling all the functionality from data segment in line number 6
    MOV DS,AX                                                                        
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,2
    MOV DL,nl
    INT 21H
    MOV DL,cr
    INT 21H
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    
EXIT:
    MOV AX,4CH
    INT 21H 
    
    MAIN ENDP
    END MAIN
