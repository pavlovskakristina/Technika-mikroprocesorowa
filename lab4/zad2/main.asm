;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (Mac OS X ppc)
;--------------------------------------------------------
	.module main
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _foo
	.globl _delay
	.globl _main
	.globl _choice
	.globl _tim4_divider
	.globl _ITC_SPR7
	.globl _ITC_SPR6
	.globl _ITC_SPR5
	.globl _ITC_SPR4
	.globl _ITC_SPR3
	.globl _ITC_SPR2
	.globl _ITC_SPR1
	.globl _CFG_GCR
	.globl _CAN_PF
	.globl _CAN_PE
	.globl _CAN_PD
	.globl _CAN_PC
	.globl _CAN_PB
	.globl _CAN_PA
	.globl _CAN_P9
	.globl _CAN_P8
	.globl _CAN_P7
	.globl _CAN_P6
	.globl _CAN_P5
	.globl _CAN_P4
	.globl _CAN_P3
	.globl _CAN_P2
	.globl _CAN_P1
	.globl _CAN_P0
	.globl _CAN_FPSR
	.globl _CAN_DGR
	.globl _CAN_IER
	.globl _CAN_RFR
	.globl _CAN_TPR
	.globl _CAN_TSR
	.globl _CAN_MSR
	.globl _CAN_MCR
	.globl _ADC_TDRL
	.globl _ADC_TDRH
	.globl _ADC_TDR
	.globl _ADC_DRL
	.globl _ADC_DRH
	.globl _ADC_DR
	.globl _ADC_CR2
	.globl _ADC_CR1
	.globl _ADC_CSR
	.globl _TIM4_ARR
	.globl _TIM4_PSCR
	.globl _TIM4_CNTR
	.globl _TIM4_EGR
	.globl _TIM4_SR
	.globl _TIM4_IER
	.globl _TIM4_CR1
	.globl _TIM3_CCR2L
	.globl _TIM3_CCR2H
	.globl _TIM3_CCR2
	.globl _TIM3_CCR1L
	.globl _TIM3_CCR1H
	.globl _TIM3_CCR1
	.globl _TIM3_ARRL
	.globl _TIM3_ARRH
	.globl _TIM3_ARR
	.globl _TIM3_PSCR
	.globl _TIM3_CNTRL
	.globl _TIM3_CNTRH
	.globl _TIM3_CNTR
	.globl _TIM3_CCER1
	.globl _TIM3_CCMR2
	.globl _TIM3_CCMR1
	.globl _TIM3_EGR
	.globl _TIM3_SR2
	.globl _TIM3_SR1
	.globl _TIM3_IER
	.globl _TIM3_CR1
	.globl _TIM2_CCR3L
	.globl _TIM2_CCR3H
	.globl _TIM2_CCR3
	.globl _TIM2_CCR2L
	.globl _TIM2_CCR2H
	.globl _TIM2_CCR2
	.globl _TIM2_CCR1L
	.globl _TIM2_CCR1H
	.globl _TIM2_CCR1
	.globl _TIM2_ARRL
	.globl _TIM2_ARRH
	.globl _TIM2_ARR
	.globl _TIM2_PSCR
	.globl _TIM2_CNTRL
	.globl _TIM2_CNTRH
	.globl _TIM2_CNTR
	.globl _TIM2_CCER2
	.globl _TIM2_CCER1
	.globl _TIM2_CCMR3
	.globl _TIM2_CCMR2
	.globl _TIM2_CCMR1
	.globl _TIM2_EGR
	.globl _TIM2_SR2
	.globl _TIM2_SR1
	.globl _TIM2_IER
	.globl _TIM2_CR1
	.globl _TIM1_OISR
	.globl _TIM1_DTR
	.globl _TIM1_BKR
	.globl _TIM1_CCR4L
	.globl _TIM1_CCR4H
	.globl _TIM1_CCR4
	.globl _TIM1_CCR3L
	.globl _TIM1_CCR3H
	.globl _TIM1_CCR3
	.globl _TIM1_CCR2L
	.globl _TIM1_CCR2H
	.globl _TIM1_CCR2
	.globl _TIM1_CCR1L
	.globl _TIM1_CCR1H
	.globl _TIM1_CCR1
	.globl _TIM1_RCR
	.globl _TIM1_ARRL
	.globl _TIM1_ARRH
	.globl _TIM1_ARR
	.globl _TIM1_PSCRL
	.globl _TIM1_PSCRH
	.globl _TIM1_PSCR
	.globl _TIM1_CNTRL
	.globl _TIM1_CNTRH
	.globl _TIM1_CNTR
	.globl _TIM1_CCER2
	.globl _TIM1_CCER1
	.globl _TIM1_CCMR4
	.globl _TIM1_CCMR3
	.globl _TIM1_CCMR2
	.globl _TIM1_CCMR1
	.globl _TIM1_EGR
	.globl _TIM1_SR2
	.globl _TIM1_SR1
	.globl _TIM1_IER
	.globl _TIM1_ETR
	.globl _TIM1_SMCR
	.globl _TIM1_CR2
	.globl _TIM1_CR1
	.globl _UART3_CR6
	.globl _UART3_CR4
	.globl _UART3_CR3
	.globl _UART3_CR2
	.globl _UART3_CR1
	.globl _UART3_BRR2
	.globl _UART3_BRR1
	.globl _UART3_DR
	.globl _UART3_SR
	.globl _UART1_PSCR
	.globl _UART1_GTR
	.globl _UART1_CR5
	.globl _UART1_CR4
	.globl _UART1_CR3
	.globl _UART1_CR2
	.globl _UART1_CR1
	.globl _UART1_BRR2
	.globl _UART1_BRR1
	.globl _UART1_DR
	.globl _UART1_SR
	.globl _I2C_PECR
	.globl _I2C_TRISER
	.globl _I2C_CCRH
	.globl _I2C_CCRL
	.globl _I2C_ITR
	.globl _I2C_SR3
	.globl _I2C_SR2
	.globl _I2C_SR1
	.globl _I2C_DR
	.globl _I2C_OARH
	.globl _I2C_OARL
	.globl _I2C_FREQR
	.globl _I2C_CR2
	.globl _I2C_CR1
	.globl _SPI_TXCRCR
	.globl _SPI_RXCRCR
	.globl _SPI_CRCPR
	.globl _SPI_DR
	.globl _SPI_SR
	.globl _SPI_ICR
	.globl _SPI_CR2
	.globl _SPI_CR1
	.globl _BEEP_CSR
	.globl _AWU_TBR
	.globl _AWU_APR
	.globl _AWU_CSR
	.globl _IWDG_RLR
	.globl _IWDG_PR
	.globl _IWDG_KR
	.globl _WWDG_WR
	.globl _WWDG_CR
	.globl _CLK_SWIMCCR
	.globl _CLK_HSITRIMR
	.globl _CLK_CANCCR
	.globl _CLK_PCKENR2
	.globl _CLK_CCOR
	.globl _CLK_CSSR
	.globl _CLK_PCKENR1
	.globl _CLK_CKDIVR
	.globl _CLK_SWCR
	.globl _CLK_SWR
	.globl _CLK_CMSR
	.globl _CLK_ECKR
	.globl _CLK_ICKR
	.globl _RST_SR
	.globl _EXTI_CR2
	.globl _EXTI_CR1
	.globl _FLASH_DUKR
	.globl _FLASH_PUKR
	.globl _FLASH_IAPSR
	.globl _FLASH_NFPR
	.globl _FLASH_FPR
	.globl _FLASH_NCR2
	.globl _FLASH_CR2
	.globl _FLASH_CR1
	.globl _PI_CR2
	.globl _PI_CR1
	.globl _PI_DDR
	.globl _PI_IDR
	.globl _PI_ODR
	.globl _PG_CR2
	.globl _PG_CR1
	.globl _PG_DDR
	.globl _PG_IDR
	.globl _PG_ODR
	.globl _PF_CR2
	.globl _PF_CR1
	.globl _PF_DDR
	.globl _PF_IDR
	.globl _PF_ODR
	.globl _PE_CR2
	.globl _PE_CR1
	.globl _PE_DDR
	.globl _PE_IDR
	.globl _PE_ODR
	.globl _PD_CR2
	.globl _PD_CR1
	.globl _PD_DDR
	.globl _PD_IDR
	.globl _PD_ODR
	.globl _PC_CR2
	.globl _PC_CR1
	.globl _PC_DDR
	.globl _PC_IDR
	.globl _PC_ODR
	.globl _PB_CR2
	.globl _PB_CR1
	.globl _PB_DDR
	.globl _PB_IDR
	.globl _PB_ODR
	.globl _PA_CR2
	.globl _PA_CR1
	.globl _PA_DDR
	.globl _PA_IDR
	.globl _PA_ODR
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_PA_ODR	=	0x5000
_PA_IDR	=	0x5001
_PA_DDR	=	0x5002
_PA_CR1	=	0x5003
_PA_CR2	=	0x5004
_PB_ODR	=	0x5005
_PB_IDR	=	0x5006
_PB_DDR	=	0x5007
_PB_CR1	=	0x5008
_PB_CR2	=	0x5009
_PC_ODR	=	0x500a
_PC_IDR	=	0x500b
_PC_DDR	=	0x500c
_PC_CR1	=	0x500d
_PC_CR2	=	0x500e
_PD_ODR	=	0x500f
_PD_IDR	=	0x5010
_PD_DDR	=	0x5011
_PD_CR1	=	0x5012
_PD_CR2	=	0x5013
_PE_ODR	=	0x5014
_PE_IDR	=	0x5015
_PE_DDR	=	0x5016
_PE_CR1	=	0x5017
_PE_CR2	=	0x5018
_PF_ODR	=	0x5019
_PF_IDR	=	0x501a
_PF_DDR	=	0x501b
_PF_CR1	=	0x501c
_PF_CR2	=	0x501d
_PG_ODR	=	0x501e
_PG_IDR	=	0x501f
_PG_DDR	=	0x5020
_PG_CR1	=	0x5021
_PG_CR2	=	0x5022
_PI_ODR	=	0x5028
_PI_IDR	=	0x5029
_PI_DDR	=	0x502a
_PI_CR1	=	0x502b
_PI_CR2	=	0x502c
_FLASH_CR1	=	0x505a
_FLASH_CR2	=	0x505b
_FLASH_NCR2	=	0x505c
_FLASH_FPR	=	0x505d
_FLASH_NFPR	=	0x505e
_FLASH_IAPSR	=	0x505f
_FLASH_PUKR	=	0x5062
_FLASH_DUKR	=	0x5064
_EXTI_CR1	=	0x50a0
_EXTI_CR2	=	0x50a1
_RST_SR	=	0x50b3
_CLK_ICKR	=	0x50c0
_CLK_ECKR	=	0x50c1
_CLK_CMSR	=	0x50c3
_CLK_SWR	=	0x50c4
_CLK_SWCR	=	0x50c5
_CLK_CKDIVR	=	0x50c6
_CLK_PCKENR1	=	0x50c7
_CLK_CSSR	=	0x50c8
_CLK_CCOR	=	0x50c9
_CLK_PCKENR2	=	0x50ca
_CLK_CANCCR	=	0x50cb
_CLK_HSITRIMR	=	0x50cc
_CLK_SWIMCCR	=	0x50cd
_WWDG_CR	=	0x50d1
_WWDG_WR	=	0x50d2
_IWDG_KR	=	0x50e0
_IWDG_PR	=	0x50e1
_IWDG_RLR	=	0x50e2
_AWU_CSR	=	0x50f0
_AWU_APR	=	0x50f1
_AWU_TBR	=	0x50f2
_BEEP_CSR	=	0x50f3
_SPI_CR1	=	0x5200
_SPI_CR2	=	0x5201
_SPI_ICR	=	0x5202
_SPI_SR	=	0x5203
_SPI_DR	=	0x5204
_SPI_CRCPR	=	0x5205
_SPI_RXCRCR	=	0x5206
_SPI_TXCRCR	=	0x5207
_I2C_CR1	=	0x5210
_I2C_CR2	=	0x5211
_I2C_FREQR	=	0x5212
_I2C_OARL	=	0x5213
_I2C_OARH	=	0x5214
_I2C_DR	=	0x5216
_I2C_SR1	=	0x5217
_I2C_SR2	=	0x5218
_I2C_SR3	=	0x5219
_I2C_ITR	=	0x521a
_I2C_CCRL	=	0x521b
_I2C_CCRH	=	0x521c
_I2C_TRISER	=	0x521d
_I2C_PECR	=	0x521e
_UART1_SR	=	0x5230
_UART1_DR	=	0x5231
_UART1_BRR1	=	0x5232
_UART1_BRR2	=	0x5233
_UART1_CR1	=	0x5234
_UART1_CR2	=	0x5235
_UART1_CR3	=	0x5236
_UART1_CR4	=	0x5237
_UART1_CR5	=	0x5238
_UART1_GTR	=	0x5239
_UART1_PSCR	=	0x523a
_UART3_SR	=	0x5240
_UART3_DR	=	0x5241
_UART3_BRR1	=	0x5242
_UART3_BRR2	=	0x5243
_UART3_CR1	=	0x5244
_UART3_CR2	=	0x5245
_UART3_CR3	=	0x5246
_UART3_CR4	=	0x5247
_UART3_CR6	=	0x5249
_TIM1_CR1	=	0x5250
_TIM1_CR2	=	0x5251
_TIM1_SMCR	=	0x5252
_TIM1_ETR	=	0x5253
_TIM1_IER	=	0x5254
_TIM1_SR1	=	0x5255
_TIM1_SR2	=	0x5256
_TIM1_EGR	=	0x5257
_TIM1_CCMR1	=	0x5258
_TIM1_CCMR2	=	0x5259
_TIM1_CCMR3	=	0x525a
_TIM1_CCMR4	=	0x525b
_TIM1_CCER1	=	0x525c
_TIM1_CCER2	=	0x525d
_TIM1_CNTR	=	0x525e
_TIM1_CNTRH	=	0x525e
_TIM1_CNTRL	=	0x525f
_TIM1_PSCR	=	0x5260
_TIM1_PSCRH	=	0x5260
_TIM1_PSCRL	=	0x5261
_TIM1_ARR	=	0x5262
_TIM1_ARRH	=	0x5262
_TIM1_ARRL	=	0x5263
_TIM1_RCR	=	0x5264
_TIM1_CCR1	=	0x5265
_TIM1_CCR1H	=	0x5265
_TIM1_CCR1L	=	0x5266
_TIM1_CCR2	=	0x5267
_TIM1_CCR2H	=	0x5267
_TIM1_CCR2L	=	0x5268
_TIM1_CCR3	=	0x5269
_TIM1_CCR3H	=	0x5269
_TIM1_CCR3L	=	0x526a
_TIM1_CCR4	=	0x526b
_TIM1_CCR4H	=	0x526b
_TIM1_CCR4L	=	0x526c
_TIM1_BKR	=	0x526d
_TIM1_DTR	=	0x526e
_TIM1_OISR	=	0x526f
_TIM2_CR1	=	0x5300
_TIM2_IER	=	0x5301
_TIM2_SR1	=	0x5302
_TIM2_SR2	=	0x5303
_TIM2_EGR	=	0x5304
_TIM2_CCMR1	=	0x5305
_TIM2_CCMR2	=	0x5306
_TIM2_CCMR3	=	0x5307
_TIM2_CCER1	=	0x5308
_TIM2_CCER2	=	0x5309
_TIM2_CNTR	=	0x530a
_TIM2_CNTRH	=	0x530a
_TIM2_CNTRL	=	0x530b
_TIM2_PSCR	=	0x530c
_TIM2_ARR	=	0x530d
_TIM2_ARRH	=	0x530d
_TIM2_ARRL	=	0x530e
_TIM2_CCR1	=	0x530f
_TIM2_CCR1H	=	0x530f
_TIM2_CCR1L	=	0x5310
_TIM2_CCR2	=	0x5311
_TIM2_CCR2H	=	0x5311
_TIM2_CCR2L	=	0x5312
_TIM2_CCR3	=	0x5313
_TIM2_CCR3H	=	0x5313
_TIM2_CCR3L	=	0x5314
_TIM3_CR1	=	0x5320
_TIM3_IER	=	0x5321
_TIM3_SR1	=	0x5322
_TIM3_SR2	=	0x5323
_TIM3_EGR	=	0x5324
_TIM3_CCMR1	=	0x5325
_TIM3_CCMR2	=	0x5326
_TIM3_CCER1	=	0x5327
_TIM3_CNTR	=	0x5328
_TIM3_CNTRH	=	0x5328
_TIM3_CNTRL	=	0x5329
_TIM3_PSCR	=	0x532a
_TIM3_ARR	=	0x532b
_TIM3_ARRH	=	0x532b
_TIM3_ARRL	=	0x532c
_TIM3_CCR1	=	0x532d
_TIM3_CCR1H	=	0x532d
_TIM3_CCR1L	=	0x532e
_TIM3_CCR2	=	0x532f
_TIM3_CCR2H	=	0x532f
_TIM3_CCR2L	=	0x5330
_TIM4_CR1	=	0x5340
_TIM4_IER	=	0x5341
_TIM4_SR	=	0x5342
_TIM4_EGR	=	0x5343
_TIM4_CNTR	=	0x5344
_TIM4_PSCR	=	0x5345
_TIM4_ARR	=	0x5346
_ADC_CSR	=	0x5400
_ADC_CR1	=	0x5401
_ADC_CR2	=	0x5402
_ADC_DR	=	0x5404
_ADC_DRH	=	0x5404
_ADC_DRL	=	0x5405
_ADC_TDR	=	0x5406
_ADC_TDRH	=	0x5406
_ADC_TDRL	=	0x5407
_CAN_MCR	=	0x5420
_CAN_MSR	=	0x5421
_CAN_TSR	=	0x5422
_CAN_TPR	=	0x5423
_CAN_RFR	=	0x5424
_CAN_IER	=	0x5425
_CAN_DGR	=	0x5426
_CAN_FPSR	=	0x5427
_CAN_P0	=	0x5428
_CAN_P1	=	0x5429
_CAN_P2	=	0x542a
_CAN_P3	=	0x542b
_CAN_P4	=	0x542c
_CAN_P5	=	0x542d
_CAN_P6	=	0x542e
_CAN_P7	=	0x542f
_CAN_P8	=	0x5430
_CAN_P9	=	0x5431
_CAN_PA	=	0x5432
_CAN_PB	=	0x5433
_CAN_PC	=	0x5434
_CAN_PD	=	0x5435
_CAN_PE	=	0x5436
_CAN_PF	=	0x5437
_CFG_GCR	=	0x7f60
_ITC_SPR1	=	0x7f70
_ITC_SPR2	=	0x7f71
_ITC_SPR3	=	0x7f72
_ITC_SPR4	=	0x7f73
_ITC_SPR5	=	0x7f74
_ITC_SPR6	=	0x7f75
_ITC_SPR7	=	0x7f76
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
_tim4_divider::
	.ds 2
