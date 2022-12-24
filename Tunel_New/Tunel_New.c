#include "HT46R002.h"

#define   blijniy    _pa0
#define   gabarit    _pa1
#define   gabaritButton    _pa2
#define   zajiganiyaButton    _pa7
#define   photoResistor    _pa5
#define   sentrZamokButton    _pa6

unsigned int gabOn;
unsigned int gabOff;
unsigned int blijOn;
unsigned int blijOff;
unsigned int i;
unsigned int voltL;
unsigned int voltH;

//#pragma vector _ExternISR @ 0x04
//#pragma vector ISR_INT0 @ 0x04

/*void _ExternISR(void){
	_inte = 0;
	while(1) {
		blijniy = 0;
		gabarit = 1;
		for (i = 0; i <= 235; i++) {
        	_delay(20000);
    	}
		blijniy = 1;
		gabarit = 0;
		for (i = 0; i <= 235; i++) {
        	_delay(20000);
    	}		
	}		
}*/

/*void isr_4() {
	if (_intf) {
		_intf = 0;
		blijniy = 0;
		while (zajiganiyaButton == 1) {
            if (gabaritButton == 0) {
                gabarit = 1;
            } else {
                gabarit = 0;
            }
        }
        if (gabaritButton == 0) {
            gabarit = 1;
        }
	}
}*/
/*void external_isr() {
	_inte = 0;
	while(1) {
		blijniy = 0;
		gabarit = 1;
		for (i = 0; i <= 235; i++) {
        	_delay(20000);
    	}
		blijniy = 1;
		gabarit = 0;
		for (i = 0; i <= 235; i++) {
        	_delay(20000);
    	}		
	}
}*/

/*void Int_isr() {
	_inte = 0;
	_intf = 0;	
	while(1) {
		blijniy = 0;
		gabarit = 1;
		for (i = 0; i <= 235; i++) {
        	_delay(20000);
    	}
		blijniy = 1;
		gabarit = 0;
		for (i = 0; i <= 235; i++) {
        	_delay(20000);
    	}		
	}
}*/

/*void ISR_INT0() {
	_inte = 0;
	_intf = 0;	
	while(1) {
		blijniy = 0;
		gabarit = 1;
		for (i = 0; i <= 235; i++) {
        	_delay(20000);
    	}
		blijniy = 1;
		gabarit = 0;
		for (i = 0; i <= 235; i++) {
        	_delay(20000);
    	}		
	}
}*/

/*void __attribute((interrupt(0x04))) Int_isr() {
	
}*/


void ADC() {    
    _delay(2000);
    _start = 0;
    _start = 1;
    _start = 0;    
    _delay(15000);    
    while (_eocb);
    voltL = _adrl;
    voltH = _adrh;
}

void main(){
	gabOn = 150;
	gabOff = 48;
	blijOn = 200;
	blijOff = 50;		
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
	
	_acsr = 0b00000001;
	_adcr = 0b00100011;
	
	_ctrl0 = 0b00000000;
	_intc0 = 0b00000011;
	_inte = 0;	
	_emi = 1; //global interrupts enabled	
	while(1){
		while (zajiganiyaButton == 1) {
            ADC();
            if (voltH > gabOn && gabarit == 0) {
                //gabaritOn();
                for (i = 0; i <= 235; i++) {
        			ADC();
        			if (zajiganiyaButton == 0 || voltH < 140) {
            			return;
        			}
        			_delay(1000);
    			}
			    if (voltH > blijOn) {
			        blijniy = 1;
			    }
			    if (voltH > gabOn) {
			        gabarit = 1;
			    }
            }
            if (voltH > blijOn && blijniy == 0) {
                //blijniyOn();
                for (i = 0; i <= 235; i++) {
			        ADC();
			        if (zajiganiyaButton == 0 || voltH < 190) {
			            return;
			        }
			        _delay(1000);
			    }
			    if (voltH > blijOn) {
			        blijniy = 1;
			    }
            }
            if (voltH < blijOff && blijniy == 1) {
                //blijniyOff();
                for (i = 0; i <= 435; i++) {
			        ADC();
			        if (zajiganiyaButton == 0 || voltH > 60) {
			            return;
			        }
			    }
			    if (voltH < blijOff) {
			        blijniy = 0;
			    }
            }
            if (voltH < gabOff && gabarit == 1) {
                //gabaritOff();
                for (i = 0; i <= 435; i++) {
			        ADC();
			        if (zajiganiyaButton == 0 || voltH > 48) {
			            return;
			        }
			        _delay(1000);
			    }
			    if (voltH < gabOff) {
			        gabarit = 0;
			    }
            }
        }
        if (sentrZamokButton == 0) {
            ADC();
            if (voltH > gabOn) {
                //sentrZamok();
                gabarit = 1;
			    blijniy = 1;
			    for (i = 0; i <= 10000; i++) {
			        if (zajiganiyaButton == 1) {
			            i = 10000;
			        } else {
			        	_delay(1000);
			        }
			    }
			    gabarit = 0;
			    blijniy = 0;
            }
        }
        /*if (_pa2 == 1) {
            gabarit = 0;
            blijniy = 0;
        }
        if (_pa2 == 0) {
            gabarit = 1;
        }*/
	}
}