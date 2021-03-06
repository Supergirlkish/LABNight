#include "project.h"
#include <stdio.h>
#include <stdint.h>
//#include "LCD_1.h"
#include "LCDDiplay.h"
#include "driverlib/rom_map.h"
#include "Stepper.h"
#include "systick_helper.h"
//#include "PWM_helper.h"
#define STEPPER (*((volatile uint32_t *)0x4000703C))
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
	GPIO_PORTF_LOCK_R = GPIO_LOCK_KEY;  // Write access to the CR Register
	GPIO_PORTF_CR_R = 0xFF; 						// Writes to the Register
	GPIO_PORTF_LOCK_R = 0;							//Lock access to CR Register

	GPIO_PORTF_DIR_R = 0x0000000E; // PF1,PF2 & PF3 are outputs the Rest are inputs
	GPIO_PORTF_PUR_R = 0x00000011; // Pullup Resistors on PF0 & PF4
	
	GPIO_PORTF_DEN_R = 0x0000001F; // PF0, PF1,PF2,PF3,PF3 & PF4 pins are enabled for digital
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
void UpdateMYbuttons() // updates the buttons status
	{
		uint8_t WorkingMode;
		
		WorkingMode= GPIOPinRead(GPIO_PORTF_BASE,GPIO_PIN_4);
		
		if (WorkingMode !=0) Mybuttons.SW1=0;
		else Mybuttons.SW1 = 1;

		WorkingMode= GPIOPinRead(GPIO_PORTF_BASE,GPIO_PIN_0);
		
		if (WorkingMode!=0) Mybuttons.SW2=0;
		else Mybuttons.SW2 = 1;

		
	}
int main(void){

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
        
			
				UnlockPins();  // unlock pins for GPIO
				UpdateMYbuttons ();	// undate the functions of the button status
				initLCD(); // initialize the LCD Screen
			  initStepper(); // initialize the Stepper
				
				if(Mybuttons.SW1==0)
					{

	      	}
				else
				{						
					 // Steps the motor foward 15 times
				int i,rotations,active=1;
			  for (rotations=0; rotations<15; rotations++) {
		    for (i=0; i<15;i++) {
			 		stepForward(15);	 
				}
					printLCD("STEP FORWARD");
				  setCursorPositionLCD(1,0);
				  printLCD("Rotate Forward" );
				  SysCtlDelay(10000000);
				  clearLCD();
			}
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
					// steps backward 15 times 
				int i,rotations,active=1;
			  for (rotations=0; rotations<15; rotations++) {
		    for (i=0; i<15;i++) { 
			 		stepBackward(15);
			}
				  printLCD("STEP BACKWARD");
				  setCursorPositionLCD(1,0);
				  printLCD("Rotate Backward");
				  SysCtlDelay(10000000);
				  clearLCD();
		}
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
			}
					
		}
	}