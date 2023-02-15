.MODEL SMALL
.STACK 100h
.DATA

MSG DB 'Lets see a comparison Assembly code: $'   
MSG2 DB 'bh<bl and bh<cl so 0$'
MSG3 DB 'bh<bl but bh>cl so 1$'

.CODE

MAIN PROC

    MOV AX,@DATA
    MOV DS,AX
    
    mov ah,9     ;User interface
    lea dx,MSG
    int 21h 
    
    MOV AH,2
    MOV DL,0Ah ;new line
    INT 21H
    MOV DL,0Dh
    INT 21H
    
    mov bh,01h
    mov bl,03h  
    mov cl,02h
    
    cmp bh,bl
    JL Condition1
    jmp Exit
    
    Condition1:
        cmp bh,cl
        JL  Condition2    
         mov ah,9    
         lea dx,MSG3
         int 21h    
         
         jmp Exit
        
    Condition2:
         mov ah,9    
         lea dx,MSG2
         int 21h    
         jmp Exit

Exit:
    MOV AH,4CH
    INT 21h


    MAIN ENDP
    END MAIN