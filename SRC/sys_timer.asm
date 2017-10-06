;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
; This file was generated Fri Oct 06 15:18:23 2017
;--------------------------------------------------------
	.module sys_timer
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SetVector
	.globl _INT0_handler
	.globl _T2_handler
	.globl _T0_ISR
	.globl _leds
	.globl _SPR0
	.globl _SPR1
	.globl _CPHA
	.globl _CPOL
	.globl _SPIM
	.globl _SPE
	.globl _WCOL
	.globl _ISPI
	.globl _I2CI
	.globl _I2CTX
	.globl _I2CRS
	.globl _I2CM
	.globl _MDI
	.globl _MCO
	.globl _MDE
	.globl _MDO
	.globl _CS0
	.globl _CS1
	.globl _CS2
	.globl _CS3
	.globl _SCONV
	.globl _CCONV
	.globl _DMA
	.globl _ADCI
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CAP2
	.globl _CNT2
	.globl _TR2
	.globl _XEN
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _TF2
	.globl _WDE
	.globl _WDS
	.globl _WDR2
	.globl _WDR1
	.globl _PRE0
	.globl _PRE1
	.globl _PRE2
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PADC
	.globl _PSI
	.globl _RXD
	.globl _TXD
	.globl _INT0
	.globl _INT1
	.globl _T0
	.globl _T1
	.globl _WR
	.globl _RD
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _EADC
	.globl _EA
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _T2
	.globl _T2EX
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _DACCON
	.globl _DAC1H
	.globl _DAC1L
	.globl _DAC0H
	.globl _DAC0L
	.globl _SPICON
	.globl _SPIDAT
	.globl _ADCCON3
	.globl _ADCGAINH
	.globl _ADCGAINL
	.globl _ADCOFSH
	.globl _ADCOFSL
	.globl _B
	.globl _ADCCON1
	.globl _I2CCON
	.globl _ACC
	.globl _PSMCON
	.globl _ADCDATAH
	.globl _ADCDATAL
	.globl _ADCCON2
	.globl _DMAP
	.globl _DMAH
	.globl _DMAL
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _EADRL
	.globl _WDCON
	.globl _EDATA4
	.globl _EDATA3
	.globl _EDATA2
	.globl _EDATA1
	.globl _ETIM3
	.globl _ETIM2
	.globl _ETIM1
	.globl _ECON
	.globl _IP
	.globl _P3
	.globl _IE2
	.globl _IE
	.globl _P2
	.globl _I2CADD
	.globl _I2CDAT
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPP
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl ___systime
	.globl _GetMsCounter
	.globl _DTimeMs
	.globl _DelayMs
	.globl _InitTimer
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_DPP	=	0x0084
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_I2CDAT	=	0x009a
_I2CADD	=	0x009b
_P2	=	0x00a0
_IE	=	0x00a8
_IE2	=	0x00a9
_P3	=	0x00b0
_IP	=	0x00b8
_ECON	=	0x00b9
_ETIM1	=	0x00ba
_ETIM2	=	0x00bb
_ETIM3	=	0x00c4
_EDATA1	=	0x00bc
_EDATA2	=	0x00bd
_EDATA3	=	0x00be
_EDATA4	=	0x00bf
_WDCON	=	0x00c0
_EADRL	=	0x00c6
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_DMAL	=	0x00d2
_DMAH	=	0x00d3
_DMAP	=	0x00d4
_ADCCON2	=	0x00d8
_ADCDATAL	=	0x00d9
_ADCDATAH	=	0x00da
_PSMCON	=	0x00df
_ACC	=	0x00e0
_I2CCON	=	0x00e8
_ADCCON1	=	0x00ef
_B	=	0x00f0
_ADCOFSL	=	0x00f1
_ADCOFSH	=	0x00f2
_ADCGAINL	=	0x00f3
_ADCGAINH	=	0x00f4
_ADCCON3	=	0x00f5
_SPIDAT	=	0x00f7
_SPICON	=	0x00f8
_DAC0L	=	0x00f9
_DAC0H	=	0x00fa
_DAC1L	=	0x00fb
_DAC1H	=	0x00fc
_DACCON	=	0x00fd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_T2EX	=	0x0091
_T2	=	0x0090
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_EA	=	0x00af
_EADC	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_RD	=	0x00b7
_WR	=	0x00b6
_T1	=	0x00b5
_T0	=	0x00b4
_INT1	=	0x00b3
_INT0	=	0x00b2
_TXD	=	0x00b1
_RXD	=	0x00b0
_PSI	=	0x00bf
_PADC	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_PRE2	=	0x00c7
_PRE1	=	0x00c6
_PRE0	=	0x00c5
_WDR1	=	0x00c3
_WDR2	=	0x00c2
_WDS	=	0x00c1
_WDE	=	0x00c0
_TF2	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_XEN	=	0x00cb
_TR2	=	0x00ca
_CNT2	=	0x00c9
_CAP2	=	0x00c8
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_ADCI	=	0x00df
_DMA	=	0x00de
_CCONV	=	0x00dd
_SCONV	=	0x00dc
_CS3	=	0x00db
_CS2	=	0x00da
_CS1	=	0x00d9
_CS0	=	0x00d8
_MDO	=	0x00ef
_MDE	=	0x00ee
_MCO	=	0x00ed
_MDI	=	0x00ec
_I2CM	=	0x00eb
_I2CRS	=	0x00ea
_I2CTX	=	0x00e9
_I2CI	=	0x00e8
_ISPI	=	0x00ff
_WCOL	=	0x00fe
_SPE	=	0x00fd
_SPIM	=	0x00fc
_CPOL	=	0x00fb
_CPHA	=	0x00fa
_SPR1	=	0x00f9
_SPR0	=	0x00f8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
___systime::
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	SRC/sys_timer.c:24: unsigned long __systime = 0;
	clr	a
	mov	___systime,a
	mov	(___systime + 1),a
	mov	(___systime + 2),a
	mov	(___systime + 3),a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'GetMsCounter'
