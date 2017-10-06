;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
; This file was generated Fri Oct 06 13:33:45 2017
;--------------------------------------------------------
	.module anim
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SetSnake
	.globl _abs
	.globl _SetBrightnesses
	.globl _anim_m
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_anim_m_head_1_32:
	.ds 1
_anim_m_tail_1_32:
	.ds 1
_anim_m_direction_1_32:
	.ds 1
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
;------------------------------------------------------------
;Allocation info for local variables in function 'anim_m'
;------------------------------------------------------------
;head                      Allocated with name '_anim_m_head_1_32'
;tail                      Allocated with name '_anim_m_tail_1_32'
;direction                 Allocated with name '_anim_m_direction_1_32'
;------------------------------------------------------------
;	SRC/anim.c:36: static char head = 5;
	mov	_anim_m_head_1_32,#0x05
;	SRC/anim.c:37: static char tail = 0;
	mov	_anim_m_tail_1_32,#0x00
;	SRC/anim.c:38: static char direction = RIGHT;
	mov	dptr,#_anim_m_RIGHT_1_32
	clr	a
	movc	a,@a+dptr
	mov	_anim_m_direction_1_32,a
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
;Allocation info for local variables in function 'SetSnake'
;------------------------------------------------------------
;tail                      Allocated to stack - _bp -3
;head                      Allocated to registers r7 
;delta_brightness          Allocated to stack - _bp +1
;i                         Allocated to registers r6 
;segment_index             Allocated to registers r2 
;brigthness_v              Allocated to stack - _bp +2
;------------------------------------------------------------
;	SRC/anim.c:4: void SetSnake(char head, char tail) {
;	-----------------------------------------
;	 function SetSnake
;	-----------------------------------------
_SetSnake:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x09
	mov	sp,a
	mov	r7,dpl
;	SRC/anim.c:6: char delta_brightness = 100 / ( abs(tail - head) + 1 );
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar5,@r0
	mov	a,@r0
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	clr	c
	subb	a,r3
	mov	dpl,a
	mov	a,r6
	subb	a,r4
	mov	dph,a
	push	ar7
	push	ar4
	push	ar3
	lcall	_abs
	mov	a,dpl
	mov	b,dph
	add	a,#0x01
	mov	r5,a
	clr	a
	addc	a,b
	mov	r6,a
	push	ar5
	push	ar6
	mov	dptr,#0x0064
	lcall	__divsint
	mov	r5,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar3
	pop	ar4
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
;	SRC/anim.c:9: unsigned char brigthness_v[LED_COUNT] = { 0 };
	mov	a,_bp
	add	a,#0x02
	mov	r1,a
	mov	@r1,#0x00
	mov	a,r1
	inc	a
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x02
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x03
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x04
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x05
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x06
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
	mov	a,#0x07
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
;	SRC/anim.c:11: if ( head < 0 || head > 7 || tail < 0 || tail > 7) {
	mov	a,r7
	jb	acc.7,00101$
	clr	c
	mov	a,#(0x07 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00101$
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jb	acc.7,00101$
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,#(0x07 ^ 0x80)
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
00101$:
;	SRC/anim.c:12: return;
	ljmp	00117$
00102$:
;	SRC/anim.c:15: if ( head <= tail ) {
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00126$
;	SRC/anim.c:16: for (i = head; i <= tail; i++) {
	mov	ar6,r7
00109$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jc	00108$
;	SRC/anim.c:17: segment_index = i - head;
	mov	a,r6
	clr	c
	subb	a,r7
	mov	r2,a
;	SRC/anim.c:18: brigthness_v[i] = 100 - (segment_index * delta_brightness);
	mov	a,r6
	add	a,r1
	mov	r0,a
	push	ar7
	push	ar0
	mov	r0,_bp
	inc	r0
	mov	b,@r0
	mov	a,r2
	mul	ab
	mov	r7,a
	pop	ar0
	mov	a,#0x64
	clr	c
	subb	a,r7
	mov	@r0,a
;	SRC/anim.c:16: for (i = head; i <= tail; i++) {
	inc	r6
	pop	ar7
;	SRC/anim.c:22: for (i = head; i >= tail ; i--) {
	sjmp	00109$
00126$:
00113$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,r7
	xrl	a,#0x80
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00108$
;	SRC/anim.c:23: segment_index = abs(i - head);
	mov	a,r7
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r5
	clr	c
	subb	a,r3
	mov	dpl,a
	mov	a,r6
	subb	a,r4
	mov	dph,a
	push	ar7
	push	ar4
	push	ar3
	push	ar1
	lcall	_abs
	mov	r5,dpl
	mov	r6,dph
	pop	ar1
	pop	ar3
	pop	ar4
	pop	ar7
	mov	ar2,r5
;	SRC/anim.c:24: brigthness_v[i] = 100 - (segment_index * delta_brightness);
	mov	a,r7
	add	a,r1
	mov	r0,a
	push	ar0
	mov	r0,_bp
	inc	r0
	mov	b,@r0
	mov	a,r2
	mul	ab
	mov	r2,a
	pop	ar0
	mov	a,#0x64
	clr	c
	subb	a,r2
	mov	@r0,a
;	SRC/anim.c:22: for (i = head; i >= tail ; i--) {
	dec	r7
	sjmp	00113$
00108$:
;	SRC/anim.c:28: SetBrightnesses(brigthness_v);
	mov	ar7,r1
	mov	r6,#0x00
	mov	r5,#0x40
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_SetBrightnesses
00117$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'anim_m'
;------------------------------------------------------------
;head                      Allocated with name '_anim_m_head_1_32'
;tail                      Allocated with name '_anim_m_tail_1_32'
;direction                 Allocated with name '_anim_m_direction_1_32'
;------------------------------------------------------------
;	SRC/anim.c:33: void anim_m() {
;	-----------------------------------------
;	 function anim_m
;	-----------------------------------------
_anim_m:
;	SRC/anim.c:39: if (direction == RIGHT && head < 5) {
	mov	dptr,#_anim_m_RIGHT_1_32
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	a,_anim_m_direction_1_32,00152$
	mov	a,#0x01
	sjmp	00153$
00152$:
	clr	a
00153$:
	mov	r6,a
	jz	00123$
	clr	c
	mov	a,_anim_m_head_1_32
	xrl	a,#0x80
	subb	a,#0x85
	jnc	00123$
;	SRC/anim.c:40: ++head;
	inc	_anim_m_head_1_32
	ljmp	00124$
00123$:
;	SRC/anim.c:42: else if (direction == RIGHT && head >= 5) {
	mov	a,r6
	jz	00119$
	clr	c
	mov	a,_anim_m_head_1_32
	xrl	a,#0x80
	subb	a,#0x85
;	SRC/anim.c:43: if (tail < LED_COUNT - 1) {
	jc	00119$
	mov	a,_anim_m_tail_1_32
	xrl	a,#0x80
	subb	a,#0x87
	jnc	00104$
;	SRC/anim.c:44: ++tail;
	inc	_anim_m_tail_1_32
;	SRC/anim.c:45: if (head < LED_COUNT - 1) {
	clr	c
	mov	a,_anim_m_head_1_32
	xrl	a,#0x80
	subb	a,#0x87
	jnc	00124$
;	SRC/anim.c:46: ++head;
	inc	_anim_m_head_1_32
	sjmp	00124$
00104$:
;	SRC/anim.c:50: tail = LED_COUNT - 1;
	mov	_anim_m_tail_1_32,#0x07
;	SRC/anim.c:51: head = LED_COUNT - 2;
	mov	_anim_m_head_1_32,#0x06
;	SRC/anim.c:52: direction = LEFT;
	mov	dptr,#_anim_m_LEFT_1_32
	clr	a
	movc	a,@a+dptr
	mov	_anim_m_direction_1_32,a
	sjmp	00124$
00119$:
;	SRC/anim.c:55: else if (direction == LEFT && head > 2) {
	mov	dptr,#_anim_m_LEFT_1_32
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	cjne	a,_anim_m_direction_1_32,00160$
	mov	a,#0x01
	sjmp	00161$
00160$:
	clr	a
00161$:
	mov	r6,a
	jz	00115$
	clr	c
	mov	a,#(0x02 ^ 0x80)
	mov	b,_anim_m_head_1_32
	xrl	b,#0x80
	subb	a,b
	jnc	00115$
;	SRC/anim.c:56: --head;
	dec	_anim_m_head_1_32
	sjmp	00124$
00115$:
;	SRC/anim.c:58: else if (direction == LEFT && head <= 2) {
	mov	a,r6
	jz	00124$
	clr	c
	mov	a,#(0x02 ^ 0x80)
	mov	b,_anim_m_head_1_32
	xrl	b,#0x80
	subb	a,b
;	SRC/anim.c:59: if (tail > 0) {
	jc	00124$
	clr	a
	xrl	a,#0x80
	mov	b,_anim_m_tail_1_32
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	SRC/anim.c:60: --tail;
	dec	_anim_m_tail_1_32
;	SRC/anim.c:61: if (head > 0) {
	clr	c
	clr	a
	xrl	a,#0x80
	mov	b,_anim_m_head_1_32
	xrl	b,#0x80
	subb	a,b
	jnc	00124$
;	SRC/anim.c:62: --head;
	dec	_anim_m_head_1_32
	sjmp	00124$
00109$:
;	SRC/anim.c:66: tail = 0;
	mov	_anim_m_tail_1_32,#0x00
;	SRC/anim.c:67: head = 1;
	mov	_anim_m_head_1_32,#0x01
;	SRC/anim.c:68: direction = RIGHT;
	mov	_anim_m_direction_1_32,r7
00124$:
;	SRC/anim.c:71: SetSnake(head, tail);
	push	_anim_m_tail_1_32
	mov	dpl,_anim_m_head_1_32
	lcall	_SetSnake
	dec	sp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_anim_m_LEFT_1_32:
	.db #0x00	;  0
_anim_m_RIGHT_1_32:
	.db #0x01	;  1
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
