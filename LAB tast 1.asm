
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; id:191002067

mov bx,7
add bx,5
add bx,1

mov ax,bx
mov bx,2
mul bx

ret




