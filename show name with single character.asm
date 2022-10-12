.MODEL SMALL
.STACK 100h
.DATA

MSG DB 41h,42h,44h,55h,4Ch,4Ch,41h,48h,0h,41h,4ch,0h,4dh,41h,48h,41h,44h,49h,0ah,0dh,24h 


.CODE

MAIN PROC

    MOV AX,@DATA
    MOV DS,AX
  
        LEA DX, MSG.
        MOV AH, 9
        INT 21h
        

    Exit:
        MOV AH,4CH
        INT 21h


        MAIN ENDP
        END MAIN


