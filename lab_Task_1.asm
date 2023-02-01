;Take 3 user input And show the outputs in diffierent line 
;Sample Give your input:1 2 3
;Output : 1
;         2
;         3
.MODEL SMALL
.STACK 100H     
       
.DATA 

MSG1 DB 'Giver your input: $'
MSG2 DB 'Outputs are: $'
nl EQU 0AH  ;Definning Equates
cr EQU 0DH  ;Definning Equates  

num1 DB ?   ;Definning variable
num2 DB ?
num3 DB ?
 
.CODE

MAIN PROC   
    MOV AX,@DATA    ;calling all the functionality from data segment in line number 6
    MOV DS,AX                                                                        
    
    MOV AH,9
    LEA DX,MSG1 ;Showing msg1
    INT 21H
   
    
    MOV AH,1 
    INT 21H 
    MOV num1,AL ;Take first input
    INT 21H
    MOV num2,AL  ;Take second input
    INT 21H
    MOV num3,AL  ;Take third input
    
    
    MOV AH,2
    MOV DL,nl ;new line
    INT 21H
    MOV DL,cr
    INT 21H 
    
    
    MOV AH,9
    LEA DX,MSG2 ;Showing msg2
    INT 21H 
           
    MOV AH,2
    MOV DL,nl ;new line
    INT 21H
    MOV DL,cr
    INT 21H 
            
    MOV AH,2
    MOV DL,num1 ;Showing frist output
    INT 21H 
    
    MOV AH,2
    MOV DL,nl ;new line
    INT 21H
    MOV DL,cr
    INT 21H 
    
    MOV AH,2
    MOV DL,num2 ;Showing second output
    INT 21H 
    
    MOV AH,2
    MOV DL,nl ;new line
    INT 21H
    MOV DL,cr
    INT 21H 
    
    
    MOV AH,2
    MOV DL,num3 ;Showing third output
    INT 21H 
    
    
EXIT:
    MOV AX,4CH
    INT 21H 
    
    MAIN ENDP
    END MAIN
