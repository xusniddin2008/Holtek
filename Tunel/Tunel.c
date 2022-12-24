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
unsigned int voltL;
unsigned int voltH;
unsigned int i;

#pragma vector isr_4 @ 0x4

void isr_4(){	
	_inte = 0;
	_intf = 0;
	_pa0 = 0; //blijniy
	while (_pa7 == 1) { //zajiganiyaButton
        if (_pa2 == 0) { //gabaritButton
            _pa1 = 1; //gabarit
        } else {
            _pa1 = 0; //gabarit
        }
    }
    if (_pa2 == 0) {
        _pa1 = 1;
    }
    _inte = 1;	
}

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
	gabOn = 180;
	gabOff = 155;
	blijOn = 230;
	blijOff = 160;	
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
	_inte = 1;	
	_emi = 1; //global interrupts enabled	
	while(1){
		while (zajiganiyaButton == 1) {
			ADC();
			if (voltH > gabOn && gabarit == 0) {
	            for (i = 0; i <= 200; i++) {
	            	ADC();
	            	if (zajiganiyaButton == 0 || voltH < 170) {
	            		break;
	        		}
	            	_delay(1000);
	            }
	            if (voltH > blijOn && i >= 199) {
			        blijniy = 1;
			    }
			    if (voltH > gabOn && i >= 199) {
			        gabarit = 1;
			    }
	        }
	        if (voltH > blijOn && blijniy == 0) {                
	            for (i = 0; i <= 200; i++) {
			        ADC();
			        if (zajiganiyaButton == 0 || voltH < 220) {
			            break;
			        }
			        _delay(1000);
			    }
			    if (voltH > blijOn && i >= 199) {
			        blijniy = 1;
			    }
	        }
	        if (voltH < gabOff && gabarit == 1) {
	            for (i = 0; i <= 300; i++) {
				    ADC();
				    if (zajiganiyaButton == 0 || voltH > 145) {
				        break;
				    }
				    _delay(1000);
				}
				if (voltH < gabOff && i >= 299) {
				    gabarit = 0;
				}
	        }
	        if (voltH < blijOff && blijniy == 1) {
	            for (i = 0; i <= 300; i++) {
				    ADC();
				    if (zajiganiyaButton == 0 || voltH > 150) {
				        break;
				    }
				}
				if (voltH < blijOff && i >= 299) {
				    blijniy = 0;
				}
	        }        
		}
		if (sentrZamokButton == 0) {
            ADC();
            if (voltH > gabOn) {
                gabarit = 1;
			    blijniy = 1;
			    for (i = 0; i <= 10000; i++) {
			        if (zajiganiyaButton == 1) {
			            i = 10000;
			        } else {
			        	_delay(1800);
			        }
			    }
			    gabarit = 0;
			    blijniy = 0;
            }
        }
        if (_pa2 == 1) {
            gabarit = 0;
            blijniy = 0;
        }
        if (_pa2 == 0) {
            gabarit = 1;
        }
	}	
}