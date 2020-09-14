#include "led.h"
#include "delay.h"
#include "key.h"
#include "sys.h"
#include "usart.h"
#include "stm32f10x.h"
#include "pwm_output.h"
 
/************************************************

************************************************/
 int main(void)
 {		
 	u16 t;  
	u16 len;	
	u16 times=0;
	SystemInit();
	TIM1_PWM_Init();
	delay_init();	    	 //延时函数初始化	  
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2); //设置NVIC中断分组2:2位抢占优先级，2位响应优先级
	uart_init(115200);	 //串口初始化为115200
 	LED_Init();			     //LED端口初始化
	KEY_Init();          //初始化与按键连接的硬件接口
	pwm_start();
 	while(1)
	{
		if(USART_RX_STA&0x8000)
		{					   
			len=USART_RX_STA&0x3fff;//得到此次接收到的数据长度
			pwm_speed (USART_RX_BUF[0]);
			pwm_steer (USART_RX_BUF[1]);
			/*for(t=0;t<len;t++)
			{
				USART_SendData(USART1, USART_RX_BUF[t]);//向串口1发送数据
				while(USART_GetFlagStatus(USART1,USART_FLAG_TC)!=SET);//等待发送结束
			}
			printf("\r\n\r\n");//插入换行*/
			USART_RX_STA=0;
		}
	}	 
 }

