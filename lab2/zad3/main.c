// Laby 2, zadanie 3
// S3 wybiera którą diodę steruje:
// 1 kliknięcie D1,
// 2 kliknięcia D2,
// 3 kliknięcia D3,
// 4 kliknięcia D4,
// S2 włącza wybraną diodę
// S1 wyłącza wybraną diodę

#include "stm8s208r.h"

// Numer diody i PIN
#define D1 5
#define D2 7
#define D3 6
#define D4 5 // PORT E

#define S1 4
#define S2 3
#define S3 2

void delay(char time)
{
    int i = 0;
    for (i = 0; i < (time); i++)
    {
    }
}

void main(void)
{
    char choice = 1; // S3 wybiera 1 = D4, 2 = D3, 3 = D2, 4 = D1, S2 = wylacza, S1 = wlacza

    // ====== PRZYCISKI ====== //

    PB_DDR &= ~((1 << S1) | (1 << S2) | (1 << S3));
    PB_CR1 &= ~((1 << S1) | (1 << S2) | (1 << S3));
    PB_CR2 &= ~((1 << S1) | (1 << S2) | (1 << S3));

    // ====== DIODY ====== //

    PC_DDR |= (1 << D1) | (1 << D2) | (1 << D3); // DDR do trzech diod (optymalizacja kodu)
    PC_CR1 |= (1 << D1) | (1 << D2) | (1 << D3); // CR1 do trzech diod (optymalizacja kodu)
    PC_CR2 |= (1 << D1) | (1 << D2) | (1 << D3); // CR2 do trzech diod (optymalizacja kodu)

    // ====== DIODA D4 ====== //

    PE_DDR |= (1 << D4);
    PE_CR1 |= (1 << D4);
    PE_CR2 |= (1 << D4);

    // WYŁACZAMY WSZYSTKIE DIODY //
    PC_ODR |= (1 << D1) | (1 << D2) | (1 << D3);
    PE_ODR |= (1 << D4);

    while (1)
    {
        if ((PB_IDR & (1 << S3)) == 0)
        {
            delay(1000);
            if ((PB_IDR & (1 << S3)) == 0)
            {
                choice = choice + 1;
                if (choice > 4)
                {
                    choice = 1;
                }

                while ((PB_IDR & (1 << S3)) == 0);
                delay(1000);
            }
        }

        //  WYŁACZAMY DIODE //
        if ((PB_IDR & (1 << S1)) == 0)
        {
            if (choice == 1)
                PC_ODR |= (1 << D1);
            if (choice == 2)
                PC_ODR |= (1 << D2);
            if (choice == 3)
                PC_ODR |= (1 << D3);
            if (choice == 4)
                PE_ODR |= (1 << D4);
        }

        //  WŁACZAMY DIODE //
        if ((PB_IDR & (1 << S2)) == 0)
        {
            if (choice == 1)
                PC_ODR &= ~(1 << D1);
            if (choice == 2)
                PC_ODR &= ~(1 << D2);
            if (choice == 3)
                PC_ODR &= ~(1 << D3);
            if (choice == 4)
                PE_ODR &= ~(1 << D4);
        }
    }
}
