.MODEL SMALL 
.STACK 100H 
.DATA 
.CODE      

 MAIN PROC 
    MOV AX, @DATA
     MOV DS, AX
      MOV CL,0 
      CHECK: 
      CMP CL, 12
       JG TERMINATE
       CMP CL,10
       JGE Multiple
       MOV DL,CL 
       ADD DL,30H 
       MOV AH,2 
       INT 21H  
      
       INC CL 
       CMP CL,10
       JGE Multiple 
       JMP CHECK 
       TERMINATE:
       MOV AX,4CH
       INT 21H 
          
      Multiple:
        XOR AX,AX 
        MOV AL,CL 
        MOV BL,10 
        DIV BL
        MOV BH,AH
        MOV DL,AL 
        ADD DL,30H
        MOV AH,2 
        INT 21H
        MOV DL,BH 
        ADD DL,30H
        MOV AH,2 
        INT 21H 
        INC CL 
        JMP CHECK
        
        MAIN ENDP
 END MAIN            
 