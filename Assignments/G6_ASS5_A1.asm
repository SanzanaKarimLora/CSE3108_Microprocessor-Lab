A5 SEGMENT PARA PUBLIC 'CODE'
ASSUME CS:A5
ORG 1000H
START:
    ;turn the register on
    MOV AL, 080H
    OUT 1EH,AL
    MOV BL,0
    MOV SI,OFFSET DATA
L1: 
    MOV AL,BYTE PTR CS:[SI]
    OUT 18H,AL
    INC SI
    MOV AL,BYTE PTR CS:[SI]
    OUT 1AH,AL
    INC SI
    MOV AL,BYTE PTR CS:[SI]
    OUT 1CH,AL
    ;DELAY
    MOV CX,0FFFFH
    L2:LOOP L2
    ;INCREMENTS
    INC SI
    INC BL
    CMP BL,018H
    JE PL
    JMP L1

    


DATA:
                         ;R0 green
		DB 0FEH
		DB 0FFH	
		DB 01H
		
		DB 0FEH
		DB 0FFH	
		DB 03H
		
		DB 0FEH
		DB 0FFH	
		DB 07H
		
		DB 0FEH
		DB 0FFH	
		DB 0FH
		
		DB 0FEH
		DB 0FFH	
		DB 01FH
		
		DB 0FEH
		DB 0FFH	
		DB 03FH
		
		DB 0FEH
		DB 0FFH	
		DB 07FH
		
		DB 0FEH
		DB 0FFH	
		DB 0FFH     

                           ;R2 RED
		DB 0FFH
		DB 0FBH	
		DB 01H 
		
		DB 0FFH
		DB 0FBH	
		DB 03H
		
		DB 0FFH
		DB 0FBH	
		DB 07H
	
		DB 0FFH
		DB 0FBH	
		DB 0FH	
		
		DB 0FFH
		DB 0FBH	
		DB 01FH 
		
		DB 0FFH
		DB 0FBH	
		DB 03FH
		
		DB 0FFH
		DB 0FBH	
		DB 07FH 
		
		DB 0FFH
		DB 0FBH	
		DB 0FFH


    
                          ;R4 ORANGE
		DB 0EFH
		DB 0EFH	
		DB 01H 
		
		DB 0EFH
		DB 0EFH	
		DB 03H
		
		DB 0EFH
		DB 0EFH	
		DB 07H
		
		DB 0EFH
		DB 0EFH	
		DB 0FH
		
		DB 0EFH
		DB 0EFH	
		DB 01FH
		
		DB 0EFH
		DB 0EFH	
		DB 03FH
		
		DB 0EFH
		DB 0EFH	
		DB 07FH
		
		DB 0EFH
		DB 0EFH	
		DB 0FFH


    


PL:
A5 ENDS
END START
