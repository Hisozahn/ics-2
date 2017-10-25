/*#include "aduc812.h"

void InitTimer(void);
unsigned long GetMsCounter(void);
unsigned long DTimeMs(unsigned long t0);
void delayMs(unsigned long t);*/
#include "aduc812.h"
#include <stdlib.h>
#include <string.h>
#include "led.h"
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
	ET2 = 0; 
	res = __systime; 
	ET2 = 1; 
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


void T2_handler ( void ) __interrupt (5) {
    TF2 = 0;
    __systime++;
    TH2 = 0xFB;
    TL2 = 0xC3;
}

void INT0_handler ( void ) __interrupt (0) {
	leds(TL1);
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
    
	//TH0 = 0xFB; // Инициализация таймера 0
	//TL0 = 0xC2; //
	//TMOD = 0x01 + 0x00;//+ 0x80; //
	//TCON = 0x10 + 0x05; //+ 0x04; //    
    write_max(ENA, 0x20); // disable software-controllable INT0
	TMOD = 0x40 + 0x10 + 0x01 + 0x08; // Timer 1 counter mode + Timer 1 16 bit mode + Timer 0 16 bit mode + Timer 0 gate mode 
	TCON = 0x40 + 0x10 + 0x01; // Timer 1 run + Timer 0 run + External interrupt INT0 edge-sensetive
	// Установка вектора в пользовательской таблице
	SetVector( 0x200B, (void *)T0_ISR );
    //SetVector( 0x201B, (void *)T1_ISR );
    SetVector( 0x2003, (void *)INT0_handler );
    SetVector( 0x202B, (void *)T2_handler );
	// Разрешение прерываний от таймера 0
	ET0 = 1;
    EX0 = 1;    //INT0 interrupt enable
    
    PT2 = 1;        // Timer 2 high priority
    PT0 = 0;        // Timer 0 low priority
    TR2 = 1;        // Timer 2 start
    TH2 = 0xFB;     // Timer 2 high byte
    TL2 = 0xC2;     // Timer 2 low byte
    ET2 = 1;        // Timer 2 enable interrupts
    EA = 1;         // Enable global interrupts
}
