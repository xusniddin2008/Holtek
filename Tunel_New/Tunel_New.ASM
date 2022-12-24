#pragma debug scope 1 1
#line 108 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
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
@ADC .SECTION 'CODE'
PUBLIC _ADC
_ADC PROC
#pragma debug scope 2 1 ; 109 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 109 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,01H
MOV RH,A
MOV A,0f2H
CALL __DELAYY1
#line 110 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR [022H].7
#line 111 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SET [022H].7
#line 112 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR [022H].7
#line 113 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,0eH
MOV RH,A
MOV A,09dH
CALL __DELAYY3
L2:
L3:
#line 114 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SZ [022H].6
JMP L2
#line 115 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,__adrl
MOV _voltL,A
CLR _voltL[1]
#line 116 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,__adrh
MOV _voltH,A
CLR _voltH[1]
L1:
RET
_ADC ENDP
#line 119 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
@MAIN .SECTION 'CODE'
_main PROC
begin:
#pragma debug scope 3 1 ; 120 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 120 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,096h
MOV _gabOn,A
CLR _gabOn[1]
#line 121 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,030h
MOV _gabOff,A
CLR _gabOff[1]
#line 122 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,0c8h
MOV _blijOn,A
CLR _blijOn[1]
#line 123 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,032h
MOV _blijOff,A
CLR _blijOff[1]
#line 124 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR [011H].0
#line 125 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR [011H].1
#line 126 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SET [011H].2
#line 127 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SET [011H].5
#line 128 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SET [011H].6
#line 129 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SET [011H].7
#line 130 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR [010H].0
#line 131 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR [010H].1
#line 132 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR __status
#line 133 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR __pawu
#line 134 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR __papu
#line 135 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,02dh
MOV __wdtc,A
#line 136 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR __extresb
#line 138 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,01h
MOV __acsr,A
#line 139 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,023h
MOV __adcr,A
#line 141 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR __ctrl0
#line 142 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,03h
MOV __intc0,A
#line 143 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR [0BH].1
#line 144 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SET [0BH].0
#line 144 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
JMP L7
L9:
#pragma debug scope 4 3 ; 147 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#pragma debug scope 5 4 ; 147 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 147 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CALL _ADC
#line 148 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,_gabOn[1]
SUB A,_voltH[1]
SNZ [0ah].0
JMP L68
SNZ [0ah].2
JMP L12
MOV A,_gabOn
SUB A,_voltH
SZ [0ah].0
JMP L12
L68:
SZ [010H].1
JMP L12
#pragma debug scope 6 5 ; 150 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 150 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR _i
CLR _i[1]
#line 150 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
JMP L17
L14:
#pragma debug scope 7 6 ; 151 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 151 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CALL _ADC
#line 152 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SNZ [010H].7
JMP L20
MOV A,_voltH[1]
SUB A,00h
SNZ [0ah].0
JMP L69
SNZ [0ah].2
JMP L18
MOV A,_voltH
SUB A,08ch
SZ [0ah].0
JMP L18
L69:
L20:
#pragma debug scope 8 7 ; 153 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 153 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
JMP L5
L18:
#line 155 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#pragma debug scope 7 6 ; 155 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,0f9H
CALL __DELAYX0
L15:
#line 150 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#pragma debug scope 6 5 ; 150 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
INC _i
SZ [0AH].2
INC _i[1]
L17:
#line 150 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,00h
SUB A,_i[1]
SNZ [0ah].0
JMP L70
SNZ [0ah].2
JMP L14
MOV A,0ebh
SUB A,_i
SZ [0ah].0
JMP L14
L70:
#line 157 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,_blijOn[1]
SUB A,_voltH[1]
SNZ [0ah].0
JMP L71
SNZ [0ah].2
JMP L21
MOV A,_blijOn
SUB A,_voltH
SZ [0ah].0
JMP L21
L71:
#pragma debug scope 9 6 ; 158 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 158 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SET [010H].0
L21:
#line 160 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#pragma debug scope 6 5 ; 160 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,_gabOn[1]
SUB A,_voltH[1]
SNZ [0ah].0
JMP L72
SNZ [0ah].2
JMP L23
MOV A,_gabOn
SUB A,_voltH
SZ [0ah].0
JMP L23
L72:
#pragma debug scope 10 6 ; 161 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 161 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SET [010H].1
L23:
L12:
#line 164 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#pragma debug scope 5 4 ; 164 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,_blijOn[1]
SUB A,_voltH[1]
SNZ [0ah].0
JMP L73
SNZ [0ah].2
JMP L25
MOV A,_blijOn
SUB A,_voltH
SZ [0ah].0
JMP L25
L73:
SZ [010H].0
JMP L25
#pragma debug scope 11 5 ; 166 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 166 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR _i
CLR _i[1]
#line 166 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
JMP L30
L27:
#pragma debug scope 12 11 ; 167 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 167 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CALL _ADC
#line 168 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SNZ [010H].7
JMP L33
MOV A,_voltH[1]
SUB A,00h
SNZ [0ah].0
JMP L74
SNZ [0ah].2
JMP L31
MOV A,_voltH
SUB A,0beh
SZ [0ah].0
JMP L31
L74:
L33:
#pragma debug scope 13 12 ; 169 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 169 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
JMP L5
L31:
#line 171 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#pragma debug scope 12 11 ; 171 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,0f9H
CALL __DELAYX0
L28:
#line 166 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#pragma debug scope 11 5 ; 166 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
INC _i
SZ [0AH].2
INC _i[1]
L30:
#line 166 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,00h
SUB A,_i[1]
SNZ [0ah].0
JMP L75
SNZ [0ah].2
JMP L27
MOV A,0ebh
SUB A,_i
SZ [0ah].0
JMP L27
L75:
#line 173 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,_blijOn[1]
SUB A,_voltH[1]
SNZ [0ah].0
JMP L76
SNZ [0ah].2
JMP L34
MOV A,_blijOn
SUB A,_voltH
SZ [0ah].0
JMP L34
L76:
#pragma debug scope 14 11 ; 174 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 174 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SET [010H].0
L34:
L25:
#line 177 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#pragma debug scope 5 4 ; 177 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,_voltH[1]
SUB A,_blijOff[1]
SNZ [0ah].0
JMP L77
SNZ [0ah].2
JMP L36
MOV A,_voltH
SUB A,_blijOff
SZ [0ah].0
JMP L36
L77:
SNZ [010H].0
JMP L36
#pragma debug scope 15 5 ; 179 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 179 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR _i
CLR _i[1]
#line 179 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
JMP L41
L38:
#pragma debug scope 16 15 ; 180 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 180 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CALL _ADC
#line 181 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SNZ [010H].7
JMP L44
MOV A,00h
SUB A,_voltH[1]
SNZ [0ah].0
JMP L78
SNZ [0ah].2
JMP L42
MOV A,03ch
SUB A,_voltH
SZ [0ah].0
JMP L42
L78:
L44:
#pragma debug scope 17 16 ; 182 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 182 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
JMP L5
L42:
L39:
#line 179 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#pragma debug scope 15 5 ; 179 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
INC _i
SZ [0AH].2
INC _i[1]
L41:
#line 179 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,01h
SUB A,_i[1]
SNZ [0ah].0
JMP L79
SNZ [0ah].2
JMP L38
MOV A,0b3h
SUB A,_i
SZ [0ah].0
JMP L38
L79:
#line 185 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,_voltH[1]
SUB A,_blijOff[1]
SNZ [0ah].0
JMP L80
SNZ [0ah].2
JMP L45
MOV A,_voltH
SUB A,_blijOff
SZ [0ah].0
JMP L45
L80:
#pragma debug scope 18 15 ; 186 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 186 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR [010H].0
L45:
L36:
#line 189 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#pragma debug scope 5 4 ; 189 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,_voltH[1]
SUB A,_gabOff[1]
SNZ [0ah].0
JMP L81
SNZ [0ah].2
JMP L47
MOV A,_voltH
SUB A,_gabOff
SZ [0ah].0
JMP L47
L81:
SNZ [010H].1
JMP L47
#pragma debug scope 19 5 ; 191 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 191 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR _i
CLR _i[1]
#line 191 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
JMP L52
L49:
#pragma debug scope 20 19 ; 192 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 192 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CALL _ADC
#line 193 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SNZ [010H].7
JMP L55
MOV A,00h
SUB A,_voltH[1]
SNZ [0ah].0
JMP L82
SNZ [0ah].2
JMP L53
MOV A,030h
SUB A,_voltH
SZ [0ah].0
JMP L53
L82:
L55:
#pragma debug scope 21 20 ; 194 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 194 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
JMP L5
L53:
#line 196 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#pragma debug scope 20 19 ; 196 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,0f9H
CALL __DELAYX0
L50:
#line 191 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#pragma debug scope 19 5 ; 191 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
INC _i
SZ [0AH].2
INC _i[1]
L52:
#line 191 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,01h
SUB A,_i[1]
SNZ [0ah].0
JMP L83
SNZ [0ah].2
JMP L49
MOV A,0b3h
SUB A,_i
SZ [0ah].0
JMP L49
L83:
#line 198 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,_voltH[1]
SUB A,_gabOff[1]
SNZ [0ah].0
JMP L84
SNZ [0ah].2
JMP L56
MOV A,_voltH
SUB A,_gabOff
SZ [0ah].0
JMP L56
L84:
#pragma debug scope 22 19 ; 199 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 199 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR [010H].1
L56:
L47:
L10:
#line 146 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#pragma debug scope 4 3 ; 146 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SZ [010H].7
JMP L9
#line 203 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SZ [010H].6
JMP L58
#pragma debug scope 23 4 ; 204 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 204 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CALL _ADC
#line 205 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,_gabOn[1]
SUB A,_voltH[1]
SNZ [0ah].0
JMP L85
SNZ [0ah].2
JMP L60
MOV A,_gabOn
SUB A,_voltH
SZ [0ah].0
JMP L60
L85:
#pragma debug scope 24 23 ; 207 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 207 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SET [010H].1
#line 208 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SET [010H].0
#line 209 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR _i
CLR _i[1]
#line 209 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
JMP L65
L62:
#pragma debug scope 25 24 ; 210 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 210 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
SNZ [010H].7
JMP L66
#pragma debug scope 26 25 ; 211 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 211 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,010h
MOV _i,A
MOV A,027h
MOV _i[1],A
#line 212 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#pragma debug scope 25 24 ; 212 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
JMP L67
L66:
#pragma debug scope 27 25 ; 213 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#line 213 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,0f9H
CALL __DELAYX0
L67:
L63:
#line 209 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#pragma debug scope 24 23 ; 209 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
INC _i
SZ [0AH].2
INC _i[1]
L65:
#line 209 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
MOV A,027h
SUB A,_i[1]
SNZ [0ah].0
JMP L86
SNZ [0ah].2
JMP L62
MOV A,010h
SUB A,_i
SZ [0ah].0
JMP L62
L86:
#line 216 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR [010H].1
#line 217 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
CLR [010H].0
L60:
L58:
L7:
#line 145 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
#pragma debug scope 3 1 ; 145 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
JMP L10
L5:
#line 228 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
JMP $
_main ENDP
PUBLIC _voltH
@voltH .SECTION 'DATA'
#line 16 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
_voltH DB 2 DUP (?) ; voltH
#pragma debug variable 12 1 _voltH voltH
PUBLIC _voltL
@voltL .SECTION 'DATA'
#line 15 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
_voltL DB 2 DUP (?) ; voltL
#pragma debug variable 12 1 _voltL voltL
PUBLIC _i
@i .SECTION 'DATA'
#line 14 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
_i DB 2 DUP (?) ; i
#pragma debug variable 12 1 _i i
PUBLIC _blijOff
@blijOff .SECTION 'DATA'
#line 13 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
_blijOff DB 2 DUP (?) ; blijOff
#pragma debug variable 12 1 _blijOff blijOff
PUBLIC _blijOn
@blijOn .SECTION 'DATA'
#line 12 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
_blijOn DB 2 DUP (?) ; blijOn
#pragma debug variable 12 1 _blijOn blijOn
PUBLIC _gabOff
@gabOff .SECTION 'DATA'
#line 11 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
_gabOff DB 2 DUP (?) ; gabOff
#pragma debug variable 12 1 _gabOff gabOff
PUBLIC _gabOn
@gabOn .SECTION 'DATA'
#line 10 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
_gabOn DB 2 DUP (?) ; gabOn
#pragma debug variable 12 1 _gabOn gabOn
#line 119 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
EXTERN RH:BYTE
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
#line 119 "C:\Users\User\Desktop\Holtek\Tunel_New\Tunel_New.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
