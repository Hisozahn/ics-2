                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
                              4 ; This file was generated Fri Oct 06 16:01:05 2017
                              5 ;--------------------------------------------------------
                              6 	.module led
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _WriteLED
                             13 	.globl _memcpy
                             14 	.globl _write_max
                             15 	.globl _SPR0
                             16 	.globl _SPR1
                             17 	.globl _CPHA
                             18 	.globl _CPOL
                             19 	.globl _SPIM
                             20 	.globl _SPE
                             21 	.globl _WCOL
                             22 	.globl _ISPI
                             23 	.globl _I2CI
                             24 	.globl _I2CTX
                             25 	.globl _I2CRS
                             26 	.globl _I2CM
                             27 	.globl _MDI
                             28 	.globl _MCO
                             29 	.globl _MDE
                             30 	.globl _MDO
                             31 	.globl _CS0
                             32 	.globl _CS1
                             33 	.globl _CS2
                             34 	.globl _CS3
                             35 	.globl _SCONV
                             36 	.globl _CCONV
                             37 	.globl _DMA
                             38 	.globl _ADCI
                             39 	.globl _P
                             40 	.globl _F1
                             41 	.globl _OV
                             42 	.globl _RS0
                             43 	.globl _RS1
                             44 	.globl _F0
                             45 	.globl _AC
                             46 	.globl _CY
                             47 	.globl _CAP2
                             48 	.globl _CNT2
                             49 	.globl _TR2
                             50 	.globl _XEN
                             51 	.globl _TCLK
                             52 	.globl _RCLK
                             53 	.globl _EXF2
                             54 	.globl _TF2
                             55 	.globl _WDE
                             56 	.globl _WDS
                             57 	.globl _WDR2
                             58 	.globl _WDR1
                             59 	.globl _PRE0
                             60 	.globl _PRE1
                             61 	.globl _PRE2
                             62 	.globl _PX0
                             63 	.globl _PT0
                             64 	.globl _PX1
                             65 	.globl _PT1
                             66 	.globl _PS
                             67 	.globl _PT2
                             68 	.globl _PADC
                             69 	.globl _PSI
                             70 	.globl _RXD
                             71 	.globl _TXD
                             72 	.globl _INT0
                             73 	.globl _INT1
                             74 	.globl _T0
                             75 	.globl _T1
                             76 	.globl _WR
                             77 	.globl _RD
                             78 	.globl _EX0
                             79 	.globl _ET0
                             80 	.globl _EX1
                             81 	.globl _ET1
                             82 	.globl _ES
                             83 	.globl _ET2
                             84 	.globl _EADC
                             85 	.globl _EA
                             86 	.globl _RI
                             87 	.globl _TI
                             88 	.globl _RB8
                             89 	.globl _TB8
                             90 	.globl _REN
                             91 	.globl _SM2
                             92 	.globl _SM1
                             93 	.globl _SM0
                             94 	.globl _T2
                             95 	.globl _T2EX
                             96 	.globl _IT0
                             97 	.globl _IE0
                             98 	.globl _IT1
                             99 	.globl _IE1
                            100 	.globl _TR0
                            101 	.globl _TF0
                            102 	.globl _TR1
                            103 	.globl _TF1
                            104 	.globl _DACCON
                            105 	.globl _DAC1H
                            106 	.globl _DAC1L
                            107 	.globl _DAC0H
                            108 	.globl _DAC0L
                            109 	.globl _SPICON
                            110 	.globl _SPIDAT
                            111 	.globl _ADCCON3
                            112 	.globl _ADCGAINH
                            113 	.globl _ADCGAINL
                            114 	.globl _ADCOFSH
                            115 	.globl _ADCOFSL
                            116 	.globl _B
                            117 	.globl _ADCCON1
                            118 	.globl _I2CCON
                            119 	.globl _ACC
                            120 	.globl _PSMCON
                            121 	.globl _ADCDATAH
                            122 	.globl _ADCDATAL
                            123 	.globl _ADCCON2
                            124 	.globl _DMAP
                            125 	.globl _DMAH
                            126 	.globl _DMAL
                            127 	.globl _PSW
                            128 	.globl _TH2
                            129 	.globl _TL2
                            130 	.globl _RCAP2H
                            131 	.globl _RCAP2L
                            132 	.globl _T2CON
                            133 	.globl _EADRL
                            134 	.globl _WDCON
                            135 	.globl _EDATA4
                            136 	.globl _EDATA3
                            137 	.globl _EDATA2
                            138 	.globl _EDATA1
                            139 	.globl _ETIM3
                            140 	.globl _ETIM2
                            141 	.globl _ETIM1
                            142 	.globl _ECON
                            143 	.globl _IP
                            144 	.globl _P3
                            145 	.globl _IE2
                            146 	.globl _IE
                            147 	.globl _P2
                            148 	.globl _I2CADD
                            149 	.globl _I2CDAT
                            150 	.globl _SBUF
                            151 	.globl _SCON
                            152 	.globl _P1
                            153 	.globl _TH1
                            154 	.globl _TH0
                            155 	.globl _TL1
                            156 	.globl _TL0
                            157 	.globl _TMOD
                            158 	.globl _TCON
                            159 	.globl _PCON
                            160 	.globl _DPP
                            161 	.globl _DPH
                            162 	.globl _DPL
                            163 	.globl _SP
                            164 	.globl _P0
                            165 	.globl _brightness
                            166 	.globl _tick
                            167 	.globl _led
                            168 	.globl _leds
                            169 	.globl _T0_ISR
                            170 	.globl _SetBrightness
                            171 	.globl _SetBrightnesses
                            172 ;--------------------------------------------------------
                            173 ; special function registers
                            174 ;--------------------------------------------------------
                            175 	.area RSEG    (ABS,DATA)
   0000                     176 	.org 0x0000
                    0080    177 _P0	=	0x0080
                    0081    178 _SP	=	0x0081
                    0082    179 _DPL	=	0x0082
                    0083    180 _DPH	=	0x0083
                    0084    181 _DPP	=	0x0084
                    0087    182 _PCON	=	0x0087
                    0088    183 _TCON	=	0x0088
                    0089    184 _TMOD	=	0x0089
                    008A    185 _TL0	=	0x008a
                    008B    186 _TL1	=	0x008b
                    008C    187 _TH0	=	0x008c
                    008D    188 _TH1	=	0x008d
                    0090    189 _P1	=	0x0090
                    0098    190 _SCON	=	0x0098
                    0099    191 _SBUF	=	0x0099
                    009A    192 _I2CDAT	=	0x009a
                    009B    193 _I2CADD	=	0x009b
                    00A0    194 _P2	=	0x00a0
                    00A8    195 _IE	=	0x00a8
                    00A9    196 _IE2	=	0x00a9
                    00B0    197 _P3	=	0x00b0
                    00B8    198 _IP	=	0x00b8
                    00B9    199 _ECON	=	0x00b9
                    00BA    200 _ETIM1	=	0x00ba
                    00BB    201 _ETIM2	=	0x00bb
                    00C4    202 _ETIM3	=	0x00c4
                    00BC    203 _EDATA1	=	0x00bc
                    00BD    204 _EDATA2	=	0x00bd
                    00BE    205 _EDATA3	=	0x00be
                    00BF    206 _EDATA4	=	0x00bf
                    00C0    207 _WDCON	=	0x00c0
                    00C6    208 _EADRL	=	0x00c6
                    00C8    209 _T2CON	=	0x00c8
                    00CA    210 _RCAP2L	=	0x00ca
                    00CB    211 _RCAP2H	=	0x00cb
                    00CC    212 _TL2	=	0x00cc
                    00CD    213 _TH2	=	0x00cd
                    00D0    214 _PSW	=	0x00d0
                    00D2    215 _DMAL	=	0x00d2
                    00D3    216 _DMAH	=	0x00d3
                    00D4    217 _DMAP	=	0x00d4
                    00D8    218 _ADCCON2	=	0x00d8
                    00D9    219 _ADCDATAL	=	0x00d9
                    00DA    220 _ADCDATAH	=	0x00da
                    00DF    221 _PSMCON	=	0x00df
                    00E0    222 _ACC	=	0x00e0
                    00E8    223 _I2CCON	=	0x00e8
                    00EF    224 _ADCCON1	=	0x00ef
                    00F0    225 _B	=	0x00f0
                    00F1    226 _ADCOFSL	=	0x00f1
                    00F2    227 _ADCOFSH	=	0x00f2
                    00F3    228 _ADCGAINL	=	0x00f3
                    00F4    229 _ADCGAINH	=	0x00f4
                    00F5    230 _ADCCON3	=	0x00f5
                    00F7    231 _SPIDAT	=	0x00f7
                    00F8    232 _SPICON	=	0x00f8
                    00F9    233 _DAC0L	=	0x00f9
                    00FA    234 _DAC0H	=	0x00fa
                    00FB    235 _DAC1L	=	0x00fb
                    00FC    236 _DAC1H	=	0x00fc
                    00FD    237 _DACCON	=	0x00fd
                            238 ;--------------------------------------------------------
                            239 ; special function bits
                            240 ;--------------------------------------------------------
                            241 	.area RSEG    (ABS,DATA)
   0000                     242 	.org 0x0000
                    008F    243 _TF1	=	0x008f
                    008E    244 _TR1	=	0x008e
                    008D    245 _TF0	=	0x008d
                    008C    246 _TR0	=	0x008c
                    008B    247 _IE1	=	0x008b
                    008A    248 _IT1	=	0x008a
                    0089    249 _IE0	=	0x0089
                    0088    250 _IT0	=	0x0088
                    0091    251 _T2EX	=	0x0091
                    0090    252 _T2	=	0x0090
                    009F    253 _SM0	=	0x009f
                    009E    254 _SM1	=	0x009e
                    009D    255 _SM2	=	0x009d
                    009C    256 _REN	=	0x009c
                    009B    257 _TB8	=	0x009b
                    009A    258 _RB8	=	0x009a
                    0099    259 _TI	=	0x0099
                    0098    260 _RI	=	0x0098
                    00AF    261 _EA	=	0x00af
                    00AE    262 _EADC	=	0x00ae
                    00AD    263 _ET2	=	0x00ad
                    00AC    264 _ES	=	0x00ac
                    00AB    265 _ET1	=	0x00ab
                    00AA    266 _EX1	=	0x00aa
                    00A9    267 _ET0	=	0x00a9
                    00A8    268 _EX0	=	0x00a8
                    00B7    269 _RD	=	0x00b7
                    00B6    270 _WR	=	0x00b6
                    00B5    271 _T1	=	0x00b5
                    00B4    272 _T0	=	0x00b4
                    00B3    273 _INT1	=	0x00b3
                    00B2    274 _INT0	=	0x00b2
                    00B1    275 _TXD	=	0x00b1
                    00B0    276 _RXD	=	0x00b0
                    00BF    277 _PSI	=	0x00bf
                    00BE    278 _PADC	=	0x00be
                    00BD    279 _PT2	=	0x00bd
                    00BC    280 _PS	=	0x00bc
                    00BB    281 _PT1	=	0x00bb
                    00BA    282 _PX1	=	0x00ba
                    00B9    283 _PT0	=	0x00b9
                    00B8    284 _PX0	=	0x00b8
                    00C7    285 _PRE2	=	0x00c7
                    00C6    286 _PRE1	=	0x00c6
                    00C5    287 _PRE0	=	0x00c5
                    00C3    288 _WDR1	=	0x00c3
                    00C2    289 _WDR2	=	0x00c2
                    00C1    290 _WDS	=	0x00c1
                    00C0    291 _WDE	=	0x00c0
                    00CF    292 _TF2	=	0x00cf
                    00CE    293 _EXF2	=	0x00ce
                    00CD    294 _RCLK	=	0x00cd
                    00CC    295 _TCLK	=	0x00cc
                    00CB    296 _XEN	=	0x00cb
                    00CA    297 _TR2	=	0x00ca
                    00C9    298 _CNT2	=	0x00c9
                    00C8    299 _CAP2	=	0x00c8
                    00D7    300 _CY	=	0x00d7
                    00D6    301 _AC	=	0x00d6
                    00D5    302 _F0	=	0x00d5
                    00D4    303 _RS1	=	0x00d4
                    00D3    304 _RS0	=	0x00d3
                    00D2    305 _OV	=	0x00d2
                    00D1    306 _F1	=	0x00d1
                    00D0    307 _P	=	0x00d0
                    00DF    308 _ADCI	=	0x00df
                    00DE    309 _DMA	=	0x00de
                    00DD    310 _CCONV	=	0x00dd
                    00DC    311 _SCONV	=	0x00dc
                    00DB    312 _CS3	=	0x00db
                    00DA    313 _CS2	=	0x00da
                    00D9    314 _CS1	=	0x00d9
                    00D8    315 _CS0	=	0x00d8
                    00EF    316 _MDO	=	0x00ef
                    00EE    317 _MDE	=	0x00ee
                    00ED    318 _MCO	=	0x00ed
                    00EC    319 _MDI	=	0x00ec
                    00EB    320 _I2CM	=	0x00eb
                    00EA    321 _I2CRS	=	0x00ea
                    00E9    322 _I2CTX	=	0x00e9
                    00E8    323 _I2CI	=	0x00e8
                    00FF    324 _ISPI	=	0x00ff
                    00FE    325 _WCOL	=	0x00fe
                    00FD    326 _SPE	=	0x00fd
                    00FC    327 _SPIM	=	0x00fc
                    00FB    328 _CPOL	=	0x00fb
                    00FA    329 _CPHA	=	0x00fa
                    00F9    330 _SPR1	=	0x00f9
                    00F8    331 _SPR0	=	0x00f8
                            332 ;--------------------------------------------------------
                            333 ; overlayable register banks
                            334 ;--------------------------------------------------------
                            335 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     336 	.ds 8
                            337 ;--------------------------------------------------------
                            338 ; overlayable bit register bank
                            339 ;--------------------------------------------------------
                            340 	.area BIT_BANK	(REL,OVR,DATA)
   0020                     341 bits:
   0020                     342 	.ds 1
                    8000    343 	b0 = bits[0]
                    8100    344 	b1 = bits[1]
                    8200    345 	b2 = bits[2]
                    8300    346 	b3 = bits[3]
                    8400    347 	b4 = bits[4]
                    8500    348 	b5 = bits[5]
                    8600    349 	b6 = bits[6]
                    8700    350 	b7 = bits[7]
                            351 ;--------------------------------------------------------
                            352 ; internal ram data
                            353 ;--------------------------------------------------------
                            354 	.area DSEG    (DATA)
   000C                     355 _old_led:
   000C                     356 	.ds 1
   000D                     357 _tick::
   000D                     358 	.ds 1
   000E                     359 _brightness::
   000E                     360 	.ds 8
                            361 ;--------------------------------------------------------
                            362 ; overlayable items in internal ram 
                            363 ;--------------------------------------------------------
                            364 ;--------------------------------------------------------
                            365 ; indirectly addressable internal ram data
                            366 ;--------------------------------------------------------
                            367 	.area ISEG    (DATA)
                            368 ;--------------------------------------------------------
                            369 ; absolute internal ram data
                            370 ;--------------------------------------------------------
                            371 	.area IABS    (ABS,DATA)
                            372 	.area IABS    (ABS,DATA)
                            373 ;--------------------------------------------------------
                            374 ; bit data
                            375 ;--------------------------------------------------------
                            376 	.area BSEG    (BIT)
                            377 ;--------------------------------------------------------
                            378 ; paged external ram data
                            379 ;--------------------------------------------------------
                            380 	.area PSEG    (PAG,XDATA)
                            381 ;--------------------------------------------------------
                            382 ; external ram data
                            383 ;--------------------------------------------------------
                            384 	.area XSEG    (XDATA)
                            385 ;--------------------------------------------------------
                            386 ; absolute external ram data
                            387 ;--------------------------------------------------------
                            388 	.area XABS    (ABS,XDATA)
                            389 ;--------------------------------------------------------
                            390 ; external initialized ram data
                            391 ;--------------------------------------------------------
                            392 	.area XISEG   (XDATA)
                            393 	.area HOME    (CODE)
                            394 	.area GSINIT0 (CODE)
                            395 	.area GSINIT1 (CODE)
                            396 	.area GSINIT2 (CODE)
                            397 	.area GSINIT3 (CODE)
                            398 	.area GSINIT4 (CODE)
                            399 	.area GSINIT5 (CODE)
                            400 	.area GSINIT  (CODE)
                            401 	.area GSFINAL (CODE)
                            402 	.area CSEG    (CODE)
                            403 ;--------------------------------------------------------
                            404 ; global & static initialisations
                            405 ;--------------------------------------------------------
                            406 	.area HOME    (CODE)
                            407 	.area GSINIT  (CODE)
                            408 	.area GSFINAL (CODE)
                            409 	.area GSINIT  (CODE)
                            410 ;	SRC/led.c:35: static unsigned char old_led = 0;   // "Видеопамять" линейки светодиодов
   2175 75 0C 00            411 	mov	_old_led,#0x00
                            412 ;	SRC/led.c:117: unsigned char tick = 1;
   2178 75 0D 01            413 	mov	_tick,#0x01
                            414 ;	SRC/led.c:118: unsigned char brightness[LED_COUNT] = {0, 0, 0, 0, 0, 0, 0, 0};
   217B 75 0E 00            415 	mov	_brightness,#0x00
   217E 75 0F 00            416 	mov	(_brightness + 0x0001),#0x00
   2181 75 10 00            417 	mov	(_brightness + 0x0002),#0x00
   2184 75 11 00            418 	mov	(_brightness + 0x0003),#0x00
   2187 75 12 00            419 	mov	(_brightness + 0x0004),#0x00
   218A 75 13 00            420 	mov	(_brightness + 0x0005),#0x00
   218D 75 14 00            421 	mov	(_brightness + 0x0006),#0x00
   2190 75 15 00            422 	mov	(_brightness + 0x0007),#0x00
                            423 ;--------------------------------------------------------
                            424 ; Home
                            425 ;--------------------------------------------------------
                            426 	.area HOME    (CODE)
                            427 	.area HOME    (CODE)
                            428 ;--------------------------------------------------------
                            429 ; code
                            430 ;--------------------------------------------------------
                            431 	.area CSEG    (CODE)
                            432 ;------------------------------------------------------------
                            433 ;Allocation info for local variables in function 'led'
                            434 ;------------------------------------------------------------
                            435 ;on                        Allocated to stack - _bp -3
                            436 ;n                         Allocated to registers r7 
                            437 ;c                         Allocated to registers r6 
                            438 ;mask                      Allocated to registers r7 
                            439 ;------------------------------------------------------------
                            440 ;	SRC/led.c:53: void led( unsigned char n, unsigned char on )
                            441 ;	-----------------------------------------
                            442 ;	 function led
                            443 ;	-----------------------------------------
   235A                     444 _led:
                    0007    445 	ar7 = 0x07
                    0006    446 	ar6 = 0x06
                    0005    447 	ar5 = 0x05
                    0004    448 	ar4 = 0x04
                    0003    449 	ar3 = 0x03
                    0002    450 	ar2 = 0x02
                    0001    451 	ar1 = 0x01
                    0000    452 	ar0 = 0x00
   235A C0 19               453 	push	_bp
   235C 85 81 19            454 	mov	_bp,sp
                            455 ;	SRC/led.c:58: if( n > 7 ) return;
   235F E5 82               456 	mov	a,dpl
   2361 FF                  457 	mov	r7,a
   2362 24 F8               458 	add	a,#0xff - 0x07
   2364 50 02               459 	jnc	00102$
   2366 80 32               460 	sjmp	00106$
   2368                     461 00102$:
                            462 ;	SRC/led.c:60: c = old_led;
   2368 AE 0C               463 	mov	r6,_old_led
                            464 ;	SRC/led.c:62: mask <<= n;
   236A 8F F0               465 	mov	b,r7
   236C 05 F0               466 	inc	b
   236E 74 01               467 	mov	a,#0x01
   2370 80 02               468 	sjmp	00115$
   2372                     469 00113$:
   2372 25 E0               470 	add	a,acc
   2374                     471 00115$:
   2374 D5 F0 FB            472 	djnz	b,00113$
   2377 FF                  473 	mov	r7,a
                            474 ;	SRC/led.c:64: if( on )
   2378 E5 19               475 	mov	a,_bp
   237A 24 FD               476 	add	a,#0xfd
   237C F8                  477 	mov	r0,a
   237D E6                  478 	mov	a,@r0
   237E 60 05               479 	jz	00104$
                            480 ;	SRC/led.c:65: c |= mask;
   2380 EF                  481 	mov	a,r7
   2381 42 06               482 	orl	ar6,a
   2383 80 05               483 	sjmp	00105$
   2385                     484 00104$:
                            485 ;	SRC/led.c:67: c &= ~mask;         
   2385 EF                  486 	mov	a,r7
   2386 F4                  487 	cpl	a
   2387 FF                  488 	mov	r7,a
   2388 52 06               489 	anl	ar6,a
   238A                     490 00105$:
                            491 ;	SRC/led.c:69: write_max( SV, c );     
   238A C0 06               492 	push	ar6
   238C C0 06               493 	push	ar6
   238E 90 00 07            494 	mov	dptr,#0x0007
   2391 12 24 8C            495 	lcall	_write_max
   2394 15 81               496 	dec	sp
   2396 D0 06               497 	pop	ar6
                            498 ;	SRC/led.c:71: old_led = c;
   2398 8E 0C               499 	mov	_old_led,r6
   239A                     500 00106$:
   239A D0 19               501 	pop	_bp
   239C 22                  502 	ret
                            503 ;------------------------------------------------------------
                            504 ;Allocation info for local variables in function 'leds'
                            505 ;------------------------------------------------------------
                            506 ;on                        Allocated to registers r7 
                            507 ;------------------------------------------------------------
                            508 ;	SRC/led.c:90: void leds( unsigned char on )
                            509 ;	-----------------------------------------
                            510 ;	 function leds
                            511 ;	-----------------------------------------
   239D                     512 _leds:
   239D AF 82               513 	mov	r7,dpl
                            514 ;	SRC/led.c:92: write_max( SV, on );     
   239F C0 07               515 	push	ar7
   23A1 C0 07               516 	push	ar7
   23A3 90 00 07            517 	mov	dptr,#0x0007
   23A6 12 24 8C            518 	lcall	_write_max
   23A9 15 81               519 	dec	sp
   23AB D0 07               520 	pop	ar7
                            521 ;	SRC/led.c:94: old_led = on;
   23AD 8F 0C               522 	mov	_old_led,r7
   23AF 22                  523 	ret
                            524 ;------------------------------------------------------------
                            525 ;Allocation info for local variables in function 'WriteLED'
                            526 ;------------------------------------------------------------
                            527 ;value                     Allocated to registers r7 
                            528 ;------------------------------------------------------------
                            529 ;	SRC/led.c:104: void WriteLED(unsigned char value)
                            530 ;	-----------------------------------------
                            531 ;	 function WriteLED
                            532 ;	-----------------------------------------
   23B0                     533 _WriteLED:
   23B0 AF 82               534 	mov	r7,dpl
                            535 ;	SRC/led.c:107: write_max( 7, value );
   23B2 C0 07               536 	push	ar7
   23B4 90 00 07            537 	mov	dptr,#0x0007
   23B7 12 24 8C            538 	lcall	_write_max
   23BA 15 81               539 	dec	sp
   23BC 22                  540 	ret
                            541 ;------------------------------------------------------------
                            542 ;Allocation info for local variables in function 'T0_ISR'
                            543 ;------------------------------------------------------------
                            544 ;i                         Allocated to registers r5 
                            545 ;led                       Allocated to registers r7 
                            546 ;mask                      Allocated to registers r6 
                            547 ;------------------------------------------------------------
                            548 ;	SRC/led.c:120: void T0_ISR( void ) __interrupt ( 1 )
                            549 ;	-----------------------------------------
                            550 ;	 function T0_ISR
                            551 ;	-----------------------------------------
   23BD                     552 _T0_ISR:
   23BD C0 20               553 	push	bits
   23BF C0 E0               554 	push	acc
   23C1 C0 F0               555 	push	b
   23C3 C0 82               556 	push	dpl
   23C5 C0 83               557 	push	dph
   23C7 C0 07               558 	push	(0+7)
   23C9 C0 06               559 	push	(0+6)
   23CB C0 05               560 	push	(0+5)
   23CD C0 04               561 	push	(0+4)
   23CF C0 03               562 	push	(0+3)
   23D1 C0 02               563 	push	(0+2)
   23D3 C0 01               564 	push	(0+1)
   23D5 C0 00               565 	push	(0+0)
   23D7 C0 D0               566 	push	psw
   23D9 75 D0 00            567 	mov	psw,#0x00
                            568 ;	SRC/led.c:123: unsigned char led = 0;
   23DC 7F 00               569 	mov	r7,#0x00
                            570 ;	SRC/led.c:124: unsigned char mask = 1;	
   23DE 7E 01               571 	mov	r6,#0x01
                            572 ;	SRC/led.c:126: if (tick > 50) {
   23E0 E5 0D               573 	mov	a,_tick
   23E2 24 CD               574 	add	a,#0xff - 0x32
   23E4 50 03               575 	jnc	00114$
                            576 ;	SRC/led.c:127: tick = 1;
   23E6 75 0D 01            577 	mov	_tick,#0x01
   23E9                     578 00114$:
   23E9 7D 00               579 	mov	r5,#0x00
   23EB                     580 00105$:
                            581 ;	SRC/led.c:129: for (; i < LED_COUNT; i++) {		
   23EB BD 08 00            582 	cjne	r5,#0x08,00121$
   23EE                     583 00121$:
   23EE 50 17               584 	jnc	00108$
                            585 ;	SRC/led.c:130: if (tick < brightness[i]/2) {			
   23F0 ED                  586 	mov	a,r5
   23F1 24 0E               587 	add	a,#_brightness
   23F3 F9                  588 	mov	r1,a
   23F4 E7                  589 	mov	a,@r1
   23F5 C3                  590 	clr	c
   23F6 13                  591 	rrc	a
   23F7 FC                  592 	mov	r4,a
   23F8 C3                  593 	clr	c
   23F9 E5 0D               594 	mov	a,_tick
   23FB 9C                  595 	subb	a,r4
   23FC 50 03               596 	jnc	00104$
                            597 ;	SRC/led.c:131: led += mask;
   23FE EE                  598 	mov	a,r6
   23FF 2F                  599 	add	a,r7
   2400 FF                  600 	mov	r7,a
   2401                     601 00104$:
                            602 ;	SRC/led.c:133: mask <<= 1;
   2401 EE                  603 	mov	a,r6
   2402 2E                  604 	add	a,r6
   2403 FE                  605 	mov	r6,a
                            606 ;	SRC/led.c:129: for (; i < LED_COUNT; i++) {		
   2404 0D                  607 	inc	r5
   2405 80 E4               608 	sjmp	00105$
   2407                     609 00108$:
                            610 ;	SRC/led.c:135: tick++;
   2407 05 0D               611 	inc	_tick
                            612 ;	SRC/led.c:136: leds(led);
   2409 8F 82               613 	mov	dpl,r7
   240B 12 23 9D            614 	lcall	_leds
                            615 ;	SRC/led.c:137: TH0 = 0xFF;
   240E 75 8C FF            616 	mov	_TH0,#0xFF
                            617 ;	SRC/led.c:138: TL0 = 0xF0;
   2411 75 8A F0            618 	mov	_TL0,#0xF0
   2414 D0 D0               619 	pop	psw
   2416 D0 00               620 	pop	(0+0)
   2418 D0 01               621 	pop	(0+1)
   241A D0 02               622 	pop	(0+2)
   241C D0 03               623 	pop	(0+3)
   241E D0 04               624 	pop	(0+4)
   2420 D0 05               625 	pop	(0+5)
   2422 D0 06               626 	pop	(0+6)
   2424 D0 07               627 	pop	(0+7)
   2426 D0 83               628 	pop	dph
   2428 D0 82               629 	pop	dpl
   242A D0 F0               630 	pop	b
   242C D0 E0               631 	pop	acc
   242E D0 20               632 	pop	bits
   2430 32                  633 	reti
                            634 ;------------------------------------------------------------
                            635 ;Allocation info for local variables in function 'SetBrightness'
                            636 ;------------------------------------------------------------
                            637 ;b                         Allocated to stack - _bp -3
                            638 ;ledId                     Allocated to registers r7 
                            639 ;------------------------------------------------------------
                            640 ;	SRC/led.c:141: void SetBrightness(unsigned char ledId, unsigned char b) {
                            641 ;	-----------------------------------------
                            642 ;	 function SetBrightness
                            643 ;	-----------------------------------------
   2431                     644 _SetBrightness:
   2431 C0 19               645 	push	_bp
   2433 85 81 19            646 	mov	_bp,sp
   2436 AF 82               647 	mov	r7,dpl
                            648 ;	SRC/led.c:142: if (b > 100) {
   2438 E5 19               649 	mov	a,_bp
   243A 24 FD               650 	add	a,#0xfd
   243C F8                  651 	mov	r0,a
   243D E6                  652 	mov	a,@r0
   243E 24 9B               653 	add	a,#0xff - 0x64
   2440 50 02               654 	jnc	00102$
                            655 ;	SRC/led.c:143: return;
   2442 80 12               656 	sjmp	00105$
   2444                     657 00102$:
                            658 ;	SRC/led.c:146: if (ledId > LED_COUNT - 1) {
   2444 EF                  659 	mov	a,r7
   2445 24 F8               660 	add	a,#0xff - 0x07
   2447 50 02               661 	jnc	00104$
                            662 ;	SRC/led.c:147: return;
   2449 80 0B               663 	sjmp	00105$
   244B                     664 00104$:
                            665 ;	SRC/led.c:150: brightness[ledId] = b;
   244B EF                  666 	mov	a,r7
   244C 24 0E               667 	add	a,#_brightness
   244E F8                  668 	mov	r0,a
   244F E5 19               669 	mov	a,_bp
   2451 24 FD               670 	add	a,#0xfd
   2453 F9                  671 	mov	r1,a
   2454 E7                  672 	mov	a,@r1
   2455 F6                  673 	mov	@r0,a
   2456                     674 00105$:
   2456 D0 19               675 	pop	_bp
   2458 22                  676 	ret
                            677 ;------------------------------------------------------------
                            678 ;Allocation info for local variables in function 'SetBrightnesses'
                            679 ;------------------------------------------------------------
                            680 ;brigthness_v              Allocated to registers r5 r6 r7 
                            681 ;old_ET0                   Allocated to registers r4 
                            682 ;------------------------------------------------------------
                            683 ;	SRC/led.c:153: void SetBrightnesses(const unsigned char* brigthness_v) {
                            684 ;	-----------------------------------------
                            685 ;	 function SetBrightnesses
                            686 ;	-----------------------------------------
   2459                     687 _SetBrightnesses:
   2459 AD 82               688 	mov	r5,dpl
   245B AE 83               689 	mov	r6,dph
   245D AF F0               690 	mov	r7,b
                            691 ;	SRC/led.c:154: char old_ET0 = ET0;
   245F A2 A9               692 	mov	c,_ET0
   2461 E4                  693 	clr	a
   2462 33                  694 	rlc	a
   2463 FC                  695 	mov	r4,a
                            696 ;	SRC/led.c:155: ET0 = 0;
   2464 C2 A9               697 	clr	_ET0
                            698 ;	SRC/led.c:156: memcpy(brightness, brigthness_v, LED_COUNT);
   2466 C0 04               699 	push	ar4
   2468 74 08               700 	mov	a,#0x08
   246A C0 E0               701 	push	acc
   246C E4                  702 	clr	a
   246D C0 E0               703 	push	acc
   246F C0 05               704 	push	ar5
   2471 C0 06               705 	push	ar6
   2473 C0 07               706 	push	ar7
   2475 90 00 0E            707 	mov	dptr,#_brightness
   2478 75 F0 40            708 	mov	b,#0x40
   247B 12 26 D3            709 	lcall	_memcpy
   247E E5 81               710 	mov	a,sp
   2480 24 FB               711 	add	a,#0xfb
   2482 F5 81               712 	mov	sp,a
   2484 D0 04               713 	pop	ar4
                            714 ;	SRC/led.c:157: ET0 = old_ET0;
   2486 EC                  715 	mov	a,r4
   2487 24 FF               716 	add	a,#0xff
   2489 92 A9               717 	mov	_ET0,c
   248B 22                  718 	ret
                            719 	.area CSEG    (CODE)
                            720 	.area CONST   (CODE)
                            721 	.area XINIT   (CODE)
                            722 	.area CABS    (ABS,CODE)
