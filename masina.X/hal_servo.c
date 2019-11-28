#include "hal_servo.h"
T_F16 PWM_angle;

void hal_angle(T_F16 angle)
{
    if(angle>=10 && angle <=170)
    {
        if(angle<65)
            angle=65;
        if(angle>115)
            angle=115;
        
        PWM_angle=((angle-10)*0.04375)+4;
         
        PWM1_vSetDuty(PWM_angle, 1);
    }
    
}





