	ORG	0000h
TIME	EQU	100		; Delay = TIME * 0.01s
LED	EQU	0
	MOV	R2, #TIME
		
Plus1:	MOV	R0, LED
	CJNE	R0, #16, Plus2
	DEC	LED
	JMP	Minus2
Plus2:	MOV     A, LED
	MOV     DPTR, #FONT
        MOVC    A, @A+DPTR
        MOV	P1, A
        INC	LED
        CJNE	R0, #16, Plus3
        JMP	Plus1
Plus3:	LCALL	DELAY
 	JMP	Plus1
 	
Minus1:	MOV	R0, LED
	CJNE	R0, #255, Minus2
	INC	LED
	JMP	Plus2
Minus2:	MOV     A, LED
	MOV     DPTR, #FONT
        MOVC    A, @A+DPTR
        MOV	P1, A
	DEC	LED
	CJNE	R0, #255, Minus3
	JMP	Minus1
Minus3:	LCALL	DELAY
	JMP	Minus1
	
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
        DB      080h,090h,088h,083h,0A7h,0A1h,086h,08Eh
	END
