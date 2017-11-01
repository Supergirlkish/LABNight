/*
 * Stepper Motor Library for Stellaris/Tiva launchpads
 * Supports 28BYJ-48 Motor
 * All rights reserved.
 * Distributed under the BSD License
 * Copyright (c) 2015, Manolis Kiagias
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * --/COPYRIGHT--*/
 /*******************************************************************************/


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
 * PD0 [pin 61]  -> IN1
 * PD1 [pin 62]  -> IN2
 * PD2 [pin 63]  -> IN3
 * PD3 [pin 64]  -> IN4
 *
 * pin number in [] indicates
 * energia pin reference!
 *
 */

#define IN1 GPIO_PIN_0 // Pin 61
#define IN2 GPIO_PIN_1 // Pin 62
#define IN3 GPIO_PIN_2 // Pin 63
#define IN4 GPIO_PIN_3 // Pin 64
#define ALLINPINS IN1|IN2|IN3|IN4

#define STEPPER_PORT_BASE GPIO_PORTD_BASE
#define STEPPER_PERIPH SYSCTL_PERIPH_GPIOD

#endif /* LIB_STEPPER_H_ */