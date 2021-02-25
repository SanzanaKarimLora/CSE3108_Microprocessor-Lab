
A8 SEGMENT PARA PUBLIC 'CODE'

ASSUME CS: A8
ORG 1000H

; SCROLLING LETTERS  R-G-O-R

START:

 ; turn on control register
 MOV AL, 80H
 OUT 1FH, AL
 
 ; activate port a, b, c
 MOV AL, 80H
 OUT 1EH, AL
 
 ; turn ssd off
 MOV AL, 0FFH
 OUT 19H, AL
 
 ; turn led off
 MOV AL, 00H
 OUT 1BH, AL
 
 ; initialize 
 MOV BH, 80H
 MOV BL, 01H
 MOV DX, 05H  
 
 OUTER:
 
 MOV CX, 0FFH
 
 ;MOV CX, 02H 
 
 L1:
    PUSH CX
    
    CMP BL, 01H
    JG  N
     
    MOV SI, OFFSET DATA_S
    MOV DI, OFFSET DATA_LED_SSD
    JMP FORWARD
    
    N:
    CMP BL, 02H
    JG M
    MOV SI, OFFSET DATA_N
    MOV DI, OFFSET DATA_LED_SSD
    INC DI
    JMP FORWARD
    
    M:
    CMP BL, 03H
    JG A
    MOV SI, OFFSET DATA_M
    MOV DI, OFFSET DATA_LED_SSD
    ADD DI, 02H
    JMP FORWARD
    
    A:
    MOV SI, OFFSET DATA_A
    MOV DI, OFFSET DATA_LED_SSD
    ADD DI, 03H
    
    FORWARD:
    MOV AH, BH
        
    MOV CX, 05H
    SUB CX, DX
    ADD SI, CX
    ADD SI, CX
    
    MOV CX, DX
    L2: 
        PUSH CX 
        MOV AL, BYTE PTR CS:[SI]
        OUT 18H, AL
        MOV AL, BYTE PTR CS:[SI+1]
        OUT 1AH, AL
    
        MOV AL, AH 
        OUT 1CH, AL
        
        MOV AL, BYTE PTR CS:[DI]
        OUT 1BH, AL
        
        MOV AL, BYTE PTR CS:[DI+4]
        OUT 19H, AL
    
        MOV CX, 0FFH 
        D: LOOP D
        
        SHL AH, 1
        JNZ NEXT
         
        
        POP CX
        JMP BREAK 
        
        NEXT:
        ADD SI, 02H
        POP CX
                             
    LOOP L2
    
    BREAK:    
    POP CX
     
 LOOP L1 
 
 SHR BH, 1
 JNZ CONTINUE
 
 DEC DX
 JZ RESET
 
 MOV BH,01H 
 JMP CONTINUE
 
 RESET:
 
 MOV BH, 80H  
 MOV DX, 05H
 
 INC BL
 CMP BL, 04H
 JLE CONTINUE
 MOV BL, 01H  
 
 CONTINUE:
 
 JMP OUTER
 
 DATA_S:
 DB 09BH
 DB 0FFH
 DB 06DH
 DB 0FFH
 DB 06DH
 DB 0FFH
 DB 06DH
 DB 0FFH
 DB 0B3H
 DB 0FFH

 DATA_N:
 DB 0FFH
 DB 001H
 DB 0FFH
 DB 0DFH
 DB 0FFH
 DB 0EFH
 DB 0FFH
 DB 0F7H 
 DB 0FFH
 DB 001H
 
 DATA_M:
 DB 0FFH
 DB 001H
 DB 0FFH
 DB 0BFH
 DB 0FFH
 DB 0DFH
 DB 0FFH
 DB 0BFH
 DB 0FFH
 DB 001H

 DATA_A:
 DB 0C1H
 DB 0C1H
 DB 0B7H
 DB 0B7H
 DB 077H
 DB 077H
 DB 0B7H
 DB 0B7H
 DB 0C1H
 DB 0C1H
 
 DATA_LED_SSD:
 DB 01H 
 DB 02H 
 DB 0CH
 DB 01H
 
 DB 0F9H 
 DB 0A4H 
 DB 0B0H 
 DB 099H  
 
 A8 ENDS

END START
 

