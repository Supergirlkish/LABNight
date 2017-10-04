#include "systick_helper.h"

//must be accurate.. for systick

int SetPeriod = 0x0000FFFF;
int TimeDiff;

//Taken from peripheral driver library
void SysTick_Setup()
	
{
	SysTickPeriodSet(SetPeriod); //Set the period to ?? ticks
	SysTickEnable();
}

//Enable NVIC for something? 
void InterruptEnable()
{
	SysTickIntEnable(); //enable SysTick Interrupt
	//write some code to setup an interrupt for SysTick Timer
	//where to put this code? 
	//IntEnable(INT_GPIOF_TM4C123); //enables interrupt for PORTF
}

