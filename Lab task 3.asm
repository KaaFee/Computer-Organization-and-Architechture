.MODEL SMALL
.STACK 100h
.DATA

MSG DB 'Do you like to see a caps or number?$' 
MSG2 DB 0AH,0DH, 'Choices:$'
MSG3 DB 0AH,0DH, '1.See caps$'
MSG4 DB 0AH,0DH, '2.See number$'  
MSG5 DB 0AH,0DH, 'Please enter your choice:$'
MSG6 DB 0AH,0DH, 'You choose to see caps.$'
MSG7 DB 0AH,0DH, 'Enter a small letter:$' 
MSG8 DB 0AH,0DH, 'You choose to see number.$'
MSG9 DB 0AH,0DH, 'Enter a small letter from a-i:$'  

MSG10 DB 0AH,0DH, 'Caps of the given input:$' 
MSG11 DB 0AH,0DH, 'Number of the given input:$'

.CODE

MAIN PROC

    MOV AX,@DATA
    MOV DS,AX
    
    mov ah,9     ;User interface
    lea dx,MSG
    int 21h
    lea dx,MSG2
    int 21h
    lea dx,MSG3
    int 21h
    lea dx,MSG4
    int 21h
    lea dx,MSG5
    int 21h   
    
    mov ah,1    ;Take user input
    int 21h
    mov bl,al 
    sub bl,030h 
    
    cmp bl,1
    je CAPS
    jne NUMBER
    
    CAPS:
        mov ah,9
        lea dx,MSG6
        int 21h
        lea dx,MSG7 
        int 21h
        
        
        mov ah,1
        int 21h
        mov bl,al
        
        mov ah,9
        lea dx,MSG10
        int 21h
        
        sub bl,020h
        
        mov ah,2
        mov dl,bl
        int 21h
        
        
        jmp EXIT
    
    
    
    NUMBER:
    
        mov ah,9
        lea dx,MSG8
        int 21h
        lea dx,MSG9
        int 21h
                
        mov ah,1
        int 21h
        mov bl,al        
                
           
        mov ah,9
        lea dx,MSG11
        int 21h
        
        sub bl,030h
        
        mov ah,2
        mov dl,bl
        int 21h
        
        
        jmp EXIT




    Exit:
        MOV AH,4CH
        INT 21h


        MAIN ENDP
        END MAIN