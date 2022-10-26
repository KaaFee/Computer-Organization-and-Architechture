.MODEL SMALL
.STACK 100H     
       
.DATA 

msg1 DB 'Enter a number to compare with 7: $' 
msg2 DB ' Greater Than 7 $'
msg3 DB ' Less Than 7 $'
msg4 DB ' Equl To 7 $'
num DB '7 $'
 
.CODE

MAIN PROC  
    
    mov ax,@DATA
    mov ds, ax
    
   
    
    
    lea dx,msg1 ;output 
    mov ah,9
    int 21h 
    
    mov ah,1    ;input
    int 21h    
    mov bl,al  
    
    cmp num,bl  ;comparing  
    JE case1    ;if equl
    
    cmp num,bl  ;comparing
    JG case2    ;if greater
        
         
    mov ah,2
    mov dl,0ah  ;new line
    int 21h
    mov dl,0dh  
    int 21h
    
    mov ah,2    
    mov dl,bl
    int 21h
    
    
    
    lea dx,msg2 
    mov ah,9
    int 21h
    
     mov ah,2   
    mov dl,cl
    int 21h
    
    jmp case3
    
    case1:
    
    
    mov ah,2
    mov dl,0ah  ;new line
    int 21h
    mov dl,0dh 
    int 21h
    
    mov ah,2    
    mov dl,bl
    int 21h
    
    
    
    lea dx,msg4  
    mov ah,9
    int 21h
    
     mov ah,2    
    mov dl,cl
    int 21h
    
    jmp case3  
    
   
    
    
    case2: 
    
    mov ah,2
    mov dl,0ah 
    int 21h
    mov dl,0dh  
    int 21h
    
    mov ah,2    
    mov dl,bl
    int 21h
    
    
    
    lea dx,msg3 
    mov ah,9
    int 21h
    
     mov ah,2    
    mov dl,cl
    int 21h
    
    case3:       
    
EXIT:
    MOV AX,4CH
    INT 21H 
    
    MAIN ENDP
END MAIN