_choice::
	.ds 1
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
	int 0x000000 ; trap
	int 0x000000 ; int0
	int 0x000000 ; int1
	int 0x000000 ; int2
	int 0x000000 ; int3
	int 0x000000 ; int4
	int 0x000000 ; int5
	int 0x000000 ; int6
	int 0x000000 ; int7
	int 0x000000 ; int8
	int 0x000000 ; int9
	int 0x000000 ; int10
	int 0x000000 ; int11
	int 0x000000 ; int12
	int 0x000000 ; int13
	int 0x000000 ; int14
	int 0x000000 ; int15
	int 0x000000 ; int16
	int 0x000000 ; int17
	int 0x000000 ; int18
	int 0x000000 ; int19
	int 0x000000 ; int20
	int 0x000000 ; int21
	int 0x000000 ; int22
	int _foo ; int23
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
	call	___sdcc_external_startup
	tnz	a
	jreq	__sdcc_init_data
	jp	__sdcc_program_startup
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	main.c: 18: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c: 23: PC_DDR |= 1 << D1;
	bset	_PC_DDR+0, #5
;	main.c: 24: PC_CR1 |= 1 << D1;
	bset	_PC_CR1+0, #5
;	main.c: 25: PC_CR2 &= ~(1 << D1);
	bres	_PC_CR2+0, #5
