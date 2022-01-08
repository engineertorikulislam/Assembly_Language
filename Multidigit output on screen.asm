
org 100h



    MOV AH, 01H  ; Character input with echo
     INT 21H     ; Character in AL
     MOV BL, AL  ; Save in BL    

     MOV AH, 01H ; Character input with echo
     INT 21H     ; Character in AL
     MOV CL, AL  ; Save in CL

     MOV AH, 01H ; Character input with echo
     INT 21H     ; Character in AL
 
     MOV CH, AL 

     MOV AH, 02H ; Display character function    

     MOV DL, 0DH ; carriage return
     INT 21H

     MOV DL, 0AH ; line feed
     INT 21H  

     MOV DL, BL ; character stored in BL and display
     INT 21H   
     MOV DL, CL ; character stored in BL and display
     INT 21H  

     MOV DL, CH 
     INT 21H  

     MOV AH, 4CH
     INT 21H

ret




