.MODEL SMALL
.STACK 100H
.DATA


   N    DB 2,1,3,4,1
   STR  DB 'THE SUM OF EVEN =$'
   STR1 DB 0DH,0AH,'THE SUM OF ODD=$'
   
.CODE

  
   MAIN PROC
    
       MOV AX,@DATA
       MOV DS,AX
       
       CALL EVEN
       
       MOV DX,OFFSET STR
       MOV AH,9
       INT 21H
       
       
       MOV DL,CH
       ADD DL, 30H
       MOV AH,2
       INT 21H
       
       
       CALL ODD
       
       MOV DX,OFFSET STR1
       MOV AH,9
       INT 21H
       
       MOV DL,CH
       ADD DL,30H
       INT 21H
       
       MOV AH,4CH
       INT 21H
       
     MAIN ENDP
   
   
     EVEN PROC
        
        MOV SI,0
        MOV CH,0
        
        SCAN:
          
           CMP SI,5
           JE TER
           MOV BL, N[SI]
           MOV CL,BL
           MOV AX,BX
           MOV BL,2
           DIV BL
           CMP AH,0
           JE EVEN_SUM
           JNE NE
           
        NE:
           INC SI
           XOR AH,AH
           JMP SCAN
           
           
        EVEN_SUM:     
           
               ADD CH,CL
               INC SI
               JMP SCAN
           
           TER: 
               RET
               
         EVEN ENDP
     
     
     ODD PROC
        
        MOV SI,0
        MOV CH,0
        
        
        SCANODD:
        
              CMP SI,5
              JE TERODD
              MOV BL,N[SI]
              MOV CL,BL
              MOV AX,BX
              MOV BL,2
              DIV BL
              CMP AH,1
              JE ODD_SUM
              JNE ONE
              
          ONE: 
              INC SI
              JMP SCANODD
              
             ODD_SUM:
             
             ADD CH,CL
             INC SI
             XOR AH,AH
             JMP SCANODD   
             
           TERODD:
               
                  RET
                  
            ODD ENDP
     
     END MAIN