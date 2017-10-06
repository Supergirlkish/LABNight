#line 1 "PWM_helper.c"
#line 1 "PWM_helper.h"
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






 
#line 2 "PWM_helper.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 3 "PWM_helper.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
 
 
 




 
 



 






   














  


 








#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


  



    typedef unsigned int size_t;    
#line 70 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"






    



    typedef unsigned short wchar_t;  
#line 91 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { long long quot, rem; } lldiv_t;
    


#line 112 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   



 

   




 
#line 131 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) long long atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) long long strtoll(const char * __restrict  ,
                                  char ** __restrict  , int  )
                          __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned long long strtoull(const char * __restrict  ,
                                            char ** __restrict  , int  )
                                   __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 436 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 524 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 553 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) long long llabs(long long  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(long long  , long long  );
   











 
#line 634 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"




 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 




 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 892 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"





 
#line 4 "PWM_helper.h"
#line 1 "inc/hw_ints.h"
















































#line 58 "inc/hw_ints.h"






#line 94 "inc/hw_ints.h"
                                            
#line 170 "inc/hw_ints.h"






#line 244 "inc/hw_ints.h"
                                            
#line 283 "inc/hw_ints.h"






#line 318 "inc/hw_ints.h"






#line 339 "inc/hw_ints.h"













#line 475 "inc/hw_ints.h"
















#line 5 "PWM_helper.h"
#line 1 "inc/hw_memmap.h"
















































#line 116 "inc/hw_memmap.h"
                                            

                                            

                                            
#line 141 "inc/hw_memmap.h"
                                            

                                            
#line 150 "inc/hw_memmap.h"

#line 6 "PWM_helper.h"
#line 1 "inc/hw_uart.h"















































#line 55 "inc/hw_uart.h"
                                            
#line 68 "inc/hw_uart.h"






#line 80 "inc/hw_uart.h"
























#line 113 "inc/hw_uart.h"






























#line 154 "inc/hw_uart.h"






#line 173 "inc/hw_uart.h"







                                            
#line 187 "inc/hw_uart.h"
                                            















                                            

                                            



                                            

                                            



                                            

                                            

                                            

                                            







                                            



                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            










                                            
#line 311 "inc/hw_uart.h"
                                            

                                            

                                            

                                            














































                                            


#line 7 "PWM_helper.h"
#line 1 "inc/hw_gpio.h"















































#line 79 "inc/hw_gpio.h"







                                            









                                            









                                            



















                                            

                                            
















                                            
                                            
                                            
                                            
                                            



































#line 194 "inc/hw_gpio.h"
                                            
                                            
                                            

                                            

                                            
                                            
                                            
                                            
                                            
#line 212 "inc/hw_gpio.h"

#line 8 "PWM_helper.h"
#line 1 "inc/hw_timer.h"















































#line 78 "inc/hw_timer.h"








                                            
                                            

                                            
                                            
                                            

                                            
                                            






#line 108 "inc/hw_timer.h"
                                            


                                            


                                            


                                            

                                            

                                            

                                            

                                            




                                            


                                            











#line 152 "inc/hw_timer.h"
                                            


                                            


                                            


                                            

                                            

                                            

                                            

                                            




                                            


                                            













                                            
#line 200 "inc/hw_timer.h"
                                            
#line 208 "inc/hw_timer.h"







                                            

                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            

                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            

                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            

                                            

                                            
                                            

                                            
                                            

                                            
                                            



                                            

                                            

                                            
                                            

                                            

                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            

                                            

                                            
                                            

                                            
                                            

                                            
                                            



                                            

                                            

                                            
                                            



                                            

                                            

                                            
                                            



                                            

                                            

                                            
                                            



                                            

                                            

                                            
                                            



                                            

                                            

                                            
                                            



                                            

                                            

                                            
                                            



                                            

                                            

                                            
                                            







                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            


                                            

                                            

                                            







                                            

                                            


                                            

                                            

                                            

                                            



                                            

                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            


                                            

                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            


                                            

                                            

                                            







                                            








                                            














































                                            










                                            


















































































                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            











                                            
                                            

                                            
                                            








#line 9 "PWM_helper.h"
#line 1 "inc/hw_pwm.h"















































#line 61 "inc/hw_pwm.h"
                                            
#line 73 "inc/hw_pwm.h"
                                            





                                            
#line 91 "inc/hw_pwm.h"
                                            





                                            
#line 109 "inc/hw_pwm.h"
                                            





                                            
#line 127 "inc/hw_pwm.h"
                                            
#line 145 "inc/hw_pwm.h"


























#line 179 "inc/hw_pwm.h"






#line 193 "inc/hw_pwm.h"






#line 207 "inc/hw_pwm.h"






#line 221 "inc/hw_pwm.h"






#line 235 "inc/hw_pwm.h"






#line 249 "inc/hw_pwm.h"
















#line 273 "inc/hw_pwm.h"






#line 311 "inc/hw_pwm.h"






#line 346 "inc/hw_pwm.h"







                                            


                                            




                                            

                                            

                                            

                                            









                                            


                                            









#line 396 "inc/hw_pwm.h"






































#line 472 "inc/hw_pwm.h"






#line 516 "inc/hw_pwm.h"









































#line 565 "inc/hw_pwm.h"















#line 609 "inc/hw_pwm.h"







                                            


                                            




                                            

                                            

                                            

                                            









                                            


                                            









#line 659 "inc/hw_pwm.h"






































#line 735 "inc/hw_pwm.h"






#line 779 "inc/hw_pwm.h"













































#line 832 "inc/hw_pwm.h"















#line 876 "inc/hw_pwm.h"







                                            


                                            




                                            

                                            

                                            

                                            









                                            


                                            









#line 926 "inc/hw_pwm.h"






































#line 1002 "inc/hw_pwm.h"






#line 1046 "inc/hw_pwm.h"













































#line 1099 "inc/hw_pwm.h"















#line 1143 "inc/hw_pwm.h"







                                            


                                            




                                            

                                            

                                            

                                            









                                            


                                            









#line 1193 "inc/hw_pwm.h"






































#line 1269 "inc/hw_pwm.h"






#line 1313 "inc/hw_pwm.h"













































#line 1366 "inc/hw_pwm.h"





































#line 1411 "inc/hw_pwm.h"




























#line 1447 "inc/hw_pwm.h"




























#line 1483 "inc/hw_pwm.h"




























#line 1519 "inc/hw_pwm.h"






#line 1532 "inc/hw_pwm.h"






#line 1546 "inc/hw_pwm.h"






#line 1572 "inc/hw_pwm.h"






#line 1607 "inc/hw_pwm.h"







                                            


                                            




                                            

                                            

                                            

                                            









                                            


                                            









#line 1657 "inc/hw_pwm.h"






































#line 1733 "inc/hw_pwm.h"






#line 1777 "inc/hw_pwm.h"









































#line 1826 "inc/hw_pwm.h"















#line 1848 "inc/hw_pwm.h"




























#line 1884 "inc/hw_pwm.h"

#line 10 "PWM_helper.h"
#line 1 "inc/hw_types.h"















































#line 63 "inc/hw_types.h"




















































































#line 11 "PWM_helper.h"
#line 1 "driverlib/timer.h"




























































                                            


                                            
#line 86 "driverlib/timer.h"
                                             



                                             

                                             

                                             

                                             

                                             

                                             

                                             



                                             

                                             

                                             

                                             

                                             

                                             








#line 136 "driverlib/timer.h"

























#line 185 "driverlib/timer.h"
















#line 210 "driverlib/timer.h"







#line 226 "driverlib/timer.h"

















extern void TimerEnable(uint32_t ui32Base, uint32_t ui32Timer);
extern void TimerDisable(uint32_t ui32Base, uint32_t ui32Timer);
extern void TimerConfigure(uint32_t ui32Base, uint32_t ui32Config);
extern void TimerControlLevel(uint32_t ui32Base, uint32_t ui32Timer,
                              _Bool bInvert);
extern void TimerControlTrigger(uint32_t ui32Base, uint32_t ui32Timer,
                                _Bool bEnable);
extern void TimerControlEvent(uint32_t ui32Base, uint32_t ui32Timer,
                              uint32_t ui32Event);
extern void TimerControlStall(uint32_t ui32Base, uint32_t ui32Timer,
                              _Bool bStall);
extern void TimerControlWaitOnTrigger(uint32_t ui32Base, uint32_t ui32Timer,
                                      _Bool bWait);
extern void TimerRTCEnable(uint32_t ui32Base);
extern void TimerRTCDisable(uint32_t ui32Base);
extern void TimerPrescaleSet(uint32_t ui32Base, uint32_t ui32Timer,
                             uint32_t ui32Value);
extern uint32_t TimerPrescaleGet(uint32_t ui32Base, uint32_t ui32Timer);
extern void TimerPrescaleMatchSet(uint32_t ui32Base, uint32_t ui32Timer,
                                  uint32_t ui32Value);
extern uint32_t TimerPrescaleMatchGet(uint32_t ui32Base, uint32_t ui32Timer);
extern void TimerLoadSet(uint32_t ui32Base, uint32_t ui32Timer,
                         uint32_t ui32Value);
extern uint32_t TimerLoadGet(uint32_t ui32Base, uint32_t ui32Timer);
extern void TimerLoadSet64(uint32_t ui32Base, uint64_t ui64Value);
extern uint64_t TimerLoadGet64(uint32_t ui32Base);
extern uint32_t TimerValueGet(uint32_t ui32Base, uint32_t ui32Timer);
extern uint64_t TimerValueGet64(uint32_t ui32Base);
extern void TimerMatchSet(uint32_t ui32Base, uint32_t ui32Timer,
                          uint32_t ui32Value);
extern uint32_t TimerMatchGet(uint32_t ui32Base, uint32_t ui32Timer);
extern void TimerMatchSet64(uint32_t ui32Base, uint64_t ui64Value);
extern uint64_t TimerMatchGet64(uint32_t ui32Base);
extern void TimerIntRegister(uint32_t ui32Base, uint32_t ui32Timer,
                             void (*pfnHandler)(void));
extern void TimerIntUnregister(uint32_t ui32Base, uint32_t ui32Timer);
extern void TimerIntEnable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void TimerIntDisable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern uint32_t TimerIntStatus(uint32_t ui32Base, _Bool bMasked);
extern void TimerIntClear(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void TimerSynchronize(uint32_t ui32Base, uint32_t ui32Timers);
extern uint32_t TimerClockSourceGet(uint32_t ui32Base);
extern void TimerClockSourceSet(uint32_t ui32Base, uint32_t ui32Source);
extern uint32_t TimerADCEventGet(uint32_t ui32Base);
extern void TimerADCEventSet(uint32_t ui32Base, uint32_t ui32ADCEvent);
extern uint32_t TimerDMAEventGet(uint32_t ui32Base);
extern void TimerDMAEventSet(uint32_t ui32Base, uint32_t ui32DMAEvent);
extern void TimerUpdateMode(uint32_t ui32Base, uint32_t ui32Timer,
                            uint32_t ui32Config);









#line 12 "PWM_helper.h"
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










#line 13 "PWM_helper.h"
#line 1 "driverlib/interrupt.h"


































































extern _Bool IntMasterEnable(void);
extern _Bool IntMasterDisable(void);
extern void IntRegister(uint32_t ui32Interrupt, void (*pfnHandler)(void));
extern void IntUnregister(uint32_t ui32Interrupt);
extern void IntPriorityGroupingSet(uint32_t ui32Bits);
extern uint32_t IntPriorityGroupingGet(void);
extern void IntPrioritySet(uint32_t ui32Interrupt,
                           uint8_t ui8Priority);
extern int32_t IntPriorityGet(uint32_t ui32Interrupt);
extern void IntEnable(uint32_t ui32Interrupt);
extern void IntDisable(uint32_t ui32Interrupt);
extern uint32_t IntIsEnabled(uint32_t ui32Interrupt);
extern void IntPendSet(uint32_t ui32Interrupt);
extern void IntPendClear(uint32_t ui32Interrupt);
extern void IntPriorityMaskSet(uint32_t ui32PriorityMask);
extern uint32_t IntPriorityMaskGet(void);
extern void IntTrigger(uint32_t ui32Interrupt);










#line 14 "PWM_helper.h"
#line 1 "driverlib/pin_map.h"















































#line 213 "driverlib/pin_map.h"






#line 384 "driverlib/pin_map.h"






#line 555 "driverlib/pin_map.h"






#line 726 "driverlib/pin_map.h"






#line 875 "driverlib/pin_map.h"






#line 1024 "driverlib/pin_map.h"






#line 1250 "driverlib/pin_map.h"






#line 1399 "driverlib/pin_map.h"






#line 1625 "driverlib/pin_map.h"






#line 1774 "driverlib/pin_map.h"






#line 2000 "driverlib/pin_map.h"






#line 2171 "driverlib/pin_map.h"






#line 2342 "driverlib/pin_map.h"






#line 2513 "driverlib/pin_map.h"






#line 2684 "driverlib/pin_map.h"






#line 2833 "driverlib/pin_map.h"






#line 2982 "driverlib/pin_map.h"






#line 3208 "driverlib/pin_map.h"






#line 3357 "driverlib/pin_map.h"






#line 3583 "driverlib/pin_map.h"






#line 3732 "driverlib/pin_map.h"






#line 3958 "driverlib/pin_map.h"






#line 4136 "driverlib/pin_map.h"






#line 4314 "driverlib/pin_map.h"






#line 4492 "driverlib/pin_map.h"






#line 4646 "driverlib/pin_map.h"






#line 4880 "driverlib/pin_map.h"






#line 5034 "driverlib/pin_map.h"






#line 5268 "driverlib/pin_map.h"






#line 5422 "driverlib/pin_map.h"






#line 5656 "driverlib/pin_map.h"






#line 5880 "driverlib/pin_map.h"






#line 6104 "driverlib/pin_map.h"






#line 6288 "driverlib/pin_map.h"






#line 6593 "driverlib/pin_map.h"






#line 6777 "driverlib/pin_map.h"






#line 7082 "driverlib/pin_map.h"






#line 7313 "driverlib/pin_map.h"






#line 7544 "driverlib/pin_map.h"






#line 7733 "driverlib/pin_map.h"






#line 8046 "driverlib/pin_map.h"









































































#line 8125 "driverlib/pin_map.h"

#line 8132 "driverlib/pin_map.h"










#line 8148 "driverlib/pin_map.h"

#line 8155 "driverlib/pin_map.h"













































#line 8208 "driverlib/pin_map.h"

#line 8216 "driverlib/pin_map.h"

























#line 8548 "driverlib/pin_map.h"






#line 8857 "driverlib/pin_map.h"






#line 9166 "driverlib/pin_map.h"






#line 9483 "driverlib/pin_map.h"






#line 9886 "driverlib/pin_map.h"






#line 10338 "driverlib/pin_map.h"






#line 10749 "driverlib/pin_map.h"






#line 11209 "driverlib/pin_map.h"






#line 11669 "driverlib/pin_map.h"






#line 12041 "driverlib/pin_map.h"






#line 12536 "driverlib/pin_map.h"






#line 12930 "driverlib/pin_map.h"






#line 13455 "driverlib/pin_map.h"






#line 13811 "driverlib/pin_map.h"






#line 14167 "driverlib/pin_map.h"






#line 14671 "driverlib/pin_map.h"






#line 15197 "driverlib/pin_map.h"






#line 15732 "driverlib/pin_map.h"






#line 16267 "driverlib/pin_map.h"






#line 16639 "driverlib/pin_map.h"






#line 17134 "driverlib/pin_map.h"






#line 17528 "driverlib/pin_map.h"






#line 18053 "driverlib/pin_map.h"






#line 18409 "driverlib/pin_map.h"






#line 18765 "driverlib/pin_map.h"






#line 19269 "driverlib/pin_map.h"






#line 19804 "driverlib/pin_map.h"






#line 20378 "driverlib/pin_map.h"






#line 20952 "driverlib/pin_map.h"

#line 15 "PWM_helper.h"
#line 1 "driverlib/rom.h"


















































#line 76 "driverlib/rom.h"






#line 117 "driverlib/rom.h"






#line 458 "driverlib/rom.h"






#line 634 "driverlib/rom.h"






#line 829 "driverlib/rom.h"






#line 914 "driverlib/rom.h"






#line 957 "driverlib/rom.h"






#line 1076 "driverlib/rom.h"






#line 1250 "driverlib/rom.h"






#line 1495 "driverlib/rom.h"






#line 1966 "driverlib/rom.h"






#line 2097 "driverlib/rom.h"






#line 2193 "driverlib/rom.h"






#line 2555 "driverlib/rom.h"






#line 2940 "driverlib/rom.h"






#line 3354 "driverlib/rom.h"






#line 3493 "driverlib/rom.h"






#line 3707 "driverlib/rom.h"






#line 3787 "driverlib/rom.h"






#line 3877 "driverlib/rom.h"






#line 4244 "driverlib/rom.h"






#line 4409 "driverlib/rom.h"






#line 4536 "driverlib/rom.h"






#line 5192 "driverlib/rom.h"






#line 5381 "driverlib/rom.h"






#line 5606 "driverlib/rom.h"






#line 5990 "driverlib/rom.h"






#line 6036 "driverlib/rom.h"






#line 6112 "driverlib/rom.h"






#line 6459 "driverlib/rom.h"






#line 6913 "driverlib/rom.h"






#line 7169 "driverlib/rom.h"






#line 8105 "driverlib/rom.h"






#line 8274 "driverlib/rom.h"






#line 8345 "driverlib/rom.h"

#line 16 "PWM_helper.h"
#line 1 "driverlib/rom_map.h"
















































#line 280 "driverlib/rom_map.h"






#line 447 "driverlib/rom_map.h"






#line 572 "driverlib/rom_map.h"






#line 627 "driverlib/rom_map.h"






#line 668 "driverlib/rom_map.h"






#line 786 "driverlib/rom_map.h"






#line 918 "driverlib/rom_map.h"






#line 1148 "driverlib/rom_map.h"






#line 1651 "driverlib/rom_map.h"






#line 1741 "driverlib/rom_map.h"






#line 1810 "driverlib/rom_map.h"






#line 2068 "driverlib/rom_map.h"






#line 2396 "driverlib/rom_map.h"






#line 2759 "driverlib/rom_map.h"






#line 2863 "driverlib/rom_map.h"






#line 3065 "driverlib/rom_map.h"






#line 3120 "driverlib/rom_map.h"






#line 3210 "driverlib/rom_map.h"






#line 3440 "driverlib/rom_map.h"






#line 3551 "driverlib/rom_map.h"






#line 3676 "driverlib/rom_map.h"






#line 4102 "driverlib/rom_map.h"






#line 4255 "driverlib/rom_map.h"






#line 4408 "driverlib/rom_map.h"






#line 4729 "driverlib/rom_map.h"






#line 4763 "driverlib/rom_map.h"






#line 4818 "driverlib/rom_map.h"






#line 5069 "driverlib/rom_map.h"






#line 5383 "driverlib/rom_map.h"






#line 5557 "driverlib/rom_map.h"






#line 6249 "driverlib/rom_map.h"






#line 6367 "driverlib/rom_map.h"






#line 6408 "driverlib/rom_map.h"

#line 17 "PWM_helper.h"
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










#line 18 "PWM_helper.h"
#line 1 "driverlib/uart.h"



























































#line 74 "driverlib/uart.h"










#line 98 "driverlib/uart.h"
































































































extern void UARTParityModeSet(uint32_t ui32Base, uint32_t ui32Parity);
extern uint32_t UARTParityModeGet(uint32_t ui32Base);
extern void UARTFIFOLevelSet(uint32_t ui32Base, uint32_t ui32TxLevel,
                             uint32_t ui32RxLevel);
extern void UARTFIFOLevelGet(uint32_t ui32Base, uint32_t *pui32TxLevel,
                             uint32_t *pui32RxLevel);
extern void UARTConfigSetExpClk(uint32_t ui32Base, uint32_t ui32UARTClk,
                                uint32_t ui32Baud, uint32_t ui32Config);
extern void UARTConfigGetExpClk(uint32_t ui32Base, uint32_t ui32UARTClk,
                                uint32_t *pui32Baud, uint32_t *pui32Config);
extern void UARTEnable(uint32_t ui32Base);
extern void UARTDisable(uint32_t ui32Base);
extern void UARTFIFOEnable(uint32_t ui32Base);
extern void UARTFIFODisable(uint32_t ui32Base);
extern void UARTEnableSIR(uint32_t ui32Base, _Bool bLowPower);
extern void UARTDisableSIR(uint32_t ui32Base);
extern _Bool UARTCharsAvail(uint32_t ui32Base);
extern _Bool UARTSpaceAvail(uint32_t ui32Base);
extern int32_t UARTCharGetNonBlocking(uint32_t ui32Base);
extern int32_t UARTCharGet(uint32_t ui32Base);
extern _Bool UARTCharPutNonBlocking(uint32_t ui32Base, unsigned char ucData);
extern void UARTCharPut(uint32_t ui32Base, unsigned char ucData);
extern void UARTBreakCtl(uint32_t ui32Base, _Bool bBreakState);
extern _Bool UARTBusy(uint32_t ui32Base);
extern void UARTIntRegister(uint32_t ui32Base, void (*pfnHandler)(void));
extern void UARTIntUnregister(uint32_t ui32Base);
extern void UARTIntEnable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void UARTIntDisable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern uint32_t UARTIntStatus(uint32_t ui32Base, _Bool bMasked);
extern void UARTIntClear(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void UARTDMAEnable(uint32_t ui32Base, uint32_t ui32DMAFlags);
extern void UARTDMADisable(uint32_t ui32Base, uint32_t ui32DMAFlags);
extern uint32_t UARTRxErrorGet(uint32_t ui32Base);
extern void UARTRxErrorClear(uint32_t ui32Base);
extern void UARTSmartCardEnable(uint32_t ui32Base);
extern void UARTSmartCardDisable(uint32_t ui32Base);
extern void UARTModemControlSet(uint32_t ui32Base, uint32_t ui32Control);
extern void UARTModemControlClear(uint32_t ui32Base, uint32_t ui32Control);
extern uint32_t UARTModemControlGet(uint32_t ui32Base);
extern uint32_t UARTModemStatusGet(uint32_t ui32Base);
extern void UARTFlowControlSet(uint32_t ui32Base, uint32_t ui32Mode);
extern uint32_t UARTFlowControlGet(uint32_t ui32Base);
extern void UARTTxIntModeSet(uint32_t ui32Base, uint32_t ui32Mode);
extern uint32_t UARTTxIntModeGet(uint32_t ui32Base);
extern void UARTClockSourceSet(uint32_t ui32Base, uint32_t ui32Source);
extern uint32_t UARTClockSourceGet(uint32_t ui32Base);
extern void UART9BitEnable(uint32_t ui32Base);
extern void UART9BitDisable(uint32_t ui32Base);
extern void UART9BitAddrSet(uint32_t ui32Base, uint8_t ui8Addr,
                            uint8_t ui8Mask);
extern void UART9BitAddrSend(uint32_t ui32Base, uint8_t ui8Addr);
extern void UARTLoopbackEnable(uint32_t ui32Base);










#line 19 "PWM_helper.h"
#line 1 "driverlib/udma.h"



































































typedef struct
{
    
    
    
    volatile void *pvSrcEndAddr;

    
    
    
    volatile void *pvDstEndAddr;

    
    
    
    volatile uint32_t ui32Control;

    
    
    
    volatile uint32_t ui32Spare;
}
tDMAControlTable;






































































#line 183 "driverlib/udma.h"


























#line 218 "driverlib/udma.h"






#line 249 "driverlib/udma.h"







#line 283 "driverlib/udma.h"
















#line 336 "driverlib/udma.h"











#line 356 "driverlib/udma.h"




#line 369 "driverlib/udma.h"




#line 382 "driverlib/udma.h"




#line 395 "driverlib/udma.h"




#line 408 "driverlib/udma.h"




#line 421 "driverlib/udma.h"




#line 435 "driverlib/udma.h"




#line 449 "driverlib/udma.h"




#line 462 "driverlib/udma.h"




#line 475 "driverlib/udma.h"




#line 488 "driverlib/udma.h"




#line 501 "driverlib/udma.h"




#line 514 "driverlib/udma.h"




#line 527 "driverlib/udma.h"




#line 540 "driverlib/udma.h"




#line 553 "driverlib/udma.h"




#line 566 "driverlib/udma.h"




#line 579 "driverlib/udma.h"




#line 592 "driverlib/udma.h"




#line 605 "driverlib/udma.h"




#line 619 "driverlib/udma.h"




#line 633 "driverlib/udma.h"




#line 646 "driverlib/udma.h"




#line 659 "driverlib/udma.h"




#line 672 "driverlib/udma.h"




#line 685 "driverlib/udma.h"




#line 698 "driverlib/udma.h"




#line 711 "driverlib/udma.h"




#line 724 "driverlib/udma.h"




#line 737 "driverlib/udma.h"




#line 750 "driverlib/udma.h"




#line 763 "driverlib/udma.h"






extern void uDMAEnable(void);
extern void uDMADisable(void);
extern uint32_t uDMAErrorStatusGet(void);
extern void uDMAErrorStatusClear(void);
extern void uDMAChannelEnable(uint32_t ui32ChannelNum);
extern void uDMAChannelDisable(uint32_t ui32ChannelNum);
extern _Bool uDMAChannelIsEnabled(uint32_t ui32ChannelNum);
extern void uDMAControlBaseSet(void *pControlTable);
extern void *uDMAControlBaseGet(void);
extern void *uDMAControlAlternateBaseGet(void);
extern void uDMAChannelRequest(uint32_t ui32ChannelNum);
extern void uDMAChannelAttributeEnable(uint32_t ui32ChannelNum,
                                       uint32_t ui32Attr);
extern void uDMAChannelAttributeDisable(uint32_t ui32ChannelNum,
                                        uint32_t ui32Attr);
extern uint32_t uDMAChannelAttributeGet(uint32_t ui32ChannelNum);
extern void uDMAChannelControlSet(uint32_t ui32ChannelStructIndex,
                                  uint32_t ui32Control);
extern void uDMAChannelTransferSet(uint32_t ui32ChannelStructIndex,
                                   uint32_t ui32Mode, void *pvSrcAddr,
                                   void *pvDstAddr, uint32_t ui32TransferSize);
extern void uDMAChannelScatterGatherSet(uint32_t ui32ChannelNum,
                                        uint32_t ui32TaskCount,
                                        void *pvTaskList,
                                        uint32_t ui32IsPeriphSG);
extern uint32_t uDMAChannelSizeGet(uint32_t ui32ChannelStructIndex);
extern uint32_t uDMAChannelModeGet(uint32_t ui32ChannelStructIndex);
extern void uDMAIntRegister(uint32_t ui32IntChannel, void (*pfnHandler)(void));
extern void uDMAIntUnregister(uint32_t ui32IntChannel);
extern uint32_t uDMAIntStatus(void);
extern void uDMAIntClear(uint32_t ui32ChanMask);
extern void uDMAChannelAssign(uint32_t ui32Mapping);















#line 876 "driverlib/udma.h"

extern void uDMAChannelSelectDefault(uint32_t ui32DefPeriphs);
extern void uDMAChannelSelectSecondary(uint32_t ui32SecPeriphs);











#line 20 "PWM_helper.h"
#line 1 "driverlib/pwm.h"



























































#line 78 "driverlib/pwm.h"
                                            


                                            


                                            


                                            


                                            


                                            







#line 113 "driverlib/pwm.h"






#line 128 "driverlib/pwm.h"


























#line 162 "driverlib/pwm.h"

#line 171 "driverlib/pwm.h"









#line 187 "driverlib/pwm.h"









#line 204 "driverlib/pwm.h"






#line 218 "driverlib/pwm.h"







#line 232 "driverlib/pwm.h"


















extern void PWMGenConfigure(uint32_t ui32Base, uint32_t ui32Gen,
                            uint32_t ui32Config);
extern void PWMGenPeriodSet(uint32_t ui32Base, uint32_t ui32Gen,
                            uint32_t ui32Period);
extern uint32_t PWMGenPeriodGet(uint32_t ui32Base,
                                uint32_t ui32Gen);
extern void PWMGenEnable(uint32_t ui32Base, uint32_t ui32Gen);
extern void PWMGenDisable(uint32_t ui32Base, uint32_t ui32Gen);
extern void PWMPulseWidthSet(uint32_t ui32Base, uint32_t ui32PWMOut,
                             uint32_t ui32Width);
extern uint32_t PWMPulseWidthGet(uint32_t ui32Base,
                                 uint32_t ui32PWMOut);
extern void PWMDeadBandEnable(uint32_t ui32Base, uint32_t ui32Gen,
                              uint16_t ui16Rise, uint16_t ui16Fall);
extern void PWMDeadBandDisable(uint32_t ui32Base, uint32_t ui32Gen);
extern void PWMSyncUpdate(uint32_t ui32Base, uint32_t ui32GenBits);
extern void PWMSyncTimeBase(uint32_t ui32Base, uint32_t ui32GenBits);
extern void PWMOutputState(uint32_t ui32Base, uint32_t ui32PWMOutBits,
                           _Bool bEnable);
extern void PWMOutputInvert(uint32_t ui32Base, uint32_t ui32PWMOutBits,
                            _Bool bInvert);
extern void PWMOutputFaultLevel(uint32_t ui32Base,
                                uint32_t ui32PWMOutBits,
                                _Bool bDriveHigh);
extern void PWMOutputFault(uint32_t ui32Base, uint32_t ui32PWMOutBits,
                           _Bool bFaultSuppress);
extern void PWMGenIntRegister(uint32_t ui32Base, uint32_t ui32Gen,
                              void (*pfnIntHandler)(void));
extern void PWMGenIntUnregister(uint32_t ui32Base, uint32_t ui32Gen);
extern void PWMFaultIntRegister(uint32_t ui32Base,
                                void (*pfnIntHandler)(void));
extern void PWMFaultIntUnregister(uint32_t ui32Base);
extern void PWMGenIntTrigEnable(uint32_t ui32Base, uint32_t ui32Gen,
                                uint32_t ui32IntTrig);
extern void PWMGenIntTrigDisable(uint32_t ui32Base, uint32_t ui32Gen,
                                 uint32_t ui32IntTrig);
extern uint32_t PWMGenIntStatus(uint32_t ui32Base, uint32_t ui32Gen,
                                _Bool bMasked);
extern void PWMGenIntClear(uint32_t ui32Base, uint32_t ui32Gen,
                           uint32_t ui32Ints);
extern void PWMIntEnable(uint32_t ui32Base, uint32_t ui32GenFault);
extern void PWMIntDisable(uint32_t ui32Base, uint32_t ui32GenFault);
extern void PWMFaultIntClear(uint32_t ui32Base);
extern uint32_t PWMIntStatus(uint32_t ui32Base, _Bool bMasked);
extern void PWMFaultIntClearExt(uint32_t ui32Base,
                                uint32_t ui32FaultInts);
extern void PWMGenFaultConfigure(uint32_t ui32Base, uint32_t ui32Gen,
                                 uint32_t ui32MinFaultPeriod,
                                 uint32_t ui32FaultSenses);
extern void PWMGenFaultTriggerSet(uint32_t ui32Base, uint32_t ui32Gen,
                                  uint32_t ui32Group,
                                  uint32_t ui32FaultTriggers);
extern uint32_t PWMGenFaultTriggerGet(uint32_t ui32Base,
                                      uint32_t ui32Gen,
                                      uint32_t ui32Group);
extern uint32_t PWMGenFaultStatus(uint32_t ui32Base,
                                  uint32_t ui32Gen,
                                  uint32_t ui32Group);
extern void PWMGenFaultClear(uint32_t ui32Base, uint32_t ui32Gen,
                             uint32_t ui32Group,
                             uint32_t ui32FaultTriggers);
extern void PWMClockSet(uint32_t ui32Base, uint32_t ui32Config);
extern uint32_t PWMClockGet(uint32_t ui32Base);
extern void PWMOutputUpdateMode(uint32_t ui32Base,
                                uint32_t ui32PWMOutBits,
                                uint32_t ui32Mode);










#line 21 "PWM_helper.h"
#line 1 "driverlib/ssi.h"



























































#line 67 "driverlib/ssi.h"






#line 79 "driverlib/ssi.h"



























#line 113 "driverlib/ssi.h"






extern void SSIConfigSetExpClk(uint32_t ui32Base, uint32_t ui32SSIClk,
                               uint32_t ui32Protocol, uint32_t ui32Mode,
                               uint32_t ui32BitRate,
                               uint32_t ui32DataWidth);
extern void SSIDataGet(uint32_t ui32Base, uint32_t *pui32Data);
extern int32_t SSIDataGetNonBlocking(uint32_t ui32Base,
                                  uint32_t *pui32Data);
extern void SSIDataPut(uint32_t ui32Base, uint32_t ui32Data);
extern int32_t SSIDataPutNonBlocking(uint32_t ui32Base, uint32_t ui32Data);
extern void SSIDisable(uint32_t ui32Base);
extern void SSIEnable(uint32_t ui32Base);
extern void SSIIntClear(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void SSIIntDisable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void SSIIntEnable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void SSIIntRegister(uint32_t ui32Base, void (*pfnHandler)(void));
extern uint32_t SSIIntStatus(uint32_t ui32Base, _Bool bMasked);
extern void SSIIntUnregister(uint32_t ui32Base);
extern void SSIDMAEnable(uint32_t ui32Base, uint32_t ui32DMAFlags);
extern void SSIDMADisable(uint32_t ui32Base, uint32_t ui32DMAFlags);
extern _Bool SSIBusy(uint32_t ui32Base);
extern void SSIClockSourceSet(uint32_t ui32Base, uint32_t ui32Source);
extern uint32_t SSIClockSourceGet(uint32_t ui32Base);
extern void SSIAdvModeSet(uint32_t ui32Base, uint32_t ui32Mode);
extern void SSIAdvDataPutFrameEnd(uint32_t ui32Base, uint32_t ui32Data);
extern int32_t SSIAdvDataPutFrameEndNonBlocking(uint32_t ui32Base,
                                             uint32_t ui32Data);
extern void SSIAdvFrameHoldEnable(uint32_t ui32Base);
extern void SSIAdvFrameHoldDisable(uint32_t ui32Base);










#line 22 "PWM_helper.h"
#line 1 "driverlib/systick.h"


























































extern void SysTickEnable(void);
extern void SysTickDisable(void);
extern void SysTickIntRegister(void (*pfnHandler)(void));
extern void SysTickIntUnregister(void);
extern void SysTickIntEnable(void);
extern void SysTickIntDisable(void);
extern void SysTickPeriodSet(uint32_t ui32Period);
extern uint32_t SysTickPeriodGet(void);
extern uint32_t SysTickValueGet(void);










#line 23 "PWM_helper.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 24 "PWM_helper.h"

#line 2 "PWM_helper.c"
uint8_t values[3*60]; 



 
volatile uint32_t LEDCounter = 0xFFFFFFFF;





 
volatile uint32_t millis=0;

void SycTickInt(){
  millis++;
}
void SysTickbegin(){
  SysTickPeriodSet(80000);
  SysTickIntRegister(SycTickInt);
  SysTickIntEnable();
  SysTickEnable();
}

void Wait(uint32_t time){
	uint32_t temp = millis;
	while( (millis-temp) < time){
	}	
}













 
void TimerInt(){

	(*((volatile uint32_t *)(0x40030000 + 0x00000024))) = (*((volatile uint32_t *)(0x40030000 + 0x00000020))); 

	LEDCounter++; 

	



 
	if(LEDCounter >= 3*60*8){
		TimerDisable(0x40030000, 0x0000ff00);
		GPIOPinTypeGPIOOutput(0x40025000, 0x00000002);
		GPIOPinWrite(0x40025000,0x00000002, 0);
		LEDCounter = 0xFFFFFFFF;
	}
	









 
	else{
		if( ( (values[LEDCounter>>3]) >> (7- (LEDCounter & 7)) ) & 1)
		  (*((volatile uint32_t *)(0x40030000 + 0x00000034))) = 36; 
		else
		  (*((volatile uint32_t *)(0x40030000 + 0x00000034))) = 68; 
	}
}









 
void PWMInit(){

	uint32_t Period;
	Period = 100 ; 


    SysCtlPeripheralEnable(0xf0000805);
	SysCtlDelay(3);
	GPIOPinConfigure(0x00050407);
	GPIOPinTypeTimer(0x40025000, 0x00000002);

	SysCtlPeripheralEnable(0xf0000400);
	SysCtlDelay(3);
	TimerConfigure(0x40030000, 0x04000000|0x00000A00);
	TimerLoadSet(0x40030000, 0x0000ff00, Period -1);

	
	(*((volatile uint32_t *)(0x40030000+0x00000400))) =1;

	TimerIntRegister(0x40030000,0x0000ff00,TimerInt);
	TimerControlEvent(0x40030000,0x0000ff00,0x00000000);
	TimerIntEnable(0x40030000,0x00000400);

	IntEnable(36);

}








 
void SendData(){

	GPIOPinTypeTimer(0x40025000, 0x00000002);
    TimerMatchSet(0x40030000, 0x0000ff00, 98);
    TimerEnable(0x40030000, 0x0000ff00);
    SysCtlDelay(30);
    while(LEDCounter !=0xFFFFFFFF);

}
