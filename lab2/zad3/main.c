#include "stm8s208r.h"
// Laby 2, zadanie 1
// Wciśnięcie/puszczenie S1 włączy/wyłączy diody D1 i D2, analogicznie S2 steruje diodami D3 i D4

void main(void)
{
    //Przycisk S1
    PB_DDR &= ~(1<<4);
    PB_CR1 &= ~(1<<4);
    PB_CR2 &= ~(1<<4);
    
    //Dioda D1
    PC_DDR |= (1<<5);
    PC_CR1 |= (1<<5);
    PC_CR2 |= (1<<5);
    
    //Dioda D2
    PC_DDR |= (1<<7);
    PC_CR1 |= (1<<7);
    PC_CR2 |= (1<<7);
    
    
    //Przycisk S2
    PB_DDR &= ~(1<<3);
    PB_CR1 &= ~(1<<3);
    PB_CR2 &= ~(1<<3);
    
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
        if ((PB_IDR & (1<<4)) == 0){
            PC_ODR &= ~(1<<5);
            PC_ODR &= ~(1<<7);
        }
        else{
            PC_ODR |= (1<<5);
            PC_ODR |= (1<<7);
        }
        
        if ((PB_IDR & (1<<3)) == 0){
            PC_ODR &= ~(1<<6);
            PE_ODR &= ~(1<<5);
        }
        else{
            PC_ODR |= (1<<6);
            PE_ODR |= (1<<5);
        }
    }
}
