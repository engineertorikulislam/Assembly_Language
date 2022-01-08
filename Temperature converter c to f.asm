
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  
MOV AH,1
INT 21H
SUB AL,30H

MOV BH,10
MUL BH

MOV BL,AL

MOV AH,1
INT 21H
SUB AL,30H

ADD AL,BL

MOV BH,9
MUL BH

MOV BH,5
DIV BH

ADD AL,32


ret




