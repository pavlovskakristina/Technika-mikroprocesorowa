#include "stm8s208r.h"



main()
{
	//Przycisk S1
	PB_DDR &= ~(1<<4);
	PB_CR1 &= ~(1<<4);
	PB_CR2 &= ~(1<<4);
	
	//Przycisk S2
	PB_DDR &= ~(1<<3);
	PB_CR1 &= ~(1<<3);
	PB_CR2 &= ~(1<<3);	
	
	//Dioda D1
	PC_DDR |= (1<<5);
	PC_CR1 |= (1<<5);
	PC_CR2 |= (1<<5);
	
	//Dioda D2
	PC_DDR |= (1<<7);
	PC_CR1 |= (1<<7);
	PC_CR2 |= (1<<7);
	
	//Dioda D3
	PC_DDR |= (1<<6);
	PC_CR1 |= (1<<6);
	PC_CR2 |= (1<<6);
	
	TIM4_PSCR = 5;
	TIM4_ARR = 156;
	TIM4_CR1 |= 1<<0;
	TIM4_IER |= 1<<0;
	
	#asm
	rim
	#endasm
	
	while (1)
	{
		if ((PB_IDR & (1<<4))==0)
		{
			PC_DDR |= (1<<5);
			PC_DDR |= (1<<6);
			PC_DDR |= (1<<7);
		}
		if ((PB_IDR & (1<<3))==0)
		{
			PC_DDR &= ~(1<<5);
			PC_DDR &= ~(1<<6);
			PC_DDR &= ~(1<<7);
		}
	}
}