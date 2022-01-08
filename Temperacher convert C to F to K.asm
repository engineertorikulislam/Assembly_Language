
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

MOV CH,1
INT 21H
MOV CH,DH
SUB DL,30H
MOV CH,1
INT 21H
SUB CL,30H
MOV DH,10H
MUL DH 
ADD CL,DL 

  MOV CH,DL
MOV CH,5
DIV CH

MOV DL,CH
MOV DL,9
MUL DL 

MOV AH,1
INT 21H
MOV BL,AL
SUB BL,30H
MOV AH,1
INT 21H
SUB AL,30H
MOV BH,10H
MUL BH 
ADD AL,BL 



 

ADD AL,DL

ret




