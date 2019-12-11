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
#include "hal_servo.h"
#include "light_sig.h"
#include "rte.h"

T_U16 a = 0;

char c=0;

unsigned char counter=0;

void TASK_Inits()
{
    MCAL_vInit();
    hal_initDC();
    
}

void TASK_1ms()
{
    
}

void TASK_5ms()
{

}

void TASK_10ms()
{   
    if((rte_u16GetLineFollower())==0)
    {
        rte_setSpeedDC(20);
        rte_setDirectionDC(1);
    }
    else
    {
        rte_setSpeedDC(0);
    }
}

void TASK_100ms()
{ 
   
    
}

void TASK_500ms()
{ 

}

void TASK_1000ms()
{
    
}