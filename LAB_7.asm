STR_OUT MACRO P
    MOV DX, OFFSET P
    MOV AH,9
    INT 21H
    
ENDM
.MODEL SMALL
.STACK 100H
.DATA 
   
     MSG DB 'MESSAGE$'
     
     MSG1 DB 0D,0AH, 'MESSAGE2$'  
     
     MSG2 DB 0D,0AH, 'MESSAGE3$'
     
.CODE

  MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    STR_OUT MSG
    STR_OUT MSG1
    STR_OUT MSG2
    
    MOV AH,4CH
    INT 21H
    
   MAIN ENDP
END MAIN