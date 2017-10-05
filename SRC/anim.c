#include "anim.h"
#include "sys_timer.h"

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
	unsigned char g = (unsigned char) (GetMsCounter()/1000);
	g = (unsigned char)sizeof(long);
	leds(g);
	
	/*return;
	static char i = 0;

	SetSnake(7, i);
	i = (i + 1) % LED_COUNT;
	*/
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