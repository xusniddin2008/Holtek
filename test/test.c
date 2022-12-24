#include "HT48R002.h"

uint counter = 0 ;
uchar p1ms_flg = 0 ;

#pragma vector ISR_Timer @ 0x08
void main()
{
	
	/* WDTC
		bit 7-6 wdt/timer close selected
			00 : Flirc
			01 : Fsys/4
			10 : Fsys
			11 : Fsys
		bit 5-0
			000000 : enable wdtc
			101101 : disenable wdtc
			other  : mcu reset
	*/
	_wdtc = 0x2d ;
	 
	 /* WDTS
	 	bit 2-0 wdt period bit
	 		000 : 2^8 / Fs
	 		001 : 2^9 / Fs
	 		...
	 		111 : 2^15 / Fs
	 */
	 
	_wdts = 0x07 ; //125ns ????
	
	/*	INTC0
		bit5	TOF	timer0 ???????
		bit4	INTF	?????????
		bit2	TOE	timer0 ????
		bit1	INTE	??????
		bit0	EMI		?????
	*/
	_intc0 = 0x05 ; //???1 ?? 
	_tmr0c = 0x87 ; // ??? , 128??
	_tmr0  = 256-8 ; // 125ns * 8 = 1us //??1us
	counter = 0 ;
	p1ms_flg = 0 ;
	
	while(1)
	{
		_clrwdt() ;//
		if(p1ms_flg==1) { // 1ms ??
			
			
			
			
			p1ms_flg = 0 ;
		}
	}
	
}


// ?????
void ISR_Timer(void)
{
	_tmr0  = 256-8 ;
	counter++ ;
	if(counter>998) { // 1ms
		counter = 0 ;	
		p1ms_flg = 1 ;
	}
}