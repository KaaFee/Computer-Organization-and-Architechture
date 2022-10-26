.MODEL SMALL
.STACK 100H     
       
.DATA 
    
msg DB 0AH,0DH,'? $'
msg1 DB 0AH,0DH,'* * * * * * * * * *$'
msg2 DB 0AH,0DH,'*                 *$'
msg3 DB 0AH,0DH,'*                 *$'
msg4 DB 0AH,0DH,'*                 *$'
msg5half DB 0AH,0DH,'*       $';output
msg5nhalf DB ,'       *$'
msg6 DB 0AH,0DH,'*                 *$'
msg7 DB 0AH,0DH,'*                 *$'
msg8 DB 0AH,0DH,'*                 *$'
msg9 DB 0AH,0DH,'*                 *$'
msg10 DB 0AH,0DH,'* * * * * * * * * *$'
 
var DB '? $'


        
.CODE

MAIN PROC  
    
    mov ax,@DATA
    mov ds, ax
    
                    
    lea dx,msg ;output ?
    mov ah,9
    int 21h
         
    mov ah,1    ;input 1
    int 21h    
    mov bl,al   
    
    mov ah,1    ;input 2
    int 21h
    mov cl,al  
    
    mov ah,1    ;input 3
    int 21h
    mov var,al
    
         
    lea dx,msg1 ;output msg1
    mov ah,9
    int 21h 
    
    
    
    lea dx,msg2 ;output msg2
    mov ah,9
    int 21h 
    
    
    
    lea dx,msg3 ;output msg3
    mov ah,9
    int 21h 
    
    
    
    lea dx,msg4 ;output msg4
    mov ah,9
    int 21h 
    
   
            
    lea dx,msg5half ;output  msg5
    mov ah,9
    int 21h 
    
    mov ah,2
    mov dl,bl
    int 21h    
    
    mov ah,2
    mov dl,cl
    int 21h
    
    mov ah,2
    mov dl,var
    int 21h  
    
    lea dx,msg5nhalf;output msg5
    mov ah,9
    int 21h
    
    
    
    lea dx,msg6 ;output 
    mov ah,9
    int 21h 
    
    
    
    lea dx,msg7 ;output 
    mov ah,9
    int 21h 
    
    
    
    lea dx,msg8 ;output 
    mov ah,9
    int 21h 
               
    lea dx,msg9 ;output 
    mov ah,9
    int 21h 
    
    lea dx,msg10 ;output 
    mov ah,9
    int 21h 
    
    
    
   
    
    
    
    
   
        
    EXIT:
    MOV AX,4CH
    INT 21H 
    
    MAIN ENDP
END MAIN