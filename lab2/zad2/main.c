// TREŚĆ ZADANIA
// Przytrzymanie S1 włączy diodę D1,
// Przytrzymanie S1 i S2 włączy diodę D2,
// Przytrzymanie S1 i S2 i S3 diodę D3,
// domyślnie diody wyłączone

#include "stm8s208r.h"

// Numer diody i PIN
#define D1 5
#define D2 7
#define D3 6

#define S1 4
#define S2 3
#define S3 2

void main(void)
{
    // ====== PRZYCISKI ====== //

    PB_DDR &= ~((1 << S1) | (1 << S2) | (1 << S3));
    PB_CR1 &= ~((1 << S1) | (1 << S2) | (1 << S3));
    PB_CR2 &= ~((1 << S1) | (1 << S2) | (1 << S3));

    // ====== DIODY ====== //

    PC_DDR |= (1 << D1) | (1 << D2) | (1 << D3); // DDR do trzech diod (optymalizacja kodu)
    PC_CR1 |= (1 << D1) | (1 << D2) | (1 << D3); // CR1 do trzech diod (optymalizacja kodu)
    PC_CR2 |= (1 << D1) | (1 << D2) | (1 << D3); // CR2 do trzech diod (optymalizacja kodu)

    while (1)
    {
        // włączamy S1
        if ((PB_IDR & (1 << S1)) == 0)
        {
            PC_ODR &= ~(1 << D1); // włączamy D1

            // włączamy S2 i D2
            if ((PB_IDR & (1 << S2)) == 0) // S1, S2 wciśnięte
            {
                PC_ODR &= ~(1 << D2); // włączamy D2

                // włączamy S3 i D3
                if ((PB_IDR & (1 << S3)) == 0) // S1, S2, S3 wciśnięte
                {
                    PC_ODR &= ~(1 << D3); // włączamy D3
                }
                // wyłączamy S1, S2, S3
                else
                {
                    PC_ODR |= (1 << D3);
                } // wyłączamy D3
            }
            // wyłączamy S1, S2
            else
            {
                PC_ODR |= (1 << D2); // wyłączamy D2
                PC_ODR |= (1 << D3); // wyłączamy D3
            }
        }
        // wyłączamy S1
        else
        {
            PC_ODR |= (1 << D1); // wyłączamy D1
            PC_ODR |= (1 << D2); // wyłączamy D2
            PC_ODR |= (1 << D3); // wyłączamy D3
        }
    }
}
