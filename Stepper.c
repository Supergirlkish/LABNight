#include "Stepper.h"
int states[]={0x0,0x1,0x3,0x4,0x5,0x6,0x7,0x8};
int currentstate=0;

void initStepper(void)
{
	SysCtlPeripheralEnable(STEPPER_PERIPH);
	GPIOPinTypeGPIOOutput(STEPPER_PORT_BASE,  ALLINPINS);
	GPIOPinWrite(STEPPER_PORT_BASE, ALLINPINS ,0);
}

void stopStepper(void) {
	GPIOPinWrite(STEPPER_PORT_BASE, ALLINPINS, 0);
	if (--currentstate<0)
		currentstate=7;
}
 

void stepForward(int steps) {
	int n;
	for (n=0; n<steps; n++) {
		GPIOPinWrite(STEPPER_PORT_BASE, ALLINPINS,  states[currentstate++]);
		if (currentstate>7) currentstate=0;
		SysCtlDelay(10000);
	}
}

void stepBackward(int steps) {
	int n;
	for (n=steps; n>=0; n--) {
		GPIOPinWrite(STEPPER_PORT_BASE, ALLINPINS,  states[currentstate--]);
		if (currentstate<0) currentstate=7;
		SysCtlDelay(10000);
	}
}