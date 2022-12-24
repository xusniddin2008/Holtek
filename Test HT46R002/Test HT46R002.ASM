#pragma debug scope 1 1
#line 20 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
__extresb EQU [024H]
__acsr EQU [023H]
__adcr EQU [022H]
__adrh EQU [021H]
__adrl EQU [020H]
__pwm0 EQU [01fH]
__wdtc EQU [01cH]
__ctrl1 EQU [01bH]
__ctrl0 EQU [01aH]
__pawu EQU [013H]
__papu EQU [012H]
__pac EQU [011H]
__pa EQU [010H]
__tmr0c EQU [0dH]
__tmr0 EQU [0cH]
__intc0 EQU [0bH]
__status EQU [0aH]
__wdts EQU [09H]
__tblh EQU [08H]
__tblp EQU [07H]
__pcl EQU [06H]
__acc EQU [05H]
__mp1 EQU [03H]
__iar1 EQU [02H]
__mp0 EQU [01H]
__iar0 EQU [00H]
@@isr_4 .SECTION AT 04H 'CODE'
JMP _isr_4
@isr_4 .SECTION 'CODE'
_isr_4 PROC
MOV V1A,A
MOV A,[0AH]
MOV V1S,A
#pragma debug scope 2 1 ; 21 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 21 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR [0BH].1
#line 22 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR [0BH].4
#line 23 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR [010H].0
#line 23 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
JMP L3
L2:
#pragma debug scope 3 2 ; 25 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 25 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SZ [010H].2
JMP L5
#pragma debug scope 4 3 ; 26 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 26 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SET [010H].1
#line 27 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 3 2 ; 27 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
JMP L6
L5:
#pragma debug scope 5 3 ; 28 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 28 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR [010H].1
L6:
L3:
#line 24 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 2 1 ; 24 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SZ [010H].7
JMP L2
#line 31 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SZ [010H].2
JMP L7
#pragma debug scope 6 2 ; 32 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 32 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SET [010H].1
L7:
#line 34 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 2 1 ; 34 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SET [0BH].1
L1:
MOV A,V1S
MOV [0AH],A
MOV A,V1A
RETI
_isr_4 ENDP
@isr_4 .SECTION 'DATA'
#line 37 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
@ADC .SECTION 'CODE'
PUBLIC _ADC
_ADC PROC
#pragma debug scope 7 1 ; 38 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 38 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,01H
MOV RH,A
MOV A,0f2H
CALL __DELAYY1
#line 39 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR [022H].7
#line 40 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SET [022H].7
#line 41 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR [022H].7
#line 42 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,0eH
MOV RH,A
MOV A,09dH
CALL __DELAYY3
L10:
L11:
#line 43 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SZ [022H].6
JMP L10
#line 44 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,__adrl
MOV _voltL,A
CLR _voltL[1]
#line 45 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,__adrh
MOV _voltH,A
CLR _voltH[1]
L9:
RET
_ADC ENDP
#line 48 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
@MAIN .SECTION 'CODE'
_main PROC
begin:
#pragma debug scope 8 1 ; 49 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 49 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,0aah
MOV _gabOn,A
CLR _gabOn[1]
#line 50 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,08ah
MOV _gabOff,A
CLR _gabOff[1]
#line 51 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,0dch
MOV _blijOn,A
CLR _blijOn[1]
#line 52 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,08ch
MOV _blijOff,A
CLR _blijOff[1]
#line 53 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR [011H].0
#line 54 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR [011H].1
#line 55 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SET [011H].2
#line 56 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SET [011H].5
#line 57 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SET [011H].6
#line 58 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SET [011H].7
#line 59 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR [010H].0
#line 60 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR [010H].1
#line 61 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR __status
#line 62 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR __pawu
#line 63 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR __papu
#line 64 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,02dh
MOV __wdtc,A
#line 65 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR __extresb
#line 67 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,01h
MOV __acsr,A
#line 68 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,023h
MOV __adcr,A
#line 70 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR __ctrl0
#line 71 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,03h
MOV __intc0,A
#line 72 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SET [0BH].1
#line 73 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SET [0BH].0
#line 73 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
JMP L15
L17:
#pragma debug scope 9 8 ; 76 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 10 9 ; 76 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 76 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CALL _ADC
#line 77 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,_gabOn[1]
SUB A,_voltH[1]
SNZ [0ah].0
JMP L80
SNZ [0ah].2
JMP L20
MOV A,_gabOn
SUB A,_voltH
SZ [0ah].0
JMP L20
L80:
SZ [010H].1
JMP L20
#pragma debug scope 11 10 ; 78 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 78 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR _i
CLR _i[1]
#line 78 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
JMP L25
L22:
#pragma debug scope 12 11 ; 79 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 79 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CALL _ADC
#line 80 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SNZ [010H].7
JMP L28
MOV A,_voltH[1]
SUB A,00h
SNZ [0ah].0
JMP L81
SNZ [0ah].2
JMP L26
MOV A,_voltH
SUB A,0a0h
SZ [0ah].0
JMP L26
L81:
L28:
#pragma debug scope 13 12 ; 81 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 81 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
JMP L24
L26:
#line 83 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 12 11 ; 83 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,0f9H
CALL __DELAYX0
L23:
#line 78 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 11 10 ; 78 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
INC _i
SZ [0AH].2
INC _i[1]
L25:
#line 78 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,00h
SUB A,_i[1]
SNZ [0ah].0
JMP L82
SNZ [0ah].2
JMP L22
MOV A,0c8h
SUB A,_i
SZ [0ah].0
JMP L22
L82:
L24:
#line 85 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,_blijOn[1]
SUB A,_voltH[1]
SNZ [0ah].0
JMP L83
SNZ [0ah].2
JMP L29
MOV A,_blijOn
SUB A,_voltH
SZ [0ah].0
JMP L29
L83:
MOV A,00h
SUB A,_i[1]
SNZ [0ah].0
JMP L84
SNZ [0ah].2
JMP L29
MOV A,0c7h
SUB A,_i
SNZ [0ah].0
JMP L84
SNZ [0ah].2
JMP L29
L84:
#pragma debug scope 14 11 ; 86 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 86 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SET [010H].0
L29:
#line 88 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 11 10 ; 88 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,_gabOn[1]
SUB A,_voltH[1]
SNZ [0ah].0
JMP L85
SNZ [0ah].2
JMP L31
MOV A,_gabOn
SUB A,_voltH
SZ [0ah].0
JMP L31
L85:
MOV A,00h
SUB A,_i[1]
SNZ [0ah].0
JMP L86
SNZ [0ah].2
JMP L31
MOV A,0c7h
SUB A,_i
SNZ [0ah].0
JMP L86
SNZ [0ah].2
JMP L31
L86:
#pragma debug scope 15 11 ; 89 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 89 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SET [010H].1
L31:
L20:
#line 92 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 10 9 ; 92 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,_blijOn[1]
SUB A,_voltH[1]
SNZ [0ah].0
JMP L87
SNZ [0ah].2
JMP L33
MOV A,_blijOn
SUB A,_voltH
SZ [0ah].0
JMP L33
L87:
SZ [010H].0
JMP L33
#pragma debug scope 16 10 ; 93 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 93 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR _i
CLR _i[1]
#line 93 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
JMP L38
L35:
#pragma debug scope 17 16 ; 94 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 94 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CALL _ADC
#line 95 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SNZ [010H].7
JMP L41
MOV A,_voltH[1]
SUB A,00h
SNZ [0ah].0
JMP L88
SNZ [0ah].2
JMP L39
MOV A,_voltH
SUB A,0d2h
SZ [0ah].0
JMP L39
L88:
L41:
#pragma debug scope 18 17 ; 96 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 96 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
JMP L37
L39:
#line 98 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 17 16 ; 98 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,0f9H
CALL __DELAYX0
L36:
#line 93 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 16 10 ; 93 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
INC _i
SZ [0AH].2
INC _i[1]
L38:
#line 93 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,00h
SUB A,_i[1]
SNZ [0ah].0
JMP L89
SNZ [0ah].2
JMP L35
MOV A,0c8h
SUB A,_i
SZ [0ah].0
JMP L35
L89:
L37:
#line 100 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,_blijOn[1]
SUB A,_voltH[1]
SNZ [0ah].0
JMP L90
SNZ [0ah].2
JMP L42
MOV A,_blijOn
SUB A,_voltH
SZ [0ah].0
JMP L42
L90:
MOV A,00h
SUB A,_i[1]
SNZ [0ah].0
JMP L91
SNZ [0ah].2
JMP L42
MOV A,0c7h
SUB A,_i
SNZ [0ah].0
JMP L91
SNZ [0ah].2
JMP L42
L91:
#pragma debug scope 19 16 ; 101 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 101 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SET [010H].0
L42:
L33:
#line 104 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 10 9 ; 104 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,_voltH[1]
SUB A,_gabOff[1]
SNZ [0ah].0
JMP L92
SNZ [0ah].2
JMP L44
MOV A,_voltH
SUB A,_gabOff
SZ [0ah].0
JMP L44
L92:
SNZ [010H].1
JMP L44
#pragma debug scope 20 10 ; 105 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 105 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR _i
CLR _i[1]
#line 105 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
JMP L49
L46:
#pragma debug scope 21 20 ; 106 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 106 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CALL _ADC
#line 107 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SNZ [010H].7
JMP L52
MOV A,00h
SUB A,_voltH[1]
SNZ [0ah].0
JMP L93
SNZ [0ah].2
JMP L50
MOV A,080h
SUB A,_voltH
SZ [0ah].0
JMP L50
L93:
L52:
#pragma debug scope 22 21 ; 108 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 108 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
JMP L48
L50:
#line 110 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 21 20 ; 110 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,0f9H
CALL __DELAYX0
L47:
#line 105 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 20 10 ; 105 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
INC _i
SZ [0AH].2
INC _i[1]
L49:
#line 105 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,01h
SUB A,_i[1]
SNZ [0ah].0
JMP L94
SNZ [0ah].2
JMP L46
MOV A,02ch
SUB A,_i
SZ [0ah].0
JMP L46
L94:
L48:
#line 112 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,_voltH[1]
SUB A,_gabOff[1]
SNZ [0ah].0
JMP L95
SNZ [0ah].2
JMP L53
MOV A,_voltH
SUB A,_gabOff
SZ [0ah].0
JMP L53
L95:
MOV A,01h
SUB A,_i[1]
SNZ [0ah].0
JMP L96
SNZ [0ah].2
JMP L53
MOV A,02bh
SUB A,_i
SNZ [0ah].0
JMP L96
SNZ [0ah].2
JMP L53
L96:
#pragma debug scope 23 20 ; 113 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 113 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR [010H].1
L53:
L44:
#line 116 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 10 9 ; 116 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,_voltH[1]
SUB A,_blijOff[1]
SNZ [0ah].0
JMP L97
SNZ [0ah].2
JMP L55
MOV A,_voltH
SUB A,_blijOff
SZ [0ah].0
JMP L55
L97:
SNZ [010H].0
JMP L55
#pragma debug scope 24 10 ; 117 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 117 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR _i
CLR _i[1]
#line 117 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
JMP L60
L57:
#pragma debug scope 25 24 ; 118 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 118 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CALL _ADC
#line 119 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SNZ [010H].7
JMP L63
MOV A,00h
SUB A,_voltH[1]
SNZ [0ah].0
JMP L98
SNZ [0ah].2
JMP L61
MOV A,082h
SUB A,_voltH
SZ [0ah].0
JMP L61
L98:
L63:
#pragma debug scope 26 25 ; 120 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 120 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
JMP L59
L61:
L58:
#line 117 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 24 10 ; 117 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
INC _i
SZ [0AH].2
INC _i[1]
L60:
#line 117 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,01h
SUB A,_i[1]
SNZ [0ah].0
JMP L99
SNZ [0ah].2
JMP L57
MOV A,02ch
SUB A,_i
SZ [0ah].0
JMP L57
L99:
L59:
#line 123 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,_voltH[1]
SUB A,_blijOff[1]
SNZ [0ah].0
JMP L100
SNZ [0ah].2
JMP L64
MOV A,_voltH
SUB A,_blijOff
SZ [0ah].0
JMP L64
L100:
MOV A,01h
SUB A,_i[1]
SNZ [0ah].0
JMP L101
SNZ [0ah].2
JMP L64
MOV A,02bh
SUB A,_i
SNZ [0ah].0
JMP L101
SNZ [0ah].2
JMP L64
L101:
#pragma debug scope 27 24 ; 124 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 124 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR [010H].0
L64:
L55:
L18:
#line 75 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 9 8 ; 75 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SZ [010H].7
JMP L17
#line 128 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SZ [010H].6
JMP L66
#pragma debug scope 28 9 ; 129 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 129 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CALL _ADC
#line 130 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,_gabOn[1]
SUB A,_voltH[1]
SNZ [0ah].0
JMP L102
SNZ [0ah].2
JMP L68
MOV A,_gabOn
SUB A,_voltH
SZ [0ah].0
JMP L68
L102:
#pragma debug scope 29 28 ; 131 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 131 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SET [010H].1
#line 132 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SET [010H].0
#line 133 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR _i
CLR _i[1]
#line 133 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
JMP L73
L70:
#pragma debug scope 30 29 ; 134 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 134 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SNZ [010H].7
JMP L74
#pragma debug scope 31 30 ; 135 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 135 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,010h
MOV _i,A
MOV A,027h
MOV _i[1],A
#line 136 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 30 29 ; 136 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
JMP L75
L74:
#pragma debug scope 32 30 ; 137 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 137 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,01H
MOV RH,A
MOV A,0c0H
CALL __DELAYY1
L75:
L71:
#line 133 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 29 28 ; 133 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
INC _i
SZ [0AH].2
INC _i[1]
L73:
#line 133 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
MOV A,027h
SUB A,_i[1]
SNZ [0ah].0
JMP L103
SNZ [0ah].2
JMP L70
MOV A,010h
SUB A,_i
SZ [0ah].0
JMP L70
L103:
#line 140 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR [010H].1
#line 141 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR [010H].0
L68:
L66:
#line 144 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 9 8 ; 144 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SNZ [010H].2
JMP L76
#pragma debug scope 33 9 ; 145 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 145 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR [010H].1
#line 146 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
CLR [010H].0
L76:
#line 148 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 9 8 ; 148 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SZ [010H].2
JMP L78
#pragma debug scope 34 9 ; 149 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#line 149 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
SET [010H].1
L78:
L15:
#line 74 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
#pragma debug scope 8 1 ; 74 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
JMP L18
L13:
#line 152 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
JMP $
_main ENDP
PUBLIC _i
@i .SECTION 'DATA'
#line 16 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
_i DB 2 DUP (?) ; i
#pragma debug variable 12 1 _i i
PUBLIC _voltH
@voltH .SECTION 'DATA'
#line 15 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
_voltH DB 2 DUP (?) ; voltH
#pragma debug variable 12 1 _voltH voltH
PUBLIC _voltL
@voltL .SECTION 'DATA'
#line 14 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
_voltL DB 2 DUP (?) ; voltL
#pragma debug variable 12 1 _voltL voltL
PUBLIC _blijOff
@blijOff .SECTION 'DATA'
#line 13 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
_blijOff DB 2 DUP (?) ; blijOff
#pragma debug variable 12 1 _blijOff blijOff
PUBLIC _blijOn
@blijOn .SECTION 'DATA'
#line 12 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
_blijOn DB 2 DUP (?) ; blijOn
#pragma debug variable 12 1 _blijOn blijOn
PUBLIC _gabOff
@gabOff .SECTION 'DATA'
#line 11 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
_gabOff DB 2 DUP (?) ; gabOff
#pragma debug variable 12 1 _gabOff gabOff
PUBLIC _gabOn
@gabOn .SECTION 'DATA'
#line 10 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
_gabOn DB 2 DUP (?) ; gabOn
#pragma debug variable 12 1 _gabOn gabOn
#line 48 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
EXTERN RH:BYTE
EXTERN V1A:BYTE
EXTERN V1S:BYTE
EXTERN __DELAYX0:NEAR
EXTERN __DELAYX1:NEAR
EXTERN __DELAYX2:NEAR
EXTERN __DELAYX3:NEAR
EXTERN __DELAYX4:NEAR
EXTERN __DELAYX5:NEAR
EXTERN __DELAYX6:NEAR
EXTERN __DELAYY0:NEAR
EXTERN __DELAYY1:NEAR
EXTERN __DELAYY2:NEAR
EXTERN __DELAYY3:NEAR
EXTERN __DELAYY4:NEAR
EXTERN __DELAYY5:NEAR
#line 48 "C:\Users\User\Desktop\Holtek\Test HT46R002\Test HT46R002.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
