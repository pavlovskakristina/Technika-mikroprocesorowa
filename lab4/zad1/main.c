#include "stm8s208r.h"
// TIM4 generuje przerwania i będzie zmieniać stan diody D4 co 2s,
//TIM4_PSCR = 4

#define D4 5

void main(void)
{
	PE_DDR |= (1<<D4);
	PE_CR1 |= (1<<D4);
	PE_CR2 |= (1<<D4);
	
	TIM4_PSCR = 4;
	TIM4_ARR = 249;  // ARR zostało obliczone
	TIM4_CR1 |= 1<<0;
	TIM4_IER |= 1<<0;
	
    // TO JEST KLUCZOWA ZMIANA: (na macbooku)
    __asm__("rim");
	
	while (1)
	{
	}
}
