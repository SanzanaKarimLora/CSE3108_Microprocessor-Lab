SA SEGMENT PARA PUBLIC 'CODE'
ASSUME CS: SA 
ORG 1000H 

 
START:   
     ;control register turn on     
     MOV AL,80H     
     OUT 1FH,AL 
     
        
     MOV SI,OFFSET DATA 
     MOV BX,03H
     
     ;LED turn on                
      L1:MOV AL,BYTE PTR CS:[SI]    
      OUT 19H,AL  
      
     ;for delay              
     MOV CX,0FFFFH
     L11:LOOP L11
	 MOV CX,0FFFFH
     L12:LOOP L12  
    
     INC SI  
     DEC BX
     CMP BX,0H
     JE EXIT
     JMP L1
               
DATA:    
     DB 0C0H    
     DB 0A4H                                      
     DB 088H
       
EXIT:                    
 SA ENDS 
 END START 