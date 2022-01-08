org 100h
 
 
 mov ah,2
 mov dl,65
 mov cx,26
  
 l1:
 int 21h
 
 inc dl
 cmp dl,90
 
 loop l1
 ret