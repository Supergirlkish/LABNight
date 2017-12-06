## LCD Display with Step Motor Control

## Names 
LaKeysha L. Green 
   
## Design Overview
The device is a microcontroller that can control a stepper motor and 16x2 LCD display using the current specifications of a Tiva launchpad. The componenets of this device include a TM4C123 launchpad, LCD 16x2 display and 1 stepper motor and 2 potentiometers (one potentimeter controls the lighting of the LCD diplay, and the second potentiometer controls the lighting of the backlight). 
    
## Hardware List
Tiva Launchpad TM4C123- $11.45 
Kuman Stepper Motor 28BYJ-48 5V -$12.99
SunFounder LCD1602 Module 3.3v backlight, 16x2 Character display white on blue background - $5.99

## Hardware Description
The stepper motor and LCD display were connected to a bread board that would be powered through a USB cable on the Tiva launchpad.
![](https://github.com/Supergirlkish/LABNight/blob/master/images/IMG_0519.jpg?raw=true)
 

Using the code for varies sources, The LCD display along with the Stepper motor, activate when either switch 1 or switch 2 are pressed. When switch 1 is pressed, the stepper motor moves foward 15 times and then will run through the LEDs( Green,blue and Red) that were assigned to it. When swithed 2 is pressed, the stepper motor moves backward 15 times and then run through the LEDs(Purple,Yellow,White & Cyan) that were assigned to it Each function programed to the on board switches will display the activity on  the LCD display.


## Software Description
![](https://github.com/Supergirlkish/LABNight/blob/master/images/projectlist.jpg?raw=true)
## Summary and Conclusions
The microcontroller that was used here was a very interesting piece of equipment that is capable of many things. Once I was able to find different pinouts and code for the stepper motor and the LCD display, I was able to change the code to different pin outs to add multiple stepper motors.

Here is what was learn:

⦁	The order of the position of the stepper motor has to be written in a certain order for it to step. ex(0x01,0x03,0x02,0x06....) typically a user who has never dealt with stepper motors would assume it was be in a numerical order. ex( 1,2,3,4.......)
⦁	Stepper motors are popular for microcontroller-controled machinces because of the digital interface it has.
⦁	It is easy for the microcontroller to control both position and velocity in an open-loop fashion.
⦁	The cost of the stepper motor is reduce because they do not require feedback sensors.
⦁	Stepper motors are used in: hard disk drives, scanners, and printers.
⦁	Printing out characters on the LCD.

Things that I will continue experiment with:

⦁	Scrolling characters
⦁	Print timer/counters
⦁	adjusting the speed of the stepper motor