;------------------------------------------------------------
;res                       Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	SRC/sys_timer.c:26: unsigned long GetMsCounter( void ) 
;	-----------------------------------------
;	 function GetMsCounter
;	-----------------------------------------
_GetMsCounter:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	SRC/sys_timer.c:29: ET2 = 0; 
	clr	_ET2
;	SRC/sys_timer.c:30: res = __systime; 
	mov	r4,___systime
	mov	r5,(___systime + 1)
	mov	r6,(___systime + 2)
	mov	r7,(___systime + 3)
;	SRC/sys_timer.c:31: ET2 = 1; 
	setb	_ET2
;	SRC/sys_timer.c:32: return res; 
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DTimeMs'
;------------------------------------------------------------
;t2                        Allocated to stack - _bp +1
;t1                        Allocated to registers 
;------------------------------------------------------------
;	SRC/sys_timer.c:35: unsigned long DTimeMs( unsigned long t2 ) 
;	-----------------------------------------
;	 function DTimeMs
;	-----------------------------------------
_DTimeMs:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
;	SRC/sys_timer.c:37: unsigned long t1 = ( unsigned long )GetMsCounter(); 
	lcall	_GetMsCounter
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
;	SRC/sys_timer.c:38: return t1 - t2;   
	mov	r0,_bp
	inc	r0
	mov	a,r2
	clr	c
	subb	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	subb	a,@r0
	mov	r3,a
	mov	a,r6
	inc	r0
	subb	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DelayMs'
