.MODEL SMALL
 
READ MACRO MSG
    MOV AH,0AH
    LEA DX,MSG
    INT 21H
ENDM

SET MACRO MSG
    MOV AH,09H
    LEA DX,MSG
    INT 21H
ENDM

.DATA 
 
 CR EQU 0DH
 LF EQU 0AH
    ARR DW 100h,16Fh,191h,10Fh,120h 
    MSG1 DB CR,LF,"EVEN NUMBERS$"
    MSG2 DB CR,LF,"ODD NUMBERS"
    
    NUMERALEVEN DB CR,LF,"E$"
    NUMERALODD DB CR,LF,"O$"
    
 COUNT EQU 5H
 

DATA ENDS

    
.CODE
ASSUME CS:CODE,DS:DATA 

START:
        MOV AX,DATA
        MOV DS,AX
    
        SET MSG1
        SET MSG2
        
        MOV SI,OFFSET ARR
        MOV CL,COUNT
        MOV AX,[SI]
        
        MOV DX,0000

                
CHECK:  
        MOV DX,0000                       
        MOV BH,00
        MOV BL,02H     ;divide by 2  
        DIV BX         
        
        CMP DX,0       ;checks if there is a remainder by comparing the remainder to 0
        JE EVEN
        JNE ODD        
        
        
EVEN:   
        SET NUMERALEVEN
        
        MOV DX,00 
        DEC CL
        MOV AX,[SI+1]
        MOV [SI],AX 
        
        CMP CL,0
        JNZ CHECK
        
         
ODD:    
        SET NUMERALODD
        
        DEC CL

        MOV AX,00
        MOV AX,[SI+1]
        MOV [SI],AX
        
        CMP CL,0
        JNZ CHECK
                
CODE ENDS
END START 