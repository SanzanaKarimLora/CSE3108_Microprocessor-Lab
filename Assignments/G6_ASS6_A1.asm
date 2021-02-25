SD SEGMENT PARA PUBLIC 'CODE'
ASSUME CS:SD
ORG 1000H


START:
    MOV AL,80H
    OUT 1EH,AL
    OUT 1FH,AL
		
AGAIN: 
	MOV SI,OFFSET DATA    
	MOV DX, 012H	   
	MOV BX,OFFSET DATA1		
		   		  
	       
TOP:	   
    MOV AL,BYTE PTR CS:[SI]
    OUT 18H,AL		   
	MOV AL,BYTE PTR CS:[BX]
	OUT 19H,AL	  
       
	INC SI          
	INC BX
           
		   
    MOV AL,BYTE PTR CS:[SI]
    OUT 1AH,AL		   
	MOV AL,BYTE PTR CS:[BX]
	OUT 19H,AL   
    
	INC SI          
	INC BX
	   
       
    MOV AL,BYTE PTR CS:[SI]
    OUT 1CH,AL		   
	MOV AL,BYTE PTR CS:[BX]	   
	OUT 19H,AL	   
       	
	INC SI		   
	INC BX
	DEC DX
	   		  
	   
    ;Delay
    MOV CX,01FFFH
    L1:LOOP L1
	
	;Delay
    MOV CX,01FFFH
    L2:LOOP L2
	   		   
                            
	CMP DX,0H	
    JE AGAIN1
    JMP TOP



AGAIN1: 
	MOV SI,OFFSET DATA    
	MOV DX, 012H	   
	MOV BX,OFFSET DATA1		
		   		  
	       
TOP1:	   
    MOV AL,BYTE PTR CS:[SI]
    OUT 18H,AL		   
	MOV AL,BYTE PTR CS:[BX]
	OUT 19H,AL	  
       
	INC SI          
	INC BX
           
		   
    MOV AL,BYTE PTR CS:[SI]
    OUT 1AH,AL		   
	MOV AL,BYTE PTR CS:[BX]
	OUT 19H,AL   
    
	INC SI          
	INC BX
	   
       
    MOV AL,BYTE PTR CS:[SI]
    OUT 1CH,AL		   
	MOV AL,BYTE PTR CS:[BX]	   
	OUT 19H,AL	   
       	
	INC SI		   
	INC BX
	DEC DX
	   		  
	
	;Delay
    MOV CX,0FFH
    L3:LOOP L3
	   		   
                            
	CMP DX,0H	
    JE AGAIN1
    JMP TOP1


DATA1:

	 DB 0F8H 
	 DB 0F8H 
	 DB 0F8H 
	 
	 
	 DB 0F8H 
	 DB 0F8H 
	 DB 0F8H 
	 
	 
	 DB 0F8H 
	 DB 0F8H 
	 DB 0F8H 
	 
	 
	 DB 082H 
	 DB 082H 
	 DB 082H
	 
	 
	 DB 092H 
	 DB 092H 
	 DB 092H
	 
	 DB 099H 
	 DB 099H 
	 DB 099H 
	 
	 DB 0B0H 
	 DB 0B0H
	 DB 0B0H 
	
	DB 0A4H
	DB 0A4H
	DB 0A4H
	
	DB 082H 
	 DB 082H 
	 DB 082H
	 
	 
	 DB 092H 
	 DB 092H 
	 DB 092H 
	     
	 DB 099H 
	 DB 099H 
	 DB 099H
	 
	 DB 0B0H 
	 DB 0B0H
	 DB 0B0H 
	
	DB 0A4H
	DB 0A4H
	DB 0A4H
	
	DB 0A4H
	DB 0A4H
	DB 0A4H
	
	DB 0A4H
	DB 0A4H
	DB 0A4H
	
	DB 0F9H
	DB 0F9H
	DB 0F9H
	
	
	
	DB 0F9H
	DB 0F9H
	DB 0F9H
	
	DB 0C0H
	DB 0C0H
	DB 0C0H





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
     DB 087H   
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
     
     
     
     DB 087H 
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
    
     
    
     
     
SD ENDS
END START