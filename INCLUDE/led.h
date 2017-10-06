#ifndef __LED__H
#define __LED__H

#define LED_COUNT 8

void led( unsigned char n, unsigned char on );
void leds( unsigned char on );
void SetBrightness(unsigned char ledId, unsigned char b);
void SetBrightnesses(const unsigned char* brigthness_v);
void T0_ISR( void ) __interrupt ( 1 );

#endif //__LED__H
