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