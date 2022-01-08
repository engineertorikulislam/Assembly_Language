 MACRO SEARCH  DAT
    
    MOV SI, OFFSET STORE
    PUSH CX
    MOV CX, 5
    PUSH BX
    XOR BL,BL
    SER:
    XOR AX,AX
    MOV AL, [SI]
    CMP AL, DAT
    JE OK
    JNE NEXT
    OK:
    MOV BL, 1
    NEXT:
    INC SI
    LOOP SER
    
    CMP BL, 1
    JE FOUND
    JNE NOTFOUND
    
    FOUND:

    MOV DX, 0AH
    MOV AH, 2
    INT 21H
    MOV DX, 0DH
    MOV AH, 2
    INT 21H   
    
    MOV DX, OFFSET d
    MOV AH, 9
    INT 21H
    XOR DX, DX
    MOV DL, DAT
    ADD DL, 30H
    MOV AH, 2
    INT 21H   
    
    MOV DX, OFFSET f
    MOV AH, 9
    INT 21H
    JMP FINISH
    
    NOTFOUND:

    MOV DX, 0AH
    MOV AH, 2
    INT 21H
    MOV DX, 0DH
    MOV AH, 2
    INT 21H
    MOV DX, OFFSET d
    MOV AH, 9
    INT 21H
    
    
    XOR DX, DX
    MOV DL, DAT
    ADD DL, 30H
    MOV AH, 2
    INT 21H
    MOV DX, OFFSET n
    MOV AH, 9
    INT 21H
    
    FINISH:
    POP BX
    POP CX
ENDM
    

.MODEL SMALL
.STACK 100H
.DATA
    STORE DB 2,0,4,7,1
    d db "Digit $"
    f db " is Found$"
    n db " is Not Found$"
    NUM db ?
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        MOV AH, 1
        INT 21H
        XOR AH, AH
        SUB ax, 30h
        MOV NUM, AL
        SEARCH NUM
    MAIN ENDP
END MAIN