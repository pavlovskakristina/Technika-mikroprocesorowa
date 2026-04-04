#include "stm8s208r.h"
// Laby 2, zadanie 2
// Przytrzymanie:
    // S1 włączy diodę D1,
    // S1 i S2 diodę D2,
    // S1 i S2 i S3 diodę D3,
    //  domyślnie diody wyłączone


void main(void)
{
    // ====== PRZYCISKI ====== //
    
    //Przycisk S1
    PB_DDR &= ~(1<<4);
    PB_CR1 &= ~(1<<4);
    PB_CR2 &= ~(1<<4);
    
    //Przycisk S2
    PB_DDR &= ~(1<<3);
    PB_CR1 &= ~(1<<3);
    PB_CR2 &= ~(1<<3);
    
    //Przycisk S3
    PB_DDR &= ~(1<<2);
    PB_CR1 &= ~(1<<2);
    PB_CR2 &= ~(1<<2);
    
    
    // ====== DIODY ====== //
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
    
    //Dioda D4
    PE_DDR |= (1<<5);
    PE_CR1 |= (1<<5);
    PE_CR2 |= (1<<5);
    
    while (1)
    {

    }
}
