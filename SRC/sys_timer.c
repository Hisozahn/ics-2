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

unsigned int r = 0;
unsigned char tick = 1;
unsigned char brightness[LED_COUNT] = {0, 0, 0, 0, 0, 0, 0, 0};

/*void SetBrightness(unsigned char ledId, unsigned char b) {
	if (b > 100) {
		return;
	}
	
	if (ledId > LED_COUNT - 1) {
		return;
	}
	
	brightness[ledId] = b;
}*/

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
    static const char LEFT = 0;
    static const char RIGHT = 1;
	static char head = 5;
    static char tail = 0;
    static char direction = RIGHT;
    if (direction == RIGHT && head < 5) {
        ++head;
    }
    else if (direction == RIGHT && head >= 5) {
        if (tail < LED_COUNT - 1) {
            ++tail;
            if (head < LED_COUNT - 1) {
                ++head;
            }
        }
        else {
            tail = LED_COUNT - 1;
            head = LED_COUNT - 2;
            direction = LEFT;
        }
    }
    else if (direction == LEFT && head > 2) {
        --head;
    }
    else if (direction == LEFT && head <= 2) {
        if (tail > 0) {
            --tail;
            if (head > 0) {
                --head;
            }
        }
        else {
            tail = 0;
            head = 1;
            direction = RIGHT;
        }
    }
	SetSnake(head, tail);
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
	TL0 = 0x0F;
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
