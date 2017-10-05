/*#include "aduc812.h"

void InitTimer(void);
unsigned long GetMsCounter(void);
unsigned long DTimeMs(unsigned long t0);
void delayMs(unsigned long t);*/
#include "aduc812.h"
#include <stdlib.h>
#include <string.h>
#include "sys_timer.h"
#include "max.h"
#define MAXBASE 8

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

void T0_ISR( void ) __interrupt ( 1 )
{	
	__systime++;
	TH0 = 0xFB; // Инициализация таймера 0
	TL0 = 0xC2; //
	
	/*unsigned char i = 0;
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
		*/
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

/*void delay ( unsigned long ms )
{
	volatile unsigned long i, j;

    for( j = 0; j < ms; j++ )
    {
        for( i = 0; i < 10; i++ );
    }
}*/

void InitTimer( void ) {
	TH0 = 0xFB; // Инициализация таймера 0
	TL0 = 0xC2; //
	TMOD = 0x01; //
	TCON = 0x10; //
	// Установка вектора в пользовательской таблице
	SetVector( 0x200B, (void *)T0_ISR );
	// Разрешение прерываний от таймера 0
	ET0 = 1; EA = 1;
}
