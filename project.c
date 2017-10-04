#include "project.h"
#include <stdio.h>
#include <stdint.h>
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
	
	// Unlocking PORT F
		
		GPIO_PORTF_LOCK_R=GPIO_LOCK_KEY;
		GPIO_PORTF_CR_R= 0xFF;
		GPIO_PORTF_LOCK_R= 0;
	
		GPIO_PORTF_DIR_R=  0x0000000E; // PF1,PF2 & PF3 are outputs, all other outputs
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
int  main(void)
{
		uint8_t temp;
    volatile uint32_t ui32Loop;
	
	
    // Enable the GPIO port that is used for the on-board LED.
	  SysTick_Setup();
		InterruptEnable();
		SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
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
		while(1)
		{ // Turn on White LED
			
			GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
			GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
			GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
			
			// use systick for 10ms to turn off
			
			
		}
    while(2)
    {
				UARTCharPut(UART0_BASE, temp);
			  temp++;
				//UARTCharPut(UART0_BASE, '\n');
				//UARTCharPut(UART0_BASE, '\r');
        
			
				UnlockPins();
				UpdateMYbuttons ();	
				
				if(Mybuttons.SW1==0)
				{
				}
				else
				{				
		
       // Turn on Green Led
				
    		GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the Green LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);

        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }
				// Turn on the Blue LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the Blue LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);

        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }// Turn on the Red LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the Red LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);

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
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the Purple LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }
				// Turn on the Yellow LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the Yellow LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }
				
				// Turn on the White LED.
			  GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the White LED.
				
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }
				// Turn on the CYAN LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				
				// Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
				{
				}				
				
				// Turn off the CYAN LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				
				// Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }
				
				
				if(Mybuttons.SW2==1 &  Mybuttons.SW1==1)
				{ // Turn on Green Led
				
    		GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the Green LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);

        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }
				// Turn on the Blue LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the Blue LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);

        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }// Turn on the Red LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the Red LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);

        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        { 
				}
			// Turn on the Purple LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the Purple LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }
				// Turn on the Yellow LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the Yellow LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }
				
				// Turn on the White LED.
			  GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }

        // Turn off the White LED.
				
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }
				// Turn on the CYAN LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				
				// Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
				{
				}				
				
				// Turn off the CYAN LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				
				// Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 1000000; ui32Loop++)
        {
        }
			
				}
				else
				{
				}
			}
			 
		}
}