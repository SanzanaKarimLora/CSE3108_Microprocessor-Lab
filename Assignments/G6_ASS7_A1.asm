LD SEGMENT PARA PUBLIC 'CODE'
ASSUME CS:LD
ORG 1000H

START:    
    MOV AL,80H
    OUT 1EH,AL
    OUT 1FH,AL
		      
    MOV AL,0FFH
    OUT 19H,AL
	 
AGAIN:
	MOV SI,OFFSET DATA    
  	MOV BX, 012H	   
	       
TOP:	   
	MOV AL,BYTE PTR CS:[SI]
	OUT 18H,AL          
	INC SI

	MOV AL,BYTE PTR CS:[SI]
	OUT 1AH,AL                   
	INC SI

	MOV AL,BYTE PTR CS:[SI]
	OUT 1CH,AL 
	INC SI

	DEC BX

	;Delay
	MOV CX,01FFH
	L1:LOOP L1

	;Delay
	MOV CX,01FFH
	L2:LOOP L2	   
	              
	CMP BX,0AH	
	JA GREEN

	CMP BX,08H	
	JA ORANGE

	CMP BX,02H	
	JA RED

	CMP BX,0H	
	JA GREEN

	JMP AGAIN2
	

ORANGE:
	MOV AL, 05H
	OUT 1BH,AL
	
	;Delay
    MOV CX,04FFH
    L3:LOOP L3
	   
	JMP TOP

RED:
	MOV AL,01H
	OUT 1BH,AL
	
	;Delay
    MOV CX,04FFH
    L4:LOOP L4
	   
	JMP TOP  
	
GREEN:
	MOV AL, 02H
	OUT 1BH,AL
	
	;Delay
    MOV CX,04FFH
	L5:LOOP L5
	 
	JMP TOP


AGAIN2:
	MOV SI,OFFSET DATA    
  	MOV BX, 012H	   
	       
TOP2:	   
	MOV AL,BYTE PTR CS:[SI]
	OUT 18H,AL          
	INC SI

	MOV AL,BYTE PTR CS:[SI]
	OUT 1AH,AL                   
	INC SI

	MOV AL,BYTE PTR CS:[SI]
	OUT 1CH,AL 
	INC SI

	DEC BX

	;Delay
	MOV CX,0FH
	L6:LOOP L6
  
	CMP BX,0AH	
	JA GREEN2

	CMP BX,08H	
	JA ORANGE2

	CMP BX,02H	
	JA RED2

	CMP BX,0H	
	JA GREEN2

	JMP AGAIN2
	


	
ORANGE2:
	MOV AL, 05H
	OUT 1BH,AL
	
	;Delay
    MOV CX,0FH
    L8:LOOP L8
	   
	JMP TOP2

RED2:
	MOV AL,01H
	OUT 1BH,AL
	
	;Delay
    MOV CX,0FH
    L9:LOOP L9
	   
	JMP TOP2   
	
GREEN2:
	MOV AL, 02H
	OUT 1BH,AL
	
	;Delay
    MOV CX,0FH
	L7:LOOP L7
	 
	JMP TOP2

		
DATA:
	 DB 07FH
     DB 07FH
     DB 008H
     
     
     DB 07FH
     DB 07FH
     DB 018H
     
     
     
     DB 07FH
     DB 07FH
     DB 038H
     
     
     
     DB 0FFH
     DB 0BFH   
     DB 008H
     
     
     DB 0FFH
     DB 09FH   
     DB 008H
      
     
     DB 0FFH
     DB 08FH   
     DB 008H
    
     
     DB 0FFH
     DB 087H   
     DB 008H
     
     
     DB 0FFH
     DB 083H   
     DB 008H
     
     
     
     DB 0BFH 
     DB 0FFH   
     DB 028H
     
     
     
     DB 09FH
     DB 0FFH   
     DB 028H
    
     
     DB 08FH
     DB 0FFH   
     DB 028H
    
     
     
     DB 087H
     DB 0FFH   
     DB 028H
    
     
     DB 083H 
     DB 0FFH  
     DB 028H
     
     
     DB 0FBH
     DB 0FBH
     DB 004H
     
     
     DB 0FFH
     DB 0FBH
     DB 06CH
     
     
     DB 0FDH
     DB 0FFH
     DB 008H
     
     
     DB 0FDH
     DB 0FDH
     DB 020H
    
     
     DB 0FFH
     DB 0FEH
     DB 010H
    
     
LD ENDS
END START
         