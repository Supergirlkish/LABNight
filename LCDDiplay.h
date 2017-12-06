#ifndef LIB_DISPLAY_H_
#define LIB_DISPLAY_H_

#include <stdint.h>
#include <stdbool.h>
#include "inc/hw_memmap.h"
#include "driverlib/gpio.h"
#include "driverlib/sysctl.h"

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

#define FALSE 0
#define TRUE 1
/*
 *
 * Pin Connections:
 * PE4 [pin 59]  -> RS
 * PE5 [pin 60]  -> EN
 * PB0 [pin 45]  -> D4
 * PB1 [pin 46]  -> D5
 * PB2 [pin 47]  -> D6
 * PB3 [pin 48]  -> D7
 *
 * pin number in [] indicates
 * energia pin reference!
 *
 */

#define RS GPIO_PIN_4 // Pin 59 
#define EN GPIO_PIN_5 // Pin 60
#define D4 GPIO_PIN_0 // Pin 45
#define D5 GPIO_PIN_1 // Pin 46
#define D6 GPIO_PIN_2 // Pin 47
#define D7 GPIO_PIN_3 // Pin 48
#define ALLDATAPINS  D7 | D6 | D5 | D4
#define ALLCONTROLPINS RS | EN

#define DATA_PORT_BASE GPIO_PORTB_BASE  //
#define CMD_PORT_BASE GPIO_PORTE_BASE  //
#define DATA_PERIPH SYSCTL_PERIPH_GPIOB //
#define CMD_PERIPH SYSCTL_PERIPH_GPIOE //

#endif /* LIB_DISPLAY_H_ */