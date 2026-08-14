#include "stm8s.h"

void main(void)
{

	GPIO_Init(GPIOC, GPIO_PIN_5, GPIO_MODE_OUT_PP_LOW_FAST);
	while (1)
	{
		GPIO_WhiteHigh(GPIOC, GPIO_PIN_5);
		GPIO_WhiteLow(GPIOC, GPIO_PIN_5);
	}
}
