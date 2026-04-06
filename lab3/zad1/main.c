// Puszczenie przycisku B1 wywoła przerwanie które zmieni stan diody LD2,
    // domyślnie dioda wyłączona

#include "stm8s208r.h"
void main(void){

	// LD2
	PC_DDR |= 1<<5;
	PC_CR1 |= 1<<5;
	PC_CR2 |= 1<<5;
	PC_ODR &= ~(1<<5);

	//B1
	PE_DDR &= ~(1<<4);
	PE_CR1 &= ~(1<<4);
	PE_CR2 |= 1<<4;
	
	EXTI_CR2 |= (1<<1);
	EXTI_CR2 &= ~(1<<0);
	
    // TO JEST KLUCZOWA ZMIANA: (na macbooku)
    __asm__("rim");
	
	while(1)
	{
	}
}
