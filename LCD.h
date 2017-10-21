#define E 0x80 // on PA7
#define RS 0x40 // on PA6
#define LCDATA(*((volatile uint32_t*)0x400053FC)) // port B
#define LCDCMD(*((volatile uint32_t*) 0x40004300)) // PA7-PA6
#define	