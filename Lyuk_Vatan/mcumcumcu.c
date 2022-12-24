#include "HT48R002.h"

unsigned int i;
float blink;

void delay(unsigned int count){
	for(i=1; i <= count; i++){
		_delay(200000);		
		}
	}
	
	
void delay_info(unsigned int count){
	for(i=1; i <= count; i++){
		_delay(200000);	
		if(_pa2 == 1){
			break;
			}	
		}
	}

void main(){
	blink = 10.5;	
	_pac0 = 0;
	_pac1 = 0;	
	_pac2 = 1;
	_pac5 = 1;
	_pac6 = 1;	
	_pac7 = 1;
	_pa0 = 0;
	_pa1 = 0;
	_status = 0b00000000;
	_pawu = 0b00000000;
	_papu = 0b00000000;
	_wdtc = 0b00101101;
	_extresb = 0b00000000;
	_inte = 0;	
	_emi = 0; //global interrupts enabled	
	while(1)
	{
		if(_pa6 == 0){
			_delay(50000);
			if(_pa6 == 0){				
				/*if(_pa2 == 0){				
					_pa1 = 1;
					delay(30);
					_pa1 = 0;
					_delay(100000);
					blink = 10.5;
					}
				else {
					_pa0 = 1;
					delay(30);
					_pa0 = 0;
					_delay(100000);
					blink = 3.5;
					}*/
					
					if(_pa2 == 1){
						_pa0 = 1;
						delay(30);
						_pa0 = 0;
						_delay(100000);
						blink = 3.5;
						}
					else {
						_pa1 = 1;
						delay(30);
						_pa1 = 0;
						_delay(100000);
						blink = 10.5;					
						if(_pa2 == 0){
							_pa0 = 1;
							delay_info(120);
							_pa0 = 0;
							_delay(100000);
							blink = 3.5;				
							}
						}
				}				
			}
			
		if(_pa7 == 0 && _pa2 == 0){
			_delay(50000);
			if(_pa7 == 0 && _pa2 == 0){			
				_pa1 = 1;
				delay(30);
				_pa1 = 0;
				_delay(100000);
				blink = 10.5;					
				if(_pa2 == 0){
					_pa0 = 1;
					delay_info(100);
					_pa0 = 0;
					_delay(100000);
					blink = 3.5;				
					}
				}					
			}		
	}
}