;------------------------------------------------------------
;ms                        Allocated to stack - _bp +1
;t1                        Allocated to stack - _bp +5
;------------------------------------------------------------
;	SRC/sys_timer.c:41: void DelayMs( unsigned long ms ) 
;	-----------------------------------------
;	 function DelayMs
;	-----------------------------------------
_DelayMs:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	SRC/sys_timer.c:43: unsigned long t1 = ( unsigned long )GetMsCounter(); 
	lcall	_GetMsCounter
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar4
;	SRC/sys_timer.c:44: while ( 1 ) 
00104$:
;	SRC/sys_timer.c:46: if ( DTimeMs( t1 ) > ms ) break; 
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_DTimeMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	jnc	00104$
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'T2_handler'
;------------------------------------------------------------
;	SRC/sys_timer.c:86: void T2_handler ( void ) __interrupt (5) {
;	-----------------------------------------
;	 function T2_handler
;	-----------------------------------------
_T2_handler:
	push	acc
	push	psw
;	SRC/sys_timer.c:87: TF2 = 0;
	clr	_TF2
;	SRC/sys_timer.c:88: __systime++;
	inc	___systime
	clr	a
	cjne	a,___systime,00103$
	inc	(___systime + 1)
	cjne	a,(___systime + 1),00103$
	inc	(___systime + 2)
	cjne	a,(___systime + 2),00103$
	inc	(___systime + 3)
00103$:
;	SRC/sys_timer.c:89: TH2 = 0xFB;
	mov	_TH2,#0xFB
;	SRC/sys_timer.c:90: TL2 = 0xC3;
	mov	_TL2,#0xC3
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'INT0_handler'
;------------------------------------------------------------
;	SRC/sys_timer.c:97: void INT0_handler ( void ) __interrupt (0) {
;	-----------------------------------------
;	 function INT0_handler
;	-----------------------------------------
_INT0_handler:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	SRC/sys_timer.c:98: leds(0x55);
	mov	dpl,#0x55
	lcall	_leds
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'SetVector'
;------------------------------------------------------------
;Vector                    Allocated to stack - _bp -5
;Address                   Allocated to registers r6 r7 
;TmpVector                 Allocated to registers r6 r7 
;------------------------------------------------------------
;	SRC/sys_timer.c:110: void SetVector(unsigned char __xdata * Address, void * Vector)
;	-----------------------------------------
;	 function SetVector
;	-----------------------------------------
_SetVector:
	push	_bp
	mov	_bp,sp
;	SRC/sys_timer.c:116: *Address = 0x02;
	mov	r6,dpl
	mov  r7,dph
	mov	a,#0x02
	movx	@dptr,a
;	SRC/sys_timer.c:118: TmpVector = (unsigned char __xdata *) (Address + 1);
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
00103$:
;	SRC/sys_timer.c:119: *TmpVector = (unsigned char) ((unsigned short)Vector >> 8);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	ar4,r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
;	SRC/sys_timer.c:120: ++TmpVector;
;	SRC/sys_timer.c:121: *TmpVector = (unsigned char) Vector;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitTimer'
;------------------------------------------------------------
;	SRC/sys_timer.c:127: void InitTimer( void ) {
;	-----------------------------------------
;	 function InitTimer
;	-----------------------------------------
_InitTimer:
;	SRC/sys_timer.c:131: TMOD = 0x01 + 0x00;//+ 0x80; //
	mov	_TMOD,#0x01
;	SRC/sys_timer.c:132: TCON = 0x10 + 0x01; //+ 0x04; //    
	mov	_TCON,#0x11
;	SRC/sys_timer.c:134: SetVector( 0x200B, (void *)T0_ISR );
	mov	r5,#_T0_ISR
	mov	r6,#(_T0_ISR >> 8)
	mov	r7,#0x80
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x200B
	lcall	_SetVector
	dec	sp
	dec	sp
	dec	sp
;	SRC/sys_timer.c:136: SetVector( 0x2003, (void *)INT0_handler );
	mov	r5,#_INT0_handler
	mov	r6,#(_INT0_handler >> 8)
	mov	r7,#0x80
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x2003
	lcall	_SetVector
	dec	sp
	dec	sp
	dec	sp
;	SRC/sys_timer.c:139: SetVector( 0x202B, (void *)T2_handler );
	mov	r5,#_T2_handler
	mov	r6,#(_T2_handler >> 8)
	mov	r7,#0x80
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x202B
	lcall	_SetVector
	dec	sp
	dec	sp
	dec	sp
;	SRC/sys_timer.c:141: ET0 = 1;
	setb	_ET0
;	SRC/sys_timer.c:143: EX0 = 1;    //INT0 inteerupt enable
	setb	_EX0
;	SRC/sys_timer.c:148: PT2 = 1;        // Timer 2 high priority
	setb	_PT2
;	SRC/sys_timer.c:149: PT0 = 0;        // Timer 0 low priority
	clr	_PT0
;	SRC/sys_timer.c:150: TR2 = 1;        // Timer 2 start
	setb	_TR2
;	SRC/sys_timer.c:151: TH2 = 0xFB;     // Timer 2 high byte
	mov	_TH2,#0xFB
;	SRC/sys_timer.c:152: TL2 = 0xC2;     // Timer 2 low byte
	mov	_TL2,#0xC2
;	SRC/sys_timer.c:153: ET2 = 1;        // Timer 2 enable interrupts
	setb	_ET2
;	SRC/sys_timer.c:154: EA = 1;         // Enable global interrupts
	setb	_EA
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
