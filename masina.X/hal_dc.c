#include "hal_dc.h"


void hal_initDC()
{
    PWM1_vInit();
    //GPIO_u8SetPortPin(PORT_A, 10, DIGITAL ,OUTPUT);
    //GPIO_u8WritePortPin('A', 9, 1);
    
}

void hal_setDirectionDC(BOOL directie) // 0-inainte, 1-inapoi
{
    GPIO_u8WritePortPin(PORT_A, 9, directie);
}

void hal_setSpeedDC(int dutyCycle)
{
    PWM1_vSetDuty(dutyCycle, 2);
}



