
#ifndef LIB_STEPPER_H_
#define LIB_STEPPER_H_

#include <stdint.h>
#include <stdbool.h>
#include "inc/hw_memmap.h"
#include "driverlib/gpio.h"
#include "driverlib/sysctl.h"

void stepForward(int);
void stepBackward(int);
void initStepper(void);
void stopStepper(void);

#define FALSE 0
#define TRUE 1
/*
 *
 * Pin Connections:
 * PA2 [pin 18]  -> IN1
 * PA3 [pin 27]  -> IN2
 * PA4 [pin 28]  -> IN3
 * PA5 [pin 29]  -> IN4
 *
 * pin number in [] indicates
 * energia pin reference!
 *
 */

#define IN1 GPIO_PIN_2 // Pin 18
#define IN2 GPIO_PIN_3 // Pin 27
#define IN3 GPIO_PIN_4 // Pin 28
#define IN4 GPIO_PIN_5 // Pin 29
#define ALLINPINS IN1|IN2|IN3|IN4

#define STEPPER_PORT_BASE GPIO_PORTA_BASE
#define STEPPER_PERIPH SYSCTL_PERIPH_GPIOA

#endif /* LIB_STEPPER_H_ */