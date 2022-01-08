org 100h

.DATA ; Data segment starts
A db 3, 1, 2, 2, 1, 2 ;1-D array for number
B db 00h
   message db 'The Summation of the array of the elements :$'
 ;message db 'Enter the value of N:$' ;1-D array for string  
 
 c DB 6

 .CODE ; Code segment starts
 MAIN PROC
 mov ax, @DATA
 mov ds, ax

 xor ax,ax
 mov si, OFFSET A
 ;mov di, OFFSET B

 ;mov dx, OFFSET message ; Load Effective Address of the message in DX register
 ; lea dx, message ; (similar meaning that Load Effective Address)
 ;mov ah, 09h ;display string function
  ;int 21h ;display message
  
 ;mov ah, 01h
  ;int 21h
  mov cl, c
   ;sub cl, 48 ; to convert the ascii value of 3 to decimal 3

   xor al, al

    Loop_1:
    add al, [Si] 
     inc Si
    loop Loop_1

   mov bl, al
   add bl, 48 ; to convert the ascii value of the output to decimal
   
  ; mov ah, 02h
   ;mov dl, 0Dh ; Clear Buffer
    ;int 21h
    ;mov dl, 0Ah ; for newline
    ;int 21h 
    
    lea dx, message
    mov ah,9    
    int 21h 
    
    mov ah, 2
  
    mov dl, bl  
    
    int 21h

   mov ah, 4ch
     int 21h
  
   MAIN ENDP
   END MAIN
   RET