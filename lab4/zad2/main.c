/* MAIN.C file
 *
 * Copyright (c) 2002-2005 STMicroelectronics
 */

// TIM4 generuje przerwania stan na diodzie co 1s,
// S1 wybierze diodę (D3 i D4 lub D2 i D1 )

#define D1 5 // Port C
#define D2 7
#define D3 6
#define D4 5 // Port E

#define S1 4
#define S2 3
#define S3 2

unsigned short tim4_divider = 0;

#include "STM8S208R.h"

void main(void)
{

	//               DIODY               //
	// D1
	PC_DDR |= 1 << D1;
	PC_CR1 |= 1 << D1;
	PC_CR2 &= ~(1 << D1);

	// D2
	PC_DDR |= 1 << D2;
	PC_CR1 |= 1 << D2;
	PC_CR2 &= ~(1 << D2);

	// D3
	PC_DDR |= 1 << D3;
	PC_CR1 |= 1 << D3;
	PC_CR2 &= ~(1 << D3);

	// D4
	PE_DDR |= 1 << D4;
	PE_CR1 |= 1 << D4;
	PE_CR2 &= ~(1 << D4);

	//               SWITCH               //
	// S1
	PB_DDR &= ~(1 << S1);
	PB_CR1 &= ~(1 << S1);
	PB_CR2 &= ~(1 << S1);

	/* WYŁACZAMY WSZYSKIE DIODY  (wysoki stan == nie świeca)  */
	PC_ODR |= (1 << D1);
	PC_ODR |= (1 << D2);
	PC_ODR |= (1 << D3);
	PE_ODR |= (1 << D4);

	TIM4_PSCR = 3;
	TIM4_ARR = 249;
	TIM4_CR1 |= 1 << 0;
	TIM4_IER |= 1 << 0;

	__asm__("rim"); // enable interrupts  (inaczej na windows)

	while (1)
		;
}
void delay(char ms)
{
	int i = 0;
	for (i = 0; i < (ms * 100); i++)
	{
	}
}

char choice = 0; // S1 wybiera diode

void foo(void) __interrupt(23)
{
	if ((PB_IDR & (1 << S1)) == 0)
	{
		delay(10);
		if ((PB_IDR & (1 << S1)) == 0)
		{
			choice = choice + 1;
			if (choice > 2) // DWIE OPCJE DIOD (D1 i D2) LUB (D3 i D4)
			{
				choice = 1;
			}

			while ((PB_IDR & (1 << S1)) == 0)
				;
			delay(10);
		}
	}

	TIM4_SR &= ~(1 << 0);

	tim4_divider++;

	if (tim4_divider >= 1000)
	{
		tim4_divider = 0;

		if (choice == 1)
		{
			PC_ODR ^= (1 << D1);
			PC_ODR ^= (1 << D2);
			PC_ODR |= (1 << D3);
			PE_ODR |= (1 << D4);
		}

		else if (choice == 2)
		{
			PC_ODR |= (1 << D1);
			PC_ODR |= (1 << D2);
			PC_ODR ^= (1 << D3);
			PE_ODR ^= (1 << D4);
		}

		return;
	}
}
