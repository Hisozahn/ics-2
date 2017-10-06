;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
; This file was generated Fri Oct 06 15:21:33 2017
;--------------------------------------------------------
	.module led
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WriteLED
	.globl _memcpy
	.globl _write_max
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
	.globl _brightness
	.globl _tick
	.globl _led
	.globl _leds
	.globl _T0_ISR
	.globl _SetBrightness
	.globl _SetBrightnesses
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_old_led:
	.ds 1
_tick::
	.ds 1
_brightness::
	.ds 8
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
;	SRC/led.c:35: static unsigned char old_led = 0;   // "Видеопамять" линейки светодиодов
	mov	_old_led,#0x00
;	SRC/led.c:117: unsigned char tick = 1;
	mov	_tick,#0x01
;	SRC/led.c:118: unsigned char brightness[LED_COUNT] = {0, 0, 0, 0, 0, 0, 0, 0};
	mov	_brightness,#0x00
	mov	(_brightness + 0x0001),#0x00
	mov	(_brightness + 0x0002),#0x00
	mov	(_brightness + 0x0003),#0x00
	mov	(_brightness + 0x0004),#0x00
	mov	(_brightness + 0x0005),#0x00
	mov	(_brightness + 0x0006),#0x00
	mov	(_brightness + 0x0007),#0x00
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
;Allocation info for local variables in function 'led'
;------------------------------------------------------------
;on                        Allocated to stack - _bp -3
;n                         Allocated to registers r7 
;c                         Allocated to registers r6 
;mask                      Allocated to registers r7 
;------------------------------------------------------------
;	SRC/led.c:53: void led( unsigned char n, unsigned char on )
;	-----------------------------------------
;	 function led
;	-----------------------------------------
_led:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	_bp,sp
;	SRC/led.c:58: if( n > 7 ) return;
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x07
	jnc	00102$
	sjmp	00106$
00102$:
;	SRC/led.c:60: c = old_led;
	mov	r6,_old_led
;	SRC/led.c:62: mask <<= n;
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00115$
00113$:
	add	a,acc
00115$:
	djnz	b,00113$
	mov	r7,a
;	SRC/led.c:64: if( on )
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jz	00104$
;	SRC/led.c:65: c |= mask;
	mov	a,r7
	orl	ar6,a
	sjmp	00105$
00104$:
;	SRC/led.c:67: c &= ~mask;         
	mov	a,r7
	cpl	a
	mov	r7,a
	anl	ar6,a
00105$:
;	SRC/led.c:69: write_max( SV, c );     
	push	ar6
	push	ar6
	mov	dptr,#0x0007
	lcall	_write_max
	dec	sp
	pop	ar6
;	SRC/led.c:71: old_led = c;
	mov	_old_led,r6
00106$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'leds'
;------------------------------------------------------------
;on                        Allocated to registers r7 
;------------------------------------------------------------
;	SRC/led.c:90: void leds( unsigned char on )
;	-----------------------------------------
;	 function leds
;	-----------------------------------------
_leds:
	mov	r7,dpl
;	SRC/led.c:92: write_max( SV, on );     
	push	ar7
	push	ar7
	mov	dptr,#0x0007
	lcall	_write_max
	dec	sp
	pop	ar7
;	SRC/led.c:94: old_led = on;
	mov	_old_led,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WriteLED'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;------------------------------------------------------------
;	SRC/led.c:104: void WriteLED(unsigned char value)
;	-----------------------------------------
;	 function WriteLED
;	-----------------------------------------
_WriteLED:
	mov	r7,dpl
;	SRC/led.c:107: write_max( 7, value );
	push	ar7
	mov	dptr,#0x0007
	lcall	_write_max
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'T0_ISR'
;------------------------------------------------------------
;i                         Allocated to registers r5 
;led                       Allocated to registers r7 
;mask                      Allocated to registers r6 
;------------------------------------------------------------
;	SRC/led.c:120: void T0_ISR( void ) __interrupt ( 1 )
;	-----------------------------------------
;	 function T0_ISR
;	-----------------------------------------
_T0_ISR:
	push	acc
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	psw
	mov	psw,#0x00
;	SRC/led.c:123: unsigned char led = 0;
	mov	r7,#0x00
;	SRC/led.c:124: unsigned char mask = 1;	
	mov	r6,#0x01
;	SRC/led.c:126: if (tick > 50) {
	mov	a,_tick
	add	a,#0xff - 0x32
	jnc	00114$
;	SRC/led.c:127: tick = 1;
	mov	_tick,#0x01
00114$:
	mov	r5,#0x00
00105$:
;	SRC/led.c:129: for (; i < LED_COUNT; i++) {		
	cjne	r5,#0x08,00121$
00121$:
	jnc	00108$
;	SRC/led.c:130: if (tick < brightness[i]/2) {			
	mov	a,r5
	add	a,#_brightness
	mov	r1,a
	mov	a,@r1
	clr	c
	rrc	a
	mov	r4,a
	clr	c
	mov	a,_tick
	subb	a,r4
	jnc	00104$
;	SRC/led.c:131: led += mask;
	mov	a,r6
	add	a,r7
	mov	r7,a
00104$:
;	SRC/led.c:133: mask <<= 1;
	mov	a,r6
	add	a,r6
	mov	r6,a
;	SRC/led.c:129: for (; i < LED_COUNT; i++) {		
	inc	r5
	sjmp	00105$
00108$:
;	SRC/led.c:135: tick++;
	inc	_tick
;	SRC/led.c:137: TH0 = 0xFF;
	mov	_TH0,#0xFF
;	SRC/led.c:138: TL0 = 0xF0;
	mov	_TL0,#0xF0
	pop	psw
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop ar0
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'SetBrightness'
;------------------------------------------------------------
;b                         Allocated to stack - _bp -3
;ledId                     Allocated to registers r7 
;------------------------------------------------------------
;	SRC/led.c:141: void SetBrightness(unsigned char ledId, unsigned char b) {
;	-----------------------------------------
;	 function SetBrightness
;	-----------------------------------------
_SetBrightness:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	SRC/led.c:142: if (b > 100) {
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,#0xff - 0x64
	jnc	00102$
;	SRC/led.c:143: return;
	sjmp	00105$
00102$:
;	SRC/led.c:146: if (ledId > LED_COUNT - 1) {
	mov	a,r7
	add	a,#0xff - 0x07
	jnc	00104$
;	SRC/led.c:147: return;
	sjmp	00105$
00104$:
;	SRC/led.c:150: brightness[ledId] = b;
	mov	a,r7
	add	a,#_brightness
	mov	r0,a
	mov	a,_bp
	add	a,#0xfd
	mov	r1,a
	mov	a,@r1
	mov	@r0,a
00105$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetBrightnesses'
;------------------------------------------------------------
;brigthness_v              Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	SRC/led.c:153: void SetBrightnesses(const unsigned char* brigthness_v) {
;	-----------------------------------------
;	 function SetBrightnesses
;	-----------------------------------------
_SetBrightnesses:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	SRC/led.c:154: ET0 = 0;
	clr	_ET0
;	SRC/led.c:155: memcpy(brightness, brigthness_v, LED_COUNT);
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_brightness
	mov	b,#0x40
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	SRC/led.c:156: ET0 = 1;
	setb	_ET0
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
