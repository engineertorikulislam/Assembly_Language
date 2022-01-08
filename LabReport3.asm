
.model small
.stack 100H

 ;191002067 
.data   


IN1 db "ENTER 1ST NUMBER: $"
IN2 db 0AH,0DH, "ENTER 2ND NUMBER: $"
R db 0AH,0DH, "SUM OF TWO NUMBER: $"

 
A DB 0
B DB 0

.code  

   
main proc
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AH,9
    LEA DX,IN1
    INT 21H
    
    MOV AH,1
    INT 21H       
    MOV A,AL 
    
    
    
    MOV AH,9
    LEA DX,IN2
    INT 21H  
    
    MOV AH,1
    INT 21H
    MOV B,AL      
    
   
   
    ADD AL,A
    MOV AH,0
    AAA
    
    ADD AL,48
    ADD AH,48
    
              
    MOV BX,AX
               
               
    MOV AH,9
    LEA DX,R
    INT 21H 
    
    
     
    MOV AH,2
    MOV DL,BH
    INT 21H 
    
    
    MOV AH,2
    MOV DL,BL
    INT 21H 
 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN




