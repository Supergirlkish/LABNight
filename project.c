#include "project.h"
#include <stdio.h>
#include <stdint.h>
//#include "LCD_1.h"
#include "LCDDiplay.h"
#include "driverlib/rom_map.h"
//#include "PWM_helper.h"
//#define STEPPER (*((volatile uint32_t *)0x4000703C))
struct Mybuttons Mybuttons;
//*****************************************************************************
//
// The error routine that is called if the driver library encounters an error.
//
//*****************************************************************************

#ifdef DEBUG
void
__error__(char *pcFilename, uint32_t ui32Line)
{
}
#endif


void SetupHardware()
{
	UartSetup();
//	UartSetup2();
}
void UnlockPins()
{
	
	//need to unlock the pins first
	GPIO_PORTF_LOCK_R = GPIO_LOCK_KEY;  //allow write access to CR reg
	GPIO_PORTF_CR_R = 0xFF; 						//write CR reg
	GPIO_PORTF_LOCK_R = 0;							//lock access to CR reg

	GPIO_PORTF_DIR_R = 0x0000000E; //PF1-3, outputs, all others inputs
	GPIO_PORTF_PUR_R = 0x00000011; //Pullups on PF0, PF4
	
	GPIO_PORTF_DEN_R = 0x0000001F; //PF0-4, digital enable, all others not
	//alternatively, set the digital enable while preserving the register contents
	GPIO_PORTF_DEN_R = GPIO_PORTF_DEN_R | 0x0000001F; 
	//short hand
	GPIO_PORTF_DEN_R |= 0x0000001F;
	
	
	// Enable the GPIO pin for the LED (PF3).  Set the direction as output, and
    // enable the GPIO pin for digital function.
		
    GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_3);
		GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_2);
		GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_1);
		
		// Switches on the Board

		GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_0);
		GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_4);
	

		
}
void UpdateMYbuttons()
	{
		uint8_t WorkingMode;
		
		WorkingMode= GPIOPinRead(GPIO_PORTF_BASE,GPIO_PIN_4);
		
		if (WorkingMode !=0) Mybuttons.SW1=0;
		else Mybuttons.SW1 = 1;

		WorkingMode= GPIOPinRead(GPIO_PORTF_BASE,GPIO_PIN_0);
		
		if (WorkingMode!=0) Mybuttons.SW2=0;
		else Mybuttons.SW2 = 1;

		
	}
