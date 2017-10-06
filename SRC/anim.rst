                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.2.0 #8008 (Jul  6 2012) (MINGW32)
                              4 ; This file was generated Fri Oct 06 13:33:45 2017
                              5 ;--------------------------------------------------------
                              6 	.module anim
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _SetSnake
                             13 	.globl _abs
                             14 	.globl _SetBrightnesses
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
   0016                      35 _anim_m_head_1_32:
   0016                      36 	.ds 1
   0017                      37 _anim_m_tail_1_32:
   0017                      38 	.ds 1
   0018                      39 _anim_m_direction_1_32:
   0018                      40 	.ds 1
                             41 ;--------------------------------------------------------
                             42 ; overlayable items in internal ram 
                             43 ;--------------------------------------------------------
                             44 ;--------------------------------------------------------
                             45 ; indirectly addressable internal ram data
                             46 ;--------------------------------------------------------
                             47 	.area ISEG    (DATA)
                             48 ;--------------------------------------------------------
                             49 ; absolute internal ram data
                             50 ;--------------------------------------------------------
                             51 	.area IABS    (ABS,DATA)
                             52 	.area IABS    (ABS,DATA)
                             53 ;--------------------------------------------------------
                             54 ; bit data
                             55 ;--------------------------------------------------------
                             56 	.area BSEG    (BIT)
                             57 ;--------------------------------------------------------
                             58 ; paged external ram data
                             59 ;--------------------------------------------------------
                             60 	.area PSEG    (PAG,XDATA)
                             61 ;--------------------------------------------------------
                             62 ; external ram data
                             63 ;--------------------------------------------------------
                             64 	.area XSEG    (XDATA)
                             65 ;--------------------------------------------------------
                             66 ; absolute external ram data
                             67 ;--------------------------------------------------------
                             68 	.area XABS    (ABS,XDATA)
                             69 ;--------------------------------------------------------
                             70 ; external initialized ram data
                             71 ;--------------------------------------------------------
                             72 	.area XISEG   (XDATA)
                             73 	.area HOME    (CODE)
                             74 	.area GSINIT0 (CODE)
                             75 	.area GSINIT1 (CODE)
                             76 	.area GSINIT2 (CODE)
                             77 	.area GSINIT3 (CODE)
                             78 	.area GSINIT4 (CODE)
                             79 	.area GSINIT5 (CODE)
                             80 	.area GSINIT  (CODE)
                             81 	.area GSFINAL (CODE)
                             82 	.area CSEG    (CODE)
                             83 ;--------------------------------------------------------
                             84 ; global & static initialisations
                             85 ;--------------------------------------------------------
                             86 	.area HOME    (CODE)
                             87 	.area GSINIT  (CODE)
                             88 	.area GSFINAL (CODE)
                             89 	.area GSINIT  (CODE)
                             90 ;------------------------------------------------------------
                             91 ;Allocation info for local variables in function 'anim_m'
                             92 ;------------------------------------------------------------
                             93 ;head                      Allocated with name '_anim_m_head_1_32'
                             94 ;tail                      Allocated with name '_anim_m_tail_1_32'
                             95 ;direction                 Allocated with name '_anim_m_direction_1_32'
                             96 ;------------------------------------------------------------
                             97 ;	SRC/anim.c:36: static char head = 5;
   2193 75 16 05             98 	mov	_anim_m_head_1_32,#0x05
                             99 ;	SRC/anim.c:37: static char tail = 0;
   2196 75 17 00            100 	mov	_anim_m_tail_1_32,#0x00
                            101 ;	SRC/anim.c:38: static char direction = RIGHT;
   2199 90 27 D5            102 	mov	dptr,#_anim_m_RIGHT_1_32
   219C E4                  103 	clr	a
   219D 93                  104 	movc	a,@a+dptr
   219E F5 18               105 	mov	_anim_m_direction_1_32,a
                            106 ;--------------------------------------------------------
                            107 ; Home
                            108 ;--------------------------------------------------------
                            109 	.area HOME    (CODE)
                            110 	.area HOME    (CODE)
                            111 ;--------------------------------------------------------
                            112 ; code
                            113 ;--------------------------------------------------------
                            114 	.area CSEG    (CODE)
                            115 ;------------------------------------------------------------
                            116 ;Allocation info for local variables in function 'SetSnake'
                            117 ;------------------------------------------------------------
                            118 ;tail                      Allocated to stack - _bp -3
                            119 ;head                      Allocated to registers r7 
                            120 ;delta_brightness          Allocated to stack - _bp +1
                            121 ;i                         Allocated to registers r6 
                            122 ;segment_index             Allocated to registers r2 
                            123 ;brigthness_v              Allocated to stack - _bp +2
                            124 ;------------------------------------------------------------
                            125 ;	SRC/anim.c:4: void SetSnake(char head, char tail) {
                            126 ;	-----------------------------------------
                            127 ;	 function SetSnake
                            128 ;	-----------------------------------------
   2475                     129 _SetSnake:
                    0007    130 	ar7 = 0x07
                    0006    131 	ar6 = 0x06
                    0005    132 	ar5 = 0x05
                    0004    133 	ar4 = 0x04
                    0003    134 	ar3 = 0x03
                    0002    135 	ar2 = 0x02
                    0001    136 	ar1 = 0x01
                    0000    137 	ar0 = 0x00
   2475 C0 19               138 	push	_bp
   2477 E5 81               139 	mov	a,sp
   2479 F5 19               140 	mov	_bp,a
   247B 24 09               141 	add	a,#0x09
   247D F5 81               142 	mov	sp,a
   247F AF 82               143 	mov	r7,dpl
                            144 ;	SRC/anim.c:6: char delta_brightness = 100 / ( abs(tail - head) + 1 );
   2481 E5 19               145 	mov	a,_bp
   2483 24 FD               146 	add	a,#0xfd
   2485 F8                  147 	mov	r0,a
   2486 86 05               148 	mov	ar5,@r0
   2488 E6                  149 	mov	a,@r0
   2489 33                  150 	rlc	a
   248A 95 E0               151 	subb	a,acc
   248C FE                  152 	mov	r6,a
   248D EF                  153 	mov	a,r7
   248E FB                  154 	mov	r3,a
   248F 33                  155 	rlc	a
   2490 95 E0               156 	subb	a,acc
   2492 FC                  157 	mov	r4,a
   2493 ED                  158 	mov	a,r5
   2494 C3                  159 	clr	c
   2495 9B                  160 	subb	a,r3
   2496 F5 82               161 	mov	dpl,a
   2498 EE                  162 	mov	a,r6
   2499 9C                  163 	subb	a,r4
   249A F5 83               164 	mov	dph,a
   249C C0 07               165 	push	ar7
   249E C0 04               166 	push	ar4
   24A0 C0 03               167 	push	ar3
   24A2 12 26 8D            168 	lcall	_abs
   24A5 E5 82               169 	mov	a,dpl
   24A7 85 83 F0            170 	mov	b,dph
   24AA 24 01               171 	add	a,#0x01
   24AC FD                  172 	mov	r5,a
   24AD E4                  173 	clr	a
   24AE 35 F0               174 	addc	a,b
   24B0 FE                  175 	mov	r6,a
   24B1 C0 05               176 	push	ar5
   24B3 C0 06               177 	push	ar6
   24B5 90 00 64            178 	mov	dptr,#0x0064
   24B8 12 27 49            179 	lcall	__divsint
   24BB AD 82               180 	mov	r5,dpl
   24BD AE 83               181 	mov	r6,dph
   24BF 15 81               182 	dec	sp
   24C1 15 81               183 	dec	sp
   24C3 D0 03               184 	pop	ar3
   24C5 D0 04               185 	pop	ar4
   24C7 D0 07               186 	pop	ar7
   24C9 A8 19               187 	mov	r0,_bp
   24CB 08                  188 	inc	r0
   24CC A6 05               189 	mov	@r0,ar5
                            190 ;	SRC/anim.c:9: unsigned char brigthness_v[LED_COUNT] = { 0 };
   24CE E5 19               191 	mov	a,_bp
   24D0 24 02               192 	add	a,#0x02
   24D2 F9                  193 	mov	r1,a
   24D3 77 00               194 	mov	@r1,#0x00
   24D5 E9                  195 	mov	a,r1
   24D6 04                  196 	inc	a
   24D7 F8                  197 	mov	r0,a
   24D8 76 00               198 	mov	@r0,#0x00
   24DA 74 02               199 	mov	a,#0x02
   24DC 29                  200 	add	a,r1
   24DD F8                  201 	mov	r0,a
   24DE 76 00               202 	mov	@r0,#0x00
   24E0 74 03               203 	mov	a,#0x03
   24E2 29                  204 	add	a,r1
   24E3 F8                  205 	mov	r0,a
   24E4 76 00               206 	mov	@r0,#0x00
   24E6 74 04               207 	mov	a,#0x04
   24E8 29                  208 	add	a,r1
   24E9 F8                  209 	mov	r0,a
   24EA 76 00               210 	mov	@r0,#0x00
   24EC 74 05               211 	mov	a,#0x05
   24EE 29                  212 	add	a,r1
   24EF F8                  213 	mov	r0,a
   24F0 76 00               214 	mov	@r0,#0x00
   24F2 74 06               215 	mov	a,#0x06
   24F4 29                  216 	add	a,r1
   24F5 F8                  217 	mov	r0,a
   24F6 76 00               218 	mov	@r0,#0x00
   24F8 74 07               219 	mov	a,#0x07
   24FA 29                  220 	add	a,r1
   24FB F8                  221 	mov	r0,a
   24FC 76 00               222 	mov	@r0,#0x00
                            223 ;	SRC/anim.c:11: if ( head < 0 || head > 7 || tail < 0 || tail > 7) {
   24FE EF                  224 	mov	a,r7
   24FF 20 E7 26            225 	jb	acc.7,00101$
   2502 C3                  226 	clr	c
   2503 74 87               227 	mov	a,#(0x07 ^ 0x80)
   2505 8F F0               228 	mov	b,r7
   2507 63 F0 80            229 	xrl	b,#0x80
   250A 95 F0               230 	subb	a,b
   250C 40 1A               231 	jc	00101$
   250E E5 19               232 	mov	a,_bp
   2510 24 FD               233 	add	a,#0xfd
   2512 F8                  234 	mov	r0,a
   2513 E6                  235 	mov	a,@r0
   2514 20 E7 11            236 	jb	acc.7,00101$
   2517 E5 19               237 	mov	a,_bp
   2519 24 FD               238 	add	a,#0xfd
   251B F8                  239 	mov	r0,a
   251C C3                  240 	clr	c
   251D 74 87               241 	mov	a,#(0x07 ^ 0x80)
   251F 86 F0               242 	mov	b,@r0
   2521 63 F0 80            243 	xrl	b,#0x80
   2524 95 F0               244 	subb	a,b
   2526 50 03               245 	jnc	00102$
   2528                     246 00101$:
                            247 ;	SRC/anim.c:12: return;
   2528 02 25 D0            248 	ljmp	00117$
   252B                     249 00102$:
                            250 ;	SRC/anim.c:15: if ( head <= tail ) {
   252B E5 19               251 	mov	a,_bp
   252D 24 FD               252 	add	a,#0xfd
   252F F8                  253 	mov	r0,a
   2530 C3                  254 	clr	c
   2531 E6                  255 	mov	a,@r0
   2532 64 80               256 	xrl	a,#0x80
   2534 8F F0               257 	mov	b,r7
   2536 63 F0 80            258 	xrl	b,#0x80
   2539 95 F0               259 	subb	a,b
   253B 40 33               260 	jc	00126$
                            261 ;	SRC/anim.c:16: for (i = head; i <= tail; i++) {
   253D 8F 06               262 	mov	ar6,r7
   253F                     263 00109$:
   253F E5 19               264 	mov	a,_bp
   2541 24 FD               265 	add	a,#0xfd
   2543 F8                  266 	mov	r0,a
   2544 C3                  267 	clr	c
   2545 E6                  268 	mov	a,@r0
   2546 64 80               269 	xrl	a,#0x80
   2548 8E F0               270 	mov	b,r6
   254A 63 F0 80            271 	xrl	b,#0x80
   254D 95 F0               272 	subb	a,b
   254F 40 70               273 	jc	00108$
                            274 ;	SRC/anim.c:17: segment_index = i - head;
   2551 EE                  275 	mov	a,r6
   2552 C3                  276 	clr	c
   2553 9F                  277 	subb	a,r7
   2554 FA                  278 	mov	r2,a
                            279 ;	SRC/anim.c:18: brigthness_v[i] = 100 - (segment_index * delta_brightness);
   2555 EE                  280 	mov	a,r6
   2556 29                  281 	add	a,r1
   2557 F8                  282 	mov	r0,a
   2558 C0 07               283 	push	ar7
   255A C0 00               284 	push	ar0
   255C A8 19               285 	mov	r0,_bp
   255E 08                  286 	inc	r0
   255F 86 F0               287 	mov	b,@r0
   2561 EA                  288 	mov	a,r2
   2562 A4                  289 	mul	ab
   2563 FF                  290 	mov	r7,a
   2564 D0 00               291 	pop	ar0
   2566 74 64               292 	mov	a,#0x64
   2568 C3                  293 	clr	c
   2569 9F                  294 	subb	a,r7
   256A F6                  295 	mov	@r0,a
                            296 ;	SRC/anim.c:16: for (i = head; i <= tail; i++) {
   256B 0E                  297 	inc	r6
   256C D0 07               298 	pop	ar7
                            299 ;	SRC/anim.c:22: for (i = head; i >= tail ; i--) {
   256E 80 CF               300 	sjmp	00109$
   2570                     301 00126$:
   2570                     302 00113$:
   2570 E5 19               303 	mov	a,_bp
   2572 24 FD               304 	add	a,#0xfd
   2574 F8                  305 	mov	r0,a
   2575 C3                  306 	clr	c
   2576 EF                  307 	mov	a,r7
   2577 64 80               308 	xrl	a,#0x80
   2579 86 F0               309 	mov	b,@r0
   257B 63 F0 80            310 	xrl	b,#0x80
   257E 95 F0               311 	subb	a,b
   2580 40 3F               312 	jc	00108$
                            313 ;	SRC/anim.c:23: segment_index = abs(i - head);
   2582 EF                  314 	mov	a,r7
   2583 FD                  315 	mov	r5,a
   2584 33                  316 	rlc	a
   2585 95 E0               317 	subb	a,acc
   2587 FE                  318 	mov	r6,a
   2588 ED                  319 	mov	a,r5
   2589 C3                  320 	clr	c
   258A 9B                  321 	subb	a,r3
   258B F5 82               322 	mov	dpl,a
   258D EE                  323 	mov	a,r6
   258E 9C                  324 	subb	a,r4
   258F F5 83               325 	mov	dph,a
   2591 C0 07               326 	push	ar7
   2593 C0 04               327 	push	ar4
   2595 C0 03               328 	push	ar3
   2597 C0 01               329 	push	ar1
   2599 12 26 8D            330 	lcall	_abs
   259C AD 82               331 	mov	r5,dpl
   259E AE 83               332 	mov	r6,dph
   25A0 D0 01               333 	pop	ar1
   25A2 D0 03               334 	pop	ar3
   25A4 D0 04               335 	pop	ar4
   25A6 D0 07               336 	pop	ar7
   25A8 8D 02               337 	mov	ar2,r5
                            338 ;	SRC/anim.c:24: brigthness_v[i] = 100 - (segment_index * delta_brightness);
   25AA EF                  339 	mov	a,r7
   25AB 29                  340 	add	a,r1
   25AC F8                  341 	mov	r0,a
   25AD C0 00               342 	push	ar0
   25AF A8 19               343 	mov	r0,_bp
   25B1 08                  344 	inc	r0
   25B2 86 F0               345 	mov	b,@r0
   25B4 EA                  346 	mov	a,r2
   25B5 A4                  347 	mul	ab
   25B6 FA                  348 	mov	r2,a
   25B7 D0 00               349 	pop	ar0
   25B9 74 64               350 	mov	a,#0x64
   25BB C3                  351 	clr	c
   25BC 9A                  352 	subb	a,r2
   25BD F6                  353 	mov	@r0,a
                            354 ;	SRC/anim.c:22: for (i = head; i >= tail ; i--) {
   25BE 1F                  355 	dec	r7
   25BF 80 AF               356 	sjmp	00113$
   25C1                     357 00108$:
                            358 ;	SRC/anim.c:28: SetBrightnesses(brigthness_v);
   25C1 89 07               359 	mov	ar7,r1
   25C3 7E 00               360 	mov	r6,#0x00
   25C5 7D 40               361 	mov	r5,#0x40
   25C7 8F 82               362 	mov	dpl,r7
   25C9 8E 83               363 	mov	dph,r6
   25CB 8D F0               364 	mov	b,r5
   25CD 12 24 2C            365 	lcall	_SetBrightnesses
   25D0                     366 00117$:
   25D0 85 19 81            367 	mov	sp,_bp
   25D3 D0 19               368 	pop	_bp
   25D5 22                  369 	ret
                            370 ;------------------------------------------------------------
                            371 ;Allocation info for local variables in function 'anim_m'
                            372 ;------------------------------------------------------------
                            373 ;head                      Allocated with name '_anim_m_head_1_32'
                            374 ;tail                      Allocated with name '_anim_m_tail_1_32'
                            375 ;direction                 Allocated with name '_anim_m_direction_1_32'
                            376 ;------------------------------------------------------------
                            377 ;	SRC/anim.c:33: void anim_m() {
                            378 ;	-----------------------------------------
                            379 ;	 function anim_m
                            380 ;	-----------------------------------------
   25D6                     381 _anim_m:
                            382 ;	SRC/anim.c:39: if (direction == RIGHT && head < 5) {
   25D6 90 27 D5            383 	mov	dptr,#_anim_m_RIGHT_1_32
   25D9 E4                  384 	clr	a
   25DA 93                  385 	movc	a,@a+dptr
   25DB FF                  386 	mov	r7,a
   25DC B5 18 04            387 	cjne	a,_anim_m_direction_1_32,00152$
   25DF 74 01               388 	mov	a,#0x01
   25E1 80 01               389 	sjmp	00153$
   25E3                     390 00152$:
   25E3 E4                  391 	clr	a
   25E4                     392 00153$:
   25E4 FE                  393 	mov	r6,a
   25E5 60 0E               394 	jz	00123$
   25E7 C3                  395 	clr	c
   25E8 E5 16               396 	mov	a,_anim_m_head_1_32
   25EA 64 80               397 	xrl	a,#0x80
   25EC 94 85               398 	subb	a,#0x85
   25EE 50 05               399 	jnc	00123$
                            400 ;	SRC/anim.c:40: ++head;
   25F0 05 16               401 	inc	_anim_m_head_1_32
   25F2 02 26 82            402 	ljmp	00124$
   25F5                     403 00123$:
                            404 ;	SRC/anim.c:42: else if (direction == RIGHT && head >= 5) {
   25F5 EE                  405 	mov	a,r6
   25F6 60 2F               406 	jz	00119$
   25F8 C3                  407 	clr	c
   25F9 E5 16               408 	mov	a,_anim_m_head_1_32
   25FB 64 80               409 	xrl	a,#0x80
   25FD 94 85               410 	subb	a,#0x85
                            411 ;	SRC/anim.c:43: if (tail < LED_COUNT - 1) {
   25FF 40 26               412 	jc	00119$
   2601 E5 17               413 	mov	a,_anim_m_tail_1_32
   2603 64 80               414 	xrl	a,#0x80
   2605 94 87               415 	subb	a,#0x87
   2607 50 0F               416 	jnc	00104$
                            417 ;	SRC/anim.c:44: ++tail;
   2609 05 17               418 	inc	_anim_m_tail_1_32
                            419 ;	SRC/anim.c:45: if (head < LED_COUNT - 1) {
   260B C3                  420 	clr	c
   260C E5 16               421 	mov	a,_anim_m_head_1_32
   260E 64 80               422 	xrl	a,#0x80
   2610 94 87               423 	subb	a,#0x87
   2612 50 6E               424 	jnc	00124$
                            425 ;	SRC/anim.c:46: ++head;
   2614 05 16               426 	inc	_anim_m_head_1_32
   2616 80 6A               427 	sjmp	00124$
   2618                     428 00104$:
                            429 ;	SRC/anim.c:50: tail = LED_COUNT - 1;
   2618 75 17 07            430 	mov	_anim_m_tail_1_32,#0x07
                            431 ;	SRC/anim.c:51: head = LED_COUNT - 2;
   261B 75 16 06            432 	mov	_anim_m_head_1_32,#0x06
                            433 ;	SRC/anim.c:52: direction = LEFT;
   261E 90 27 D4            434 	mov	dptr,#_anim_m_LEFT_1_32
   2621 E4                  435 	clr	a
   2622 93                  436 	movc	a,@a+dptr
   2623 F5 18               437 	mov	_anim_m_direction_1_32,a
   2625 80 5B               438 	sjmp	00124$
   2627                     439 00119$:
                            440 ;	SRC/anim.c:55: else if (direction == LEFT && head > 2) {
   2627 90 27 D4            441 	mov	dptr,#_anim_m_LEFT_1_32
   262A E4                  442 	clr	a
   262B 93                  443 	movc	a,@a+dptr
   262C FE                  444 	mov	r6,a
   262D B5 18 04            445 	cjne	a,_anim_m_direction_1_32,00160$
   2630 74 01               446 	mov	a,#0x01
   2632 80 01               447 	sjmp	00161$
   2634                     448 00160$:
   2634 E4                  449 	clr	a
   2635                     450 00161$:
   2635 FE                  451 	mov	r6,a
   2636 60 11               452 	jz	00115$
   2638 C3                  453 	clr	c
   2639 74 82               454 	mov	a,#(0x02 ^ 0x80)
   263B 85 16 F0            455 	mov	b,_anim_m_head_1_32
   263E 63 F0 80            456 	xrl	b,#0x80
   2641 95 F0               457 	subb	a,b
   2643 50 04               458 	jnc	00115$
                            459 ;	SRC/anim.c:56: --head;
   2645 15 16               460 	dec	_anim_m_head_1_32
   2647 80 39               461 	sjmp	00124$
   2649                     462 00115$:
                            463 ;	SRC/anim.c:58: else if (direction == LEFT && head <= 2) {
   2649 EE                  464 	mov	a,r6
   264A 60 36               465 	jz	00124$
   264C C3                  466 	clr	c
   264D 74 82               467 	mov	a,#(0x02 ^ 0x80)
   264F 85 16 F0            468 	mov	b,_anim_m_head_1_32
   2652 63 F0 80            469 	xrl	b,#0x80
   2655 95 F0               470 	subb	a,b
                            471 ;	SRC/anim.c:59: if (tail > 0) {
   2657 40 29               472 	jc	00124$
   2659 E4                  473 	clr	a
   265A 64 80               474 	xrl	a,#0x80
   265C 85 17 F0            475 	mov	b,_anim_m_tail_1_32
   265F 63 F0 80            476 	xrl	b,#0x80
   2662 95 F0               477 	subb	a,b
   2664 50 14               478 	jnc	00109$
                            479 ;	SRC/anim.c:60: --tail;
   2666 15 17               480 	dec	_anim_m_tail_1_32
                            481 ;	SRC/anim.c:61: if (head > 0) {
   2668 C3                  482 	clr	c
   2669 E4                  483 	clr	a
   266A 64 80               484 	xrl	a,#0x80
   266C 85 16 F0            485 	mov	b,_anim_m_head_1_32
   266F 63 F0 80            486 	xrl	b,#0x80
   2672 95 F0               487 	subb	a,b
   2674 50 0C               488 	jnc	00124$
                            489 ;	SRC/anim.c:62: --head;
   2676 15 16               490 	dec	_anim_m_head_1_32
   2678 80 08               491 	sjmp	00124$
   267A                     492 00109$:
                            493 ;	SRC/anim.c:66: tail = 0;
   267A 75 17 00            494 	mov	_anim_m_tail_1_32,#0x00
                            495 ;	SRC/anim.c:67: head = 1;
   267D 75 16 01            496 	mov	_anim_m_head_1_32,#0x01
                            497 ;	SRC/anim.c:68: direction = RIGHT;
   2680 8F 18               498 	mov	_anim_m_direction_1_32,r7
   2682                     499 00124$:
                            500 ;	SRC/anim.c:71: SetSnake(head, tail);
   2682 C0 17               501 	push	_anim_m_tail_1_32
   2684 85 16 82            502 	mov	dpl,_anim_m_head_1_32
   2687 12 24 75            503 	lcall	_SetSnake
   268A 15 81               504 	dec	sp
   268C 22                  505 	ret
                            506 	.area CSEG    (CODE)
                            507 	.area CONST   (CODE)
   27D4                     508 _anim_m_LEFT_1_32:
   27D4 00                  509 	.db #0x00	;  0
   27D5                     510 _anim_m_RIGHT_1_32:
   27D5 01                  511 	.db #0x01	;  1
                            512 	.area XINIT   (CODE)
                            513 	.area CABS    (ABS,CODE)
