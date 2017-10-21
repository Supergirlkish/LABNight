#define E 0x80 // on PA7
#define RS 0x40 // on PA6
#define LCDDATA (*((volatile uint32_t*)0x400053FC)) // PORT B
#define LCDCMD (*((volatile uint32_t*)0x40004300)) // PA7-PA6
#define BusFreq 80 // assuming a 80 mhz bus clock
#define T500ns BusFreq/2 // 500ns
#define T40us 40*BusFreq // 40us
#define T160us 160*BusFreq // 160us
#define T1600us 1600*BusFreq // 1.60ms
#define T5ms 5000*BusFreq //5 ms
#define T15ms 15000*BusFreq //15ms
#include "systick_helper.h"

// send a command byte to the LCD
void static OutCmd(uint8_t command)
	{
	LCDDATA= command;
	LCDCMD = 0; // E=0, R/W=0, RS=0
	SysTick_Wait(T500ns); // wait 500ns
	LCDCMD = E; // E= 1, R/W=0, RS=0
	SysTick_Wait(T40us); // wait 40us
	}
	// Initialize LCD
	void LCD_Init(void)
	{ 
		SYSCTL_RCGCGPIO_R |= 0x03; // activate clock for Ports A & B
		while((SYSCTL_PRGPIO_R&0x03) != 0x03) {}; // Ready?
			GPIO_PORTB_AMSEL_R &= ~0xFF; //disable analog funtions on PB7-0
			GPIO_PORTA_AMSEL_R &= ~0xC0; // disable analog functions on PA7-6
			GPIO_PORTB_PCTL_R = 0x00000000; // configure PB7-0 as GPIO
			GPIO_PORTA_PCTL_R &= ~0xFF000000; // configure PA7-6 as GPIO
			GPIO_PORTB_DIR_R = 0xFF; // set direction registor
			GPIO_PORTA_DIR_R |= 0xC0;
			GPIO_PORTB_AFSEL_R= 0x00; // regulaer port function
			GPIO_PORTA_AFSEL_R &= ~0xC0; 
			GPIO_PORTB_DEN_R = 0xFF; // Enable digital port
			GPIO_PORTA_DEN_R |= 0xC0;
			GPIO_PORTB_DR8R_R = 0xFF; // Enable 8 mA drive
			GPIO_PORTA_DR8R_R |=0xC0;
			SysTick_Init(); //
			LCDCMD = 0; // E=0, R/W=0, RS=0
			SysTick_Wait(T15ms); // 
			OutCmd(0x30); // command wake up 
			SysTick_Wait(T5ms); // wait 5 ms, busy flag not available 
			OutCmd(0x30); // command Wake up #2
			SysTick_Wait(T160us); // wait 160 us, busy flag not available
			OutCmd(0x30); // command wake up #3
			SysTick_Wait(T160us); // must wait 160us, busy flag not available
			OutCmd(0x38); // Function set : 8-bit/ 2-line
			OutCmd(0x10); //Set cursor
			OutCmd(0x0C); // Display ON; Cursor ON
			OutCmd(0x06); //Entry mode set
		}
		// Inputs ; letter is ASCII charater, 0 to 0 x7F Outputs: none
		void LCD_OutChar(char letter)
		{
			LCDDATA = letter;
			LCDCMD = RS; // E=0,R/W=0, RS=1
			SysTick_Wait(T500ns); // wait 500ns
			LCDCMD= E+RS; // E=1, R/W=0, RS=1
			SysTick_Wait(T500ns); // wait 500ns
			LCDCMD= RS; // E=1, R/W=0, RS=1
			SysTick_Wait(T40us); // wait 500ns
		}
		// Inputs: none      Output: none
		void LCD_Clear(void)
		{
			OutCmd(0x01); // clear display
			SysTick_Wait(T1600us); // wait 1.60 ms
			OutCmd(0x02); // cursor at home
			SysTick_Wait(T1600us); // wait 1.6ms
		}
		