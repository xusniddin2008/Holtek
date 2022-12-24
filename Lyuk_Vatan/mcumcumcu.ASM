#pragma debug scope 1 1
#line 6 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
__extresb EQU [024H]
__wdtc EQU [01cH]
__ctrl1 EQU [01bH]
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
@delay .SECTION 'CODE'
PUBLIC _delay
_delay PROC
#pragma debug scope 2 1
#line 6 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
PUBLIC delay0
LOCAL delay0 DB 2 DUP (?) ; count
#pragma debug variable 12 2 delay0 count
#pragma debug scope 2 1 ; 7 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#line 7 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,1
MOV _i,A
CLR _i[1]
#line 7 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
JMP L5
L2:
#pragma debug scope 3 2 ; 8 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#line 8 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,0c2H
MOV RH,A
MOV A,0edH
CALL __DELAYY3
L3:
#line 7 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#pragma debug scope 2 1 ; 7 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
INC _i
SZ [0AH].2
INC _i[1]
L5:
#line 7 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,delay0[1]
SUB A,_i[1]
SNZ [0ah].0
JMP L6
SNZ [0ah].2
JMP L2
MOV A,delay0
SUB A,_i
SZ [0ah].0
JMP L2
L6:
L1:
RET
_delay ENDP
#line 13 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
@delay_info .SECTION 'CODE'
PUBLIC _delay_info
_delay_info PROC
#pragma debug scope 4 1
#line 13 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
PUBLIC delay_info0
LOCAL delay_info0 DB 2 DUP (?) ; count
#pragma debug variable 12 4 delay_info0 count
#pragma debug scope 4 1 ; 14 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#line 14 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,1
MOV _i,A
CLR _i[1]
#line 14 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
JMP L11
L8:
#pragma debug scope 5 4 ; 15 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#line 15 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,0c2H
MOV RH,A
MOV A,0edH
CALL __DELAYY3
#line 16 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SNZ [010H].2
JMP L12
#pragma debug scope 6 5 ; 17 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#line 17 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
JMP L10
L12:
L9:
#line 14 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#pragma debug scope 4 1 ; 14 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
INC _i
SZ [0AH].2
INC _i[1]
L11:
#line 14 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,delay_info0[1]
SUB A,_i[1]
SNZ [0ah].0
JMP L14
SNZ [0ah].2
JMP L8
MOV A,delay_info0
SUB A,_i
SZ [0ah].0
JMP L8
L14:
L10:
L7:
RET
_delay_info ENDP
#line 22 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
@MAIN .SECTION 'CODE'
_main PROC
begin:
#pragma debug scope 7 1 ; 23 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#line 23 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,00h
MOV _blink,A
MOV A,00h
MOV _blink[1],A
MOV A,028h
MOV _blink[2],A
MOV A,041h
MOV _blink[3],A
#line 24 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
CLR [011H].0
#line 25 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
CLR [011H].1
#line 26 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SET [011H].2
#line 27 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SET [011H].5
#line 28 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SET [011H].6
#line 29 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SET [011H].7
#line 30 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
CLR [010H].0
#line 31 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
CLR [010H].1
#line 32 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
CLR __status
#line 33 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
CLR __pawu
#line 34 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
CLR __papu
#line 35 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,02dh
MOV __wdtc,A
#line 36 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
CLR __extresb
#line 37 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
CLR [0BH].1
#line 38 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
CLR [0BH].0
#line 38 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
JMP L17
L16:
#pragma debug scope 8 7 ; 41 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#line 41 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SZ [010H].6
JMP L19
#pragma debug scope 9 8 ; 42 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#line 42 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,030H
MOV RH,A
MOV A,0baH
CALL __DELAYY3
#line 43 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SZ [010H].6
JMP L21
#pragma debug scope 10 9 ; 59 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#line 59 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SNZ [010H].2
JMP L23
#pragma debug scope 11 10 ; 60 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#line 60 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SET [010H].0
#line 61 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,01eh
MOV delay0,A
MOV A,00h
MOV delay0[1],A
CALL _delay
#line 62 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
CLR [010H].0
#line 63 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,061H
MOV RH,A
MOV A,076H
CALL __DELAYY1
#line 64 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,00h
MOV _blink,A
MOV A,00h
MOV _blink[1],A
MOV A,060h
MOV _blink[2],A
MOV A,040h
MOV _blink[3],A
#line 65 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#pragma debug scope 10 9 ; 65 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
JMP L24
L23:
#pragma debug scope 12 10 ; 67 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#line 67 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SET [010H].1
#line 68 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,01eh
MOV delay0,A
MOV A,00h
MOV delay0[1],A
CALL _delay
#line 69 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
CLR [010H].1
#line 70 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,061H
MOV RH,A
MOV A,076H
CALL __DELAYY1
#line 71 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,00h
MOV _blink,A
MOV A,00h
MOV _blink[1],A
MOV A,028h
MOV _blink[2],A
MOV A,041h
MOV _blink[3],A
#line 72 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SZ [010H].2
JMP L25
#pragma debug scope 13 12 ; 73 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#line 73 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SET [010H].0
#line 74 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,078h
MOV delay_info0,A
MOV A,00h
MOV delay_info0[1],A
CALL _delay_info
#line 75 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
CLR [010H].0
#line 76 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,061H
MOV RH,A
MOV A,076H
CALL __DELAYY1
#line 77 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,00h
MOV _blink,A
MOV A,00h
MOV _blink[1],A
MOV A,060h
MOV _blink[2],A
MOV A,040h
MOV _blink[3],A
L25:
L24:
L21:
L19:
#line 83 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#pragma debug scope 8 7 ; 83 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SZ [010H].7
JMP L27
SZ [010H].2
JMP L27
#pragma debug scope 14 8 ; 84 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#line 84 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,030H
MOV RH,A
MOV A,0baH
CALL __DELAYY3
#line 85 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SZ [010H].7
JMP L29
SZ [010H].2
JMP L29
#pragma debug scope 15 14 ; 86 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#line 86 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SET [010H].1
#line 87 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,01eh
MOV delay0,A
MOV A,00h
MOV delay0[1],A
CALL _delay
#line 88 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
CLR [010H].1
#line 89 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,061H
MOV RH,A
MOV A,076H
CALL __DELAYY1
#line 90 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,00h
MOV _blink,A
MOV A,00h
MOV _blink[1],A
MOV A,028h
MOV _blink[2],A
MOV A,041h
MOV _blink[3],A
#line 91 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SZ [010H].2
JMP L31
#pragma debug scope 16 15 ; 92 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#line 92 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
SET [010H].0
#line 93 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,064h
MOV delay_info0,A
MOV A,00h
MOV delay_info0[1],A
CALL _delay_info
#line 94 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
CLR [010H].0
#line 95 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,061H
MOV RH,A
MOV A,076H
CALL __DELAYY1
#line 96 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
MOV A,00h
MOV _blink,A
MOV A,00h
MOV _blink[1],A
MOV A,060h
MOV _blink[2],A
MOV A,040h
MOV _blink[3],A
L31:
L29:
L27:
L17:
#line 39 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
#pragma debug scope 7 1 ; 39 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
JMP L16
L15:
#line 101 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
JMP $
_main ENDP
PUBLIC _blink
@blink .SECTION 'DATA'
#line 4 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
_blink DB 4 DUP (?) ; blink
#pragma debug variable 15 1 _blink blink
PUBLIC _i
@i .SECTION 'DATA'
#line 3 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
_i DB 2 DUP (?) ; i
#pragma debug variable 12 1 _i i
#line 22 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
EXTERN RH:BYTE
EXTERN __DELAYY0:NEAR
EXTERN __DELAYY1:NEAR
EXTERN __DELAYY2:NEAR
EXTERN __DELAYY3:NEAR
EXTERN __DELAYY4:NEAR
EXTERN __DELAYY5:NEAR
#line 22 "C:\Users\User\Desktop\Holtek\Lyuk_Vatan\mcumcumcu.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
