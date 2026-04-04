#include "stm8s208r.h"

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

    while (1)
    {
        // włączamy S1
        if ((PB_IDR & (1<<4)) == 0)
        {
            PC_ODR  &= ~(1<<5); // włączamy D1
            
            // włączamy S2 i D2
            if ((PB_IDR & (1<<3)) == 0) // S1, S2 wciśnięte
            {
                PC_ODR  &= ~(1<<7); // włączamy D2
                
                // włączamy S3 i D3
                if ((PB_IDR & (1<<2)) == 0) // S1, S2, S3 wciśnięte
                {
                    PC_ODR  &= ~(1<<6); // włączamy D3
                }
                //wyłączamy S1, S2, S3
                else { PC_ODR |= (1<<6); } // wyłączamy D3
            }
            //wyłączamy S1, S2
            else
            {
                PC_ODR |= (1<<7); // wyłączamy D2
                PC_ODR |= (1<<6); // wyłączamy D3
            }
        }
        // wyłączamy S1
        else
        {
            PC_ODR |= (1<<5); // wyłączamy D1
            PC_ODR |= (1<<7); // wyłączamy D2
            PC_ODR |= (1<<6); // wyłączamy D3
        }
    }
}
