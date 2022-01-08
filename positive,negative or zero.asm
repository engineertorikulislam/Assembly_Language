.MODEL SMALL
.STACK 100H
.DATA

  MSG DB 'ENTER THE INPUT$'
  MSG1 DB 'THE NUMBER IS POSITIBE$'
  MSG2 DB 'THE NUMBER IS ZERO$'
  MSG3 DB 'THE NUMBER IS NEGATIVE$'  
  
  
  .CODE
  
     MAIN PROC
        
        MOV AX, @DATA
        
        MOV DS, AX      ; DATA SEGMENT INITILIZATION
        
        LEA DX, MSG
        
        MOV AH,9
        INT 21H
        
        MOV AH,1
        INT 21H 
        
        SUB AL, 030H
        MOV BL,AL
          
          
        MOV AH,2
        MOV DX, 0DH  
        INT 21H 
        
        MOV DX,0AH
        INT 21H
                 
                 
        CMP BL,0
        JG POS 
        CMP BL,0
        LEA AX, MSG2
        MOV DX, 0AH
        INT 21H
        
        POS:
        
           LEA DX, MSG1
           MOV AH,9
           INT 21H
        
        
        ZERO: 
        
        CMP AL,0
        
        
        
        
        NEGATIVE: