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
   2199 90 28 0E            102 	mov	dptr,#_anim_m_RIGHT_1_32
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
   24AE                     129 _SetSnake:
                    0007    130 	ar7 = 0x07
                    0006    131 	ar6 = 0x06
                    0005    132 	ar5 = 0x05
                    0004    133 	ar4 = 0x04
                    0003    134 	ar3 = 0x03
                    0002    135 	ar2 = 0x02
                    0001    136 	ar1 = 0x01
                    0000    137 	ar0 = 0x00
   24AE C0 19               138 	push	_bp
   24B0 E5 81               139 	mov	a,sp
   24B2 F5 19               140 	mov	_bp,a
   24B4 24 09               141 	add	a,#0x09
   24B6 F5 81               142 	mov	sp,a
   24B8 AF 82               143 	mov	r7,dpl
                            144 ;	SRC/anim.c:6: char delta_brightness = 100 / ( abs(tail - head) + 1 );
   24BA E5 19               145 	mov	a,_bp
   24BC 24 FD               146 	add	a,#0xfd
   24BE F8                  147 	mov	r0,a
   24BF 86 05               148 	mov	ar5,@r0
   24C1 E6                  149 	mov	a,@r0
   24C2 33                  150 	rlc	a
   24C3 95 E0               151 	subb	a,acc
   24C5 FE                  152 	mov	r6,a
   24C6 EF                  153 	mov	a,r7
   24C7 FB                  154 	mov	r3,a
   24C8 33                  155 	rlc	a
   24C9 95 E0               156 	subb	a,acc
   24CB FC                  157 	mov	r4,a
   24CC ED                  158 	mov	a,r5
   24CD C3                  159 	clr	c
   24CE 9B                  160 	subb	a,r3
   24CF F5 82               161 	mov	dpl,a
   24D1 EE                  162 	mov	a,r6
   24D2 9C                  163 	subb	a,r4
   24D3 F5 83               164 	mov	dph,a
   24D5 C0 07               165 	push	ar7
   24D7 C0 04               166 	push	ar4
   24D9 C0 03               167 	push	ar3
   24DB 12 26 C6            168 	lcall	_abs
   24DE E5 82               169 	mov	a,dpl
   24E0 85 83 F0            170 	mov	b,dph
   24E3 24 01               171 	add	a,#0x01
   24E5 FD                  172 	mov	r5,a
   24E6 E4                  173 	clr	a
   24E7 35 F0               174 	addc	a,b
   24E9 FE                  175 	mov	r6,a
   24EA C0 05               176 	push	ar5
   24EC C0 06               177 	push	ar6
   24EE 90 00 64            178 	mov	dptr,#0x0064
   24F1 12 27 82            179 	lcall	__divsint
   24F4 AD 82               180 	mov	r5,dpl
   24F6 AE 83               181 	mov	r6,dph
   24F8 15 81               182 	dec	sp
   24FA 15 81               183 	dec	sp
   24FC D0 03               184 	pop	ar3
   24FE D0 04               185 	pop	ar4
   2500 D0 07               186 	pop	ar7
   2502 A8 19               187 	mov	r0,_bp
   2504 08                  188 	inc	r0
   2505 A6 05               189 	mov	@r0,ar5
                            190 ;	SRC/anim.c:9: unsigned char brigthness_v[LED_COUNT] = { 0 };
   2507 E5 19               191 	mov	a,_bp
   2509 24 02               192 	add	a,#0x02
   250B F9                  193 	mov	r1,a
   250C 77 00               194 	mov	@r1,#0x00
   250E E9                  195 	mov	a,r1
   250F 04                  196 	inc	a
   2510 F8                  197 	mov	r0,a
   2511 76 00               198 	mov	@r0,#0x00
   2513 74 02               199 	mov	a,#0x02
   2515 29                  200 	add	a,r1
   2516 F8                  201 	mov	r0,a
   2517 76 00               202 	mov	@r0,#0x00
   2519 74 03               203 	mov	a,#0x03
   251B 29                  204 	add	a,r1
   251C F8                  205 	mov	r0,a
   251D 76 00               206 	mov	@r0,#0x00
   251F 74 04               207 	mov	a,#0x04
   2521 29                  208 	add	a,r1
   2522 F8                  209 	mov	r0,a
   2523 76 00               210 	mov	@r0,#0x00
   2525 74 05               211 	mov	a,#0x05
   2527 29                  212 	add	a,r1
   2528 F8                  213 	mov	r0,a
   2529 76 00               214 	mov	@r0,#0x00
   252B 74 06               215 	mov	a,#0x06
   252D 29                  216 	add	a,r1
   252E F8                  217 	mov	r0,a
   252F 76 00               218 	mov	@r0,#0x00
   2531 74 07               219 	mov	a,#0x07
   2533 29                  220 	add	a,r1
   2534 F8                  221 	mov	r0,a
   2535 76 00               222 	mov	@r0,#0x00
                            223 ;	SRC/anim.c:11: if ( head < 0 || head > 7 || tail < 0 || tail > 7) {
   2537 EF                  224 	mov	a,r7
   2538 20 E7 26            225 	jb	acc.7,00101$
   253B C3                  226 	clr	c
   253C 74 87               227 	mov	a,#(0x07 ^ 0x80)
   253E 8F F0               228 	mov	b,r7
   2540 63 F0 80            229 	xrl	b,#0x80
   2543 95 F0               230 	subb	a,b
   2545 40 1A               231 	jc	00101$
   2547 E5 19               232 	mov	a,_bp
   2549 24 FD               233 	add	a,#0xfd
   254B F8                  234 	mov	r0,a
   254C E6                  235 	mov	a,@r0
   254D 20 E7 11            236 	jb	acc.7,00101$
   2550 E5 19               237 	mov	a,_bp
   2552 24 FD               238 	add	a,#0xfd
   2554 F8                  239 	mov	r0,a
   2555 C3                  240 	clr	c
   2556 74 87               241 	mov	a,#(0x07 ^ 0x80)
   2558 86 F0               242 	mov	b,@r0
   255A 63 F0 80            243 	xrl	b,#0x80
   255D 95 F0               244 	subb	a,b
   255F 50 03               245 	jnc	00102$
   2561                     246 00101$:
                            247 ;	SRC/anim.c:12: return;
   2561 02 26 09            248 	ljmp	00117$
   2564                     249 00102$:
                            250 ;	SRC/anim.c:15: if ( head <= tail ) {
   2564 E5 19               251 	mov	a,_bp
   2566 24 FD               252 	add	a,#0xfd
   2568 F8                  253 	mov	r0,a
   2569 C3                  254 	clr	c
   256A E6                  255 	mov	a,@r0
   256B 64 80               256 	xrl	a,#0x80
   256D 8F F0               257 	mov	b,r7
   256F 63 F0 80            258 	xrl	b,#0x80
   2572 95 F0               259 	subb	a,b
   2574 40 33               260 	jc	00126$
                            261 ;	SRC/anim.c:16: for (i = head; i <= tail; i++) {
   2576 8F 06               262 	mov	ar6,r7
   2578                     263 00109$:
   2578 E5 19               264 	mov	a,_bp
   257A 24 FD               265 	add	a,#0xfd
   257C F8                  266 	mov	r0,a
   257D C3                  267 	clr	c
   257E E6                  268 	mov	a,@r0
   257F 64 80               269 	xrl	a,#0x80
   2581 8E F0               270 	mov	b,r6
   2583 63 F0 80            271 	xrl	b,#0x80
   2586 95 F0               272 	subb	a,b
   2588 40 70               273 	jc	00108$
                            274 ;	SRC/anim.c:17: segment_index = i - head;
   258A EE                  275 	mov	a,r6
   258B C3                  276 	clr	c
   258C 9F                  277 	subb	a,r7
   258D FA                  278 	mov	r2,a
                            279 ;	SRC/anim.c:18: brigthness_v[i] = 100 - (segment_index * delta_brightness);
   258E EE                  280 	mov	a,r6
   258F 29                  281 	add	a,r1
   2590 F8                  282 	mov	r0,a
   2591 C0 07               283 	push	ar7
   2593 C0 00               284 	push	ar0
   2595 A8 19               285 	mov	r0,_bp
   2597 08                  286 	inc	r0
   2598 86 F0               287 	mov	b,@r0
   259A EA                  288 	mov	a,r2
   259B A4                  289 	mul	ab
   259C FF                  290 	mov	r7,a
   259D D0 00               291 	pop	ar0
   259F 74 64               292 	mov	a,#0x64
   25A1 C3                  293 	clr	c
   25A2 9F                  294 	subb	a,r7
   25A3 F6                  295 	mov	@r0,a
                            296 ;	SRC/anim.c:16: for (i = head; i <= tail; i++) {
   25A4 0E                  297 	inc	r6
   25A5 D0 07               298 	pop	ar7
                            299 ;	SRC/anim.c:22: for (i = head; i >= tail ; i--) {
   25A7 80 CF               300 	sjmp	00109$
   25A9                     301 00126$:
   25A9                     302 00113$:
   25A9 E5 19               303 	mov	a,_bp
   25AB 24 FD               304 	add	a,#0xfd
   25AD F8                  305 	mov	r0,a
   25AE C3                  306 	clr	c
   25AF EF                  307 	mov	a,r7
   25B0 64 80               308 	xrl	a,#0x80
   25B2 86 F0               309 	mov	b,@r0
   25B4 63 F0 80            310 	xrl	b,#0x80
   25B7 95 F0               311 	subb	a,b
   25B9 40 3F               312 	jc	00108$
                            313 ;	SRC/anim.c:23: segment_index = abs(i - head);
   25BB EF                  314 	mov	a,r7
   25BC FD                  315 	mov	r5,a
   25BD 33                  316 	rlc	a
   25BE 95 E0               317 	subb	a,acc
   25C0 FE                  318 	mov	r6,a
   25C1 ED                  319 	mov	a,r5
   25C2 C3                  320 	clr	c
   25C3 9B                  321 	subb	a,r3
   25C4 F5 82               322 	mov	dpl,a
   25C6 EE                  323 	mov	a,r6
   25C7 9C                  324 	subb	a,r4
   25C8 F5 83               325 	mov	dph,a
   25CA C0 07               326 	push	ar7
   25CC C0 04               327 	push	ar4
   25CE C0 03               328 	push	ar3
   25D0 C0 01               329 	push	ar1
   25D2 12 26 C6            330 	lcall	_abs
   25D5 AD 82               331 	mov	r5,dpl
   25D7 AE 83               332 	mov	r6,dph
   25D9 D0 01               333 	pop	ar1
   25DB D0 03               334 	pop	ar3
   25DD D0 04               335 	pop	ar4
   25DF D0 07               336 	pop	ar7
   25E1 8D 02               337 	mov	ar2,r5
                            338 ;	SRC/anim.c:24: brigthness_v[i] = 100 - (segment_index * delta_brightness);
   25E3 EF                  339 	mov	a,r7
   25E4 29                  340 	add	a,r1
   25E5 F8                  341 	mov	r0,a
   25E6 C0 00               342 	push	ar0
   25E8 A8 19               343 	mov	r0,_bp
   25EA 08                  344 	inc	r0
   25EB 86 F0               345 	mov	b,@r0
   25ED EA                  346 	mov	a,r2
   25EE A4                  347 	mul	ab
   25EF FA                  348 	mov	r2,a
   25F0 D0 00               349 	pop	ar0
   25F2 74 64               350 	mov	a,#0x64
   25F4 C3                  351 	clr	c
   25F5 9A                  352 	subb	a,r2
   25F6 F6                  353 	mov	@r0,a
                            354 ;	SRC/anim.c:22: for (i = head; i >= tail ; i--) {
   25F7 1F                  355 	dec	r7
   25F8 80 AF               356 	sjmp	00113$
   25FA                     357 00108$:
                            358 ;	SRC/anim.c:28: SetBrightnesses(brigthness_v);
   25FA 89 07               359 	mov	ar7,r1
   25FC 7E 00               360 	mov	r6,#0x00
   25FE 7D 40               361 	mov	r5,#0x40
   2600 8F 82               362 	mov	dpl,r7
   2602 8E 83               363 	mov	dph,r6
   2604 8D F0               364 	mov	b,r5
   2606 12 24 59            365 	lcall	_SetBrightnesses
   2609                     366 00117$:
   2609 85 19 81            367 	mov	sp,_bp
   260C D0 19               368 	pop	_bp
   260E 22                  369 	ret
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
   260F                     381 _anim_m:
                            382 ;	SRC/anim.c:39: if (direction == RIGHT && head < 5) {
   260F 90 28 0E            383 	mov	dptr,#_anim_m_RIGHT_1_32
   2612 E4                  384 	clr	a
   2613 93                  385 	movc	a,@a+dptr
   2614 FF                  386 	mov	r7,a
   2615 B5 18 04            387 	cjne	a,_anim_m_direction_1_32,00152$
   2618 74 01               388 	mov	a,#0x01
   261A 80 01               389 	sjmp	00153$
   261C                     390 00152$:
   261C E4                  391 	clr	a
   261D                     392 00153$:
   261D FE                  393 	mov	r6,a
   261E 60 0E               394 	jz	00123$
   2620 C3                  395 	clr	c
   2621 E5 16               396 	mov	a,_anim_m_head_1_32
   2623 64 80               397 	xrl	a,#0x80
   2625 94 85               398 	subb	a,#0x85
   2627 50 05               399 	jnc	00123$
                            400 ;	SRC/anim.c:40: ++head;
   2629 05 16               401 	inc	_anim_m_head_1_32
   262B 02 26 BB            402 	ljmp	00124$
   262E                     403 00123$:
                            404 ;	SRC/anim.c:42: else if (direction == RIGHT && head >= 5) {
   262E EE                  405 	mov	a,r6
   262F 60 2F               406 	jz	00119$
   2631 C3                  407 	clr	c
   2632 E5 16               408 	mov	a,_anim_m_head_1_32
   2634 64 80               409 	xrl	a,#0x80
   2636 94 85               410 	subb	a,#0x85
                            411 ;	SRC/anim.c:43: if (tail < LED_COUNT - 1) {
   2638 40 26               412 	jc	00119$
   263A E5 17               413 	mov	a,_anim_m_tail_1_32
   263C 64 80               414 	xrl	a,#0x80
   263E 94 87               415 	subb	a,#0x87
   2640 50 0F               416 	jnc	00104$
                            417 ;	SRC/anim.c:44: ++tail;
   2642 05 17               418 	inc	_anim_m_tail_1_32
                            419 ;	SRC/anim.c:45: if (head < LED_COUNT - 1) {
   2644 C3                  420 	clr	c
   2645 E5 16               421 	mov	a,_anim_m_head_1_32
   2647 64 80               422 	xrl	a,#0x80
   2649 94 87               423 	subb	a,#0x87
   264B 50 6E               424 	jnc	00124$
                            425 ;	SRC/anim.c:46: ++head;
   264D 05 16               426 	inc	_anim_m_head_1_32
   264F 80 6A               427 	sjmp	00124$
   2651                     428 00104$:
                            429 ;	SRC/anim.c:50: tail = LED_COUNT - 1;
   2651 75 17 07            430 	mov	_anim_m_tail_1_32,#0x07
                            431 ;	SRC/anim.c:51: head = LED_COUNT - 2;
   2654 75 16 06            432 	mov	_anim_m_head_1_32,#0x06
                            433 ;	SRC/anim.c:52: direction = LEFT;
   2657 90 28 0D            434 	mov	dptr,#_anim_m_LEFT_1_32
   265A E4                  435 	clr	a
   265B 93                  436 	movc	a,@a+dptr
   265C F5 18               437 	mov	_anim_m_direction_1_32,a
   265E 80 5B               438 	sjmp	00124$
   2660                     439 00119$:
                            440 ;	SRC/anim.c:55: else if (direction == LEFT && head > 2) {
   2660 90 28 0D            441 	mov	dptr,#_anim_m_LEFT_1_32
   2663 E4                  442 	clr	a
   2664 93                  443 	movc	a,@a+dptr
   2665 FE                  444 	mov	r6,a
   2666 B5 18 04            445 	cjne	a,_anim_m_direction_1_32,00160$
   2669 74 01               446 	mov	a,#0x01
   266B 80 01               447 	sjmp	00161$
   266D                     448 00160$:
   266D E4                  449 	clr	a
   266E                     450 00161$:
   266E FE                  451 	mov	r6,a
   266F 60 11               452 	jz	00115$
   2671 C3                  453 	clr	c
   2672 74 82               454 	mov	a,#(0x02 ^ 0x80)
   2674 85 16 F0            455 	mov	b,_anim_m_head_1_32
   2677 63 F0 80            456 	xrl	b,#0x80
   267A 95 F0               457 	subb	a,b
   267C 50 04               458 	jnc	00115$
                            459 ;	SRC/anim.c:56: --head;
   267E 15 16               460 	dec	_anim_m_head_1_32
   2680 80 39               461 	sjmp	00124$
   2682                     462 00115$:
                            463 ;	SRC/anim.c:58: else if (direction == LEFT && head <= 2) {
   2682 EE                  464 	mov	a,r6
   2683 60 36               465 	jz	00124$
   2685 C3                  466 	clr	c
   2686 74 82               467 	mov	a,#(0x02 ^ 0x80)
   2688 85 16 F0            468 	mov	b,_anim_m_head_1_32
   268B 63 F0 80            469 	xrl	b,#0x80
   268E 95 F0               470 	subb	a,b
                            471 ;	SRC/anim.c:59: if (tail > 0) {
   2690 40 29               472 	jc	00124$
   2692 E4                  473 	clr	a
   2693 64 80               474 	xrl	a,#0x80
   2695 85 17 F0            475 	mov	b,_anim_m_tail_1_32
   2698 63 F0 80            476 	xrl	b,#0x80
   269B 95 F0               477 	subb	a,b
   269D 50 14               478 	jnc	00109$
                            479 ;	SRC/anim.c:60: --tail;
   269F 15 17               480 	dec	_anim_m_tail_1_32
                            481 ;	SRC/anim.c:61: if (head > 0) {
   26A1 C3                  482 	clr	c
   26A2 E4                  483 	clr	a
   26A3 64 80               484 	xrl	a,#0x80
   26A5 85 16 F0            485 	mov	b,_anim_m_head_1_32
   26A8 63 F0 80            486 	xrl	b,#0x80
   26AB 95 F0               487 	subb	a,b
   26AD 50 0C               488 	jnc	00124$
                            489 ;	SRC/anim.c:62: --head;
   26AF 15 16               490 	dec	_anim_m_head_1_32
   26B1 80 08               491 	sjmp	00124$
   26B3                     492 00109$:
                            493 ;	SRC/anim.c:66: tail = 0;
   26B3 75 17 00            494 	mov	_anim_m_tail_1_32,#0x00
                            495 ;	SRC/anim.c:67: head = 1;
   26B6 75 16 01            496 	mov	_anim_m_head_1_32,#0x01
                            497 ;	SRC/anim.c:68: direction = RIGHT;
   26B9 8F 18               498 	mov	_anim_m_direction_1_32,r7
   26BB                     499 00124$:
                            500 ;	SRC/anim.c:71: SetSnake(head, tail);
   26BB C0 17               501 	push	_anim_m_tail_1_32
   26BD 85 16 82            502 	mov	dpl,_anim_m_head_1_32
   26C0 12 24 AE            503 	lcall	_SetSnake
   26C3 15 81               504 	dec	sp
   26C5 22                  505 	ret
                            506 	.area CSEG    (CODE)
                            507 	.area CONST   (CODE)
   280D                     508 _anim_m_LEFT_1_32:
   280D 00                  509 	.db #0x00	;  0
   280E                     510 _anim_m_RIGHT_1_32:
   280E 01                  511 	.db #0x01	;  1
                            512 	.area XINIT   (CODE)
                            513 	.area CABS    (ABS,CODE)
