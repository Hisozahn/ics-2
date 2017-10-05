#ifndef __SYS_TIMER__H
#define __SYS_TIMER__H

void InitTimer(void);

unsigned long GetMsCounter(void);

unsigned long DTimeMs(unsigned long t0);

void DelayMs(unsigned long t);

#endif