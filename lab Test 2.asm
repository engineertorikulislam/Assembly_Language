
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; 191002067

mov bx,2
add bx,1
add bx,3
add bx,4
add bx,5

mov ax,bx
mov bx,5
div bx 

ret




