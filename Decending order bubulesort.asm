
;191002067
;Md.Rahul Reza

; Sorting an array into decending order


.MODEL SMALL
.STACK 100h
.DATA
N DB 11H,99H,22H,88H,33H
COUNT DW 5

.CODE
BEGIN: MOV AX, @DATA
MOV DS,AX
            
MOV CX,COUNT ;CX=5
DEC CX       ;CX=4

NEXTSCAN: MOV BX,CX
MOV SI,0

NEXTCOMP: MOV AL,N[SI]
MOV DL,N[SI+1]
CMP AL,DL
JNC NOSWAP
MOV N[SI],DL
MOV N[SI+1],AL

NOSWAP: INC SI
DEC BX
JNZ NEXTCOMP
LOOP NEXTSCAN
END BEGIN
            
            
            
            
            
            
            
            
            
          

