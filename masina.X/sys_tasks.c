/* 
 * File:   sys_tasks.h
 * Author: Cristian T. A.
 *
 * Created on August 17, 2018, 1:26 PM
 */

#include "general.h"
#include "sys_tasks.h"

#include "mcal_init.h"
#include "asw_com.h"
#include "hal_dc.h"

#include "light_sig.h"

T_U16 a = 0;

unsigned char counter=0;

void TASK_Inits()
{
    MCAL_vInit();
    hal_initDC();
    //hal_setDirectionDC(1);
    GPIO_u8SetPortPin(PORT_A, 9,DIGITAL, OUTPUT);
}

void TASK_1ms()
{
    
}

void TASK_5ms()
{

}

void TASK_10ms()
{   
    counter++;
    DoHandleLightSig();
}

void TASK_100ms()
{ 
    GPIO_u8WritePortPin(PORT_A, 9, 1);
   hal_setSpeedDC(20);
}

void TASK_500ms()
{ 

}

void TASK_1000ms()
{
    
    //a = !a;
    //GPIO_u8WritePortPin(PORT_A, 10, a);
}