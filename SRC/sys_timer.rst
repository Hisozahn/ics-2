                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
                              4 ; This file was generated Fri Oct 06 15:18:23 2017
                              5 ;--------------------------------------------------------
                              6 	.module sys_timer
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _SetVector
                             13 	.globl _INT0_handler
                             14 	.globl _T2_handler
                             15 	.globl _T0_ISR
                             16 	.globl _leds
                             17 	.globl _SPR0
                             18 	.globl _SPR1
                             19 	.globl _CPHA
                             20 	.globl _CPOL
                             21 	.globl _SPIM
                             22 	.globl _SPE
                             23 	.globl _WCOL
                             24 	.globl _ISPI
                             25 	.globl _I2CI
                             26 	.globl _I2CTX
                             27 	.globl _I2CRS
                             28 	.globl _I2CM
                             29 	.globl _MDI
                             30 	.globl _MCO
                             31 	.globl _MDE
                             32 	.globl _MDO
                             33 	.globl _CS0
                             34 	.globl _CS1
                             35 	.globl _CS2
                             36 	.globl _CS3
                             37 	.globl _SCONV
                             38 	.globl _CCONV
                             39 	.globl _DMA
                             40 	.globl _ADCI
                             41 	.globl _P
                             42 	.globl _F1
                             43 	.globl _OV
                             44 	.globl _RS0
                             45 	.globl _RS1
                             46 	.globl _F0
                             47 	.globl _AC
                             48 	.globl _CY
                             49 	.globl _CAP2
                             50 	.globl _CNT2
                             51 	.globl _TR2
                             52 	.globl _XEN
                             53 	.globl _TCLK
                             54 	.globl _RCLK
                             55 	.globl _EXF2
                             56 	.globl _TF2
                             57 	.globl _WDE
                             58 	.globl _WDS
                             59 	.globl _WDR2
                             60 	.globl _WDR1
                             61 	.globl _PRE0
                             62 	.globl _PRE1
                             63 	.globl _PRE2
                             64 	.globl _PX0
                             65 	.globl _PT0
                             66 	.globl _PX1
                             67 	.globl _PT1
                             68 	.globl _PS
                             69 	.globl _PT2
                             70 	.globl _PADC
                             71 	.globl _PSI
                             72 	.globl _RXD
                             73 	.globl _TXD
                             74 	.globl _INT0
                             75 	.globl _INT1
                             76 	.globl _T0
                             77 	.globl _T1
                             78 	.globl _WR
                             79 	.globl _RD
                             80 	.globl _EX0
                             81 	.globl _ET0
                             82 	.globl _EX1
                             83 	.globl _ET1
                             84 	.globl _ES
                             85 	.globl _ET2
                             86 	.globl _EADC
                             87 	.globl _EA
                             88 	.globl _RI
                             89 	.globl _TI
                             90 	.globl _RB8
                             91 	.globl _TB8
                             92 	.globl _REN
                             93 	.globl _SM2
                             94 	.globl _SM1
                             95 	.globl _SM0
                             96 	.globl _T2
                             97 	.globl _T2EX
                             98 	.globl _IT0
                             99 	.globl _IE0
                            100 	.globl _IT1
                            101 	.globl _IE1
                            102 	.globl _TR0
                            103 	.globl _TF0
                            104 	.globl _TR1
                            105 	.globl _TF1
                            106 	.globl _DACCON
                            107 	.globl _DAC1H
                            108 	.globl _DAC1L
                            109 	.globl _DAC0H
                            110 	.globl _DAC0L
                            111 	.globl _SPICON
                            112 	.globl _SPIDAT
                            113 	.globl _ADCCON3
                            114 	.globl _ADCGAINH
                            115 	.globl _ADCGAINL
                            116 	.globl _ADCOFSH
                            117 	.globl _ADCOFSL
                            118 	.globl _B
                            119 	.globl _ADCCON1
                            120 	.globl _I2CCON
                            121 	.globl _ACC
                            122 	.globl _PSMCON
                            123 	.globl _ADCDATAH
                            124 	.globl _ADCDATAL
                            125 	.globl _ADCCON2
                            126 	.globl _DMAP
                            127 	.globl _DMAH
                            128 	.globl _DMAL
                            129 	.globl _PSW
                            130 	.globl _TH2
                            131 	.globl _TL2
                            132 	.globl _RCAP2H
                            133 	.globl _RCAP2L
                            134 	.globl _T2CON
                            135 	.globl _EADRL
                            136 	.globl _WDCON
                            137 	.globl _EDATA4
                            138 	.globl _EDATA3
                            139 	.globl _EDATA2
                            140 	.globl _EDATA1
                            141 	.globl _ETIM3
                            142 	.globl _ETIM2
                            143 	.globl _ETIM1
                            144 	.globl _ECON
                            145 	.globl _IP
                            146 	.globl _P3
                            147 	.globl _IE2
                            148 	.globl _IE
                            149 	.globl _P2
                            150 	.globl _I2CADD
                            151 	.globl _I2CDAT
                            152 	.globl _SBUF
                            153 	.globl _SCON
                            154 	.globl _P1
                            155 	.globl _TH1
                            156 	.globl _TH0
                            157 	.globl _TL1
                            158 	.globl _TL0
                            159 	.globl _TMOD
                            160 	.globl _TCON
                            161 	.globl _PCON
                            162 	.globl _DPP
                            163 	.globl _DPH
                            164 	.globl _DPL
                            165 	.globl _SP
                            166 	.globl _P0
                            167 	.globl ___systime
                            168 	.globl _GetMsCounter
                            169 	.globl _DTimeMs
                            170 	.globl _DelayMs
                            171 	.globl _InitTimer
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
   0008                     355 ___systime::
   0008                     356 	.ds 4
                            357 ;--------------------------------------------------------
                            358 ; overlayable items in internal ram 
                            359 ;--------------------------------------------------------
                            360 ;--------------------------------------------------------
                            361 ; indirectly addressable internal ram data
                            362 ;--------------------------------------------------------
                            363 	.area ISEG    (DATA)
                            364 ;--------------------------------------------------------
                            365 ; absolute internal ram data
                            366 ;--------------------------------------------------------
                            367 	.area IABS    (ABS,DATA)
                            368 	.area IABS    (ABS,DATA)
                            369 ;--------------------------------------------------------
                            370 ; bit data
                            371 ;--------------------------------------------------------
                            372 	.area BSEG    (BIT)
                            373 ;--------------------------------------------------------
                            374 ; paged external ram data
                            375 ;--------------------------------------------------------
                            376 	.area PSEG    (PAG,XDATA)
                            377 ;--------------------------------------------------------
                            378 ; external ram data
                            379 ;--------------------------------------------------------
                            380 	.area XSEG    (XDATA)
                            381 ;--------------------------------------------------------
                            382 ; absolute external ram data
                            383 ;--------------------------------------------------------
                            384 	.area XABS    (ABS,XDATA)
                            385 ;--------------------------------------------------------
                            386 ; external initialized ram data
                            387 ;--------------------------------------------------------
                            388 	.area XISEG   (XDATA)
                            389 	.area HOME    (CODE)
                            390 	.area GSINIT0 (CODE)
                            391 	.area GSINIT1 (CODE)
                            392 	.area GSINIT2 (CODE)
                            393 	.area GSINIT3 (CODE)
                            394 	.area GSINIT4 (CODE)
                            395 	.area GSINIT5 (CODE)
                            396 	.area GSINIT  (CODE)
                            397 	.area GSFINAL (CODE)
                            398 	.area CSEG    (CODE)
                            399 ;--------------------------------------------------------
                            400 ; global & static initialisations
                            401 ;--------------------------------------------------------
                            402 	.area HOME    (CODE)
                            403 	.area GSINIT  (CODE)
                            404 	.area GSFINAL (CODE)
                            405 	.area GSINIT  (CODE)
                            406 ;	SRC/sys_timer.c:24: unsigned long __systime = 0;
   216C E4                  407 	clr	a
   216D F5 08               408 	mov	___systime,a
   216F F5 09               409 	mov	(___systime + 1),a
   2171 F5 0A               410 	mov	(___systime + 2),a
   2173 F5 0B               411 	mov	(___systime + 3),a
                            412 ;--------------------------------------------------------
                            413 ; Home
                            414 ;--------------------------------------------------------
                            415 	.area HOME    (CODE)
                            416 	.area HOME    (CODE)
                            417 ;--------------------------------------------------------
                            418 ; code
                            419 ;--------------------------------------------------------
                            420 	.area CSEG    (CODE)
                            421 ;------------------------------------------------------------
                            422 ;Allocation info for local variables in function 'GetMsCounter'
                            423 ;------------------------------------------------------------
                            424 ;res                       Allocated to registers r4 r5 r6 r7 
                            425 ;------------------------------------------------------------
                            426 ;	SRC/sys_timer.c:26: unsigned long GetMsCounter( void ) 
                            427 ;	-----------------------------------------
                            428 ;	 function GetMsCounter
                            429 ;	-----------------------------------------
   21A8                     430 _GetMsCounter:
                    0007    431 	ar7 = 0x07
                    0006    432 	ar6 = 0x06
                    0005    433 	ar5 = 0x05
                    0004    434 	ar4 = 0x04
                    0003    435 	ar3 = 0x03
                    0002    436 	ar2 = 0x02
                    0001    437 	ar1 = 0x01
                    0000    438 	ar0 = 0x00
                            439 ;	SRC/sys_timer.c:29: ET2 = 0; 
   21A8 C2 AD               440 	clr	_ET2
                            441 ;	SRC/sys_timer.c:30: res = __systime; 
   21AA AC 08               442 	mov	r4,___systime
   21AC AD 09               443 	mov	r5,(___systime + 1)
   21AE AE 0A               444 	mov	r6,(___systime + 2)
   21B0 AF 0B               445 	mov	r7,(___systime + 3)
                            446 ;	SRC/sys_timer.c:31: ET2 = 1; 
   21B2 D2 AD               447 	setb	_ET2
                            448 ;	SRC/sys_timer.c:32: return res; 
   21B4 8C 82               449 	mov	dpl,r4
   21B6 8D 83               450 	mov	dph,r5
   21B8 8E F0               451 	mov	b,r6
   21BA EF                  452 	mov	a,r7
   21BB 22                  453 	ret
                            454 ;------------------------------------------------------------
                            455 ;Allocation info for local variables in function 'DTimeMs'
                            456 ;------------------------------------------------------------
                            457 ;t2                        Allocated to stack - _bp +1
                            458 ;t1                        Allocated to registers 
                            459 ;------------------------------------------------------------
                            460 ;	SRC/sys_timer.c:35: unsigned long DTimeMs( unsigned long t2 ) 
                            461 ;	-----------------------------------------
                            462 ;	 function DTimeMs
                            463 ;	-----------------------------------------
   21BC                     464 _DTimeMs:
   21BC C0 19               465 	push	_bp
   21BE 85 81 19            466 	mov	_bp,sp
   21C1 C0 82               467 	push	dpl
   21C3 C0 83               468 	push	dph
   21C5 C0 F0               469 	push	b
   21C7 C0 E0               470 	push	acc
                            471 ;	SRC/sys_timer.c:37: unsigned long t1 = ( unsigned long )GetMsCounter(); 
   21C9 12 21 A8            472 	lcall	_GetMsCounter
   21CC AA 82               473 	mov	r2,dpl
   21CE AB 83               474 	mov	r3,dph
   21D0 AE F0               475 	mov	r6,b
   21D2 FF                  476 	mov	r7,a
                            477 ;	SRC/sys_timer.c:38: return t1 - t2;   
   21D3 A8 19               478 	mov	r0,_bp
   21D5 08                  479 	inc	r0
   21D6 EA                  480 	mov	a,r2
   21D7 C3                  481 	clr	c
   21D8 96                  482 	subb	a,@r0
   21D9 FA                  483 	mov	r2,a
   21DA EB                  484 	mov	a,r3
   21DB 08                  485 	inc	r0
   21DC 96                  486 	subb	a,@r0
   21DD FB                  487 	mov	r3,a
   21DE EE                  488 	mov	a,r6
   21DF 08                  489 	inc	r0
   21E0 96                  490 	subb	a,@r0
   21E1 FE                  491 	mov	r6,a
   21E2 EF                  492 	mov	a,r7
   21E3 08                  493 	inc	r0
   21E4 96                  494 	subb	a,@r0
   21E5 8A 82               495 	mov	dpl,r2
   21E7 8B 83               496 	mov	dph,r3
   21E9 8E F0               497 	mov	b,r6
   21EB 85 19 81            498 	mov	sp,_bp
   21EE D0 19               499 	pop	_bp
   21F0 22                  500 	ret
                            501 ;------------------------------------------------------------
                            502 ;Allocation info for local variables in function 'DelayMs'
                            503 ;------------------------------------------------------------
                            504 ;ms                        Allocated to stack - _bp +1
                            505 ;t1                        Allocated to stack - _bp +5
                            506 ;------------------------------------------------------------
                            507 ;	SRC/sys_timer.c:41: void DelayMs( unsigned long ms ) 
                            508 ;	-----------------------------------------
                            509 ;	 function DelayMs
                            510 ;	-----------------------------------------
   21F1                     511 _DelayMs:
   21F1 C0 19               512 	push	_bp
   21F3 85 81 19            513 	mov	_bp,sp
   21F6 C0 82               514 	push	dpl
   21F8 C0 83               515 	push	dph
   21FA C0 F0               516 	push	b
   21FC C0 E0               517 	push	acc
   21FE E5 81               518 	mov	a,sp
   2200 24 04               519 	add	a,#0x04
   2202 F5 81               520 	mov	sp,a
                            521 ;	SRC/sys_timer.c:43: unsigned long t1 = ( unsigned long )GetMsCounter(); 
   2204 12 21 A8            522 	lcall	_GetMsCounter
   2207 AF 82               523 	mov	r7,dpl
   2209 AE 83               524 	mov	r6,dph
   220B AD F0               525 	mov	r5,b
   220D FC                  526 	mov	r4,a
   220E E5 19               527 	mov	a,_bp
   2210 24 05               528 	add	a,#0x05
   2212 F8                  529 	mov	r0,a
   2213 A6 07               530 	mov	@r0,ar7
   2215 08                  531 	inc	r0
   2216 A6 06               532 	mov	@r0,ar6
   2218 08                  533 	inc	r0
   2219 A6 05               534 	mov	@r0,ar5
   221B 08                  535 	inc	r0
   221C A6 04               536 	mov	@r0,ar4
                            537 ;	SRC/sys_timer.c:44: while ( 1 ) 
   221E                     538 00104$:
                            539 ;	SRC/sys_timer.c:46: if ( DTimeMs( t1 ) > ms ) break; 
   221E E5 19               540 	mov	a,_bp
   2220 24 05               541 	add	a,#0x05
   2222 F8                  542 	mov	r0,a
   2223 86 82               543 	mov	dpl,@r0
   2225 08                  544 	inc	r0
   2226 86 83               545 	mov	dph,@r0
   2228 08                  546 	inc	r0
   2229 86 F0               547 	mov	b,@r0
   222B 08                  548 	inc	r0
   222C E6                  549 	mov	a,@r0
   222D 12 21 BC            550 	lcall	_DTimeMs
   2230 AC 82               551 	mov	r4,dpl
   2232 AD 83               552 	mov	r5,dph
   2234 AE F0               553 	mov	r6,b
   2236 FF                  554 	mov	r7,a
   2237 A8 19               555 	mov	r0,_bp
   2239 08                  556 	inc	r0
   223A C3                  557 	clr	c
   223B E6                  558 	mov	a,@r0
   223C 9C                  559 	subb	a,r4
   223D 08                  560 	inc	r0
   223E E6                  561 	mov	a,@r0
   223F 9D                  562 	subb	a,r5
   2240 08                  563 	inc	r0
   2241 E6                  564 	mov	a,@r0
   2242 9E                  565 	subb	a,r6
   2243 08                  566 	inc	r0
   2244 E6                  567 	mov	a,@r0
   2245 9F                  568 	subb	a,r7
   2246 50 D6               569 	jnc	00104$
   2248 85 19 81            570 	mov	sp,_bp
   224B D0 19               571 	pop	_bp
   224D 22                  572 	ret
                            573 ;------------------------------------------------------------
                            574 ;Allocation info for local variables in function 'T2_handler'
                            575 ;------------------------------------------------------------
                            576 ;	SRC/sys_timer.c:86: void T2_handler ( void ) __interrupt (5) {
                            577 ;	-----------------------------------------
                            578 ;	 function T2_handler
                            579 ;	-----------------------------------------
   224E                     580 _T2_handler:
   224E C0 E0               581 	push	acc
   2250 C0 D0               582 	push	psw
                            583 ;	SRC/sys_timer.c:87: TF2 = 0;
   2252 C2 CF               584 	clr	_TF2
                            585 ;	SRC/sys_timer.c:88: __systime++;
   2254 05 08               586 	inc	___systime
   2256 E4                  587 	clr	a
   2257 B5 08 0C            588 	cjne	a,___systime,00103$
   225A 05 09               589 	inc	(___systime + 1)
   225C B5 09 07            590 	cjne	a,(___systime + 1),00103$
   225F 05 0A               591 	inc	(___systime + 2)
   2261 B5 0A 02            592 	cjne	a,(___systime + 2),00103$
   2264 05 0B               593 	inc	(___systime + 3)
   2266                     594 00103$:
                            595 ;	SRC/sys_timer.c:89: TH2 = 0xFB;
   2266 75 CD FB            596 	mov	_TH2,#0xFB
                            597 ;	SRC/sys_timer.c:90: TL2 = 0xC3;
   2269 75 CC C3            598 	mov	_TL2,#0xC3
   226C D0 D0               599 	pop	psw
   226E D0 E0               600 	pop	acc
   2270 32                  601 	reti
                            602 ;	eliminated unneeded mov psw,# (no regs used in bank)
                            603 ;	eliminated unneeded push/pop dpl
                            604 ;	eliminated unneeded push/pop dph
                            605 ;	eliminated unneeded push/pop b
                            606 ;------------------------------------------------------------
                            607 ;Allocation info for local variables in function 'INT0_handler'
                            608 ;------------------------------------------------------------
                            609 ;	SRC/sys_timer.c:97: void INT0_handler ( void ) __interrupt (0) {
                            610 ;	-----------------------------------------
                            611 ;	 function INT0_handler
                            612 ;	-----------------------------------------
   2271                     613 _INT0_handler:
   2271 C0 20               614 	push	bits
   2273 C0 E0               615 	push	acc
   2275 C0 F0               616 	push	b
   2277 C0 82               617 	push	dpl
   2279 C0 83               618 	push	dph
   227B C0 07               619 	push	(0+7)
   227D C0 06               620 	push	(0+6)
   227F C0 05               621 	push	(0+5)
   2281 C0 04               622 	push	(0+4)
   2283 C0 03               623 	push	(0+3)
   2285 C0 02               624 	push	(0+2)
   2287 C0 01               625 	push	(0+1)
   2289 C0 00               626 	push	(0+0)
   228B C0 D0               627 	push	psw
   228D 75 D0 00            628 	mov	psw,#0x00
                            629 ;	SRC/sys_timer.c:98: leds(0x55);
   2290 75 82 55            630 	mov	dpl,#0x55
   2293 12 23 91            631 	lcall	_leds
   2296 D0 D0               632 	pop	psw
   2298 D0 00               633 	pop	(0+0)
   229A D0 01               634 	pop	(0+1)
   229C D0 02               635 	pop	(0+2)
   229E D0 03               636 	pop	(0+3)
   22A0 D0 04               637 	pop	(0+4)
   22A2 D0 05               638 	pop	(0+5)
   22A4 D0 06               639 	pop	(0+6)
   22A6 D0 07               640 	pop	(0+7)
   22A8 D0 83               641 	pop	dph
   22AA D0 82               642 	pop	dpl
   22AC D0 F0               643 	pop	b
   22AE D0 E0               644 	pop	acc
   22B0 D0 20               645 	pop	bits
   22B2 32                  646 	reti
                            647 ;------------------------------------------------------------
                            648 ;Allocation info for local variables in function 'SetVector'
                            649 ;------------------------------------------------------------
                            650 ;Vector                    Allocated to stack - _bp -5
                            651 ;Address                   Allocated to registers r6 r7 
                            652 ;TmpVector                 Allocated to registers r6 r7 
                            653 ;------------------------------------------------------------
                            654 ;	SRC/sys_timer.c:110: void SetVector(unsigned char __xdata * Address, void * Vector)
                            655 ;	-----------------------------------------
                            656 ;	 function SetVector
                            657 ;	-----------------------------------------
   22B3                     658 _SetVector:
   22B3 C0 19               659 	push	_bp
   22B5 85 81 19            660 	mov	_bp,sp
                            661 ;	SRC/sys_timer.c:116: *Address = 0x02;
   22B8 AE 82               662 	mov	r6,dpl
   22BA AF 83               663 	mov  r7,dph
   22BC 74 02               664 	mov	a,#0x02
   22BE F0                  665 	movx	@dptr,a
                            666 ;	SRC/sys_timer.c:118: TmpVector = (unsigned char __xdata *) (Address + 1);
   22BF 0E                  667 	inc	r6
   22C0 BE 00 01            668 	cjne	r6,#0x00,00103$
   22C3 0F                  669 	inc	r7
   22C4                     670 00103$:
                            671 ;	SRC/sys_timer.c:119: *TmpVector = (unsigned char) ((unsigned short)Vector >> 8);
   22C4 E5 19               672 	mov	a,_bp
   22C6 24 FB               673 	add	a,#0xfb
   22C8 F8                  674 	mov	r0,a
   22C9 86 04               675 	mov	ar4,@r0
   22CB 08                  676 	inc	r0
   22CC 86 05               677 	mov	ar5,@r0
   22CE 8D 04               678 	mov	ar4,r5
   22D0 8E 82               679 	mov	dpl,r6
   22D2 8F 83               680 	mov	dph,r7
   22D4 EC                  681 	mov	a,r4
   22D5 F0                  682 	movx	@dptr,a
   22D6 A3                  683 	inc	dptr
   22D7 AE 82               684 	mov	r6,dpl
   22D9 AF 83               685 	mov	r7,dph
                            686 ;	SRC/sys_timer.c:120: ++TmpVector;
                            687 ;	SRC/sys_timer.c:121: *TmpVector = (unsigned char) Vector;
   22DB E5 19               688 	mov	a,_bp
   22DD 24 FB               689 	add	a,#0xfb
   22DF F8                  690 	mov	r0,a
   22E0 86 05               691 	mov	ar5,@r0
   22E2 8E 82               692 	mov	dpl,r6
   22E4 8F 83               693 	mov	dph,r7
   22E6 ED                  694 	mov	a,r5
   22E7 F0                  695 	movx	@dptr,a
   22E8 D0 19               696 	pop	_bp
   22EA 22                  697 	ret
                            698 ;------------------------------------------------------------
                            699 ;Allocation info for local variables in function 'InitTimer'
                            700 ;------------------------------------------------------------
                            701 ;	SRC/sys_timer.c:127: void InitTimer( void ) {
                            702 ;	-----------------------------------------
                            703 ;	 function InitTimer
                            704 ;	-----------------------------------------
   22EB                     705 _InitTimer:
                            706 ;	SRC/sys_timer.c:131: TMOD = 0x01 + 0x00;//+ 0x80; //
   22EB 75 89 01            707 	mov	_TMOD,#0x01
                            708 ;	SRC/sys_timer.c:132: TCON = 0x10 + 0x01; //+ 0x04; //    
   22EE 75 88 11            709 	mov	_TCON,#0x11
                            710 ;	SRC/sys_timer.c:134: SetVector( 0x200B, (void *)T0_ISR );
   22F1 7D B1               711 	mov	r5,#_T0_ISR
   22F3 7E 23               712 	mov	r6,#(_T0_ISR >> 8)
   22F5 7F 80               713 	mov	r7,#0x80
   22F7 C0 05               714 	push	ar5
   22F9 C0 06               715 	push	ar6
   22FB C0 07               716 	push	ar7
   22FD 90 20 0B            717 	mov	dptr,#0x200B
   2300 12 22 B3            718 	lcall	_SetVector
   2303 15 81               719 	dec	sp
   2305 15 81               720 	dec	sp
   2307 15 81               721 	dec	sp
                            722 ;	SRC/sys_timer.c:136: SetVector( 0x2003, (void *)INT0_handler );
   2309 7D 71               723 	mov	r5,#_INT0_handler
   230B 7E 22               724 	mov	r6,#(_INT0_handler >> 8)
   230D 7F 80               725 	mov	r7,#0x80
   230F C0 05               726 	push	ar5
   2311 C0 06               727 	push	ar6
   2313 C0 07               728 	push	ar7
   2315 90 20 03            729 	mov	dptr,#0x2003
   2318 12 22 B3            730 	lcall	_SetVector
   231B 15 81               731 	dec	sp
   231D 15 81               732 	dec	sp
   231F 15 81               733 	dec	sp
                            734 ;	SRC/sys_timer.c:139: SetVector( 0x202B, (void *)T2_handler );
   2321 7D 4E               735 	mov	r5,#_T2_handler
   2323 7E 22               736 	mov	r6,#(_T2_handler >> 8)
   2325 7F 80               737 	mov	r7,#0x80
   2327 C0 05               738 	push	ar5
   2329 C0 06               739 	push	ar6
   232B C0 07               740 	push	ar7
   232D 90 20 2B            741 	mov	dptr,#0x202B
   2330 12 22 B3            742 	lcall	_SetVector
   2333 15 81               743 	dec	sp
   2335 15 81               744 	dec	sp
   2337 15 81               745 	dec	sp
                            746 ;	SRC/sys_timer.c:141: ET0 = 1;
   2339 D2 A9               747 	setb	_ET0
                            748 ;	SRC/sys_timer.c:143: EX0 = 1;    //INT0 inteerupt enable
   233B D2 A8               749 	setb	_EX0
                            750 ;	SRC/sys_timer.c:148: PT2 = 1;        // Timer 2 high priority
   233D D2 BD               751 	setb	_PT2
                            752 ;	SRC/sys_timer.c:149: PT0 = 0;        // Timer 0 low priority
   233F C2 B9               753 	clr	_PT0
                            754 ;	SRC/sys_timer.c:150: TR2 = 1;        // Timer 2 start
   2341 D2 CA               755 	setb	_TR2
                            756 ;	SRC/sys_timer.c:151: TH2 = 0xFB;     // Timer 2 high byte
   2343 75 CD FB            757 	mov	_TH2,#0xFB
                            758 ;	SRC/sys_timer.c:152: TL2 = 0xC2;     // Timer 2 low byte
   2346 75 CC C2            759 	mov	_TL2,#0xC2
                            760 ;	SRC/sys_timer.c:153: ET2 = 1;        // Timer 2 enable interrupts
   2349 D2 AD               761 	setb	_ET2
                            762 ;	SRC/sys_timer.c:154: EA = 1;         // Enable global interrupts
   234B D2 AF               763 	setb	_EA
   234D 22                  764 	ret
                            765 	.area CSEG    (CODE)
                            766 	.area CONST   (CODE)
                            767 	.area XINIT   (CODE)
                            768 	.area CABS    (ABS,CODE)
