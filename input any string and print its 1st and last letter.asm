DATA SEGMENT
        STR1 DB "ENTER YOUR STRING HERE ->$"
        STR2 DB "YOUR STRING IS ->$"
        STR3 DB "FIRST CHARACTER IS ->$"
        STR4 DB "LAST CHARACTER IS ->$"
        INSTR1 DB 20 DUP("$")
        NEWLINE DB 10,13,"$"
        N DB "$"
        S DB ?

DATA ENDS

CODE SEGMENT
        ASSUME DS:DATA,CS:CODE
START:

        MOV AX,DATA
        MOV DS,AX

        LEA SI,INSTR1

;GET STRING
        MOV AH,09H
        LEA DX,STR1
        INT 21H

        MOV AH,0AH
        MOV DX,SI
        INT 21H


        MOV AH,09H
        LEA DX,NEWLINE
        INT 21H

;PRINT THE STRING

        MOV AH,09H
        LEA DX,STR2
        INT 21H

        MOV AH,09H
        LEA DX,INSTR1+2
        INT 21H

        MOV AH,09H
        LEA DX,NEWLINE
        INT 21H

;PRINT FIRST CHARACTER OF STRING

        MOV AH,09H
        LEA DX,STR3
        INT 21H

        MOV AH,02H
        MOV DL,INSTR1+2
        INT 21H

        MOV AH,09H
        LEA DX,NEWLINE
        INT 21H

;PRINT LAST CHARACTER OF STRING

        MOV AH,09H
        LEA DX,STR4
        INT 21H

        ADD SI,3

     L1:
        DEC SI
        MOV BL,BYTE PTR[SI]

;        MOV AH,09H
;        LEA DX,NEWLINE
;        INT 21H

;        MOV AH,02H
;        MOV DL,BL
;        INT 21H

        ADD SI,2
        CMP BYTE PTR[SI],"$"
        JNE L1

        MOV AH,02H
        MOV DL,BL
        INT 21H

        MOV AH,4CH
        INT 21H


CODE ENDS
END START