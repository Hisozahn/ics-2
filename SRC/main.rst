                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
                              4 ; This file was generated Fri Oct 06 15:30:29 2017
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _DelayMs
                             14 	.globl _InitTimer
                             15 	.globl _anim_m
                             16 ;--------------------------------------------------------
                             17 ; special function registers
                             18 ;--------------------------------------------------------
                             19 	.area RSEG    (ABS,DATA)
   0000                      20 	.org 0x0000
                             21 ;--------------------------------------------------------
                             22 ; special function bits
                             23 ;--------------------------------------------------------
                             24 	.area RSEG    (ABS,DATA)
   0000                      25 	.org 0x0000
                             26 ;--------------------------------------------------------
                             27 ; overlayable register banks
                             28 ;--------------------------------------------------------
                             29 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      30 	.ds 8
                             31 ;--------------------------------------------------------
                             32 ; internal ram data
                             33 ;--------------------------------------------------------
                             34 	.area DSEG    (DATA)
                             35 ;--------------------------------------------------------
                             36 ; overlayable items in internal ram 
                             37 ;--------------------------------------------------------
                             38 ;--------------------------------------------------------
                             39 ; Stack segment in internal ram 
                             40 ;--------------------------------------------------------
                             41 	.area	SSEG	(DATA)
   0021                      42 __start__stack:
   0021                      43 	.ds	1
                             44 
                             45 ;--------------------------------------------------------
                             46 ; indirectly addressable internal ram data
                             47 ;--------------------------------------------------------
                             48 	.area ISEG    (DATA)
                             49 ;--------------------------------------------------------
                             50 ; absolute internal ram data
                             51 ;--------------------------------------------------------
                             52 	.area IABS    (ABS,DATA)
                             53 	.area IABS    (ABS,DATA)
                             54 ;--------------------------------------------------------
                             55 ; bit data
                             56 ;--------------------------------------------------------
                             57 	.area BSEG    (BIT)
                             58 ;--------------------------------------------------------
                             59 ; paged external ram data
                             60 ;--------------------------------------------------------
                             61 	.area PSEG    (PAG,XDATA)
                             62 ;--------------------------------------------------------
                             63 ; external ram data
                             64 ;--------------------------------------------------------
                             65 	.area XSEG    (XDATA)
                             66 ;--------------------------------------------------------
                             67 ; absolute external ram data
                             68 ;--------------------------------------------------------
                             69 	.area XABS    (ABS,XDATA)
                             70 ;--------------------------------------------------------
                             71 ; external initialized ram data
                             72 ;--------------------------------------------------------
                             73 	.area XISEG   (XDATA)
                             74 	.area HOME    (CODE)
                             75 	.area GSINIT0 (CODE)
                             76 	.area GSINIT1 (CODE)
                             77 	.area GSINIT2 (CODE)
                             78 	.area GSINIT3 (CODE)
                             79 	.area GSINIT4 (CODE)
                             80 	.area GSINIT5 (CODE)
                             81 	.area GSINIT  (CODE)
                             82 	.area GSFINAL (CODE)
                             83 	.area CSEG    (CODE)
                             84 ;--------------------------------------------------------
                             85 ; interrupt vector 
                             86 ;--------------------------------------------------------
                             87 	.area HOME    (CODE)
   2100                      88 __interrupt_vect:
   2100 02 21 13             89 	ljmp	__sdcc_gsinit_startup
   2103 32                   90 	reti
   2104                      91 	.ds	7
   210B 02 23 BD             92 	ljmp	_T0_ISR
                             93 ;--------------------------------------------------------
                             94 ; global & static initialisations
                             95 ;--------------------------------------------------------
                             96 	.area HOME    (CODE)
                             97 	.area GSINIT  (CODE)
                             98 	.area GSFINAL (CODE)
                             99 	.area GSINIT  (CODE)
                            100 	.globl __sdcc_gsinit_startup
                            101 	.globl __sdcc_program_startup
                            102 	.globl __start__stack
                            103 	.globl __mcs51_genXINIT
                            104 	.globl __mcs51_genXRAMCLEAR
                            105 	.globl __mcs51_genRAMCLEAR
                            106 	.area GSFINAL (CODE)
   21A0 02 21 0E            107 	ljmp	__sdcc_program_startup
                            108 ;--------------------------------------------------------
                            109 ; Home
                            110 ;--------------------------------------------------------
                            111 	.area HOME    (CODE)
                            112 	.area HOME    (CODE)
   210E                     113 __sdcc_program_startup:
   210E 12 21 A3            114 	lcall	_main
                            115 ;	return from main will lock up
   2111 80 FE               116 	sjmp .
                            117 ;--------------------------------------------------------
                            118 ; code
                            119 ;--------------------------------------------------------
                            120 	.area CSEG    (CODE)
                            121 ;------------------------------------------------------------
                            122 ;Allocation info for local variables in function 'main'
                            123 ;------------------------------------------------------------
                            124 ;	SRC/main.c:8: void main( void )
                            125 ;	-----------------------------------------
                            126 ;	 function main
                            127 ;	-----------------------------------------
   21A3                     128 _main:
                    0007    129 	ar7 = 0x07
                    0006    130 	ar6 = 0x06
                    0005    131 	ar5 = 0x05
                    0004    132 	ar4 = 0x04
                    0003    133 	ar3 = 0x03
                    0002    134 	ar2 = 0x02
                    0001    135 	ar1 = 0x01
                    0000    136 	ar0 = 0x00
                            137 ;	SRC/main.c:10: InitTimer();
   21A3 12 22 F7            138 	lcall	_InitTimer
                            139 ;	SRC/main.c:11: while( 1 ) {
   21A6                     140 00102$:
                            141 ;	SRC/main.c:12: anim_m();
   21A6 12 26 0F            142 	lcall	_anim_m
                            143 ;	SRC/main.c:13: DelayMs(300);
   21A9 90 01 2C            144 	mov	dptr,#0x012C
   21AC E4                  145 	clr	a
   21AD F5 F0               146 	mov	b,a
   21AF 12 21 FD            147 	lcall	_DelayMs
   21B2 80 F2               148 	sjmp	00102$
                            149 	.area CSEG    (CODE)
                            150 	.area CONST   (CODE)
                            151 	.area XINIT   (CODE)
                            152 	.area CABS    (ABS,CODE)
