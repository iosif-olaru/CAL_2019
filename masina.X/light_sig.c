/*
 * File:   light_sig.c
 * Author: olaru
 *
 * Created on 13 noiembrie 2019, 18:25
 */


#include "xc.h"
#include "mcal_gpio.h"
#include "light_sig.h"
#include "sys_tasks.h"

unsigned char ledValue=0;

void DoHandleLightSig()
{
    if(counter==200)
    {
        counter=0;
        ledValue=1;
        GPIO_u8WritePortPin(PORT_A, 10, ledValue);
    }
    //----------------------------------------------------------
     if(counter==20)
    {
        ledValue=0;
        GPIO_u8WritePortPin(PORT_A, 10, ledValue);
    }
    if(counter==40)
    {
        ledValue=1;
        GPIO_u8WritePortPin(PORT_A, 10, ledValue);
    }
    if(counter==60)
    {
        ledValue=0;
        GPIO_u8WritePortPin(PORT_A, 10, ledValue);
    }
    if(counter==80)
    {
        ledValue=1;
        GPIO_u8WritePortPin(PORT_A, 10, ledValue);
    }
    if(counter==100)
    {
        ledValue=0;
        GPIO_u8WritePortPin(PORT_A, 10, ledValue);
    }
    //GPIO_u8WritePortPin(PORT_A, 10, ledValue);
}
