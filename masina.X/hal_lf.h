
#ifndef HAL_LF_H
#define HAL_LF_H

#include "general_types.h"
#include "mcal_gpio.h"
#include "hal_servo.h"

#define LINE_FOLLOWER_MASK 63

void hal_setLineFollower(BOOL bValue); //setam daca input -1- sau output -0-
void hal_WriteLineFollower(); //aprindem ledurile
T_U16 hal_u16GetLineFollower();
void hal_functionLineFollower();
        
#endif