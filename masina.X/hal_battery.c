#include "hal_battery.h"
#include "mcal_adc.h"


T_U16 hal_u16batteryRead()
{
    T_U16 valProcente; // valoarea returnata in procente
    T_U8 i;
    T_F16 T_u16ValAdc=0;
    
    for(i=1;i<6;i++)
        T_u16ValAdc=ADC_u16Read(0)+T_u16ValAdc;
    T_u16ValAdc=T_u16ValAdc/5;
    
    T_F16 valVolti=(T_u16ValAdc*8.4)/4096;
    
    if(valVolti>7 && valVolti<8.4)
    {
        T_F16 rez1=(8.4-7)/(100-20);
        valProcente=(valVolti-7)*rez1+20;    
    }
    
    if(valVolti>6.5 && valVolti<7)
    {
        T_F16 rez2=(7-6.5)/(20-10);
        valProcente=(valVolti-6.5)*rez2+10;    
    }
    
    if(valVolti>6 && valVolti<6.5)
    {
        T_F16 rez3=(6.5-6)/(10-0);
        valProcente=(valVolti-6)*rez3+0;    
    }
    else 
        valProcente=0;
    return valProcente;
        
}

//---------------------------------------se aprinde un led rosu daca bateria e sub 50%
void hal_batteryIndicator()
{
    GPIO_u8SetPortPin(PORT_A , 10, DIGITAL, OUTPUT);
    if(hal_u16batteryRead()>50)
    {
        GPIO_u8WritePortPin(PORT_A, 10, 0);
    }
    else
    {
        GPIO_u8WritePortPin(PORT_A, 10, 1);
    }
     
 
}
    //-------------------------------------------------------------------------------------



