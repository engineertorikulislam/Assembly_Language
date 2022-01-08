INCLUDE 'EMU8086.INC'
 ORG 100H
 
 mov AH,1 ;single input 
 int 21h
  
 MOV dl,2
 
 DIV dl
 CMP ah,0
 JE equal
 printn
 print 'This number is Odd' 
 jmp stop
 equal:
 printn
 print 'This number is Even' 
  
 
 stop: 
 
  RET
  
 DEFINE_PRINT_NUM
 DEFINE_PRINT_NUM_UNS
 END