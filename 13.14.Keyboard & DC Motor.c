#include <8051.h> // Definitions of registers, SFRs and Bits

#define KEYPAD_PORT	P1
#define KEYPAD_RDY	P1_4
#define SEG7_PORT	P0

unsigned char dm_speed=90;
unsigned char seg7[16]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90,0x88,0x83,0xA7,0xA1,0x86,0x8E};
unsigned char key;
void main(void)
{
	unsigned char i;
	SEG7_PORT=0xC0;
	while(1)
	{
    		if(KEYPAD_RDY==1)
    		{
        		KEYPAD_PORT|=0x1F;
     			key=KEYPAD_PORT;
        		key=key&0x0F;
        		while(KEYPAD_RDY==1);
        		SEG7_PORT=seg7[key];
    		}
    		
    		if(key==8)	// Turn Off
		{
			P2_0=1;
			P2_1=1;
			P2_2=0;
			P2_3=0;
		} 
		if(key<8)	// Turn to Right
		{
			dm_speed = key*10;
			P2_1=1;
			P2_2=0;
			P2_0=0;
			P2_3=1;
			for(i=0;i<dm_speed;i++);					
			P2_3=0;
			for(i=dm_speed;i<100;i++);
		}
		if(key>8)	// Turn to Left
		{
			dm_speed = (key-8)*10;
			P2_0=1;
			P2_3=0;
			P2_1=0;
			P2_2=1;
			for(i=0;i<dm_speed;i++);					
			P2_2=0;
			for(i=dm_speed;i<100;i++);
		}
	}
}