;	main.c: 28: PC_DDR |= 1 << D2;
	bset	_PC_DDR+0, #7
;	main.c: 29: PC_CR1 |= 1 << D2;
	bset	_PC_CR1+0, #7
;	main.c: 30: PC_CR2 &= ~(1 << D2);
	bres	_PC_CR2+0, #7
;	main.c: 33: PC_DDR |= 1 << D3;
	bset	_PC_DDR+0, #6
;	main.c: 34: PC_CR1 |= 1 << D3;
	bset	_PC_CR1+0, #6
;	main.c: 35: PC_CR2 &= ~(1 << D3);
	bres	_PC_CR2+0, #6
;	main.c: 38: PE_DDR |= 1 << D4;
	bset	_PE_DDR+0, #5
;	main.c: 39: PE_CR1 |= 1 << D4;
	bset	_PE_CR1+0, #5
;	main.c: 40: PE_CR2 &= ~(1 << D4);
	bres	_PE_CR2+0, #5
;	main.c: 44: PB_DDR &= ~(1 << S1);
	bres	_PB_DDR+0, #4
;	main.c: 45: PB_CR1 &= ~(1 << S1);
	bres	_PB_CR1+0, #4
;	main.c: 46: PB_CR2 &= ~(1 << S1);
	bres	_PB_CR2+0, #4
