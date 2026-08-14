/**
  ******************************************************************************
  * @file    Project/main.c 
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   Main program body
   ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */ 


/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"

/* Private defines -----------------------------------------------------------*/
//rozmiar bufora danych nadanych i odebranych
#define TX_SIZE 32
#define RX_SIZE 7

// tablice do przechowywania ciagu znakow
uint8_t rx_buff[RX_SIZE];
uint8_t tx_buff[TX_SIZE];
uint8_t rx_comand[RX_SIZE];

//zmienne wskazujace na odczyt/zapis danych nadanych/odebranych
uint8_t tx_wr, tx_rd;
uint8_t rx_wr;


volatile uint8_t CarRet=0; //informacja o wyslaniu znaku '\r'
uint8_t ind;

/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
void tx_put(uint8_t c)
{
	tx_buff[tx_wr] = c;
  if (++tx_wr >= TX_SIZE) tx_wr = 0;
  UART1_ITConfig(UART1_IT_TXE, ENABLE); //wlacz ponownie przerwania po wyslaniu znakow
}

uint8_t tx_get(void) //zmienna ktora sama sprawdza czy wyslano juz wszystkie znaki z tablicy
{
  //UWAGA: co jesli bufor pusty?
  uint8_t c = tx_buff[tx_rd];
  if (++tx_rd >= TX_SIZE) tx_rd = 0;
  return c;
}

uint8_t tx_cnt(void) //zmienna okreslajaca czy wszystkie znaki zostaly nadane
{
  if (tx_wr != tx_rd)
    return 1;
  else
    return 0;
}

void rx_put(char c) //funkcja odbierajaca znaki do tablicy
{
  //zapisz znak do tablicy o indeksie rx_wr
  rx_buff[rx_wr] = c;
	if (++rx_wr >= RX_SIZE) rx_wr = 0; //zwieksz znak a w przypadku wypelnienia bufora wyzeruj indeks
	// w przypadku odebrania znaku /r
	if (c==13)
	{
		CarRet=1;
		UART1_ITConfig(UART1_IT_RXNE_OR, DISABLE); //wylacz przerwania do momentu zdekodowania polecenia
	}
}

void send_string(const char* s)
{
  while (*s) tx_put(*s++);
}

void decode_string(const char* word) //funkcje dekodujaca polecenie
{

	for (ind=0; ind<RX_SIZE; ++ind) //zapisz bufor do pomocniczej tablicy
		rx_comand[ind]=*word++;
		
	ind = rx_comand[4]; //zapisz znak 'n' lub 'f'
	
	switch(ind)
	{
		case 110: //jesli 'n'
		{
			ind = rx_comand[1]; //zapisz znak '1' lub '2' lub '3'
			switch(ind)
			{
				case 49: //jesli '1'
				GPIO_WriteLow(GPIOC, GPIO_PIN_5);
				send_string("Alez prosze ciebie bardzo! (wlaczono diode 1)\r\n");
				break;
				
				case 50: //jesli '2'
				GPIO_WriteLow(GPIOC, GPIO_PIN_7);
				send_string("Alez prosze ciebie bardzo! (wlaczono diode 2)\r\n");
				break;
				
				case 51: //jesli '3'
				GPIO_WriteLow(GPIOC, GPIO_PIN_6);
				send_string("Alez prosze ciebie bardzo! (wlaczono diode 3)\r\n");
				break;
				
				case 52: //jesli '4'
				GPIO_WriteLow(GPIOE, GPIO_PIN_5);
				send_string("Alez prosze ciebie bardzo! (wlaczono diode 4)\r\n");
				break;
				
				case 53: //jesli '5'
				GPIO_WriteLow(GPIOC, GPIO_PIN_1);
				send_string("Alez prosze ciebie bardzo! (wlaczono buzzer)\r\n");
				break;
			}
			break;
		}
		
		case 102: //jesli 'f'
		{
			ind = rx_comand[1]; //analogicznie jak wyzej
			switch(ind)
			{
				case 49:
				GPIO_WriteHigh(GPIOC, GPIO_PIN_5);
				send_string("Alez prosze ciebie bardzo! (wylaczono diode 1)\r\n");
				break;
				
				case 50:
				GPIO_WriteHigh(GPIOC, GPIO_PIN_7);
				send_string("Alez prosze ciebie bardzo! (wylaczono diode 2)\r\n");
				break;
				
				case 51:
				GPIO_WriteHigh(GPIOC, GPIO_PIN_6);
				send_string("Alez prosze ciebie bardzo! (wylaczono diode 3)\r\n");
				break;
				
				case 52:
				GPIO_WriteHigh(GPIOE, GPIO_PIN_5);
				send_string("Alez prosze ciebie bardzo! (wylaczono diode 3)\r\n");
				break;
				
				case 53: 
				GPIO_WriteHigh(GPIOC, GPIO_PIN_1);
				send_string("Alez prosze ciebie bardzo! (wylaczono buzzer)\r\n");
				break;
		}
		break;
	}
}
		for (ind=0; ind<RX_SIZE; ++ind)
		rx_buff[ind]=0;
		rx_wr=0;
		//wyzeruj rx_buf
		
		CarRet=0; //zdejmij informacje o nowej linii
		UART1_ITConfig(UART1_IT_RXNE_OR, ENABLE); //wlacz przerwanie

}

void main(void)
{
	char data;
	//konfiguracja diod
	GPIO_Init(GPIOC, GPIO_PIN_5, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(GPIOC, GPIO_PIN_7, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(GPIOC, GPIO_PIN_6, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(GPIOE, GPIO_PIN_5, GPIO_MODE_OUT_PP_LOW_FAST);
	
	GPIO_Init(GPIOC, GPIO_PIN_1, GPIO_MODE_OUT_PP_LOW_FAST);
	
	// ustawienie stanu wysokiego, zgaszenie diody
	GPIO_WriteHigh(GPIOC, GPIO_PIN_5);
	GPIO_WriteHigh(GPIOC, GPIO_PIN_6);
	GPIO_WriteHigh(GPIOC, GPIO_PIN_7);
	GPIO_WriteHigh(GPIOE, GPIO_PIN_5);
	GPIO_WriteHigh(GPIOC, GPIO_PIN_1);
	
	//wyzerowanie konfiguracji UARTa i jego skonfigurowanie	
	UART1_DeInit();
  UART1_Init((uint32_t)115200, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO,
              UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
	//generowanie przerwania zarowna na Tx oraz Rx
	UART1_ITConfig(UART1_IT_RXNE_OR, ENABLE);	
	enableInterrupts();
	
	send_string("Wybierz diode komenda: 'dX on' lub 'dX off' (d5 to buzzer)\r\n");
	
  /* Infinite loop */
  while (1)
  {
		if (CarRet==1) //jesli zostal wyslany znak enter/'r na koncu
		{
			decode_string(rx_buff); //zdekoduj slowo
		}
	}
}

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval : None
  */
void assert_failed(u8* file, u32 line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