//	static void step(uint32_t n)
//		{
//	  STEPPER = n; // output stepper causing it to step once
//		SysTickWait10ms(10); // wait for 10 ms
//		}
//		
int  main(void)
 {
	 
	// systick start
	
//		SysTick_Init();
//		SYSCTL_RCGCGPIO_R |= 0x04; // activate clock port C
//		while((SYSCTL_RCGCGPIO_R &0x04)== 0)
//		{
//		}; // ready to start?
// 	  GPIO_PORTC_DIR_R|= 0x0F; // PD3- 0 are outputs
//		GPIO_PORTC_DEN_R|= 0x0F; //	PD3- 0 are enabled as ditigal port
//		while(1){
//			step(5);   // not sure if connecting motor, button or LED set-up for motor
//			step(6);   // not sure if connecting motor, button or LED set-up for motor
//		  step(10); //  not sure if connecting motor, button or LED set-up for motor
//			step(9);  //  not sure if connecting motor, button or LED set-up for motor
//		}
//	

		uint8_t temp;
    volatile uint32_t ui32Loop;
	
	
    // Enable the GPIO port that is used for the on-board LED.
			SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
			//SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOD);
			SetupHardware();
		
		// Check if the peripheral access is enabled.
    while(!SysCtlPeripheralReady(SYSCTL_PERIPH_GPIOF))
    {
    
		}
	
		// Enable the GPIO pin for the LED (PF3).  Set the direction as output, and
    // enable the GPIO pin for digital function.
		
    GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_3);
		GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_2);
		GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_1);
		
		// Switches on the Board

		GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_0);
		GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_4);
    SysCtlClockSet(SYSCTL_SYSDIV_8|SYSCTL_USE_PLL|SYSCTL_XTAL_16MHZ|SYSCTL_OSC_MAIN);
    
    while(1)
    {
				UARTCharPut(UART0_BASE, temp);
			  temp++;
				//UARTCharPut(UART0_BASE, '\n');
				//UARTCharPut(UART0_BASE, '\r');
        
			
				UnlockPins();
				UpdateMYbuttons ();	
				initLCD();
				if(Mybuttons.SW1==0)
				{
				}
				else
				{						
						
		
       // Turn on Green Led
				
    		GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
				printLCD("Hey Switch ONE");
				setCursorPositionLCD(1,0);
				printLCD("Green ON");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the Green LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
				printLCD("Hey Switch One");
				setCursorPositionLCD(1,0);
				printLCD("Green OFF");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }
				// Turn on the Blue LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				printLCD("Hey Switch ONE");
				setCursorPositionLCD(1,0);
				printLCD("Blue ON");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the Blue LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				printLCD("Hey Switch One");
				setCursorPositionLCD(1,0);
				printLCD("Blue OFF");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }// Turn on the Red LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				printLCD("Hey Switch ONE");
				setCursorPositionLCD(1,0);
				printLCD("Red ON");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the Red LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				printLCD("Hey Switch One");
				setCursorPositionLCD(1,0);
				printLCD("Red OFF");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        { 
				}
			}
				
			if(Mybuttons.SW2==0)
				{
				}
				else
				{				
					
 		// Turn on the Purple LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				printLCD("Hey Switch TWO");
				setCursorPositionLCD(1,0);
				printLCD("Purple ON");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the Purple LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				printLCD("Hey Switch TWO");
				setCursorPositionLCD(1,0);
				printLCD("Purple OFF");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }
				// Turn on the Yellow LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				printLCD("Hey Switch TWO");
				setCursorPositionLCD(1,0);
				printLCD("Yellow ON");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the Yellow LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				printLCD("Hey Switch TWO");
				setCursorPositionLCD(1,0);
				printLCD("Yellow OFF");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }
				
				// Turn on the White LED.
			  GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				printLCD("Hey Switch TWO");
				setCursorPositionLCD(1,0);
				printLCD("White ON");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the White LED.
				
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				printLCD("Hey Switch TWO");
				setCursorPositionLCD(1,0);
				printLCD("White OFF");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }
				// Turn on the CYAN LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				printLCD("Hey Switch TWO");
				setCursorPositionLCD(1,0);
				printLCD("Cyan ON");
				SysCtlDelay(10000000);
				clearLCD();
				// Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
				{
				}				
				
				// Turn off the CYAN LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				printLCD("Hey Switch TWO");
				setCursorPositionLCD(1,0);
				printLCD("Cyan OFF");
				SysCtlDelay(10000000);
				clearLCD();
				// Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }
				
				
				if(Mybuttons.SW2==1 &  Mybuttons.SW1==1)
				{ // Turn on Green Led
				
    		GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
				printLCD("Hey SW1 & SW2");
				setCursorPositionLCD(1,0);
				printLCD("Green ON");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }

        // Turn off the Green LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
				printLCD("Hey SW1 & SW2");
				setCursorPositionLCD(1,0);
				printLCD("Green OFF");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }
				// Turn on the Blue LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				printLCD("Hey SW1 & SW2");
				setCursorPositionLCD(1,0);
				printLCD("Blue ON");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }

        // Turn off the Blue LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				printLCD("Hey SW1 & SW2");
				setCursorPositionLCD(1,0);
				printLCD("Blue OFF");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }// Turn on the Red LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				printLCD("Hey SW1 & SW2");
				setCursorPositionLCD(1,0);
				printLCD("Red ON");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }

        // Turn off the Red LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				printLCD("Hey SW1 & SW2");
				setCursorPositionLCD(1,0);
				printLCD("Red OFF");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        { 
				}
			// Turn on the Purple LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				printLCD("Hey SW1 & SW2");
				setCursorPositionLCD(1,0);
				printLCD("Purple ON");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }

        // Turn off the Purple LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				printLCD("Hey SW1 & SW2");
				setCursorPositionLCD(1,0);
				printLCD("Purple OFF");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }
				// Turn on the Yellow LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				printLCD("Hey SW1 & SW2");
				setCursorPositionLCD(1,0);
				printLCD("Yellow ON");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }

        // Turn off the Yellow LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				printLCD("Hey SW1 & SW2");
				setCursorPositionLCD(1,0);
				printLCD("Yellow OFF");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }
				
				// Turn on the White LED.
			  GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				printLCD("Hey SW1 & SW2");
				setCursorPositionLCD(1,0);
				printLCD("White ON");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }

        // Turn off the White LED.
				
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				printLCD("Hey SW1 & SW2");
				setCursorPositionLCD(1,0);
				printLCD("White OFF");
				SysCtlDelay(10000000);
				clearLCD();
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }
				// Turn on the CYAN LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				printLCD("Hey SW1 & SW2");
				setCursorPositionLCD(1,0);
				printLCD("Cyan ON");
				SysCtlDelay(10000000);
				clearLCD();
				// Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
				{
				}				
				
				// Turn off the CYAN LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				printLCD("Hey SW1 & SW2");
				setCursorPositionLCD(1,0);
				printLCD("Cyan OFF");
				SysCtlDelay(10000000);
				clearLCD();
				// Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }
			
				}
				else
				{
				}
			}
			 
		}
}