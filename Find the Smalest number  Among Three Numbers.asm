.model small
.stack 100h  

.data
  
  msg1 db 10,13, "Enter The First Number: $"
  msg2 db 10,13, "Enter The Second Number: $"
  msg3 db 10,13, "Enter The  Number: $"
  msg4 db 10,13, "The Largest Number is: $"
  
  num1 db ?
  num2 db ?
  num3 db ?
   
.code

  main proc
    
    mov ax,@data
    mov ds,ax
    
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov num1,al
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h  
    
    mov num2,al
    
    lea dx,msg3
    mov ah,9
    int 21h  
    
    mov ah,1
    int 21h 
    
    mov num3,al
    
    lea dx,msg4
    mov ah,9
    int 21h
    
    mov bl,num1
    cmp bl,num2
    jg number2
    cmp bl,num3
    jg number3
    
    mov dl,num1
    jmp display
    
    number2:
      mov bl,num2
      cmp bl,num3
      jg number3
      mov dl,num2
      jmp display
      
    number3:  
      mov dl,num3
      
    display:
    
      mov ah,2
      int 21h
      
 main endp
  
  ret
    
       
    
    


