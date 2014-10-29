	ORG	0000h
TIME	EQU	100		; Delay = TIME * 0.01s
HIGHLED	EQU	P0		; High Byte
LOWLED	EQU	P2		; Low Byte

	MOV	R2, #TIME
	MOV	R0, #0
	MOV	R1, #0
		
	MOV     A, R0		;Init LED
	MOV     DPTR, #FONT
        MOVC    A, @A+DPTR
        MOV	LOWLED, A
        MOV     A, R1
        MOVC    A, @A+DPTR
        MOV	HIGHLED, A
		
Low1:	CJNE	R0, #11, Low2
	MOV	R0, #0
	MOV     A, R0
        MOVC    A, @A+DPTR
        MOV	LOWLED, A
	JMP	High1
Low2:	MOV     A, R0
        MOVC    A, @A+DPTR
        MOV	LOWLED, A
        INC	R0
        CJNE	R0, #11, Low3
        JMP	Low1
Low3:	LCALL	DELAY
 	JMP	Low1
 	
High1:	CJNE	R1, #5, High2
	MOV	R1, #0
	MOV     A, R1
        MOVC    A, @A+DPTR
        MOV	HIGHLED, A
	JMP	Low1
High2:	INC	R1
	MOV     A, R1
        MOVC    A, @A+DPTR
        MOV	HIGHLED, A
	JMP	Low1
	
DELAY:		
	MOV	TMOD, #00010000B	; Timer 1
	MOV	TH1, #0D8h		; TH1 * 256 + TL1 = 55536
	MOV	TL1, #0F0h		; 65535 - 55536 + 1 = 10000us = 0.01s

	SETB	TR1			; Start Timer
	JNB	TF1, $			; Wait for Interrupt
	CLR	TF1
	DJNZ	R2, DELAY 
	MOV	R2, #TIME
	RET
	
FONT:   DB      0C0h,0F9h,0A4h,0B0h,099h,092h,082h,0F8h
        DB      080h,090h
	END