;	main.c: 48: PC_ODR |= (1 << D1);
	bset	_PC_ODR+0, #5
;	main.c: 49: PC_ODR |= (1 << D2);
	bset	_PC_ODR+0, #7
;	main.c: 50: PC_ODR |= (1 << D3);
	bset	_PC_ODR+0, #6
;	main.c: 51: PE_ODR |= (1 << D4);
	bset	_PE_ODR+0, #5
;	main.c: 53: TIM4_PSCR = 3;
	mov	_TIM4_PSCR+0, #0x03
;	main.c: 54: TIM4_ARR = 249;
	mov	_TIM4_ARR+0, #0xf9
;	main.c: 55: TIM4_CR1 |= 1 << 0;
	bset	_TIM4_CR1+0, #0
;	main.c: 56: TIM4_IER |= 1 << 0;
	bset	_TIM4_IER+0, #0
;	main.c: 58: __asm__("rim"); // enable interrupts  (inaczej na windows)
	rim
;	main.c: 60: while (1)
00102$:
	jra	00102$
;	main.c: 62: }
	ret
;	main.c: 63: void delay(char ms)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	sub	sp, #3
	ld	(0x03, sp), a
;	main.c: 66: for (i = 0; i < (ms * 100); i++)
	clrw	x
00103$:
	ld	a, (0x03, sp)
	clr	(0x01, sp)
	pushw	x
	push	a
	clr	a
	push	a
	ldw	x, #0x0064
	call	__mulint
	ldw	(0x03, sp), x
	popw	x
	cpw	x, (0x01, sp)
	jrsge	00105$
	incw	x
	jra	00103$
