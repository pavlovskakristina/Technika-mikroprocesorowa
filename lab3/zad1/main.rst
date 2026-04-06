                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (Mac OS X ppc)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _main
                                     11 	.globl _ITC_SPR7
                                     12 	.globl _ITC_SPR6
                                     13 	.globl _ITC_SPR5
                                     14 	.globl _ITC_SPR4
                                     15 	.globl _ITC_SPR3
                                     16 	.globl _ITC_SPR2
                                     17 	.globl _ITC_SPR1
                                     18 	.globl _CFG_GCR
                                     19 	.globl _CAN_PF
                                     20 	.globl _CAN_PE
                                     21 	.globl _CAN_PD
                                     22 	.globl _CAN_PC
                                     23 	.globl _CAN_PB
                                     24 	.globl _CAN_PA
                                     25 	.globl _CAN_P9
                                     26 	.globl _CAN_P8
                                     27 	.globl _CAN_P7
                                     28 	.globl _CAN_P6
                                     29 	.globl _CAN_P5
                                     30 	.globl _CAN_P4
                                     31 	.globl _CAN_P3
                                     32 	.globl _CAN_P2
                                     33 	.globl _CAN_P1
                                     34 	.globl _CAN_P0
                                     35 	.globl _CAN_FPSR
                                     36 	.globl _CAN_DGR
                                     37 	.globl _CAN_IER
                                     38 	.globl _CAN_RFR
                                     39 	.globl _CAN_TPR
                                     40 	.globl _CAN_TSR
                                     41 	.globl _CAN_MSR
                                     42 	.globl _CAN_MCR
                                     43 	.globl _ADC_TDRL
                                     44 	.globl _ADC_TDRH
                                     45 	.globl _ADC_TDR
                                     46 	.globl _ADC_DRL
                                     47 	.globl _ADC_DRH
                                     48 	.globl _ADC_DR
                                     49 	.globl _ADC_CR2
                                     50 	.globl _ADC_CR1
                                     51 	.globl _ADC_CSR
                                     52 	.globl _TIM4_ARR
                                     53 	.globl _TIM4_PSCR
                                     54 	.globl _TIM4_CNTR
                                     55 	.globl _TIM4_EGR
                                     56 	.globl _TIM4_SR
                                     57 	.globl _TIM4_IER
                                     58 	.globl _TIM4_CR1
                                     59 	.globl _TIM3_CCR2L
                                     60 	.globl _TIM3_CCR2H
                                     61 	.globl _TIM3_CCR2
                                     62 	.globl _TIM3_CCR1L
                                     63 	.globl _TIM3_CCR1H
                                     64 	.globl _TIM3_CCR1
                                     65 	.globl _TIM3_ARRL
                                     66 	.globl _TIM3_ARRH
                                     67 	.globl _TIM3_ARR
                                     68 	.globl _TIM3_PSCR
                                     69 	.globl _TIM3_CNTRL
                                     70 	.globl _TIM3_CNTRH
                                     71 	.globl _TIM3_CNTR
                                     72 	.globl _TIM3_CCER1
                                     73 	.globl _TIM3_CCMR2
                                     74 	.globl _TIM3_CCMR1
                                     75 	.globl _TIM3_EGR
                                     76 	.globl _TIM3_SR2
                                     77 	.globl _TIM3_SR1
                                     78 	.globl _TIM3_IER
                                     79 	.globl _TIM3_CR1
                                     80 	.globl _TIM2_CCR3L
                                     81 	.globl _TIM2_CCR3H
                                     82 	.globl _TIM2_CCR3
                                     83 	.globl _TIM2_CCR2L
                                     84 	.globl _TIM2_CCR2H
                                     85 	.globl _TIM2_CCR2
                                     86 	.globl _TIM2_CCR1L
                                     87 	.globl _TIM2_CCR1H
                                     88 	.globl _TIM2_CCR1
                                     89 	.globl _TIM2_ARRL
                                     90 	.globl _TIM2_ARRH
                                     91 	.globl _TIM2_ARR
                                     92 	.globl _TIM2_PSCR
                                     93 	.globl _TIM2_CNTRL
                                     94 	.globl _TIM2_CNTRH
                                     95 	.globl _TIM2_CNTR
                                     96 	.globl _TIM2_CCER2
                                     97 	.globl _TIM2_CCER1
                                     98 	.globl _TIM2_CCMR3
                                     99 	.globl _TIM2_CCMR2
                                    100 	.globl _TIM2_CCMR1
                                    101 	.globl _TIM2_EGR
                                    102 	.globl _TIM2_SR2
                                    103 	.globl _TIM2_SR1
                                    104 	.globl _TIM2_IER
                                    105 	.globl _TIM2_CR1
                                    106 	.globl _TIM1_OISR
                                    107 	.globl _TIM1_DTR
                                    108 	.globl _TIM1_BKR
                                    109 	.globl _TIM1_CCR4L
                                    110 	.globl _TIM1_CCR4H
                                    111 	.globl _TIM1_CCR4
                                    112 	.globl _TIM1_CCR3L
                                    113 	.globl _TIM1_CCR3H
                                    114 	.globl _TIM1_CCR3
                                    115 	.globl _TIM1_CCR2L
                                    116 	.globl _TIM1_CCR2H
                                    117 	.globl _TIM1_CCR2
                                    118 	.globl _TIM1_CCR1L
                                    119 	.globl _TIM1_CCR1H
                                    120 	.globl _TIM1_CCR1
                                    121 	.globl _TIM1_RCR
                                    122 	.globl _TIM1_ARRL
                                    123 	.globl _TIM1_ARRH
                                    124 	.globl _TIM1_ARR
                                    125 	.globl _TIM1_PSCRL
                                    126 	.globl _TIM1_PSCRH
                                    127 	.globl _TIM1_PSCR
                                    128 	.globl _TIM1_CNTRL
                                    129 	.globl _TIM1_CNTRH
                                    130 	.globl _TIM1_CNTR
                                    131 	.globl _TIM1_CCER2
                                    132 	.globl _TIM1_CCER1
                                    133 	.globl _TIM1_CCMR4
                                    134 	.globl _TIM1_CCMR3
                                    135 	.globl _TIM1_CCMR2
                                    136 	.globl _TIM1_CCMR1
                                    137 	.globl _TIM1_EGR
                                    138 	.globl _TIM1_SR2
                                    139 	.globl _TIM1_SR1
                                    140 	.globl _TIM1_IER
                                    141 	.globl _TIM1_ETR
                                    142 	.globl _TIM1_SMCR
                                    143 	.globl _TIM1_CR2
                                    144 	.globl _TIM1_CR1
                                    145 	.globl _UART3_CR6
                                    146 	.globl _UART3_CR4
                                    147 	.globl _UART3_CR3
                                    148 	.globl _UART3_CR2
                                    149 	.globl _UART3_CR1
                                    150 	.globl _UART3_BRR2
                                    151 	.globl _UART3_BRR1
                                    152 	.globl _UART3_DR
                                    153 	.globl _UART3_SR
                                    154 	.globl _UART1_PSCR
                                    155 	.globl _UART1_GTR
                                    156 	.globl _UART1_CR5
                                    157 	.globl _UART1_CR4
                                    158 	.globl _UART1_CR3
                                    159 	.globl _UART1_CR2
                                    160 	.globl _UART1_CR1
                                    161 	.globl _UART1_BRR2
                                    162 	.globl _UART1_BRR1
                                    163 	.globl _UART1_DR
                                    164 	.globl _UART1_SR
                                    165 	.globl _I2C_PECR
                                    166 	.globl _I2C_TRISER
                                    167 	.globl _I2C_CCRH
                                    168 	.globl _I2C_CCRL
                                    169 	.globl _I2C_ITR
                                    170 	.globl _I2C_SR3
                                    171 	.globl _I2C_SR2
                                    172 	.globl _I2C_SR1
                                    173 	.globl _I2C_DR
                                    174 	.globl _I2C_OARH
                                    175 	.globl _I2C_OARL
                                    176 	.globl _I2C_FREQR
                                    177 	.globl _I2C_CR2
                                    178 	.globl _I2C_CR1
                                    179 	.globl _SPI_TXCRCR
                                    180 	.globl _SPI_RXCRCR
                                    181 	.globl _SPI_CRCPR
                                    182 	.globl _SPI_DR
                                    183 	.globl _SPI_SR
                                    184 	.globl _SPI_ICR
                                    185 	.globl _SPI_CR2
                                    186 	.globl _SPI_CR1
                                    187 	.globl _BEEP_CSR
                                    188 	.globl _AWU_TBR
                                    189 	.globl _AWU_APR
                                    190 	.globl _AWU_CSR
                                    191 	.globl _IWDG_RLR
                                    192 	.globl _IWDG_PR
                                    193 	.globl _IWDG_KR
                                    194 	.globl _WWDG_WR
                                    195 	.globl _WWDG_CR
                                    196 	.globl _CLK_SWIMCCR
                                    197 	.globl _CLK_HSITRIMR
                                    198 	.globl _CLK_CANCCR
                                    199 	.globl _CLK_PCKENR2
                                    200 	.globl _CLK_CCOR
                                    201 	.globl _CLK_CSSR
                                    202 	.globl _CLK_PCKENR1
                                    203 	.globl _CLK_CKDIVR
                                    204 	.globl _CLK_SWCR
                                    205 	.globl _CLK_SWR
                                    206 	.globl _CLK_CMSR
                                    207 	.globl _CLK_ECKR
                                    208 	.globl _CLK_ICKR
                                    209 	.globl _RST_SR
                                    210 	.globl _EXTI_CR2
                                    211 	.globl _EXTI_CR1
                                    212 	.globl _FLASH_DUKR
                                    213 	.globl _FLASH_PUKR
                                    214 	.globl _FLASH_IAPSR
                                    215 	.globl _FLASH_NFPR
                                    216 	.globl _FLASH_FPR
                                    217 	.globl _FLASH_NCR2
                                    218 	.globl _FLASH_CR2
                                    219 	.globl _FLASH_CR1
                                    220 	.globl _PI_CR2
                                    221 	.globl _PI_CR1
                                    222 	.globl _PI_DDR
                                    223 	.globl _PI_IDR
                                    224 	.globl _PI_ODR
                                    225 	.globl _PG_CR2
                                    226 	.globl _PG_CR1
                                    227 	.globl _PG_DDR
                                    228 	.globl _PG_IDR
                                    229 	.globl _PG_ODR
                                    230 	.globl _PF_CR2
                                    231 	.globl _PF_CR1
                                    232 	.globl _PF_DDR
                                    233 	.globl _PF_IDR
                                    234 	.globl _PF_ODR
                                    235 	.globl _PE_CR2
                                    236 	.globl _PE_CR1
                                    237 	.globl _PE_DDR
                                    238 	.globl _PE_IDR
                                    239 	.globl _PE_ODR
                                    240 	.globl _PD_CR2
                                    241 	.globl _PD_CR1
                                    242 	.globl _PD_DDR
                                    243 	.globl _PD_IDR
                                    244 	.globl _PD_ODR
                                    245 	.globl _PC_CR2
                                    246 	.globl _PC_CR1
                                    247 	.globl _PC_DDR
                                    248 	.globl _PC_IDR
                                    249 	.globl _PC_ODR
                                    250 	.globl _PB_CR2
                                    251 	.globl _PB_CR1
                                    252 	.globl _PB_DDR
                                    253 	.globl _PB_IDR
                                    254 	.globl _PB_ODR
                                    255 	.globl _PA_CR2
                                    256 	.globl _PA_CR1
                                    257 	.globl _PA_DDR
                                    258 	.globl _PA_IDR
                                    259 	.globl _PA_ODR
                                    260 ;--------------------------------------------------------
                                    261 ; ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area DATA
                           005000   264 _PA_ODR	=	0x5000
                           005001   265 _PA_IDR	=	0x5001
                           005002   266 _PA_DDR	=	0x5002
                           005003   267 _PA_CR1	=	0x5003
                           005004   268 _PA_CR2	=	0x5004
                           005005   269 _PB_ODR	=	0x5005
                           005006   270 _PB_IDR	=	0x5006
                           005007   271 _PB_DDR	=	0x5007
                           005008   272 _PB_CR1	=	0x5008
                           005009   273 _PB_CR2	=	0x5009
                           00500A   274 _PC_ODR	=	0x500a
                           00500B   275 _PC_IDR	=	0x500b
                           00500C   276 _PC_DDR	=	0x500c
                           00500D   277 _PC_CR1	=	0x500d
                           00500E   278 _PC_CR2	=	0x500e
                           00500F   279 _PD_ODR	=	0x500f
                           005010   280 _PD_IDR	=	0x5010
                           005011   281 _PD_DDR	=	0x5011
                           005012   282 _PD_CR1	=	0x5012
                           005013   283 _PD_CR2	=	0x5013
                           005014   284 _PE_ODR	=	0x5014
                           005015   285 _PE_IDR	=	0x5015
                           005016   286 _PE_DDR	=	0x5016
                           005017   287 _PE_CR1	=	0x5017
                           005018   288 _PE_CR2	=	0x5018
                           005019   289 _PF_ODR	=	0x5019
                           00501A   290 _PF_IDR	=	0x501a
                           00501B   291 _PF_DDR	=	0x501b
                           00501C   292 _PF_CR1	=	0x501c
                           00501D   293 _PF_CR2	=	0x501d
                           00501E   294 _PG_ODR	=	0x501e
                           00501F   295 _PG_IDR	=	0x501f
                           005020   296 _PG_DDR	=	0x5020
                           005021   297 _PG_CR1	=	0x5021
                           005022   298 _PG_CR2	=	0x5022
                           005028   299 _PI_ODR	=	0x5028
                           005029   300 _PI_IDR	=	0x5029
                           00502A   301 _PI_DDR	=	0x502a
                           00502B   302 _PI_CR1	=	0x502b
                           00502C   303 _PI_CR2	=	0x502c
                           00505A   304 _FLASH_CR1	=	0x505a
                           00505B   305 _FLASH_CR2	=	0x505b
                           00505C   306 _FLASH_NCR2	=	0x505c
                           00505D   307 _FLASH_FPR	=	0x505d
                           00505E   308 _FLASH_NFPR	=	0x505e
                           00505F   309 _FLASH_IAPSR	=	0x505f
                           005062   310 _FLASH_PUKR	=	0x5062
                           005064   311 _FLASH_DUKR	=	0x5064
                           0050A0   312 _EXTI_CR1	=	0x50a0
                           0050A1   313 _EXTI_CR2	=	0x50a1
                           0050B3   314 _RST_SR	=	0x50b3
                           0050C0   315 _CLK_ICKR	=	0x50c0
                           0050C1   316 _CLK_ECKR	=	0x50c1
                           0050C3   317 _CLK_CMSR	=	0x50c3
                           0050C4   318 _CLK_SWR	=	0x50c4
                           0050C5   319 _CLK_SWCR	=	0x50c5
                           0050C6   320 _CLK_CKDIVR	=	0x50c6
                           0050C7   321 _CLK_PCKENR1	=	0x50c7
                           0050C8   322 _CLK_CSSR	=	0x50c8
                           0050C9   323 _CLK_CCOR	=	0x50c9
                           0050CA   324 _CLK_PCKENR2	=	0x50ca
                           0050CB   325 _CLK_CANCCR	=	0x50cb
                           0050CC   326 _CLK_HSITRIMR	=	0x50cc
                           0050CD   327 _CLK_SWIMCCR	=	0x50cd
                           0050D1   328 _WWDG_CR	=	0x50d1
                           0050D2   329 _WWDG_WR	=	0x50d2
                           0050E0   330 _IWDG_KR	=	0x50e0
                           0050E1   331 _IWDG_PR	=	0x50e1
                           0050E2   332 _IWDG_RLR	=	0x50e2
                           0050F0   333 _AWU_CSR	=	0x50f0
                           0050F1   334 _AWU_APR	=	0x50f1
                           0050F2   335 _AWU_TBR	=	0x50f2
                           0050F3   336 _BEEP_CSR	=	0x50f3
                           005200   337 _SPI_CR1	=	0x5200
                           005201   338 _SPI_CR2	=	0x5201
                           005202   339 _SPI_ICR	=	0x5202
                           005203   340 _SPI_SR	=	0x5203
                           005204   341 _SPI_DR	=	0x5204
                           005205   342 _SPI_CRCPR	=	0x5205
                           005206   343 _SPI_RXCRCR	=	0x5206
                           005207   344 _SPI_TXCRCR	=	0x5207
                           005210   345 _I2C_CR1	=	0x5210
                           005211   346 _I2C_CR2	=	0x5211
                           005212   347 _I2C_FREQR	=	0x5212
                           005213   348 _I2C_OARL	=	0x5213
                           005214   349 _I2C_OARH	=	0x5214
                           005216   350 _I2C_DR	=	0x5216
                           005217   351 _I2C_SR1	=	0x5217
                           005218   352 _I2C_SR2	=	0x5218
                           005219   353 _I2C_SR3	=	0x5219
                           00521A   354 _I2C_ITR	=	0x521a
                           00521B   355 _I2C_CCRL	=	0x521b
                           00521C   356 _I2C_CCRH	=	0x521c
                           00521D   357 _I2C_TRISER	=	0x521d
                           00521E   358 _I2C_PECR	=	0x521e
                           005230   359 _UART1_SR	=	0x5230
                           005231   360 _UART1_DR	=	0x5231
                           005232   361 _UART1_BRR1	=	0x5232
                           005233   362 _UART1_BRR2	=	0x5233
                           005234   363 _UART1_CR1	=	0x5234
                           005235   364 _UART1_CR2	=	0x5235
                           005236   365 _UART1_CR3	=	0x5236
                           005237   366 _UART1_CR4	=	0x5237
                           005238   367 _UART1_CR5	=	0x5238
                           005239   368 _UART1_GTR	=	0x5239
                           00523A   369 _UART1_PSCR	=	0x523a
                           005240   370 _UART3_SR	=	0x5240
                           005241   371 _UART3_DR	=	0x5241
                           005242   372 _UART3_BRR1	=	0x5242
                           005243   373 _UART3_BRR2	=	0x5243
                           005244   374 _UART3_CR1	=	0x5244
                           005245   375 _UART3_CR2	=	0x5245
                           005246   376 _UART3_CR3	=	0x5246
                           005247   377 _UART3_CR4	=	0x5247
                           005249   378 _UART3_CR6	=	0x5249
                           005250   379 _TIM1_CR1	=	0x5250
                           005251   380 _TIM1_CR2	=	0x5251
                           005252   381 _TIM1_SMCR	=	0x5252
                           005253   382 _TIM1_ETR	=	0x5253
                           005254   383 _TIM1_IER	=	0x5254
                           005255   384 _TIM1_SR1	=	0x5255
                           005256   385 _TIM1_SR2	=	0x5256
                           005257   386 _TIM1_EGR	=	0x5257
                           005258   387 _TIM1_CCMR1	=	0x5258
                           005259   388 _TIM1_CCMR2	=	0x5259
                           00525A   389 _TIM1_CCMR3	=	0x525a
                           00525B   390 _TIM1_CCMR4	=	0x525b
                           00525C   391 _TIM1_CCER1	=	0x525c
                           00525D   392 _TIM1_CCER2	=	0x525d
                           00525E   393 _TIM1_CNTR	=	0x525e
                           00525E   394 _TIM1_CNTRH	=	0x525e
                           00525F   395 _TIM1_CNTRL	=	0x525f
                           005260   396 _TIM1_PSCR	=	0x5260
                           005260   397 _TIM1_PSCRH	=	0x5260
                           005261   398 _TIM1_PSCRL	=	0x5261
                           005262   399 _TIM1_ARR	=	0x5262
                           005262   400 _TIM1_ARRH	=	0x5262
                           005263   401 _TIM1_ARRL	=	0x5263
                           005264   402 _TIM1_RCR	=	0x5264
                           005265   403 _TIM1_CCR1	=	0x5265
                           005265   404 _TIM1_CCR1H	=	0x5265
                           005266   405 _TIM1_CCR1L	=	0x5266
                           005267   406 _TIM1_CCR2	=	0x5267
                           005267   407 _TIM1_CCR2H	=	0x5267
                           005268   408 _TIM1_CCR2L	=	0x5268
                           005269   409 _TIM1_CCR3	=	0x5269
                           005269   410 _TIM1_CCR3H	=	0x5269
                           00526A   411 _TIM1_CCR3L	=	0x526a
                           00526B   412 _TIM1_CCR4	=	0x526b
                           00526B   413 _TIM1_CCR4H	=	0x526b
                           00526C   414 _TIM1_CCR4L	=	0x526c
                           00526D   415 _TIM1_BKR	=	0x526d
                           00526E   416 _TIM1_DTR	=	0x526e
                           00526F   417 _TIM1_OISR	=	0x526f
                           005300   418 _TIM2_CR1	=	0x5300
                           005301   419 _TIM2_IER	=	0x5301
                           005302   420 _TIM2_SR1	=	0x5302
                           005303   421 _TIM2_SR2	=	0x5303
                           005304   422 _TIM2_EGR	=	0x5304
                           005305   423 _TIM2_CCMR1	=	0x5305
                           005306   424 _TIM2_CCMR2	=	0x5306
                           005307   425 _TIM2_CCMR3	=	0x5307
                           005308   426 _TIM2_CCER1	=	0x5308
                           005309   427 _TIM2_CCER2	=	0x5309
                           00530A   428 _TIM2_CNTR	=	0x530a
                           00530A   429 _TIM2_CNTRH	=	0x530a
                           00530B   430 _TIM2_CNTRL	=	0x530b
                           00530C   431 _TIM2_PSCR	=	0x530c
                           00530D   432 _TIM2_ARR	=	0x530d
                           00530D   433 _TIM2_ARRH	=	0x530d
                           00530E   434 _TIM2_ARRL	=	0x530e
                           00530F   435 _TIM2_CCR1	=	0x530f
                           00530F   436 _TIM2_CCR1H	=	0x530f
                           005310   437 _TIM2_CCR1L	=	0x5310
                           005311   438 _TIM2_CCR2	=	0x5311
                           005311   439 _TIM2_CCR2H	=	0x5311
                           005312   440 _TIM2_CCR2L	=	0x5312
                           005313   441 _TIM2_CCR3	=	0x5313
                           005313   442 _TIM2_CCR3H	=	0x5313
                           005314   443 _TIM2_CCR3L	=	0x5314
                           005320   444 _TIM3_CR1	=	0x5320
                           005321   445 _TIM3_IER	=	0x5321
                           005322   446 _TIM3_SR1	=	0x5322
                           005323   447 _TIM3_SR2	=	0x5323
                           005324   448 _TIM3_EGR	=	0x5324
                           005325   449 _TIM3_CCMR1	=	0x5325
                           005326   450 _TIM3_CCMR2	=	0x5326
                           005327   451 _TIM3_CCER1	=	0x5327
                           005328   452 _TIM3_CNTR	=	0x5328
                           005328   453 _TIM3_CNTRH	=	0x5328
                           005329   454 _TIM3_CNTRL	=	0x5329
                           00532A   455 _TIM3_PSCR	=	0x532a
                           00532B   456 _TIM3_ARR	=	0x532b
                           00532B   457 _TIM3_ARRH	=	0x532b
                           00532C   458 _TIM3_ARRL	=	0x532c
                           00532D   459 _TIM3_CCR1	=	0x532d
                           00532D   460 _TIM3_CCR1H	=	0x532d
                           00532E   461 _TIM3_CCR1L	=	0x532e
                           00532F   462 _TIM3_CCR2	=	0x532f
                           00532F   463 _TIM3_CCR2H	=	0x532f
                           005330   464 _TIM3_CCR2L	=	0x5330
                           005340   465 _TIM4_CR1	=	0x5340
                           005341   466 _TIM4_IER	=	0x5341
                           005342   467 _TIM4_SR	=	0x5342
                           005343   468 _TIM4_EGR	=	0x5343
                           005344   469 _TIM4_CNTR	=	0x5344
                           005345   470 _TIM4_PSCR	=	0x5345
                           005346   471 _TIM4_ARR	=	0x5346
                           005400   472 _ADC_CSR	=	0x5400
                           005401   473 _ADC_CR1	=	0x5401
                           005402   474 _ADC_CR2	=	0x5402
                           005404   475 _ADC_DR	=	0x5404
                           005404   476 _ADC_DRH	=	0x5404
                           005405   477 _ADC_DRL	=	0x5405
                           005406   478 _ADC_TDR	=	0x5406
                           005406   479 _ADC_TDRH	=	0x5406
                           005407   480 _ADC_TDRL	=	0x5407
                           005420   481 _CAN_MCR	=	0x5420
                           005421   482 _CAN_MSR	=	0x5421
                           005422   483 _CAN_TSR	=	0x5422
                           005423   484 _CAN_TPR	=	0x5423
                           005424   485 _CAN_RFR	=	0x5424
                           005425   486 _CAN_IER	=	0x5425
                           005426   487 _CAN_DGR	=	0x5426
                           005427   488 _CAN_FPSR	=	0x5427
                           005428   489 _CAN_P0	=	0x5428
                           005429   490 _CAN_P1	=	0x5429
                           00542A   491 _CAN_P2	=	0x542a
                           00542B   492 _CAN_P3	=	0x542b
                           00542C   493 _CAN_P4	=	0x542c
                           00542D   494 _CAN_P5	=	0x542d
                           00542E   495 _CAN_P6	=	0x542e
                           00542F   496 _CAN_P7	=	0x542f
                           005430   497 _CAN_P8	=	0x5430
                           005431   498 _CAN_P9	=	0x5431
                           005432   499 _CAN_PA	=	0x5432
                           005433   500 _CAN_PB	=	0x5433
                           005434   501 _CAN_PC	=	0x5434
                           005435   502 _CAN_PD	=	0x5435
                           005436   503 _CAN_PE	=	0x5436
                           005437   504 _CAN_PF	=	0x5437
                           007F60   505 _CFG_GCR	=	0x7f60
                           007F70   506 _ITC_SPR1	=	0x7f70
                           007F71   507 _ITC_SPR2	=	0x7f71
                           007F72   508 _ITC_SPR3	=	0x7f72
                           007F73   509 _ITC_SPR4	=	0x7f73
                           007F74   510 _ITC_SPR5	=	0x7f74
                           007F75   511 _ITC_SPR6	=	0x7f75
                           007F76   512 _ITC_SPR7	=	0x7f76
                                    513 ;--------------------------------------------------------
                                    514 ; ram data
                                    515 ;--------------------------------------------------------
                                    516 	.area INITIALIZED
                                    517 ;--------------------------------------------------------
                                    518 ; Stack segment in internal ram
                                    519 ;--------------------------------------------------------
                                    520 	.area SSEG
      000001                        521 __start__stack:
      000001                        522 	.ds	1
                                    523 
                                    524 ;--------------------------------------------------------
                                    525 ; absolute external ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area DABS (ABS)
                                    528 
                                    529 ; default segment ordering for linker
                                    530 	.area HOME
                                    531 	.area GSINIT
                                    532 	.area GSFINAL
                                    533 	.area CONST
                                    534 	.area INITIALIZER
                                    535 	.area CODE
                                    536 
                                    537 ;--------------------------------------------------------
                                    538 ; interrupt vector
                                    539 ;--------------------------------------------------------
                                    540 	.area HOME
      008000                        541 __interrupt_vect:
      008000 82 00 80 07            542 	int s_GSINIT ; reset
                                    543 ;--------------------------------------------------------
                                    544 ; global & static initialisations
                                    545 ;--------------------------------------------------------
                                    546 	.area HOME
                                    547 	.area GSINIT
                                    548 	.area GSFINAL
                                    549 	.area GSINIT
      008007 CD 80 55         [ 4]  550 	call	___sdcc_external_startup
      00800A 4D               [ 1]  551 	tnz	a
      00800B 27 03            [ 1]  552 	jreq	__sdcc_init_data
      00800D CC 80 04         [ 2]  553 	jp	__sdcc_program_startup
      008010                        554 __sdcc_init_data:
                                    555 ; stm8_genXINIT() start
      008010 AE 00 00         [ 2]  556 	ldw x, #l_DATA
      008013 27 07            [ 1]  557 	jreq	00002$
      008015                        558 00001$:
      008015 72 4F 00 00      [ 1]  559 	clr (s_DATA - 1, x)
      008019 5A               [ 2]  560 	decw x
      00801A 26 F9            [ 1]  561 	jrne	00001$
      00801C                        562 00002$:
      00801C AE 00 00         [ 2]  563 	ldw	x, #l_INITIALIZER
      00801F 27 09            [ 1]  564 	jreq	00004$
      008021                        565 00003$:
      008021 D6 80 2C         [ 1]  566 	ld	a, (s_INITIALIZER - 1, x)
      008024 D7 00 00         [ 1]  567 	ld	(s_INITIALIZED - 1, x), a
      008027 5A               [ 2]  568 	decw	x
      008028 26 F7            [ 1]  569 	jrne	00003$
      00802A                        570 00004$:
                                    571 ; stm8_genXINIT() end
                                    572 	.area GSFINAL
      00802A CC 80 04         [ 2]  573 	jp	__sdcc_program_startup
                                    574 ;--------------------------------------------------------
                                    575 ; Home
                                    576 ;--------------------------------------------------------
                                    577 	.area HOME
                                    578 	.area HOME
      008004                        579 __sdcc_program_startup:
      008004 CC 80 2D         [ 2]  580 	jp	_main
                                    581 ;	return from main will return to caller
                                    582 ;--------------------------------------------------------
                                    583 ; code
                                    584 ;--------------------------------------------------------
                                    585 	.area CODE
                                    586 ;	main.c: 2: void main(void){
                                    587 ;	-----------------------------------------
                                    588 ;	 function main
                                    589 ;	-----------------------------------------
      00802D                        590 _main:
                                    591 ;	main.c: 5: PC_DDR |= 1<<5;
      00802D 72 1A 50 0C      [ 1]  592 	bset	_PC_DDR+0, #5
                                    593 ;	main.c: 6: PC_CR1 |= 1<<5;
      008031 72 1A 50 0D      [ 1]  594 	bset	_PC_CR1+0, #5
                                    595 ;	main.c: 7: PC_CR2 |= 1<<5;
      008035 72 1A 50 0E      [ 1]  596 	bset	_PC_CR2+0, #5
                                    597 ;	main.c: 8: PC_ODR &= ~(1<<5);
      008039 72 1B 50 0A      [ 1]  598 	bres	_PC_ODR+0, #5
                                    599 ;	main.c: 11: PE_DDR &= ~(1<<4);
      00803D 72 19 50 16      [ 1]  600 	bres	_PE_DDR+0, #4
                                    601 ;	main.c: 12: PE_CR1 &= ~(1<<4);
      008041 72 19 50 17      [ 1]  602 	bres	_PE_CR1+0, #4
                                    603 ;	main.c: 13: PE_CR2 |= 1<<4;
      008045 72 18 50 18      [ 1]  604 	bset	_PE_CR2+0, #4
                                    605 ;	main.c: 15: EXTI_CR2 |= (1<<1);
      008049 72 12 50 A1      [ 1]  606 	bset	_EXTI_CR2+0, #1
                                    607 ;	main.c: 16: EXTI_CR2 &= ~(1<<0);
      00804D 72 11 50 A1      [ 1]  608 	bres	_EXTI_CR2+0, #0
                                    609 ;	main.c: 19: __asm__("rim");
      008051 9A               [ 1]  610 	rim
                                    611 ;	main.c: 21: while(1)
      008052                        612 00102$:
      008052 20 FE            [ 2]  613 	jra	00102$
                                    614 ;	main.c: 24: }
      008054 81               [ 4]  615 	ret
                                    616 	.area CODE
                                    617 	.area CONST
                                    618 	.area INITIALIZER
                                    619 	.area CABS (ABS)
