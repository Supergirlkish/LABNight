#line 1 "LCDDisplay.c"

#line 1 "LCDDiplay.h"



#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 5 "LCDDiplay.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 6 "LCDDiplay.h"
#line 1 "inc/hw_memmap.h"
















































#line 116 "inc/hw_memmap.h"
                                            

                                            

                                            
#line 141 "inc/hw_memmap.h"
                                            

                                            
#line 150 "inc/hw_memmap.h"

#line 7 "LCDDiplay.h"
#line 1 "driverlib/gpio.h"



























































#line 68 "driverlib/gpio.h"

















#line 91 "driverlib/gpio.h"







#line 105 "driverlib/gpio.h"







#line 119 "driverlib/gpio.h"







#line 135 "driverlib/gpio.h"






extern void GPIODirModeSet(uint32_t ui32Port, uint8_t ui8Pins,
                           uint32_t ui32PinIO);
extern uint32_t GPIODirModeGet(uint32_t ui32Port, uint8_t ui8Pin);
extern void GPIOIntTypeSet(uint32_t ui32Port, uint8_t ui8Pins,
                           uint32_t ui32IntType);
extern uint32_t GPIOIntTypeGet(uint32_t ui32Port, uint8_t ui8Pin);
extern void GPIOPadConfigSet(uint32_t ui32Port, uint8_t ui8Pins,
                             uint32_t ui32Strength, uint32_t ui32PadType);
extern void GPIOPadConfigGet(uint32_t ui32Port, uint8_t ui8Pin,
                             uint32_t *pui32Strength, uint32_t *pui32PadType);
extern void GPIOIntEnable(uint32_t ui32Port, uint32_t ui32IntFlags);
extern void GPIOIntDisable(uint32_t ui32Port, uint32_t ui32IntFlags);
extern uint32_t GPIOIntStatus(uint32_t ui32Port, _Bool bMasked);
extern void GPIOIntClear(uint32_t ui32Port, uint32_t ui32IntFlags);
extern void GPIOIntRegister(uint32_t ui32Port, void (*pfnIntHandler)(void));
extern void GPIOIntUnregister(uint32_t ui32Port);
extern void GPIOIntRegisterPin(uint32_t ui32Port, uint32_t ui32Pin,
                               void (*pfnIntHandler)(void));
