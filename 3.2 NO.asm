.MODEL SMALL
.STACK 100h

.DATA   
 
    ARRAY DB 54H,76H,77H,98H,67H  
    STR_1 DB 'Mina is the second tallest person with the height : $' 
    VAL DB ?
    
    COUNT DW 5
    
.CODE
    BEGIN: MOV AX,@DATA
           MOV DS,AX
           MOV CX,COUNT
           DEC CX
        
 NEXTSCAN: MOV BX,CX
           MOV SI,0
           
 NEXTCOMP: MOV AL,ARRAY[SI]
           MOV DL,ARRAY[SI+1]
           CMP AL,DL
           JNC NOSWAP
           MOV ARRAY[SI],DL
           MOV ARRAY[SI+1],AL
           
   NOSWAP: MOV VAL,AL
           INC SI
           DEC BX
           JNZ NEXTCOMP
           LOOP NEXTSCAN 
           
           LEA DX, STR_1   
           MOV AH, 9
           INT 21H 
      
           MOV AL,VAL
           AAM 
           ADD AL,30H
           MOV BL,AL
        
           MOV AH,2
           MOV DL,BL
           INT 21H
        
           MOV AL,VAL
           AAA
           ADD AL,30H
           MOV BL,AL
           MOV AH,2
           MOV DL,BL
           INT 21H
        
        
        
           MOV AH, 4CH
           INT 21H
           
         END BEGIN
