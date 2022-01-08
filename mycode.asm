.MODEL SMALL
.STACK 100H
.DATA

    N DB 5
    A DB ?

.CODE

   MAIN PROC 
    
    
     MOV AX, @DATA  ; DATA INITIALIZATION 
     MOV DS, AX
    
    MOV BL, N   ; DIRECT DATATRANSFER 
    
    MOV AH, 1     ; INPUT FUCTION
    
    INT 21H
    
    MOV AH,2   ; OUTPUT FUCTION 
    INT 21H
    
    MOV DL,AL
        
           
    MOV AX 4CH
    INT 21H
    
    
    MAIN ENDP    
   
   
   END MAIN