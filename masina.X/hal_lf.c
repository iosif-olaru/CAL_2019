#include "hal_lf.h"



void hal_setLineFollower(BOOL bValue) //
{
    T_U8 i;
    for(i=1;i<7;i++)
        GPIO_u8SetPortPin(PORT_C, i, 1, bValue);
}

void hal_WriteLineFollower()
{   T_U8 j;
    for(j=1;j<7;j++)
        GPIO_u8WritePortPin(PORT_C, j, 1);
}


T_U16 hal_u16GetLineFollower()
{
    hal_setLineFollower(0); //setare port output
    hal_WriteLineFollower(); //aprinde leduri
    
    __delay_us(10);
    
    hal_setLineFollower(1); // setare port input
    
    __delay_us(1000);
    
    T_U16 PortValue;
    PortValue = GPIO_u16ReadPort(PORT_C);
    PortValue = PortValue & LINE_FOLLOWER_MASK;
    return PortValue;
}

void hal_functionLineFollower()
{
    T_U16 PortValue=hal_u16GetLineFollower();
    if(PortValue==0)
        hal_angle(90);
    
    if(PortValue==12)
        hal_angle(90);//1
    
    if(PortValue==4)
        hal_angle(92);//2
    
    if(PortValue==8)
        hal_angle(88);//3
    
    if(PortValue==6)
        hal_angle(98);//4
    
    if(PortValue==24)
        hal_angle(82);//5
    
    if(PortValue==2)
        hal_angle(105);//6
    
    if(PortValue==16)
        hal_angle(75);//7
    
    if(PortValue==3)
        hal_angle(110);//8
    
     if(PortValue==48)
        hal_angle(70);//9
    
     if(PortValue==1)
        hal_angle(115);//10
    
     if(PortValue==32)
        hal_angle(65);//11
     else
        hal_angle(120);
    
}
