/*#include "aduc812.h"

void InitTimer(void);
unsigned long GetMsCounter(void);
unsigned long DTimeMs(unsigned long t0);
void delayMs(unsigned long t);*/
#include "aduc812.h"
#include <stdlib.h>
#include <string.h>
#define MAXBASE 8
#define LED_COUNT 8
#define DIR_RIGHT 1
#define DIR_LEFT 0
///////////////////////// WriteMax ///////////////////////////
// Запись байта в регистр ПЛИС
// Вход:
// regnum – адрес регистра ПЛИС,
// val – записываемое значение.
// Выход: нет.
// Результат: нет.
//////////////////////////////////////////////////////////////

unsigned long __systime = 0;

unsigned long GetMsCounter( void ) 
{ 
	unsigned long res; 
	ET0 = 0; 
	res = __systime; 
	ET0 = 1; 
	return res; 
} 

unsigned long DTimeMs( unsigned long t2 ) 
{ 
    unsigned long t1 = ( unsigned long )GetMsCounter(); 
    return t1 - t2;   
} 

void DelayMs( unsigned long ms ) 
{ 
 unsigned long t1 = ( unsigned long )GetMsCounter(); 
 while ( 1 ) 
 { 
       if ( DTimeMs( t1 ) > ms ) break; 
 }   
} 



void WriteMax (unsigned char __xdata *regnum, unsigned char val)
{
	// Сохранение текущего значения регистра страниц
	unsigned char oldDPP = DPP;
	DPP = MAXBASE; // Установка адреса страницы ПЛИС
	*regnum = val; // Запись значения в регистр ПЛИС
	DPP = oldDPP; // Восстановление сохраненного значения
	// регистра страниц
}
//////////////////////// WriteLED ///////////////////////////
// Функция установки состояния линейки светодиодов.
// Вход:
// value – состояния светодиодов.
// Выход: нет.
// Результат: нет.
//////////////////////////////////////////////////////////////
void WriteLED(unsigned char value)
{
	// Запись состояния светодиодов в регистр 7-й регистр ПЛИС
	WriteMax( 7, value );
}
//////////////////////// T0_ISR //////////////////////////////
// Обработчик прерывания от таймера 0.
// Вход: нет.
// Выход: нет.
// Результат: нет.
//////////////////////////////////////////////////////////////
unsigned int r = 0;
unsigned char tick = 1;
unsigned char brightness[LED_COUNT] = {0, 0, 0, 0, 0, 0, 0, 0};

void SetBrightness(unsigned char ledId, unsigned char b) {
	if (b > 100) {
		return;
	}
	
	if (ledId > LED_COUNT - 1) {
		return;
	}
	
	brightness[ledId] = b;
}

unsigned int head = 5;
unsigned int tail = 0;	
unsigned int direction = DIR_RIGHT;

void anim() {
	unsigned int i;
	unsigned int current_brightness = 100;
	for (i = 0; i < LED_COUNT - 1; i++) {
		SetBrightness(i, 0);
	}
	
	if (direction == DIR_RIGHT) {
		SetBrightness(7, 100);
		for (i = head; i >= tail; i--) {
			SetBrightness(i, current_brightness);
			current_brightness -= 20;
		}			
		
		head++;
		if (head > LED_COUNT - 1) {
			head = 7;
		}
		tail++;
		if (tail > LED_COUNT - 1) {
			tail = 7;
		}		
		if (head == 7 && tail == 7) {
			direction = DIR_LEFT;
		}
			
	}
	/*else
	{
		for (i = head; i <= tail; i++) {
			SetBrightness(i, current_brightness);
			current_brightness -= 20;
		}	
		
		
		head--;
		if (head > LED_COUNT - 1) {
			head = 0;
		}
		tail--;
		if (tail > LED_COUNT - 1) {
			tail = 0;
		}
		if (head == 7 && tail == 7) {
			direction = DIR_RIGHT;
		}
	
	}*/
}

void SetBrightnesses(const unsigned char* brigthness_v) {
	ET0 = 0;
	memcpy(brightness, brigthness_v, LED_COUNT);
	ET0 = 1;
}

void SetSnake(char head, char tail) {
	
	char delta_brightness = 100 / ( abs(tail - head) + 1 );
	char i;
	char segment_index;
	unsigned char brigthness_v[LED_COUNT] = { 0 };
	
	if ( head < 0 || head > 7 || tail < 0 || tail > 7) {
		return;
	}
	
	if ( head <= tail ) {
		for (i = head; i <= tail; i++) {
			segment_index = i - head;
			brigthness_v[i] = 100 - (segment_index * delta_brightness);
		}
	}
	else {
		for (i = head; i >= tail ; i--) {
			segment_index = abs(i - head);
			brigthness_v[i] = 100 - (segment_index * delta_brightness);
		}
	}
	
	SetBrightnesses(brigthness_v);
}

void anim_m() {
	static char i = 0;

	SetSnake(7, i);
	i = (i + 1) % LED_COUNT;
	
}

void T0_ISR( void ) __interrupt ( 1 )
{	
	unsigned char i = 0;
	unsigned char led = 0;
	unsigned char mask = 1;	
	
	if (tick > 50) {		
		tick = 1;
	}
	for (; i < LED_COUNT; i++) {		
		if (tick < brightness[i]/2) {			
			led += mask;
		}
		mask <<= 1;
	}
	tick++;
	WriteLED(led);
	TH0 = 0xFF;
	TL0 = 0xF0;
	r++;
	if (r == 0xfff) {
		//anim();
		r = 0;
	}
		
}
//////////////////////// SetVector //////////////////////////
// Функция, устанавливающая вектор прерывания в
// пользовательской таблице прерываний.
// Вход:
// Vector – адрес обработчика прерывания,
// Address – вектор пользовательской таблицы прерываний.
// Выход: нет.
// Результат: нет.
//////////////////////////////////////////////////////////////
void SetVector(unsigned char __xdata * Address, void * Vector)
{
	unsigned char __xdata * TmpVector; // Временная переменная

	// Первым байтом по указанному адресу записывается 
	// код команды передачи управления ljmp, равный 02h
	*Address = 0x02;
	// Далее записывается адрес перехода Vector
	TmpVector = (unsigned char __xdata *) (Address + 1);
	*TmpVector = (unsigned char) ((unsigned short)Vector >> 8);
	++TmpVector;
	*TmpVector = (unsigned char) Vector;
	// Таким образом, по адресу Address теперь
	// располагается инструкция ljmp Vector
}

void delay ( unsigned long ms )
{
	volatile unsigned long i, j;

    for( j = 0; j < ms; j++ )
    {
        for( i = 0; i < 10; i++ );
    }
}


//////////////////////// Main ////////////////////////////////
// Главная функция
//////////////////////////////////////////////////////////////
void main( void )
{
	TH0 = 0xFF; // Инициализация таймера 0
	TL0 = 0x00; //
	TMOD = 0x01; //
	TCON = 0x10; //
	// Установка вектора в пользовательской таблице
	SetVector( 0x200B, (void *)T0_ISR );
	// Разрешение прерываний от таймера 0
	ET0 = 1; EA = 1;
	while( 1 ) {
		anim_m();
		delay(3);
		anim_m();
		delay(3);
	}
}