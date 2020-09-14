#ifndef __PWM_OUTPUT_H
#define	__PWM_OUTPUT_H

#include "stm32f10x.h"

void TIM1_PWM_Init(void);
void pwm_start (void);
void pwm_speed(int speed);
void DelayNmS(unsigned int i);
void pwm_steer (int steer);
#endif /* __PWM_OUTPUT_H */

