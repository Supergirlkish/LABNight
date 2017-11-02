#include "systick_helper.h"

void SysTick_Init(void)
{
    NVIC_ST_CTRL_R = 0;                   // disable SysTick during setup
		NVIC_ST_RELOAD_R = 0x00FFFFFF;        // maximum reload valu
		NVIC_ST_CURRENT_R = 0;                // any write to current clears it
	  NVIC_ST_CTRL_R = 0x00000005;
}	
void SysTick_Wait(uint32_t delay){
	NVIC_ST_RELOAD_R= delay-1;
	NVIC_ST_CURRENT_R = 0;
	while((NVIC_ST_CTRL_R&0x000100000)==0){ // wait for count flag
		}
	}
void SysTickWait10ms(uint32_t delay)
{ uint32_t i;
  for(i=0; i<delay; i++)
	{
    SysTick_Wait(800000);  // wait 10ms
  }
}