#include <8051.h> // Defining SFRs

#define _nop_()  __asm  \
		  nop   \
		 __endasm	 

void INT0_ISR(void) __interrupt 0; // ISR for External Interrupt 0
void T0_ISR(void)   __interrupt 1; // ISR for Timer0/Counter0 Overflow Interrupt
void INT1_ISR(void) __interrupt 2; // ISR for External Interrupt 1
void T1_ISR(void)   __interrupt 3; // ISR for Timer1/Counter1 Overflow Interrupt
void UART_ISR(void) __interrupt 4; // ISR for UART Interrupt
void delay_ms(unsigned int i);

void main(void)
{
	unsigned int i = 0;
	P1 = 0x01;
	while(1)
	{
		for (i = 1; i < 8; i++)
		{
			P1 = 0x01 << i;
			delay_ms(200);
		}
		for (i = 1; i < 8; i++)
		{
			P1 = 0x01 << 7 >> i;
			delay_ms(200);
		}
	}
}

void  delay_ms(unsigned int n)
{
	unsigned char i;
	n*=2;
	while(n--)	for(i=0;i<200;i++)	_nop_();
 
}

void INT0_ISR(void) __interrupt 0
{}
void T0_ISR(void) __interrupt 1
{}
void INT1_ISR(void) __interrupt 2
{}
void T1_ISR(void) __interrupt 3
{}
void UART_ISR(void) __interrupt 4
{}