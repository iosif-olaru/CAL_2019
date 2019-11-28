#ifndef HAL_DC_H
#define	HAL_DC_H

#include "mcal_pwm.h"
#include "mcal_gpio.h"

void hal_initDC();  //initiere
void hal_setDirectionDC(BOOL directie); // 0-inainte, 1-inapoi
void hal_setSpeedDC(int dutyCycle); // 0-100 min-max


#endif