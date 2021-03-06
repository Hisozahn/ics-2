/****************************************************************************

    led.c - ���������� ������� �����������
            ��� �������� ������ SDK-1.1

    (C) led.c, ������ �.�.  2007 �.

��� ��������� ���������; �� ������ �������� �������������� �� �/���
�������������� �� � ������������ � ������������� ������������
��������� GNU, �������������� ������ ���������� ��; ���� ������ 2,
���� (�� ������ ������) ����� ����� ������� ������.

��� ��������� ���������������� � �������, ��� ��� ����� ��������,
�� ��� �����-���� ��������; ���� ��� ��������������� ��������
������������ �������� ��� ����������� ��� ���������� ����.  ���
��������� ��������� �������� �������� ������������� ������������
�������� GNU.

�� ������ ���� �������� ����� ������������� ������������ ��������
GNU ������ � ���� ����������; ���� ���, �������� �� ������: Free
Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
02111-1307 USA

----------------------------------------------------------------------------
������, �����-���������, ������� �������������� ������� ��������� 
e-mail: kluchev@d1.ifmo.ru

****************************************************************************/

#include "aduc812.h"
#include "max.h"
#include "led.h"
#include <string.h>

static unsigned char old_led = 0;   // "�����������" ������� �����������


/**----------------------------------------------------------------------------
                            led
-------------------------------------------------------------------------------
���������� ����� �����������

����:       n  - ���������� ����� ���������� ( �� 0 �� 7 )
            on - 1 - ��������, 0 ����� ���������
�����:      ���
���������:  ���
��������:   ������������ ������ � �������� ����������� ������ SV � �������
            ������� write_max. ��������� ����������� �������� � �������� old_led.

������:
-----------------------------------------------------------------------------*/

void led( unsigned char n, unsigned char on )
{
unsigned char c;
unsigned char mask = 1;

    if( n > 7 ) return;

    c = old_led;

    mask <<= n;

    if( on )
        c |= mask;
    else
        c &= ~mask;         

    write_max( SV, c );     

    old_led = c;
}


/**----------------------------------------------------------------------------
                            leds
-------------------------------------------------------------------------------
��������� ������� �����������

����:       on - ���������� ������������. ������ ��� ���������� �������� �� ���� 
            ���������: 1 - ��������, 0 ����� ���������
�����:      ���
���������:  ���
��������:   ������������ ������ � �������� ����������� ������ SV � �������
            ������� write_max. ��������� ����������� �������� � �������� old_led.

������:
-----------------------------------------------------------------------------*/

void leds( unsigned char on )
{
    write_max( SV, on );     

    old_led = on;
}

//////////////////////// WriteLED ///////////////////////////
// ������� ��������� ��������� ������� �����������.
// ����:
// value � ��������� �����������.
// �����: ���.
// ���������: ���.
//////////////////////////////////////////////////////////////
void WriteLED(unsigned char value)
{
	// ������ ��������� ����������� � ������� 7-� ������� ����
	write_max( 7, value );
}
//////////////////////// T0_ISR //////////////////////////////
// ���������� ���������� �� ������� 0.
// ����: ���.
// �����: ���.
// ���������: ���.
//////////////////////////////////////////////////////////////
//unsigned int r = 0;
//unsigned char tick = 1;
unsigned char tick = 1;
unsigned char brightness[LED_COUNT] = {0, 0, 0, 0, 0, 0, 0, 0};
unsigned char leds_wait[LED_COUNT] = {0, 0, 0, 0, 0, 0, 0, 0};

/*void T0_ISR( void ) __interrupt ( 1 )
{	
	unsigned char i = 0;
	unsigned char led = 0;
	unsigned char mask = 1;	
	
	for (;i < LED_COUNT; i++) {		
		leds_wait[i] += brightness[i];
		if (leds_wait[i] >= 100) {
			leds_wait[i] -= 100;
			led += mask;
		}
		mask <<= 1;
	}
	leds(led);
	TH0 = 0xFF;
	TL0 = 0x30;
}*/

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
	leds(led);
	TH0 = 0xFF;
	TL0 = 0xF0;
}

void SetBrightness(unsigned char ledId, unsigned char b) {
	if (b > 100) {
		return;
	}
	
	if (ledId > LED_COUNT - 1) {
		return;
	}
	
	brightness[ledId] = b;
}

void SetBrightnesses(const unsigned char* brigthness_v) {
    char old_ET0 = ET0;
	ET0 = 0;
	memcpy(brightness, brigthness_v, LED_COUNT);
	ET0 = old_ET0;
}



