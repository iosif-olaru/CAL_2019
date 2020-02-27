#include "hal_dc.h"
#include "hal_servo.h"
#include "hal_battery.h"

#ifndef RTE_H
#define	RTE_H

#define rte_setDirectionDC hal_setDirectionDC
#define rte_setSpeedDC hal_setSpeedDC
#define rte_angle hal_angle
#define rte_u16GetLineFollower hal_u16GetLineFollower
#define rte_functionLineFollower hal_functionLineFollower
#define rte_batteryIndicator hal_batteryIndicator

#endif	

