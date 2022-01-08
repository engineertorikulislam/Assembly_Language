INCLUDE 'EMU8086.INC'  
.MODEL SMALL
.STACK 100h
.DATA        
    ARR DB 50 DUP(?) 

.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        XOR BX,BX
        XOR CX,CX
        
        
        MOV AH,1
        INT 21H
        AND AL,0FH 
        
        MOV CL,AL
        MOV BL,AL
        MOV SI,0
        
        PRINTN
        PRINT "Enter values(without press enter or space): "
        PRINTN
        INPUT:
           INT 21H
           MOV ARR[SI],AL
           INC SI
           LOOP INPUT
        PRINTN
        PRINT "OUTPUT: "
        PRINTN
        
        MOV CX,BX
        MOV SI,0
        MOV AH,2  
        OUTPUT:
            MOV DL,ARR[SI]
            INT 21h
            INC SI
           LOOP OUTPUT
        
  MAIN ENDP
END MAIN