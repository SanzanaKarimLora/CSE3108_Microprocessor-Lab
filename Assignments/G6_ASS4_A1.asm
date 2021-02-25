LA SEGMENT PARA PUBLIC 'CODE'                       
ASSUME CS: LA
ORG 1000H 

START:    
     ;control register turn on    
     MOV AL,80H  
     OUT 1FH,AL    
     
     ;segment address forcefully off                    
     MOV AL,0FFH     
     OUT 19H,AL     
     MOV SI,OFFSET DATA   
     MOV BX,04H 
     
     ;LED turn on                  
     L1:MOV AL,BYTE PTR CS:[SI]    
     OUT 1BH,AL
     
     MOV CX,0FFFFH   
     L2:LOOP L2  
     
     MOV CX,0FFFFH   
     L3:LOOP L3 
     
    INC SI 
    DEC BX
    CMP BX,0H
    JE EXIT
        
    JMP L1     
    DATA:     
    DB 0CH     
    DB 0EH     
    DB 0AH     
    DB 0BH                                                                                       
    
EXIT:

LA ENDS  
END START  
     
     