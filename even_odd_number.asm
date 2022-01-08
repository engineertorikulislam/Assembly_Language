
INCLUDE 'EMU8086.INC'
ORG 100H
 ; Md Torikul islam , ID : 192002131
 MOV AH,1 ;INPUT
 int 21H
  
 MOV DL,2
 
     DIV DL
     CMP AH,0 
     
     JE EQUAL
     
     PRINTN
     
     PRINT 'THE NUMBER IS ODD' 
     
     JMP STOP  
     
     EQUAL:
     
     PRINTN
     PRINT 'THE NUMBER IS EVEN' 
      
     
     STOP: 
 
     RET
  
 DEFINE_PRINT_NUM
 DEFINE_PRINT_NUM_UNS
 END