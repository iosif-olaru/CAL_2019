

#ifndef HAL_LF_H
#define HAL_LF_H

#include "general_types.h"
#include "mcal_gpio.h"
#define LINE_FOLLOWER_MASK 63

void hal_setLineFollower(BOOL bValue); //setam daca input -1- sau output -0-
void hal_WriteLineFollower(); //aprindem ledurile
T_U16 u16hal_GetLineFollower(); //principala

        

#endif