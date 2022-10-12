.MODEL SMALL
.STACK 100h
.DATA

MSG DB 3fh,0h,24h   
MSG2 DB 0AH,0DH,'THE SUM OF $' 
MSG3 DB ' AND $'  
MSG4 DB ,' IS $'


.CODE

MAIN PROC

    MOV AX,@DATA
    MOV DS,AX
  
        LEA DX, MSG.
        MOV AH, 9
        INT 21h
        
        MOV AH,1
        INT 21H 
        MOV BX,AX 
        
        MOV AH,1
        INT 21H 
        MOV CX,AX 
        
        LEA DX,MSG2
        MOV AH,9
        INT 21h 
        
        MOV AH,2
        MOV DX,BX
        INT 21H
         
        LEA DX,MSG3
        MOV AH,9
        INT 21h
                
        MOV AH,2
        MOV DX,CX
        INT 21H
        
        LEA DX,MSG4
        MOV AH,9
        INT 21h  
         
        ADD BX,CX 
        SUB BX,48
        MOV AH,2 
        MOV DX,BX
        INT 21H     
        
        MOV AH,4CH
        INT 21H
        
        
        
        
        
        

    Exit:
        MOV AH,4CH
        INT 21h


        MAIN ENDP
        END MAIN


