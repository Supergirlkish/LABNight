#include <stdlib.h>
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "project.h"

struct SysTickTimer
{
	uint32_t mSTimer;
	uint64_t uSTimer;
};

void SysTick_Setup(void);
void InterruptEnable(void);


extern struct SysTickTimer Mytimer;