extern void GPIOIntUnregisterPin(uint32_t ui32Port, uint32_t ui32Pin);
extern int32_t GPIOPinRead(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinWrite(uint32_t ui32Port, uint8_t ui8Pins, uint8_t ui8Val);
extern void GPIOPinConfigure(uint32_t ui32PinConfig);
extern void GPIOPinTypeADC(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeCAN(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeComparator(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeComparatorOutput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeDIVSCLK(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEPI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEthernetLED(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEthernetMII(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOInput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOOutput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOOutputOD(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeHibernateRTCCLK(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeI2C(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeI2CSCL(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeLCD(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeOneWire(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypePWM(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeQEI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeSSI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeTimer(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeTrace(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUART(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUSBAnalog(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUSBDigital(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeWakeHigh(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeWakeLow(uint32_t ui32Port, uint8_t ui8Pins);
extern uint32_t GPIOPinWakeStatus(uint32_t ui32Port);
extern void GPIODMATriggerEnable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIODMATriggerDisable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOADCTriggerEnable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOADCTriggerDisable(uint32_t ui32Port, uint8_t ui8Pins);










#line 8 "LCDDiplay.h"
#line 1 "driverlib/sysctl.h"






























































#line 140 "driverlib/sysctl.h"








#line 155 "driverlib/sysctl.h"








#line 171 "driverlib/sysctl.h"







#line 185 "driverlib/sysctl.h"
                                            





















#line 214 "driverlib/sysctl.h"







#line 385 "driverlib/sysctl.h"







#line 462 "driverlib/sysctl.h"

















#line 486 "driverlib/sysctl.h"








                                            

                                            











#line 516 "driverlib/sysctl.h"






#line 535 "driverlib/sysctl.h"















#line 556 "driverlib/sysctl.h"


























extern uint32_t SysCtlSRAMSizeGet(void);
extern uint32_t SysCtlFlashSizeGet(void);
extern uint32_t SysCtlFlashSectorSizeGet(void);
extern _Bool SysCtlPeripheralPresent(uint32_t ui32Peripheral);
extern _Bool SysCtlPeripheralReady(uint32_t ui32Peripheral);
extern void SysCtlPeripheralPowerOn(uint32_t ui32Peripheral);
extern void SysCtlPeripheralPowerOff(uint32_t ui32Peripheral);
extern void SysCtlPeripheralReset(uint32_t ui32Peripheral);
extern void SysCtlPeripheralEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralSleepEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralSleepDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDeepSleepEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDeepSleepDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralClockGating(_Bool bEnable);
extern void SysCtlIntRegister(void (*pfnHandler)(void));
extern void SysCtlIntUnregister(void);
extern void SysCtlIntEnable(uint32_t ui32Ints);
extern void SysCtlIntDisable(uint32_t ui32Ints);
extern void SysCtlIntClear(uint32_t ui32Ints);
extern uint32_t SysCtlIntStatus(_Bool bMasked);
extern void SysCtlLDOSleepSet(uint32_t ui32Voltage);
extern uint32_t SysCtlLDOSleepGet(void);
extern void SysCtlLDODeepSleepSet(uint32_t ui32Voltage);
extern uint32_t SysCtlLDODeepSleepGet(void);
extern void SysCtlSleepPowerSet(uint32_t ui32Config);
extern void SysCtlDeepSleepPowerSet(uint32_t ui32Config);
extern void SysCtlReset(void);
extern void SysCtlSleep(void);
extern void SysCtlDeepSleep(void);
extern uint32_t SysCtlResetCauseGet(void);
extern void SysCtlResetCauseClear(uint32_t ui32Causes);
extern void SysCtlBrownOutConfigSet(uint32_t ui32Config,
                                    uint32_t ui32Delay);
extern void SysCtlDelay(uint32_t ui32Count);
extern void SysCtlMOSCConfigSet(uint32_t ui32Config);
extern uint32_t SysCtlPIOSCCalibrate(uint32_t ui32Type);
extern void SysCtlClockSet(uint32_t ui32Config);
extern uint32_t SysCtlClockGet(void);
extern void SysCtlDeepSleepClockSet(uint32_t ui32Config);
extern void SysCtlDeepSleepClockConfigSet(uint32_t ui32Div,
                                          uint32_t ui32Config);
extern void SysCtlPWMClockSet(uint32_t ui32Config);
extern uint32_t SysCtlPWMClockGet(void);
extern void SysCtlIOSCVerificationSet(_Bool bEnable);
extern void SysCtlMOSCVerificationSet(_Bool bEnable);
extern void SysCtlPLLVerificationSet(_Bool bEnable);
extern void SysCtlClkVerificationClear(void);
extern void SysCtlGPIOAHBEnable(uint32_t ui32GPIOPeripheral);
extern void SysCtlGPIOAHBDisable(uint32_t ui32GPIOPeripheral);
extern void SysCtlUSBPLLEnable(void);
extern void SysCtlUSBPLLDisable(void);
extern uint32_t SysCtlClockFreqSet(uint32_t ui32Config,
                                   uint32_t ui32SysClock);
extern void SysCtlResetBehaviorSet(uint32_t ui32Behavior);
extern uint32_t SysCtlResetBehaviorGet(void);
extern void SysCtlClockOutConfig(uint32_t ui32Config, uint32_t ui32Div);
extern void SysCtlAltClkConfig(uint32_t ui32Config);
extern uint32_t SysCtlNMIStatus(void);
extern void SysCtlNMIClear(uint32_t ui32Status);
extern void SysCtlVoltageEventConfig(uint32_t ui32Config);
extern uint32_t SysCtlVoltageEventStatus(void);
extern void SysCtlVoltageEventClear(uint32_t ui32Status);
extern _Bool SysCtlVCOGet(uint32_t ui32Crystal, uint32_t *pui32VCOFrequency);










#line 9 "LCDDiplay.h"

void pulseLCD(void);
void sendByte(char, int);
void setCursorPositionLCD(char, char);
void clearLCD(void);
void initLCD(void);
void printLCD(char*);
void setBlockCursorLCD(void);
void setLineCursorLCD(void);
void cursorOnLCD(void);
void cursorOffLCD(void);
void displayOffLCD(void);
void displayOnLCD(void);
void homeLCD(void);
















 

#line 49 "LCDDiplay.h"






#line 3 "LCDDisplay.c"






void pulseLCD()
{
	
	GPIOPinWrite(0x40024000, 0x00000020, 0);
	GPIOPinWrite(0x40024000, 0x00000020, 0x00000020);
	GPIOPinWrite(0x40024000, 0x00000020, 0);
}






void setCmd() {
	GPIOPinWrite(0x40024000, 0x00000010,0);
}






void setData() {
	GPIOPinWrite(0x40024000, 0x00000010,0x00000010);
}






void sendByte(char byteToSend, int isData)
{
	if (isData)
		setData();
	else
		setCmd();
	SysCtlDelay(400);
	GPIOPinWrite(0x40007000, 0x00000008 | 0x00000004 | 0x00000002 | 0x00000001, byteToSend >>4);
	pulseLCD();
	GPIOPinWrite(0x40007000, 0x00000008 | 0x00000004 | 0x00000002 | 0x00000001, byteToSend);
	pulseLCD();
}







void setCursorPositionLCD(char row, char col)
{
	char address;

	if (row == 0)
		address = 0;
	else if (row==1)
		address = 0x40;
	else if (row==2)
		address = 0x14;
	else if (row==3)
		address = 0x54;
	else
		address = 0;

	address |= col;

	sendByte(0x80 | address, 0);
}






void clearLCD(void)
{
	sendByte(0x01, 0); 
	sendByte(0x02, 0); 
	SysCtlDelay(30000);
}





void homeLCD(void) {
	sendByte(0x02, 0);
	SysCtlDelay(30000);
}






void setBlockCursorLCD(void) {
	sendByte(0x0F, 0);
}





void setLineCursorLCD(void) {
	sendByte(0x0E, 0);
}





void cursorOnLCD(void) {
	sendByte(0x0E, 0);
}





void cursorOffLCD(void) {
	sendByte(0x0C, 0);
}





void displayOffLCD(void) {
	sendByte(0x08, 0);
}





void displayOnLCD(void) {
	sendByte(0x0C, 0);
}















void initLCD(void)
{
	
	
	
	
	SysCtlPeripheralEnable(0xf0000803);
	SysCtlPeripheralEnable(0xf0000804);
	GPIOPinTypeGPIOOutput(0x40007000,  0x00000008 | 0x00000004 | 0x00000002 | 0x00000001);
	GPIOPinTypeGPIOOutput(0x40024000, 0x00000010 | 0x00000020);
	GPIOPinWrite(0x40007000, 0x00000008 | 0x00000004 | 0x00000002 | 0x00000001 ,0);
	GPIOPinWrite(0x40024000, 0x00000010 | 0x00000020 ,0);

	
	
	
	
	

	SysCtlDelay(10000);

	
	
	
	

	setCmd();
	SysCtlDelay(15000);
	GPIOPinWrite(0x40007000,0x00000008 | 0x00000004 | 0x00000002 | 0x00000001,0xF);
	pulseLCD();
	GPIOPinWrite(0x40007000,0x00000008 | 0x00000004 | 0x00000002 | 0x00000001,0xF);
	pulseLCD();
	sendByte(0x28,0);  
	cursorOffLCD();       
	sendByte(0x06, 0); 
	clearLCD();
}





void printLCD(char *text)
{
	char *c;
	c = text;

	while ((c != 0) && (*c != 0))
	{
		sendByte(*c, 1);
		c++;
	}
}
