G6_ASS1_A1 SEGMENT PARA PUBLIC 'CODE'
ASSUME CS:G6_ASS1_A1
ORG 1000H 

START:    
     ;control register turn on
     MOV AL,80H    
     OUT 1FH,AL 
     
SSD:    
    ;display 0
    MOV AL,0C0H    
    OUT 19H,AL 
    
    ;for delay                                                       
     MOV CX,0FFFFH                                                                                  
     L0:LOOP L0  
     
    ;display 2                    
    MOV AL,0A4H      
    OUT 19H,AL
    
    ;for delay                   
    MOV CX,0FFFFH     
    L2:LOOP L2 
    
    ;display A
    MOV AL,088H
    OUT 19H,AL

    ;for delay
    MOV CX,0FFFFH
    L3:LOOP L3  
    
 JMP SSD 
 G6_ASS1_A1 ENDS  
END START       