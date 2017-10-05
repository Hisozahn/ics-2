/****************************************************************************

    simple.c - ���������� ��������� ��� �������� ������ SDK-1.1

    (C) simple.c, ������ �.�.  2007 �.

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
#include "led.h"
#include "max.h"

#define ROR(x) (x)>>=1; (x)|=0x80;
#define ROL(x) (x)=1; (x)|=0x80;

static const unsigned char LAB_MAGIC = 0x77;
static const unsigned char ANIM_DELAY = 700;

void delay ( unsigned long ms )
{
volatile unsigned long i, j;

    for( j = 0; j < ms; j++ )
    {
        for( i = 0; i < 50; i++ );
    }

    
}
/*
i   v           summand     
    00000000    00000011
1   00000011    00000011    v += summand
    00000011    00000110    summand <<= 1
    00000001                v >>= 1
    10000001                v += 0x80
2   10000111    00000110    v += summand
    10000111    00001100    summand <<= 1
    01000011    00001100    v >>= 1
    11000011    00001100    v += 0x80
    etc
*/
void anim_n( void ) {
    unsigned char v = 0x00;
    unsigned char summand = 0x03;
    unsigned char i = 0;
    
    for (i = 0; i < 4; i++) {
        v += summand;
        summand <<=1;
        v >>=1;        
        v += 0x80;
        leds(v);
        delay(ANIM_DELAY);
    }
    
    for (i = 0; i < 4; i++) {
        v -= summand;
        summand <<=1;
        v >>=1;        
        if (i != 3) {            
            v += 0x80;
        }
        leds(v);
        delay(ANIM_DELAY);
    }
}

/*void anim_n( void ) {
    unsigned char v = 0x81;
    unsigned char summand = 0x06;
    unsigned char i = 0;
    
    for (i = 0; i < 3; i++) {
        leds(v);
        delay(ANIM_DELAY);
        v += summand;
        summand <<=1;
        v >>=1;        
        v += 0x80;
    }
    
    for (i = 0; i < 4; i++) {
        leds(v);
        delay(ANIM_DELAY);
        v -= summand;
        summand <<=1;
        v >>=1;
        v += 0x80;
    }
    leds(0);
    delay(ANIM_DELAY);    
}*/

void main( void )
{
    while( 1 )
    {
        unsigned char dip_value = read_max(EXT_LO);
        if ( LAB_MAGIC == dip_value )
        {
            unsigned char left = 80;
            
            anim_n();
            //leds(left);
            //delay
            /*
            leds(0xDD);
            delay(666);
            leds(0xFF);
            delay(666);
            leds(0x11);
            delay(666);
            */
        }
        else 
        {
            leds(dip_value);
        }
    
    }
}    