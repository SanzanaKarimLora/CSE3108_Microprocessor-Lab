G6_ASS2_A1 SEGMENT PARA PUBLIC 'CODE'
ASSUME CS: G6_ASS2_A1 
ORG 1000H

START:    

   ;control register turn on     
   MOV AL,80H     
   OUT 1FH,AL 
    
   ;segment address forcefully off                    
   MOV AL,0FFH     
   OUT 19H,AL
   
LED: 

   ;R2 + Y LED turn on                    
   MOV AL,0CH    
   OUT 1BH,AL 
   
 
   ;for delay                                                      
   MOV CX,0FFFFH    
   LR2:LOOP LR2
     
   ;G LED turn on                   
   MOV AL,0EH     
   OUT 1BH,AL  
      
   ;for delay                                                      
   MOV CX,0FFFFH    
   LG:LOOP LG 
   
   ;Y LED turn off                   
   MOV AL,0AH     
   OUT 1BH,AL  
   
   ;for delay                                                      
   MOV CX,0FFFFH    
   LY:LOOP LY
   
   ;R1 LED turn on                    
   MOV AL,0BH     
   OUT 1BH,AL
   
   G6_ASS2_A1 ENDS 
END START  
   
   
   
      
     
       