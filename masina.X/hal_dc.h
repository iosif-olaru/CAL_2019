#ifndef HAL_DC_H
#define	HAL_DC_H

#include "mcal_pwm.h"
#include "mcal_gpio.h"

void hal_initDC();
void hal_setDirectionDC(BOOL directie);
void hal_setSpeedDC(int dutyCycle);


#endif