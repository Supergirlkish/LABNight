#include "project.h"
#include <stdio.h>
#include <stdint.h>
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
	
	//Setup port C

//	//need to unlock the pins first
//	GPIO_PORTC_LOCK_R = GPIO_LOCK_KEY;  //allow write access to CR reg
//	GPIO_PORTC_CR_R = 0xFF; 						//write CR reg
//	GPIO_PORTC_LOCK_R = 0;							//lock access to CR reg

//	
//	//clearing bits
//	GPIO_PORTC_DIR_R &= ~0x000000C0; //Make sure PD6, PD7 are inputs
//	//Setting  bits
//	GPIO_PORTC_PUR_R |=  0x000000C0; //PD6, PD7 pullups enabled
//	GPIO_PORTC_DEN_R |=  0x000000C0; //enable digtial pins


	// Enable the GPIO pin for the LED (PF3).  Set the direction as output, and
    // enable the GPIO pin for digital function.
		
    GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_3);
		GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_2);
		GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_1);
		
		// Switches on the Board

		GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_0);
		GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_4);
	
//	 //Port B Setup
//		GPIOPinTypeGPIOOutput(GPIO_PORTB_BASE, GPIO_PIN_5|GPIO_PIN_4|GPIO_PIN_1|GPIO_PIN_0);
//	  GPIOPadConfigSet(GPIO_PORTB_BASE,GPIO_PIN_5|GPIO_PIN_4|GPIO_PIN_1|GPIO_PIN_0,GPIO_STRENGTH_2MA,GPIO_PIN_TYPE_STD);
//		
//	//Port D Setup
//	
//	// Off Board Momentary Switches
//	GPIOPinTypeGPIOInput(GPIO_PORTD_BASE,GPIO_PIN_6);
//	GPIOPinTypeGPIOInput(GPIO_PORTD_BASE,GPIO_PIN_7);	
//	
//	//use internal pull ups for other switches as well. 
//	GPIOPadConfigSet(GPIO_PORTD_BASE,GPIO_PIN_6|GPIO_PIN_7,GPIO_STRENGTH_2MA,GPIO_PIN_TYPE_STD_WPU);
//		
	//Port E Setup
  //	GPIOPinTypeGPIOOnput(GPIO_PORTE_BASE, GPIO_PIN_1);
	////	GPIOPinTypeGPIOOnput(GPIO_PORTE_BASE, GPIO_PIN_2);
	//	GPIOPinTypeGPIOOnput(GPIO_PORTE_BASE, GPIO_PIN_3);
		
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
//		STEPPER = n; // output stepper causing it to step once
//		SysTickWait10ms(10); // wait for 10 ms
//		}
		
int  main(void)
 {
	// systick start
//	
//		SysTick_Init();
//		SYSCTL_RCGCGPIO_R |= 0x08; // activate clock port D
//		while((SYSCTL_RCGCGPIO_R &0x08)== 0)
//		{
//		}; // ready to start?
//	 	GPIO_PORTC_DIR_R|= 0x0F; // PD3- 0 are outputs
//		GPIO_PORTC_DEN_R|= 0x0F; //	PD3- 0 are enabled as ditigal port
//		while(1){
//			step(5);   // not sure if connecting motor, button or LED set-up for motor
//			step(6);   // not sure if connecting motor, button or LED set-up for motor
//			step(10); //  not sure if connecting motor, button or LED set-up for motor
//			step(9);  //  not sure if connecting motor, button or LED set-up for motor
//		}
//	
//		//Clock to 80Mhz, start system tick, configure PWM.
//	SysCtlClockSet(SYSCTL_SYSDIV_2_5|SYSCTL_USE_PLL|SYSCTL_OSC_MAIN|SYSCTL_XTAL_16MHZ);
//	SysTickbegin();
//	PWMInit();
//	uint8_t values[LEDNum]; //Stores the values of brightness to send
//  uint32_t brilho=255;
//  uint32_t time = 1000;
//		
//	//Set all LEDs to 0
//		
//	int i;
//	for(i=0; i < LEDNum; i++){
//	  values[i]=0;
//	}

//	/*
//	 * the k is used for a test patern. It flashes each LED once at 255 brightness so it can be checked if there is
//	 * any "leakage" into other LEDs. Right now that partern is not being used.
//	 * Right now all LEDs are geting random values.
//	 */
//	int k=0;
//	while(1){

//		if(k !=0)
//		  values [k-1]=0;
//		else
//		  values[LEDNum-1]=0;
//			values[k] = 0xFF;
//			k++;
//		if(k>= LEDNum)
//		  k=0;

//		/*i;
//		for(i=0; i < LEDNum; i++){
//		  values[i]=rand()%brilho;
//		}*/
//		Wait(time); //Stops the code for 200mS

//		//Start timer to send data
//		SendData();
//	}
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

    while(1)
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
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }

        // Turn off the Green LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);

        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }
				// Turn on the Blue LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }

        // Turn off the Blue LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);

        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }// Turn on the Red LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }

        // Turn off the Red LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);

        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        { 
				}
			// Turn on the Purple LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }

        // Turn off the Purple LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }
				// Turn on the Yellow LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }

        // Turn off the Yellow LED.
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }
				
				// Turn on the White LED.
			  GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0xF);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }

        // Turn off the White LED.
				
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0x0);
				
        // Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
        {
        }
				// Turn on the CYAN LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0xF);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0xF);
				
				// Delay for a bit.
        for(ui32Loop = 0; ui32Loop < 100000; ui32Loop++)
				{
				}				
				
				// Turn off the CYAN LED.
			
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_3, 0x0);
				GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0x0);
				
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