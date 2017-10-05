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