00105$:
;	main.c: 69: }
	addw	sp, #3
	ret
;	main.c: 73: void foo(void) __interrupt(23)
;	-----------------------------------------
;	 function foo
;	-----------------------------------------
_foo:
	clr	a
	div	x, a
;	main.c: 75: if ((PB_IDR & (1 << S1)) == 0)
	btjt	_PB_IDR+0, #4, 00109$
;	main.c: 77: delay(10);
	ld	a, #0x0a
	call	_delay
;	main.c: 78: if ((PB_IDR & (1 << S1)) == 0)
	btjt	_PB_IDR+0, #4, 00109$
;	main.c: 80: choice = choice + 1;
	ld	a, _choice+0
	inc	a
;	main.c: 81: if (choice > 2) // DWIE OPCJE DIOD (D1 i D2) LUB (D3 i D4)
	ld	_choice+0, a
	cp	a, #0x02
	jrule	00103$
;	main.c: 83: choice = 1;
	mov	_choice+0, #0x01
;	main.c: 86: while ((PB_IDR & (1 << S1)) == 0)
00103$:
	btjf	_PB_IDR+0, #4, 00103$
;	main.c: 88: delay(10);
	ld	a, #0x0a
	call	_delay
00109$:
;	main.c: 92: TIM4_SR &= ~(1 << 0);
	bres	_TIM4_SR+0, #0
