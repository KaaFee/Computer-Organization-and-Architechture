.MODEL SMALL
.STACK 100h
.DATA

MSG DB 0AH,0DH,'HELLO WORLD$' 
MSG2 DB 0AH,0DH,'Exit world$'

.CODE

MAIN PROC

    MOV AX,@DATA
    MOV DS,AX

    MOV CX,3

    PRINT_LOOP:
  
        LEA DX, MSG.
        MOV AH, 9
        INT 21h
        dec cx

        JG PRINT_LOOP 
        
    LEA DX,MSG2
    MOV AH,9
    INT 21h

    Exit:
        MOV AH,4CH
        INT 21h


        MAIN ENDP
        END MAIN