;	main.c: 94: tim4_divider++;
	ldw	x, _tim4_divider+0
	incw	x
;	main.c: 96: if (tim4_divider >= 1000)
	ldw	_tim4_divider+0, x
	cpw	x, #0x03e8
	jrc	00117$
;	main.c: 98: tim4_divider = 0;
	clrw	x
	ldw	_tim4_divider+0, x
;	main.c: 100: if (choice == 1)
	ld	a, _choice+0
	dec	a
	jrne	00113$
;	main.c: 102: PC_ODR ^= (1 << D1);
	bcpl	_PC_ODR+0, #5
;	main.c: 103: PC_ODR ^= (1 << D2);
	bcpl	_PC_ODR+0, #7
;	main.c: 104: PC_ODR |= (1 << D3);
	bset	_PC_ODR+0, #6
;	main.c: 105: PE_ODR |= (1 << D4);
	bset	_PE_ODR+0, #5
	jra	00114$
00113$:
;	main.c: 108: else if (choice == 2)
	ld	a, _choice+0
	cp	a, #0x02
	jrne	00114$
;	main.c: 110: PC_ODR |= (1 << D1);
	bset	_PC_ODR+0, #5
;	main.c: 111: PC_ODR |= (1 << D2);
	bset	_PC_ODR+0, #7
;	main.c: 112: PC_ODR ^= (1 << D3);
	bcpl	_PC_ODR+0, #6
;	main.c: 113: PE_ODR ^= (1 << D4);
	bcpl	_PE_ODR+0, #5
00114$:
;	main.c: 116: return;
00117$:
;	main.c: 118: }
	iret
	.area CODE
	.area CONST
	.area INITIALIZER
__xinit__tim4_divider:
	.dw #0x0000
__xinit__choice:
	.db #0x00	; 0
	.area CABS (ABS)
