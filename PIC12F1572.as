subtitle "Microchip MPLAB XC8 C Compiler v2.45 (Free license) build 20230818022343 Og9 "

pagewidth 120

	opt flic

	processor	12F1572
include "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\12f1572.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
# 54 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
INDF0 equ 00h ;# 
# 74 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
INDF1 equ 01h ;# 
# 94 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PCL equ 02h ;# 
# 114 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
STATUS equ 03h ;# 
# 177 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
FSR0L equ 04h ;# 
# 197 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
FSR0H equ 05h ;# 
# 221 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
FSR1L equ 06h ;# 
# 241 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
FSR1H equ 07h ;# 
# 261 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
BSR equ 08h ;# 
# 313 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
WREG equ 09h ;# 
# 333 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PCLATH equ 0Ah ;# 
# 353 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
INTCON equ 0Bh ;# 
# 431 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PORTA equ 0Ch ;# 
# 489 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PIR1 equ 011h ;# 
# 540 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PIR2 equ 012h ;# 
# 561 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PIR3 equ 013h ;# 
# 594 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
TMR0 equ 015h ;# 
# 614 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
TMR1 equ 016h ;# 
# 621 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
TMR1L equ 016h ;# 
# 641 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
TMR1H equ 017h ;# 
# 661 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
T1CON equ 018h ;# 
# 728 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
T1GCON equ 019h ;# 
# 805 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
TMR2 equ 01Ah ;# 
# 825 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PR2 equ 01Bh ;# 
# 845 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
T2CON equ 01Ch ;# 
# 916 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
TRISA equ 08Ch ;# 
# 974 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PIE1 equ 091h ;# 
# 1025 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PIE2 equ 092h ;# 
# 1046 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PIE3 equ 093h ;# 
# 1079 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
OPTION_REG equ 095h ;# 
# 1162 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PCON equ 096h ;# 
# 1219 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
WDTCON equ 097h ;# 
# 1278 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
OSCTUNE equ 098h ;# 
# 1336 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
OSCCON equ 099h ;# 
# 1408 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
OSCSTAT equ 09Ah ;# 
# 1464 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
ADRES equ 09Bh ;# 
# 1471 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
ADRESL equ 09Bh ;# 
# 1491 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
ADRESH equ 09Ch ;# 
# 1511 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
ADCON0 equ 09Dh ;# 
# 1600 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
ADCON1 equ 09Eh ;# 
# 1666 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
ADCON2 equ 09Fh ;# 
# 1714 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
LATA equ 010Ch ;# 
# 1767 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
CM1CON0 equ 0111h ;# 
# 1824 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
CM1CON1 equ 0112h ;# 
# 1896 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
CMOUT equ 0115h ;# 
# 1916 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
BORCON equ 0116h ;# 
# 1949 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
FVRCON equ 0117h ;# 
# 2025 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
DACCON0 equ 0118h ;# 
# 2080 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
DACCON1 equ 0119h ;# 
# 2132 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
APFCON equ 011Dh ;# 
# 2137 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
APFCON0 equ 011Dh ;# 
# 2244 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
ANSELA equ 018Ch ;# 
# 2291 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PMADR equ 0191h ;# 
# 2298 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PMADRL equ 0191h ;# 
# 2318 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PMADRH equ 0192h ;# 
# 2338 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PMDAT equ 0193h ;# 
# 2345 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PMDATL equ 0193h ;# 
# 2365 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PMDATH equ 0194h ;# 
# 2385 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PMCON1 equ 0195h ;# 
# 2441 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PMCON2 equ 0196h ;# 
# 2461 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
VREGCON equ 0197h ;# 
# 2482 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
RCREG equ 0199h ;# 
# 2502 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
TXREG equ 019Ah ;# 
# 2522 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
SPBRG equ 019Bh ;# 
# 2529 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
SPBRGL equ 019Bh ;# 
# 2549 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
SPBRGH equ 019Ch ;# 
# 2569 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
RCSTA equ 019Dh ;# 
# 2631 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
TXSTA equ 019Eh ;# 
# 2693 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
BAUDCON equ 019Fh ;# 
# 2745 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
WPUA equ 020Ch ;# 
# 2803 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
ODCONA equ 028Ch ;# 
# 2856 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
SLRCONA equ 030Ch ;# 
# 2909 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
INLVLA equ 038Ch ;# 
# 2967 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
IOCAP equ 0391h ;# 
# 3025 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
IOCAN equ 0392h ;# 
# 3083 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
IOCAF equ 0393h ;# 
# 3141 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
CWG1DBR equ 0691h ;# 
# 3199 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
CWG1DBF equ 0692h ;# 
# 3257 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
CWG1CON0 equ 0693h ;# 
# 3316 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
CWG1CON1 equ 0694h ;# 
# 3393 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
CWG1CON2 equ 0695h ;# 
# 3433 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWMEN equ 0D8Eh ;# 
# 3485 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWMLD equ 0D8Fh ;# 
# 3537 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWMOUT equ 0D90h ;# 
# 3589 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1PH equ 0D91h ;# 
# 3596 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1PHL equ 0D91h ;# 
# 3674 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1PHH equ 0D92h ;# 
# 3752 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1DC equ 0D93h ;# 
# 3759 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1DCL equ 0D93h ;# 
# 3837 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1DCH equ 0D94h ;# 
# 3915 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1PR equ 0D95h ;# 
# 3922 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1PRL equ 0D95h ;# 
# 4000 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1PRH equ 0D96h ;# 
# 4078 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1OF equ 0D97h ;# 
# 4085 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1OFL equ 0D97h ;# 
# 4163 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1OFH equ 0D98h ;# 
# 4241 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1TMR equ 0D99h ;# 
# 4248 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1TMRL equ 0D99h ;# 
# 4326 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1TMRH equ 0D9Ah ;# 
# 4404 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1CON equ 0D9Bh ;# 
# 4512 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1INTE equ 0D9Ch ;# 
# 4517 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1INTCON equ 0D9Ch ;# 
# 4638 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1INTF equ 0D9Dh ;# 
# 4643 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1INTFLG equ 0D9Dh ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1CLKCON equ 0D9Eh ;# 
# 4872 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1LDCON equ 0D9Fh ;# 
# 4954 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM1OFCON equ 0DA0h ;# 
# 5062 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2PH equ 0DA1h ;# 
# 5069 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2PHL equ 0DA1h ;# 
# 5147 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2PHH equ 0DA2h ;# 
# 5225 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2DC equ 0DA3h ;# 
# 5232 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2DCL equ 0DA3h ;# 
# 5310 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2DCH equ 0DA4h ;# 
# 5388 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2PR equ 0DA5h ;# 
# 5395 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2PRL equ 0DA5h ;# 
# 5473 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2PRH equ 0DA6h ;# 
# 5551 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2OF equ 0DA7h ;# 
# 5558 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2OFL equ 0DA7h ;# 
# 5636 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2OFH equ 0DA8h ;# 
# 5714 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2TMR equ 0DA9h ;# 
# 5721 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2TMRL equ 0DA9h ;# 
# 5799 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2TMRH equ 0DAAh ;# 
# 5877 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2CON equ 0DABh ;# 
# 5985 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2INTE equ 0DACh ;# 
# 5990 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2INTCON equ 0DACh ;# 
# 6111 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2INTF equ 0DADh ;# 
# 6116 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2INTFLG equ 0DADh ;# 
# 6237 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2CLKCON equ 0DAEh ;# 
# 6345 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2LDCON equ 0DAFh ;# 
# 6427 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM2OFCON equ 0DB0h ;# 
# 6535 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3PH equ 0DB1h ;# 
# 6542 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3PHL equ 0DB1h ;# 
# 6620 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3PHH equ 0DB2h ;# 
# 6698 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3DC equ 0DB3h ;# 
# 6705 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3DCL equ 0DB3h ;# 
# 6783 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3DCH equ 0DB4h ;# 
# 6861 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3PR equ 0DB5h ;# 
# 6868 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3PRL equ 0DB5h ;# 
# 6946 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3PRH equ 0DB6h ;# 
# 7024 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3OF equ 0DB7h ;# 
# 7031 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3OFL equ 0DB7h ;# 
# 7109 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3OFH equ 0DB8h ;# 
# 7187 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3TMR equ 0DB9h ;# 
# 7194 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3TMRL equ 0DB9h ;# 
# 7272 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3TMRH equ 0DBAh ;# 
# 7350 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3CON equ 0DBBh ;# 
# 7458 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3INTE equ 0DBCh ;# 
# 7463 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3INTCON equ 0DBCh ;# 
# 7584 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3INTF equ 0DBDh ;# 
# 7589 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3INTFLG equ 0DBDh ;# 
# 7710 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3CLKCON equ 0DBEh ;# 
# 7818 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3LDCON equ 0DBFh ;# 
# 7900 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PWM3OFCON equ 0DC0h ;# 
# 8008 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
STATUS_SHAD equ 0FE4h ;# 
# 8040 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
WREG_SHAD equ 0FE5h ;# 
# 8060 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
BSR_SHAD equ 0FE6h ;# 
# 8080 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
PCLATH_SHAD equ 0FE7h ;# 
# 8100 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
FSR0_SHAD equ 0FE8h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
FSR0L_SHAD equ 0FE8h ;# 
# 8127 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
FSR0H_SHAD equ 0FE9h ;# 
# 8147 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
FSR1_SHAD equ 0FEAh ;# 
# 8154 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
FSR1L_SHAD equ 0FEAh ;# 
# 8174 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
FSR1H_SHAD equ 0FEBh ;# 
# 8194 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
STKPTR equ 0FEDh ;# 
# 8214 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
TOS equ 0FEEh ;# 
# 8221 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
TOSL equ 0FEEh ;# 
# 8241 "C:\Program Files\Microchip\xc8\v2.45\pic\include\proc\pic12f1572.h"
TOSH equ 0FEFh ;# 
	debug_source C
	FNCALL	_main,_UART_Init
	FNCALL	_main,_UART_Read_Text
	FNCALL	_main,_UART_Write_Text
	FNCALL	_main,_readLM35
	FNCALL	_main,_sprintf
	FNCALL	_main,_strlen
	FNCALL	_main,_strstr
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_readLM35,___awtoft
	FNCALL	_readLM35,___ftdiv
	FNCALL	_readLM35,___ftmul
	FNCALL	_readLM35,_roundNum
	FNCALL	_roundNum,___ftadd
	FNCALL	_roundNum,___ftge
	FNCALL	_roundNum,___fttol
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	_UART_Write_Text,_UART_Write
	FNCALL	_UART_Read_Text,_UART_Read
	FNROOT	_main
	global	_dpowers
psect	stringtext1,class=STRCODE,delta=2,noexec
global __pstringtext1
__pstringtext1:
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\doprnt.c"
	line	358
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_PIR1bits
_PIR1bits	set	0x11
	global	_RCIF
_RCIF	set	0x8D
	global	_ADRESL
_ADRESL	set	0x9B
	global	_ADRESH
_ADRESH	set	0x9C
	global	_GO_nDONE
_GO_nDONE	set	0x4E9
	global	_TRISA1
_TRISA1	set	0x461
	global	_TRISA0
_TRISA0	set	0x460
	global	_SPBRG
_SPBRG	set	0x19B
	global	_RCREG
_RCREG	set	0x199
	global	_TXREG
_TXREG	set	0x19A
	global	_RCSTA
_RCSTA	set	0x19D
	global	_TXSTA
_TXSTA	set	0x19E
	global	_TRMT
_TRMT	set	0xCF1
	
STR_2:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	87	;'W'
	retlw	74	;'J'
	retlw	65	;'A'
	retlw	80	;'P'
	retlw	61	;'='
	retlw	34	;'"'
	retlw	87	;'W'
	retlw	73	;'I'
	retlw	70	;'F'
	retlw	73	;'I'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	34	;'"'
	retlw	44	;','
	retlw	34	;'"'
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	83	;'S'
	retlw	87	;'W'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	68	;'D'
	retlw	34	;'"'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext2,class=STRCODE,delta=2,noexec
global __pstringtext2
__pstringtext2:
	
STR_5:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	73	;'I'
	retlw	80	;'P'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	61	;'='
	retlw	49	;'1'
	retlw	44	;','
	retlw	56	;'8'
	retlw	48	;'0'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext3,class=STRCODE,delta=2,noexec
global __pstringtext3
__pstringtext3:
	
STR_12:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	73	;'I'
	retlw	80	;'P'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	61	;'='
	retlw	48	;'0'
	retlw	44	;','
	retlw	49	;'1'
	retlw	54	;'6'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext4,class=STRCODE,delta=2,noexec
global __pstringtext4
__pstringtext4:
	
STR_13:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	113	;'q'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext5,class=STRCODE,delta=2,noexec
global __pstringtext5
__pstringtext5:
	
STR_14:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	73	;'I'
	retlw	80	;'P'
	retlw	67	;'C'
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	61	;'='
	retlw	48	;'0'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext6,class=STRCODE,delta=2,noexec
global __pstringtext6
__pstringtext6:
	
STR_4:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	73	;'I'
	retlw	80	;'P'
	retlw	77	;'M'
	retlw	85	;'U'
	retlw	88	;'X'
	retlw	61	;'='
	retlw	49	;'1'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext7,class=STRCODE,delta=2,noexec
global __pstringtext7
__pstringtext7:
	
STR_9:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	73	;'I'
	retlw	80	;'P'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	61	;'='
	retlw	48	;'0'
	retlw	44	;','
	retlw	0
psect	stringtext8,class=STRCODE,delta=2,noexec
global __pstringtext8
__pstringtext8:
	
STR_3:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	73	;'I'
	retlw	70	;'F'
	retlw	83	;'S'
	retlw	82	;'R'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext9,class=STRCODE,delta=2,noexec
global __pstringtext9
__pstringtext9:
	
STR_6:	
	retlw	47	;'/'
	retlw	109	;'m'
	retlw	117	;'u'
	retlw	100	;'d'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	82	;'R'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	0
psect	stringtext10,class=STRCODE,delta=2,noexec
global __pstringtext10
__pstringtext10:
	
STR_1:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext11,class=STRCODE,delta=2,noexec
global __pstringtext11
__pstringtext11:
	
STR_7:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	stringtext12,class=STRCODE,delta=2,noexec
global __pstringtext12
__pstringtext12:
STR_8	equ	STR_7+0
STR_15	equ	STR_1+0
STR_10	equ	STR_2+31
STR_11	equ	STR_2+31
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	file	"PIC12F1572.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	main@req
main@req:	; 64 bytes @ 0x0
	ds	64
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?___ftge:	; 1 bit 
?_strstr:	; 1 bytes @ 0x0
?_UART_Init:	; 1 bytes @ 0x0
??_UART_Init:	; 1 bytes @ 0x0
?_UART_Write:	; 1 bytes @ 0x0
??_UART_Write:	; 1 bytes @ 0x0
?_UART_Read:	; 1 bytes @ 0x0
??_UART_Read:	; 1 bytes @ 0x0
?_UART_Read_Text:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	?_strlen
?_strlen:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	UART_Write@data
UART_Write@data:	; 1 bytes @ 0x0
	global	UART_Read_Text@length
UART_Read_Text@length:	; 2 bytes @ 0x0
	global	strstr@str2
strstr@str2:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	ds	1
?_UART_Write_Text:	; 1 bytes @ 0x1
	global	UART_Write_Text@text
UART_Write_Text@text:	; 2 bytes @ 0x1
	ds	1
??_strstr:	; 1 bytes @ 0x2
??_UART_Read_Text:	; 1 bytes @ 0x2
??_strlen:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??_UART_Write_Text:	; 1 bytes @ 0x3
	global	UART_Read_Text@Output
UART_Read_Text@Output:	; 1 bytes @ 0x3
	global	strlen@str
strlen@str:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??___lwdiv:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	UART_Write_Text@i
UART_Write_Text@i:	; 2 bytes @ 0x4
	global	UART_Read_Text@i
UART_Read_Text@i:	; 2 bytes @ 0x4
	global	strlen@len
strlen@len:	; 2 bytes @ 0x4
	ds	1
??___ftpack:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
??___ftge:	; 1 bytes @ 0x6
	ds	1
	global	strstr@str1
strstr@str1:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x8
	global	strstr@s1
strstr@s1:	; 1 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x8
	ds	1
	global	strstr@s2
strstr@s2:	; 2 bytes @ 0x9
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	1
??___awtoft:	; 1 bytes @ 0xB
	global	strstr@cp
strstr@cp:	; 1 bytes @ 0xB
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xB
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0xB
	ds	1
??___lwmod:	; 1 bytes @ 0xC
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
??_roundNum:	; 1 bytes @ 0xE
??_readLM35:	; 1 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___ftadd:	; 1 bytes @ 0x0
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x0
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x0
	global	sprintf@f
sprintf@f:	; 2 bytes @ 0x0
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x0
	ds	3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x3
	ds	1
??_sprintf:	; 1 bytes @ 0x4
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x4
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x5
	ds	1
??___ftmul:	; 1 bytes @ 0x6
	global	?___fttol
?___fttol:	; 4 bytes @ 0x6
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x6
	ds	2
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x8
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x9
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x9
	ds	1
??___fttol:	; 1 bytes @ 0xA
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0xA
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0xA
	ds	1
	global	sprintf@val
sprintf@val:	; 2 bytes @ 0xB
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0xD
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0xD
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0xD
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0xE
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0xE
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0xE
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0xF
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0xF
	ds	3
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x12
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x12
	ds	3
??___ftdiv:	; 1 bytes @ 0x15
	ds	3
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x18
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x19
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x1C
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x1D
	ds	1
	global	?_roundNum
?_roundNum:	; 2 bytes @ 0x1E
	global	roundNum@num
roundNum@num:	; 3 bytes @ 0x1E
	ds	3
	global	?_readLM35
?_readLM35:	; 2 bytes @ 0x21
	ds	2
	global	readLM35@voltage
readLM35@voltage:	; 3 bytes @ 0x23
	ds	3
	global	readLM35@adc
readLM35@adc:	; 2 bytes @ 0x26
	ds	2
	global	readLM35@temp
readLM35@temp:	; 2 bytes @ 0x28
	ds	2
??_main:	; 1 bytes @ 0x2A
	ds	2
	global	main@lenStr
main@lenStr:	; 10 bytes @ 0x2C
	ds	10
	global	main@tempStr
main@tempStr:	; 10 bytes @ 0x36
	ds	10
	global	main@temp
main@temp:	; 2 bytes @ 0x40
	ds	2
;!
;!Data Sizes:
;!    Strings     164
;!    Constant    10
;!    Data        0
;!    BSS         0
;!    Persistent  32
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     66      66
;!    BANK1            80     64      64
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    sp__strstr	PTR unsigned char  size(1) Largest target is 64
;!		 -> main@req(BANK1[64]), NULL(NULL[0]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    sprintf@f	PTR const unsigned char  size(2) Largest target is 3
;!		 -> STR_7(CODE[3]), STR_8(CODE[3]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 10
;!		 -> main@lenStr(BANK0[10]), main@tempStr(BANK0[10]), 
;!
;!    strlen@str	PTR const unsigned char  size(1) Largest target is 10
;!		 -> main@tempStr(BANK0[10]), 
;!
;!    strstr@cp	PTR unsigned char  size(1) Largest target is 64
;!		 -> main@req(BANK1[64]), 
;!
;!    strstr@s1	PTR unsigned char  size(1) Largest target is 64
;!		 -> main@req(BANK1[64]), 
;!
;!    strstr@s2	PTR unsigned char  size(2) Largest target is 11
;!		 -> STR_6(CODE[11]), 
;!
;!    strstr@str1	PTR const unsigned char  size(1) Largest target is 64
;!		 -> main@req(BANK1[64]), 
;!
;!    strstr@str2	PTR const unsigned char  size(2) Largest target is 11
;!		 -> STR_6(CODE[11]), 
;!
;!    UART_Read_Text@Output	PTR unsigned char  size(1) Largest target is 64
;!		 -> main@req(BANK1[64]), 
;!
;!    UART_Write_Text@text	PTR const unsigned char  size(2) Largest target is 34
;!		 -> main@lenStr(BANK0[10]), main@tempStr(BANK0[10]), STR_1(CODE[5]), STR_10(CODE[3]), 
;!		 -> STR_11(CODE[3]), STR_12(CODE[18]), STR_13(CODE[18]), STR_14(CODE[16]), 
;!		 -> STR_15(CODE[5]), STR_2(CODE[34]), STR_3(CODE[11]), STR_4(CODE[14]), 
;!		 -> STR_5(CODE[20]), STR_9(CODE[14]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _roundNum->___ftadd
;!    ___fttol->___ftadd
;!    ___ftadd->___ftpack
;!    ___ftmul->___awtoft
;!    ___ftdiv->___awtoft
;!    ___awtoft->___ftpack
;!    _UART_Write_Text->_UART_Write
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_readLM35
;!    _readLM35->_roundNum
;!    _roundNum->___ftdiv
;!    ___fttol->___ftadd
;!    ___ftdiv->___ftmul
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                88    88      0   13622
;!                                             42 BANK0     24    24      0
;!                                              0 BANK1     64    64      0
;!                          _UART_Init
;!                     _UART_Read_Text
;!                    _UART_Write_Text
;!                           _readLM35
;!                            _sprintf
;!                             _strlen
;!                             _strstr
;! ---------------------------------------------------------------------------------
;! (1) _strstr                                              12    10      2     350
;!                                              0 COMMON    12    10      2
;! ---------------------------------------------------------------------------------
;! (1) _strlen                                               6     4      2      95
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             23    19      4    1170
;!                                              0 BANK0     15    11      4
;!                            ___lwdiv
;!                            ___lwmod
;!                             _strlen (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     265
;!                                              8 COMMON     6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     268
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _readLM35                                             9     7      2   10780
;!                                             33 BANK0      9     7      2
;!                           ___awtoft
;!                            ___ftdiv
;!                            ___ftmul
;!                           _roundNum
;! ---------------------------------------------------------------------------------
;! (2) _roundNum                                             3     0      3    3798
;!                                             30 BANK0      3     0      3
;!                            ___ftadd
;!                            ___ftdiv (ARG)
;!                             ___ftge
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (3) ___fttol                                             13     9      4     358
;!                                              6 BANK0     13     9      4
;!                            ___ftadd (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftge                                               6     0      6     242
;!                                              0 COMMON     6     0      6
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             12     6      6    3079
;!                                              8 COMMON     6     0      6
;!                                              0 BANK0      6     6      0
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftmul                                             15     9      6    2381
;!                                              0 BANK0     15     9      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftdiv                                             15     9      6    2441
;!                                             15 BANK0     15     9      6
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___awtoft                                             4     1      3    2091
;!                                              8 COMMON     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    1947
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _UART_Write_Text                                      5     3      2     854
;!                                              1 COMMON     5     3      2
;!                         _UART_Write
;! ---------------------------------------------------------------------------------
;! (2) _UART_Write                                           1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _UART_Read_Text                                       6     4      2     170
;!                                              0 COMMON     6     4      2
;!                          _UART_Read
;! ---------------------------------------------------------------------------------
;! (2) _UART_Read                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _UART_Init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _UART_Init
;!   _UART_Read_Text
;!     _UART_Read
;!   _UART_Write_Text
;!     _UART_Write
;!   _readLM35
;!     ___awtoft
;!       ___ftpack
;!     ___ftdiv
;!       ___awtoft (ARG)
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!     ___ftmul
;!     _roundNum
;!       ___ftadd
;!         ___ftpack
;!       ___ftdiv (ARG)
;!       ___ftge (ARG)
;!       ___fttol (ARG)
;!         ___ftadd (ARG)
;!   _sprintf
;!     ___lwdiv
;!     ___lwmod
;!       ___lwdiv (ARG)
;!     _strlen (ARG)
;!   _strlen
;!   _strstr
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM              F0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      E       E       2      100.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0       0       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50     42      42       6       82.5%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BANK1               50     40      40       8       80.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BANK2               50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!DATA                 0      0       0      11        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 83 in file ".\PIC12F1572.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempStr        10   54[BANK0 ] unsigned char [10]
;;  lenStr         10   44[BANK0 ] unsigned char [10]
;;  temp            2   64[BANK0 ] int 
;;  req            64    0[BANK1 ] unsigned char [64]
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0      22      64       0
;;      Temps:          0       2       0       0
;;      Totals:         0      24      64       0
;;Total ram usage:       88 bytes
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_UART_Init
;;		_UART_Read_Text
;;		_UART_Write_Text
;;		_readLM35
;;		_sprintf
;;		_strlen
;;		_strstr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1,group=0
	file	".\PIC12F1572.c"
	line	83
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	".\PIC12F1572.c"
	line	83
	
_main:	
;incstack = 0
	callstack 12
; Regs used in _main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	84
	
l1682:	
	fcall	_UART_Init
	line	85
	
l1684:	
	asmopt push
asmopt off
movlw  16
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	57
movwf	((??_main+0)+0)
	movlw	13
u2017:
decfsz	wreg
	goto	u2017
	decfsz	((??_main+0)+0),f
	goto	u2017
	decfsz	((??_main+0)+0+1),f
	goto	u2017
	nop2
asmopt pop

	line	86
	
l1686:	
	movlw	low(((STR_1)|8000h))
	movwf	(UART_Write_Text@text)
	movlw	high(((STR_1)|8000h))
	movwf	((UART_Write_Text@text))+1
	fcall	_UART_Write_Text
	line	87
	
l1688:	
	asmopt push
asmopt off
movlw  6
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	19
movwf	((??_main+0)+0)
	movlw	173
u2027:
decfsz	wreg
	goto	u2027
	decfsz	((??_main+0)+0),f
	goto	u2027
	decfsz	((??_main+0)+0+1),f
	goto	u2027
	nop2
asmopt pop

	line	88
	
l1690:	
	movlw	low(((STR_2)|8000h))
	movwf	(UART_Write_Text@text)
	movlw	high(((STR_2)|8000h))
	movwf	((UART_Write_Text@text))+1
	fcall	_UART_Write_Text
	line	89
	
l1692:	
	asmopt push
asmopt off
movlw  26
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	94
movwf	((??_main+0)+0)
	movlw	110
u2037:
decfsz	wreg
	goto	u2037
	decfsz	((??_main+0)+0),f
	goto	u2037
	decfsz	((??_main+0)+0+1),f
	goto	u2037
	nop
asmopt pop

	line	90
	
l1694:	
	movlw	low(((STR_3)|8000h))
	movwf	(UART_Write_Text@text)
	movlw	high(((STR_3)|8000h))
	movwf	((UART_Write_Text@text))+1
	fcall	_UART_Write_Text
	line	91
	
l1696:	
	asmopt push
asmopt off
movlw  11
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	38
movwf	((??_main+0)+0)
	movlw	93
u2047:
decfsz	wreg
	goto	u2047
	decfsz	((??_main+0)+0),f
	goto	u2047
	decfsz	((??_main+0)+0+1),f
	goto	u2047
	nop2
asmopt pop

	line	92
	
l1698:	
	movlw	low(((STR_4)|8000h))
	movwf	(UART_Write_Text@text)
	movlw	high(((STR_4)|8000h))
	movwf	((UART_Write_Text@text))+1
	fcall	_UART_Write_Text
	line	93
	
l1700:	
	asmopt push
asmopt off
movlw  11
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	38
movwf	((??_main+0)+0)
	movlw	93
u2057:
decfsz	wreg
	goto	u2057
	decfsz	((??_main+0)+0),f
	goto	u2057
	decfsz	((??_main+0)+0+1),f
	goto	u2057
	nop2
asmopt pop

	line	94
	
l1702:	
	movlw	low(((STR_5)|8000h))
	movwf	(UART_Write_Text@text)
	movlw	high(((STR_5)|8000h))
	movwf	((UART_Write_Text@text))+1
	fcall	_UART_Write_Text
	line	95
	
l1704:	
	asmopt push
asmopt off
movlw  11
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	38
movwf	((??_main+0)+0)
	movlw	93
u2067:
decfsz	wreg
	goto	u2067
	decfsz	((??_main+0)+0),f
	goto	u2067
	decfsz	((??_main+0)+0+1),f
	goto	u2067
	nop2
asmopt pop

	line	98
	
l1706:	
	movlb 0	; select bank0
	btfss	(17),5	;volatile
	goto	u1991
	goto	u1990
u1991:
	goto	l1742
u1990:
	line	100
	
l1708:	
	movlw	040h
	movwf	(UART_Read_Text@length)
	movlw	0
	movwf	((UART_Read_Text@length))+1
	movlw	(low(main@req|((0x0)<<8)))&0ffh
	fcall	_UART_Read_Text
	line	102
	
l1710:	
	movlw	low(((STR_6)|8000h))
	movwf	(strstr@str2)
	movlw	high(((STR_6)|8000h))
	movwf	((strstr@str2))+1
	movlw	(low(main@req|((0x0)<<8)))&0ffh
	fcall	_strstr
	xorlw	low(0)&0ffh
	skipnz
	goto	u2001
	goto	u2000
u2001:
	goto	l1732
u2000:
	line	103
	
l1712:	
	fcall	_readLM35
	movf	(1+(?_readLM35)),w
	movwf	(main@temp+1)
	movf	(0+(?_readLM35)),w
	movwf	(main@temp)
	line	105
	
l1714:	
	movlw	low(((STR_7)|8000h))
	movwf	(sprintf@f)
	movlw	high(((STR_7)|8000h))
	movwf	((sprintf@f))+1
	movf	(main@temp+1),w
	movwf	1+(?_sprintf)+02h
	movf	(main@temp),w
	movwf	0+(?_sprintf)+02h
	movlw	(low(main@tempStr|((0x0)<<8)))&0ffh
	fcall	_sprintf
	line	107
	
l1716:	
	movlw	low(((STR_8)|8000h))
	movwf	(sprintf@f)
	movlw	high(((STR_8)|8000h))
	movwf	((sprintf@f))+1
	movlw	(low(main@tempStr|((0x0)<<8)))&0ffh
	fcall	_strlen
	movf	(1+(?_strlen)),w
	movwf	1+(?_sprintf)+02h
	movf	(0+(?_strlen)),w
	movwf	0+(?_sprintf)+02h
	movlw	(low(main@lenStr|((0x0)<<8)))&0ffh
	fcall	_sprintf
	line	108
	
l1718:	
	movlw	low(((STR_9)|8000h))
	movwf	(UART_Write_Text@text)
	movlw	high(((STR_9)|8000h))
	movwf	((UART_Write_Text@text))+1
	fcall	_UART_Write_Text
	line	109
	
l1720:	
	movlw	low(main@lenStr)
	movwf	(UART_Write_Text@text)
	movlw	high(main@lenStr)
	movwf	(UART_Write_Text@text+1)
	fcall	_UART_Write_Text
	line	110
	
l1722:	
	movlw	low(((STR_10)|8000h))
	movwf	(UART_Write_Text@text)
	movlw	high(((STR_10)|8000h))
	movwf	((UART_Write_Text@text))+1
	fcall	_UART_Write_Text
	line	111
	
l1724:	
	asmopt push
asmopt off
movlw  6
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	19
movwf	((??_main+0)+0)
	movlw	173
u2077:
decfsz	wreg
	goto	u2077
	decfsz	((??_main+0)+0),f
	goto	u2077
	decfsz	((??_main+0)+0+1),f
	goto	u2077
	nop2
asmopt pop

	line	113
	
l1726:	
	movlw	low(main@tempStr)
	movwf	(UART_Write_Text@text)
	movlw	high(main@tempStr)
	movwf	(UART_Write_Text@text+1)
	fcall	_UART_Write_Text
	line	115
	
l1728:	
	movlw	low(((STR_11)|8000h))
	movwf	(UART_Write_Text@text)
	movlw	high(((STR_11)|8000h))
	movwf	((UART_Write_Text@text))+1
	fcall	_UART_Write_Text
	line	116
	
l1730:	
	asmopt push
asmopt off
movlw  6
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	19
movwf	((??_main+0)+0)
	movlw	173
u2087:
decfsz	wreg
	goto	u2087
	decfsz	((??_main+0)+0),f
	goto	u2087
	decfsz	((??_main+0)+0+1),f
	goto	u2087
	nop2
asmopt pop

	line	117
	goto	l1738
	line	118
	
l1732:	
	movlw	low(((STR_12)|8000h))
	movwf	(UART_Write_Text@text)
	movlw	high(((STR_12)|8000h))
	movwf	((UART_Write_Text@text))+1
	fcall	_UART_Write_Text
	line	119
	
l1734:	
	asmopt push
asmopt off
movlw  6
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	19
movwf	((??_main+0)+0)
	movlw	173
u2097:
decfsz	wreg
	goto	u2097
	decfsz	((??_main+0)+0),f
	goto	u2097
	decfsz	((??_main+0)+0+1),f
	goto	u2097
	nop2
asmopt pop

	line	121
	
l1736:	
	movlw	low(((STR_13)|8000h))
	movwf	(UART_Write_Text@text)
	movlw	high(((STR_13)|8000h))
	movwf	((UART_Write_Text@text))+1
	fcall	_UART_Write_Text
	line	122
	asmopt push
asmopt off
movlw  6
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	19
movwf	((??_main+0)+0)
	movlw	173
u2107:
decfsz	wreg
	goto	u2107
	decfsz	((??_main+0)+0),f
	goto	u2107
	decfsz	((??_main+0)+0+1),f
	goto	u2107
	nop2
asmopt pop

	line	124
	
l1738:	
	movlw	low(((STR_14)|8000h))
	movwf	(UART_Write_Text@text)
	movlw	high(((STR_14)|8000h))
	movwf	((UART_Write_Text@text))+1
	fcall	_UART_Write_Text
	line	125
	
l1740:	
	asmopt push
asmopt off
movlw  6
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	19
movwf	((??_main+0)+0)
	movlw	173
u2117:
decfsz	wreg
	goto	u2117
	decfsz	((??_main+0)+0),f
	goto	u2117
	decfsz	((??_main+0)+0+1),f
	goto	u2117
	nop2
asmopt pop

	line	127
	
l1742:	
	asmopt push
asmopt off
movlw  11
	movlb 0	; select bank0
movwf	((??_main+0)+0+1)
movlw	38
movwf	((??_main+0)+0)
	movlw	93
u2127:
decfsz	wreg
	goto	u2127
	decfsz	((??_main+0)+0),f
	goto	u2127
	decfsz	((??_main+0)+0+1),f
	goto	u2127
	nop2
asmopt pop

	line	128
	
l1744:	
	movlw	low(((STR_15)|8000h))
	movwf	(UART_Write_Text@text)
	movlw	high(((STR_15)|8000h))
	movwf	((UART_Write_Text@text))+1
	fcall	_UART_Write_Text
	goto	l1706
	global	start
	ljmp	start
	callstack 0
	line	130
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_strstr

;; *************** function _strstr *****************
;; Defined at:
;;		line 51 in file ".\PIC12F1572.c"
;; Parameters:    Size  Location     Type
;;  str1            1    wreg     PTR const unsigned char 
;;		 -> main@req(64), 
;;  str2            2    0[COMMON] PTR const unsigned char 
;;		 -> STR_6(11), 
;; Auto vars:     Size  Location     Type
;;  str1            1    7[COMMON] PTR const unsigned char 
;;		 -> main@req(64), 
;;  s2              2    9[COMMON] PTR unsigned char 
;;		 -> STR_6(11), 
;;  cp              1   11[COMMON] PTR unsigned char 
;;		 -> main@req(64), 
;;  s1              1    8[COMMON] PTR unsigned char 
;;		 -> main@req(64), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 1C/0
;;		On exit  : 1C/0
;;		Unchanged: 1C/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         5       0       0       0
;;      Temps:          5       0       0       0
;;      Totals:        12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	51
global __ptext1
__ptext1:	;psect for function _strstr
psect	text1
	file	".\PIC12F1572.c"
	line	51
	
_strstr:	
;incstack = 0
	callstack 15
; Regs used in _strstr: [wreg-fsr1h+status,2+status,0+pclath]
	movwf	(strstr@str1)
	line	53
	
l1580:	
	movf	(strstr@str1),w
	movwf	(strstr@cp)
	line	56
	
l1582:	
	movf	(strstr@str2),w
	movwf	fsr0l
	movf	((strstr@str2+1)),w
	movwf	fsr0h
	moviw	fsr0++
	btfss	status,2
	goto	u1851
	goto	u1850
u1851:
	goto	l1608
u1850:
	line	57
	
l1584:	
	movf	(strstr@str1),w
	goto	l83
	line	61
	
l1588:	
	movf	(strstr@cp),w
	movwf	(strstr@s1)
	line	62
	movf	(strstr@str2+1),w
	movwf	(strstr@s2+1)
	movf	(strstr@str2),w
	movwf	(strstr@s2)
	line	64
	goto	l1594
	line	65
	
l1590:	
	movlw	low(01h)
	movwf	(??_strstr+0)+0
	movf	(??_strstr+0)+0,w
	addwf	(strstr@s1),f
	
l1592:	
	movlw	01h
	addwf	(strstr@s2),f
	movlw	0
	addwfc	(strstr@s2+1),f
	line	64
	
l1594:	
	movf	(strstr@s1),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(indf1),w
	btfsc	status,2
	goto	u1861
	goto	u1860
u1861:
	goto	l1600
u1860:
	
l1596:	
	movf	(strstr@s2),w
	movwf	fsr0l
	movf	((strstr@s2+1)),w
	movwf	fsr0h
	moviw	fsr0++
	btfsc	status,2
	goto	u1871
	goto	u1870
u1871:
	goto	l1600
u1870:
	
l1598:	
	movf	(strstr@s2),w
	movwf	fsr0l
	movf	((strstr@s2+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_strstr+0)+0
	movf	(strstr@s1),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_strstr+1)+0
	clrf	(??_strstr+1)+0+1
	movf	1+(??_strstr+1)+0,w
	movwf	(??_strstr+3)+0+1
	movf	(??_strstr+0)+0,w
	subwf	0+(??_strstr+1)+0,w
	movwf	(??_strstr+3)+0
	skipc
	decf	(??_strstr+3)+0+1,f
	movf	((??_strstr+3)+0),w
iorwf	((??_strstr+3)+1),w
	btfsc	status,2
	goto	u1881
	goto	u1880
u1881:
	goto	l1590
u1880:
	line	67
	
l1600:	
	movf	(strstr@s2),w
	movwf	fsr0l
	movf	((strstr@s2+1)),w
	movwf	fsr0h
	moviw	fsr0++
	btfss	status,2
	goto	u1891
	goto	u1890
u1891:
	goto	l1606
u1890:
	line	68
	
l1602:	
	movf	(strstr@cp),w
	goto	l83
	line	70
	
l1606:	
	movlw	low(01h)
	movwf	(??_strstr+0)+0
	movf	(??_strstr+0)+0,w
	addwf	(strstr@cp),f
	line	59
	
l1608:	
	movf	(strstr@cp),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(indf1),w
	btfss	status,2
	goto	u1901
	goto	u1900
u1901:
	goto	l1588
u1900:
	line	73
	
l1610:	
	movlw	0
	line	74
	
l83:	
	return
	callstack 0
GLOBAL	__end_of_strstr
	__end_of_strstr:
	signat	_strstr,8314
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 76 in file ".\PIC12F1572.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR const unsigned char 
;;		 -> main@tempStr(10), 
;; Auto vars:     Size  Location     Type
;;  str             1    3[COMMON] PTR const unsigned char 
;;		 -> main@tempStr(10), 
;;  len             2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	76
global __ptext2
__ptext2:	;psect for function _strlen
psect	text2
	file	".\PIC12F1572.c"
	line	76
	
_strlen:	
;incstack = 0
	callstack 15
; Regs used in _strlen: [wreg+fsr1l+fsr1h+status,2+status,0]
	movwf	(strlen@str)
	line	78
	
l1614:	
	clrf	(strlen@len)
	clrf	(strlen@len+1)
	line	79
	goto	l1618
	
l1616:	
	movlw	01h
	addwf	(strlen@len),f
	movlw	0
	addwfc	(strlen@len+1),f
	
l1618:	
	movf	(strlen@len),w
	addwf	(strlen@str),w
	movwf	(??_strlen+0)+0
	movf	0+(??_strlen+0)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(indf1),w
	btfss	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l1616
u1910:
	line	80
	
l1620:	
	movf	(strlen@len+1),w
	movwf	(?_strlen+1)
	movf	(strlen@len),w
	movwf	(?_strlen)
	line	81
	
l98:	
	return
	callstack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 505 in file "C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@lenStr(10), main@tempStr(10), 
;;  f               2    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_8(3), STR_7(3), 
;; Auto vars:     Size  Location     Type
;;  sp              1   13[BANK0 ] PTR unsigned char 
;;		 -> main@lenStr(10), main@tempStr(10), 
;;  tmpval          4    0        struct .
;;  val             2   11[BANK0 ] unsigned int 
;;  cp              2    0        PTR const unsigned char 
;;  len             2    0        unsigned int 
;;  c               1   14[BANK0 ] unsigned char 
;;  prec            1   10[BANK0 ] char 
;;  flag            1    9[BANK0 ] unsigned char 
;;  ap              1    8[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       7       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0      15       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\doprnt.c"
	line	505
global __ptext3
__ptext3:	;psect for function _sprintf
psect	text3
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\doprnt.c"
	line	505
	
_sprintf:	
;incstack = 0
	callstack 14
; Regs used in _sprintf: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	movwf	(sprintf@sp)
	line	550
	
l1624:	
	movlw	(low(?_sprintf|((0x0)<<8)+02h))&0ffh
	movwf	(sprintf@ap)
	line	553
	goto	l1676
	line	555
	
l1626:	
		movlw	37
	xorwf	((sprintf@c)),w
	btfsc	status,2
	goto	u1921
	goto	u1920
u1921:
	goto	l1632
u1920:
	line	558
	
l1628:	
	movf	(sprintf@sp),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(sprintf@c),w
	movwf	indf1
	
l1630:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	559
	goto	l1676
	line	565
	
l1632:	
	clrf	(sprintf@flag)
	line	661
	
l1636:	
	movf	(sprintf@f+1),w
	movwf	(??_sprintf+0)+0+1
	movf	(sprintf@f),w
	movwf	(??_sprintf+0)+0
	incf	(sprintf@f),f
	skipnz
	incf	(sprintf@f+1),f
	movf	0+(??_sprintf+0)+0,w
	movwf	fsr0l
	movf	(1+(??_sprintf+0)+0),w
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(sprintf@c)
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte          218     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l1678
	xorlw	100^0	; case 100
	skipnz
	goto	l1638
	xorlw	105^100	; case 105
	skipnz
	goto	l1638
	goto	l1676
	asmopt pop

	line	1285
	
l1638:	
	movf	(sprintf@ap),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(sprintf@val)
	moviw	[1]fsr1
	movwf	(sprintf@val+1)
	
l1640:	
	movlw	low(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1287
	
l1642:	
	btfss	(sprintf@val+1),7
	goto	u1931
	goto	u1930
u1931:
	goto	l1648
u1930:
	line	1288
	
l1644:	
	movlw	low(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1289
	
l1646:	
	comf	(sprintf@val),f
	comf	(sprintf@val+1),f
	incf	(sprintf@val),f
	skipnz
	incf	(sprintf@val+1),f
	line	1331
	
l1648:	
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	line	1332
	
l1654:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	lslf	(??_sprintf+0)+0,f
	rlf	(??_sprintf+0)+1,f
	movlw	low(_dpowers)
	addwf	0+(??_sprintf+0)+0,w
	movwf	fsr0l
	movlw	high(_dpowers)
	addwfc	1+(??_sprintf+0)+0,w
	iorlw	0x80
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(??_sprintf+2)+0
	moviw	[1]fsr0
	movwf	(??_sprintf+2)+0+1
	movf	1+(??_sprintf+2)+0,w
	subwf	(sprintf@val+1),w
	skipz
	goto	u1945
	movf	0+(??_sprintf+2)+0,w
	subwf	(sprintf@val),w
u1945:
	skipnc
	goto	u1941
	goto	u1940
u1941:
	goto	l1658
u1940:
	goto	l1660
	line	1331
	
l1658:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
		movlw	5
	xorwf	((sprintf@c)),w
	btfss	status,2
	goto	u1951
	goto	u1950
u1951:
	goto	l1654
u1950:
	line	1464
	
l1660:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u1961
	goto	u1960
u1961:
	goto	l1666
u1960:
	line	1465
	
l1662:	
	movf	(sprintf@sp),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	low(02Dh)
	movwf	indf1
	
l1664:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1498
	
l1666:	
	movf	(sprintf@c),w
	movwf	(sprintf@prec)
	line	1500
	goto	l1674
	line	1515
	
l1668:	
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	lslf	(??_sprintf+0)+0,f
	rlf	(??_sprintf+0)+1,f
	movlw	low(_dpowers)
	addwf	0+(??_sprintf+0)+0,w
	movwf	fsr0l
	movlw	high(_dpowers)
	addwfc	1+(??_sprintf+0)+0,w
	iorlw	0x80
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(___lwdiv@divisor)
	moviw	[1]fsr0
	movwf	(___lwdiv@divisor+1)
	movf	(sprintf@val+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(sprintf@val),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(sprintf@c)
	line	1550
	
l1670:	
	movf	(sprintf@sp),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(sprintf@c),w
	movwf	indf1
	
l1672:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1500
	
l1674:	
	movlw	low(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
		incf	(((sprintf@prec))),w
	btfss	status,2
	goto	u1971
	goto	u1970
u1971:
	goto	l1668
u1970:
	line	553
	
l1676:	
	movf	(sprintf@f+1),w
	movwf	(??_sprintf+0)+0+1
	movf	(sprintf@f),w
	movwf	(??_sprintf+0)+0
	incf	(sprintf@f),f
	skipnz
	incf	(sprintf@f+1),f
	movf	0+(??_sprintf+0)+0,w
	movwf	fsr0l
	movf	(1+(??_sprintf+0)+0),w
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(sprintf@c)
	movf	(((sprintf@c))),w
	btfss	status,2
	goto	u1981
	goto	u1980
u1981:
	goto	l1626
u1980:
	line	1564
	
l1678:	
	movf	(sprintf@sp),w
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	1567
	
l201:	
	return
	callstack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[COMMON] unsigned int 
;;  dividend        2   10[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\lwmod.c"
	line	5
global __ptext4
__ptext4:	;psect for function ___lwmod
psect	text4
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\lwmod.c"
	line	5
	
___lwmod:	
;incstack = 0
	callstack 14
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	12
	
l1524:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u1761
	goto	u1760
u1761:
	goto	l1542
u1760:
	line	13
	
l1526:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	14
	goto	l1532
	line	15
	
l1528:	
	movlw	01h
	
u1775:
	lslf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	decfsz	wreg,f
	goto	u1775
	line	16
	
l1530:	
	movlw	low(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	14
	
l1532:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1781
	goto	u1780
u1781:
	goto	l1528
u1780:
	line	19
	
l1534:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1795
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1795:
	skipc
	goto	u1791
	goto	u1790
u1791:
	goto	l1538
u1790:
	line	20
	
l1536:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	subwfb	(___lwmod@dividend+1),f
	line	21
	
l1538:	
	movlw	01h
	
u1805:
	lsrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	decfsz	wreg,f
	goto	u1805
	line	22
	
l1540:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u1811
	goto	u1810
u1811:
	goto	l1534
u1810:
	line	24
	
l1542:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	25
	
l623:	
	return
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\lwdiv.c"
	line	5
global __ptext5
__ptext5:	;psect for function ___lwdiv
psect	text5
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\lwdiv.c"
	line	5
	
___lwdiv:	
;incstack = 0
	callstack 14
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	13
	
l1498:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	14
	
l1500:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l1520
u1690:
	line	15
	
l1502:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	16
	goto	l1508
	line	17
	
l1504:	
	movlw	01h
	
u1705:
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	decfsz	wreg,f
	goto	u1705
	line	18
	
l1506:	
	movlw	low(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	16
	
l1508:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1711
	goto	u1710
u1711:
	goto	l1504
u1710:
	line	21
	
l1510:	
	movlw	01h
	
u1725:
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	decfsz	wreg,f
	goto	u1725
	line	22
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1735
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1735:
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l1516
u1730:
	line	23
	
l1512:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	24
	
l1514:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
l1516:	
	movlw	01h
	
u1745:
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	decfsz	wreg,f
	goto	u1745
	line	27
	
l1518:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u1751
	goto	u1750
u1751:
	goto	l1510
u1750:
	line	29
	
l1520:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	30
	
l613:	
	return
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_readLM35

;; *************** function _readLM35 *****************
;; Defined at:
;;		line 42 in file ".\PIC12F1572.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  voltage         3   35[BANK0 ] float 
;;  temp            2   40[BANK0 ] int 
;;  adc             2   38[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2   33[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1C/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       7       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;;		_roundNum
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	".\PIC12F1572.c"
	line	42
global __ptext6
__ptext6:	;psect for function _readLM35
psect	text6
	file	".\PIC12F1572.c"
	line	42
	
_readLM35:	
;incstack = 0
	callstack 12
; Regs used in _readLM35: [wreg+status,2+status,0+pclath+cstack]
	line	43
	
l1568:	
	asmopt push
asmopt off
	movlw	3
u2137:
decfsz	wreg
	goto	u2137
	nop
asmopt pop

	line	44
	
l1570:	
	movlb 1	; select bank1
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	45
	
l76:	
	btfsc	(1257/8)^080h,(1257)&7	;volatile
	goto	u1841
	goto	u1840
u1841:
	goto	l76
u1840:
	line	46
	
l1572:	
	movf	(156)^080h,w	;volatile
	movlb 0	; select bank0
	movwf	(readLM35@adc+1)
	movlb 1	; select bank1
	movf	(155)^080h,w	;volatile
	movlb 0	; select bank0
	movwf	(readLM35@adc)
	line	47
	
l1574:	
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x44
	movwf	(___ftdiv@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xa0
	movwf	(___ftmul@f1+1)
	movlw	0x40
	movwf	(___ftmul@f1+2)
	movf	(readLM35@adc+1),w
	movwf	(___awtoft@c+1)
	movf	(readLM35@adc),w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(readLM35@voltage)
	movf	(1+(?___ftdiv)),w
	movwf	(readLM35@voltage+1)
	movf	(2+(?___ftdiv)),w
	movwf	(readLM35@voltage+2)
	line	48
	
l1576:	
	movlw	0xd7
	movwf	(___ftdiv@f2)
	movlw	0x23
	movwf	(___ftdiv@f2+1)
	movlw	0x3c
	movwf	(___ftdiv@f2+2)
	movf	(readLM35@voltage),w
	movwf	(___ftdiv@f1)
	movf	(readLM35@voltage+1),w
	movwf	(___ftdiv@f1+1)
	movf	(readLM35@voltage+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(roundNum@num)
	movf	(1+(?___ftdiv)),w
	movwf	(roundNum@num+1)
	movf	(2+(?___ftdiv)),w
	movwf	(roundNum@num+2)
	fcall	_roundNum
	movf	(1+(?_roundNum)),w
	movwf	(readLM35@temp+1)
	movf	(0+(?_roundNum)),w
	movwf	(readLM35@temp)
	line	49
	movf	(readLM35@temp+1),w
	movwf	(?_readLM35+1)
	movf	(readLM35@temp),w
	movwf	(?_readLM35)
	line	50
	
l79:	
	return
	callstack 0
GLOBAL	__end_of_readLM35
	__end_of_readLM35:
	signat	_readLM35,90
	global	_roundNum

;; *************** function _roundNum *****************
;; Defined at:
;;		line 39 in file ".\PIC12F1572.c"
;; Parameters:    Size  Location     Type
;;  num             3   30[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   30[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       3       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftadd
;;		___ftge
;;		___fttol
;; This function is called by:
;;		_readLM35
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	39
global __ptext7
__ptext7:	;psect for function _roundNum
psect	text7
	file	".\PIC12F1572.c"
	line	39
	
_roundNum:	
;incstack = 0
	callstack 12
; Regs used in _roundNum: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l1380:	
	movf	(roundNum@num),w
	movwf	(___ftge@ff1)
	movf	(roundNum@num+1),w
	movwf	(___ftge@ff1+1)
	movf	(roundNum@num+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u1511
	goto	u1510
u1511:
	goto	l1384
u1510:
	
l1382:	
	movf	(roundNum@num),w
	movwf	(___ftadd@f2)
	movf	(roundNum@num+1),w
	movwf	(___ftadd@f2+1)
	movf	(roundNum@num+2),w
	movwf	(___ftadd@f2+2)
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0x0
	movwf	(___ftadd@f1+1)
	movlw	0xbf
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(1+(?___fttol)),w
	movwf	(?_roundNum+1)
	movf	(0+(?___fttol)),w
	movwf	(?_roundNum)
	goto	l73
	
l1384:	
	movf	(roundNum@num),w
	movwf	(___ftadd@f2)
	movf	(roundNum@num+1),w
	movwf	(___ftadd@f2+1)
	movf	(roundNum@num+2),w
	movwf	(___ftadd@f2+2)
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0x0
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(1+(?___fttol)),w
	movwf	(?_roundNum+1)
	movf	(0+(?___fttol)),w
	movwf	(?_roundNum)
	line	41
	
l73:	
	return
	callstack 0
GLOBAL	__end_of_roundNum
	__end_of_roundNum:
	signat	_roundNum,4218
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    6[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   14[BANK0 ] unsigned long 
;;  exp1            1   18[BANK0 ] unsigned char 
;;  sign1           1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    6[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       6       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0      13       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_roundNum
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\fttol.c"
	line	44
global __ptext8
__ptext8:	;psect for function ___fttol
psect	text8
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\fttol.c"
	line	44
	
___fttol:	
;incstack = 0
	callstack 13
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1328:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(___fttol@exp1)
	movf	(((___fttol@exp1))),w
	btfss	status,2
	goto	u1391
	goto	u1390
u1391:
	goto	l1334
u1390:
	line	50
	
l1330:	
	movlw	high highword(0)
	movwf	(?___fttol+3)
	movlw	low highword(0)
	movwf	(?___fttol+2)
	movlw	high(0)
	movwf	(?___fttol+1)
	movlw	low(0)
	movwf	(?___fttol)

	goto	l501
	line	51
	
l1334:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1405:
	lsrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1400:
	decfsz	wreg,f
	goto	u1405
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1336:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1338:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1340:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1342:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l1344:	
	btfss	(___fttol@exp1),7
	goto	u1411
	goto	u1410
u1411:
	goto	l1354
u1410:
	line	57
	
l1346:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1421
	goto	u1420
u1421:
	goto	l1352
u1420:
	goto	l1330
	line	60
	
l1352:	
	movlw	01h
u1435:
	lsrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	decfsz	wreg,f
	goto	u1435

	line	61
	movlw	low(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u1441
	goto	u1440
u1441:
	goto	l1352
u1440:
	goto	l1362
	line	63
	
l1354:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1451
	goto	u1450
u1451:
	goto	l508
u1450:
	goto	l1330
	line	66
	
l1360:	
	movlw	01h
u1465:
	lslf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	wreg,f
	goto	u1465
	line	67
	movlw	01h
	subwf	(___fttol@exp1),f
	line	68
	
l508:	
	line	65
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u1471
	goto	u1470
u1471:
	goto	l1360
u1470:
	line	70
	
l1362:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u1481
	goto	u1480
u1481:
	goto	l1366
u1480:
	line	71
	
l1364:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	line	72
	
l1366:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l501:	
	return
	callstack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         6       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_roundNum
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\ftge.c"
	line	4
global __ptext9
__ptext9:	;psect for function ___ftge
psect	text9
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\ftge.c"
	line	4
	
___ftge:	
;incstack = 0
	callstack 13
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l1308:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u1361
	goto	u1360
u1361:
	goto	l1312
u1360:
	line	7
	
l1310:	
	movf	(___ftge@ff1),w
	sublw	0
	movwf	(___ftge@ff1)
	movf	(___ftge@ff1+1),w
	skipc
	incfsz	(___ftge@ff1+1),w
	sublw	0
	movwf	1+(___ftge@ff1)
	
	movf	(___ftge@ff1+2),w
	skipc
	incfsz	(___ftge@ff1+2),w
	sublw	080h
	movwf	2+(___ftge@ff1)
	line	8
	
l1312:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u1371
	goto	u1370
u1371:
	goto	l1316
u1370:
	line	9
	
l1314:	
	movf	(___ftge@ff2),w
	sublw	0
	movwf	(___ftge@ff2)
	movf	(___ftge@ff2+1),w
	skipc
	incfsz	(___ftge@ff2+1),w
	sublw	0
	movwf	1+(___ftge@ff2)
	
	movf	(___ftge@ff2+2),w
	skipc
	incfsz	(___ftge@ff2+2),w
	sublw	080h
	movwf	2+(___ftge@ff2)
	line	10
	
l1316:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l1318:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l1320:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u1385
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u1385
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u1385:
	skipnc
	goto	u1381
	goto	u1380
u1381:
	goto	l1324
u1380:
	
l1322:	
	clrc
	
	goto	l474
	
l1324:	
	setc
	
	line	13
	
l474:	
	return
	callstack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;;  f2              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1    5[BANK0 ] unsigned char 
;;  exp2            1    4[BANK0 ] unsigned char 
;;  sign            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         6       0       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       3       0       0
;;      Totals:         6       6       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_roundNum
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\ftadd.c"
	line	86
global __ptext10
__ptext10:	;psect for function ___ftadd
psect	text10
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\ftadd.c"
	line	86
	
___ftadd:	
;incstack = 0
	callstack 12
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l1238:	
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp2)
	line	92
	movf	((___ftadd@exp1)),w
	btfsc	status,2
	goto	u1131
	goto	u1130
u1131:
	goto	l1244
u1130:
	
l1240:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1141
	goto	u1140
u1141:
	goto	l1248
u1140:
	
l1242:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	low(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1151
	goto	u1150
u1151:
	goto	l1248
u1150:
	line	93
	
l1244:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l434
	line	94
	
l1248:	
	movf	((___ftadd@exp2)),w
	btfsc	status,2
	goto	u1161
	goto	u1160
u1161:
	goto	l437
u1160:
	
l1250:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1171
	goto	u1170
u1171:
	goto	l1254
u1170:
	
l1252:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	low(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1181
	goto	u1180
u1181:
	goto	l1254
u1180:
	
l437:	
	line	95
	goto	l434
	line	96
	
l1254:	
	movlw	low(06h)
	movwf	(___ftadd@sign)
	line	97
	
l1256:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u1191
	goto	u1190
u1191:
	goto	l438
u1190:
	line	98
	
l1258:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l438:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1201
	goto	u1200
u1201:
	goto	l439
u1200:
	line	100
	
l1260:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l439:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1262:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1264:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1211
	goto	u1210
u1211:
	goto	l1276
u1210:
	line	110
	
l1266:	
	movlw	01h
u1225:
	lslf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	decfsz	wreg,f
	goto	u1225
	line	111
	movlw	01h
	subwf	(___ftadd@exp2),f
	line	112
	
l1268:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1231
	goto	u1230
u1231:
	goto	l1274
u1230:
	
l1270:	
	movlw	01h
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1241
	goto	u1240
u1241:
	goto	l1266
u1240:
	goto	l1274
	line	114
	
l1272:	
	movlw	01h
u1255:
	lsrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	decfsz	wreg,f
	goto	u1255

	line	115
	movlw	low(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	line	113
	
l1274:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1261
	goto	u1260
u1261:
	goto	l1272
u1260:
	goto	l448
	line	117
	
l1276:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1271
	goto	u1270
u1271:
	goto	l448
u1270:
	line	121
	
l1278:	
	movlw	01h
u1285:
	lslf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	decfsz	wreg,f
	goto	u1285
	line	122
	movlw	01h
	subwf	(___ftadd@exp1),f
	line	123
	
l1280:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1291
	goto	u1290
u1291:
	goto	l1286
u1290:
	
l1282:	
	movlw	01h
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1301
	goto	u1300
u1301:
	goto	l1278
u1300:
	goto	l1286
	line	125
	
l1284:	
	movlw	01h
u1315:
	lsrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	decfsz	wreg,f
	goto	u1315

	line	126
	movlw	low(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	line	124
	
l1286:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1321
	goto	u1320
u1321:
	goto	l1284
u1320:
	line	129
	
l448:	
	btfss	(___ftadd@sign),(7)&7
	goto	u1331
	goto	u1330
u1331:
	goto	l1290
u1330:
	line	131
	
l1288:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	line	134
	
l1290:	
	btfss	(___ftadd@sign),(6)&7
	goto	u1341
	goto	u1340
u1341:
	goto	l1294
u1340:
	line	136
	
l1292:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	139
	
l1294:	
	clrf	(___ftadd@sign)
	line	140
	
l1296:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	addwfc	(___ftadd@f2+1),f
	movf	(___ftadd@f1+2),w
	addwfc	(___ftadd@f2+2),f
	line	141
	
l1298:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1351
	goto	u1350
u1351:
	goto	l1304
u1350:
	line	142
	
l1300:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l1302:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l1304:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	line	148
	
l434:	
	return
	callstack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;;  f2              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   10[BANK0 ] unsigned um
;;  sign            1   14[BANK0 ] unsigned char 
;;  cntr            1   13[BANK0 ] unsigned char 
;;  exp             1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       6       0       0
;;      Locals:         0       6       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0      15       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_readLM35
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\ftmul.c"
	line	62
global __ptext11
__ptext11:	;psect for function ___ftmul
psect	text11
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\ftmul.c"
	line	62
	
___ftmul:	
;incstack = 0
	callstack 13
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l1442:	
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@exp)
	movf	(((___ftmul@exp))),w
	btfss	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l1448
u1590:
	line	68
	
l1444:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l480
	line	69
	
l1448:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@sign)
	movf	(((___ftmul@sign))),w
	btfss	status,2
	goto	u1601
	goto	u1600
u1601:
	goto	l1454
u1600:
	line	70
	
l1450:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l480
	line	71
	
l1454:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	
l1456:	
	movf	0+(___ftmul@f1)+02h,w
	movwf	(___ftmul@sign)
	line	73
	
l1458:	
	movf	0+(___ftmul@f2)+02h,w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	
l1460:	
	movlw	low(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l1462:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l1464:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l1466:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l1468:	
	movlw	low(0)
	movwf	(___ftmul@f3_as_product)
	movlw	high(0)
	movwf	(___ftmul@f3_as_product+1)
	movlw	low highword(0)
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l1470:	
	movlw	low(07h)
	movwf	(___ftmul@cntr)
	line	136
	
l1472:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1611
	goto	u1610
u1611:
	goto	l1476
u1610:
	line	137
	
l1474:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	line	138
	
l1476:	
	movlw	01h
u1625:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u1625

	line	139
	
l1478:	
	movlw	01h
u1635:
	lslf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	decfsz	wreg,f
	goto	u1635
	line	140
	
l1480:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l1472
u1640:
	line	143
	
l1482:	
	movlw	low(09h)
	movwf	(___ftmul@cntr)
	line	145
	
l1484:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1651
	goto	u1650
u1651:
	goto	l1488
u1650:
	line	146
	
l1486:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	line	147
	
l1488:	
	movlw	01h
u1665:
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	decfsz	wreg,f
	goto	u1665

	line	148
	
l1490:	
	movlw	01h
u1675:
	lsrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	decfsz	wreg,f
	goto	u1675

	line	149
	
l1492:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1681
	goto	u1680
u1681:
	goto	l1484
u1680:
	line	156
	
l1494:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	line	157
	
l480:	
	return
	callstack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 56 in file "C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   15[BANK0 ] float 
;;  f1              3   18[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   25[BANK0 ] float 
;;  sign            1   29[BANK0 ] unsigned char 
;;  exp             1   28[BANK0 ] unsigned char 
;;  cntr            1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   15[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       6       0       0
;;      Locals:         0       6       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0      15       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_readLM35
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\ftdiv.c"
	line	56
global __ptext12
__ptext12:	;psect for function ___ftdiv
psect	text12
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\ftdiv.c"
	line	56
	
___ftdiv:	
;incstack = 0
	callstack 13
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l1400:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@exp)
	movf	(((___ftdiv@exp))),w
	btfss	status,2
	goto	u1531
	goto	u1530
u1531:
	goto	l1406
u1530:
	line	64
	
l1402:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l465
	line	65
	
l1406:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@sign)
	movf	(((___ftdiv@sign))),w
	btfss	status,2
	goto	u1541
	goto	u1540
u1541:
	goto	l1412
u1540:
	line	66
	
l1408:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l465
	line	67
	
l1412:	
	movlw	low(0)
	movwf	(___ftdiv@f3)
	movlw	high(0)
	movwf	(___ftdiv@f3+1)
	movlw	low highword(0)
	movwf	(___ftdiv@f3+2)
	line	68
	
l1414:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l1416:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(___ftdiv@sign)
	line	70
	movf	0+(___ftdiv@f2)+02h,w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	xorwf	(___ftdiv@sign),f
	line	71
	movlw	low(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	72
	
l1418:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l1420:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l1422:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l1424:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l1426:	
	movlw	low(018h)
	movwf	(___ftdiv@cntr)
	line	78
	
l1428:	
	movlw	01h
u1555:
	lslf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	decfsz	wreg,f
	goto	u1555
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u1565
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u1565
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u1565:
	skipc
	goto	u1561
	goto	u1560
u1561:
	goto	l1434
u1560:
	line	80
	
l1430:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	subwfb	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	subwfb	(___ftdiv@f1+2),f
	line	81
	
l1432:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l1434:	
	movlw	01h
u1575:
	lslf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	decfsz	wreg,f
	goto	u1575
	line	84
	
l1436:	
	movlw	01h
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u1581
	goto	u1580
u1581:
	goto	l1428
u1580:
	line	85
	
l1438:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	line	86
	
l465:	
	return
	callstack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         3       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_readLM35
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\awtoft.c"
	line	32
global __ptext13
__ptext13:	;psect for function ___awtoft
psect	text13
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\awtoft.c"
	line	32
	
___awtoft:	
;incstack = 0
	callstack 13
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l1388:	
	clrf	(___awtoft@sign)
	line	37
	
l1390:	
	btfss	(___awtoft@c+1),7
	goto	u1521
	goto	u1520
u1521:
	goto	l1396
u1520:
	line	38
	
l1392:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l1394:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l1396:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	low(08Eh)
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	line	42
	
l407:	
	return
	callstack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 1F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         5       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\float.c"
	line	62
global __ptext14
__ptext14:	;psect for function ___ftpack
psect	text14
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c90\common\float.c"
	line	62
	
___ftpack:	
;incstack = 0
	callstack 12
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1206:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u1011
	goto	u1010
u1011:
	goto	l1210
u1010:
	
l1208:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1021
	goto	u1020
u1021:
	goto	l1216
u1020:
	line	65
	
l1210:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l413
	line	67
	
l1214:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u1035:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u1035

	line	66
	
l1216:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1041
	goto	u1040
u1041:
	goto	l1214
u1040:
	goto	l417
	line	71
	
l1218:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1220:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l1222:	
	movlw	01h
u1055:
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	decfsz	wreg,f
	goto	u1055

	line	74
	
l417:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1061
	goto	u1060
u1061:
	goto	l1218
u1060:
	goto	l1226
	line	76
	
l1224:	
	movlw	01h
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1075:
	lslf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	decfsz	wreg,f
	goto	u1075
	line	75
	
l1226:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u1081
	goto	u1080
u1081:
	goto	l424
u1080:
	
l1228:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u1091
	goto	u1090
u1091:
	goto	l1224
u1090:
	
l424:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1101
	goto	u1100
u1101:
	goto	l425
u1100:
	line	80
	
l1230:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l425:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1232:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1115:
	lslf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1110:
	decfsz	wreg,f
	goto	u1115
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1234:	
	movf	((___ftpack@sign)),w
	btfsc	status,2
	goto	u1121
	goto	u1120
u1121:
	goto	l426
u1120:
	line	84
	
l1236:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l426:	
	line	85
	line	86
	
l413:	
	return
	callstack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_UART_Write_Text

;; *************** function _UART_Write_Text *****************
;; Defined at:
;;		line 20 in file ".\PIC12F1572.c"
;; Parameters:    Size  Location     Type
;;  text            2    1[COMMON] PTR const unsigned char 
;;		 -> STR_15(5), STR_14(16), STR_13(18), STR_12(18), 
;;		 -> STR_11(3), STR_10(3), STR_9(14), main@lenStr(10), 
;;		 -> main@tempStr(10), STR_5(20), STR_4(14), STR_3(11), 
;;		 -> STR_2(34), STR_1(5), 
;; Auto vars:     Size  Location     Type
;;  i               2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/3
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_UART_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	".\PIC12F1572.c"
	line	20
global __ptext15
__ptext15:	;psect for function _UART_Write_Text
psect	text15
	file	".\PIC12F1572.c"
	line	20
	
_UART_Write_Text:	
;incstack = 0
	callstack 14
; Regs used in _UART_Write_Text: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	22
	
l1552:	
	clrf	(UART_Write_Text@i)
	clrf	(UART_Write_Text@i+1)
	goto	l1558
	line	23
	
l1554:	
	movf	(UART_Write_Text@text),w
	addwf	(UART_Write_Text@i),w
	movwf	fsr0l
	movf	(UART_Write_Text@text+1),w
	addwfc	(UART_Write_Text@i+1),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_UART_Write
	line	22
	
l1556:	
	movlw	01h
	addwf	(UART_Write_Text@i),f
	movlw	0
	addwfc	(UART_Write_Text@i+1),f
	
l1558:	
	movf	(UART_Write_Text@text),w
	addwf	(UART_Write_Text@i),w
	movwf	fsr0l
	movf	(UART_Write_Text@text+1),w
	addwfc	(UART_Write_Text@i+1),w
	movwf	fsr0h
	moviw	fsr0++
	btfss	status,2
	goto	u1821
	goto	u1820
u1821:
	goto	l1554
u1820:
	line	24
	
l51:	
	return
	callstack 0
GLOBAL	__end_of_UART_Write_Text
	__end_of_UART_Write_Text:
	signat	_UART_Write_Text,4217
	global	_UART_Write

;; *************** function _UART_Write *****************
;; Defined at:
;;		line 16 in file ".\PIC12F1572.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/3
;;		On exit  : 1F/3
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_Write_Text
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	16
global __ptext16
__ptext16:	;psect for function _UART_Write
psect	text16
	file	".\PIC12F1572.c"
	line	16
	
_UART_Write:	
;incstack = 0
	callstack 14
; Regs used in _UART_Write: [wreg]
	movwf	(UART_Write@data)
	line	17
	
l1370:	
	
l42:	
	movlb 3	; select bank3
	btfss	(3313/8)^0180h,(3313)&7	;volatile
	goto	u1491
	goto	u1490
u1491:
	goto	l42
u1490:
	line	18
	
l1372:	
	movf	(UART_Write@data),w
	movwf	(410)^0180h	;volatile
	line	19
	
l45:	
	return
	callstack 0
GLOBAL	__end_of_UART_Write
	__end_of_UART_Write:
	signat	_UART_Write,4217
	global	_UART_Read_Text

;; *************** function _UART_Read_Text *****************
;; Defined at:
;;		line 29 in file ".\PIC12F1572.c"
;; Parameters:    Size  Location     Type
;;  Output          1    wreg     PTR unsigned char 
;;		 -> main@req(64), 
;;  length          2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  Output          1    3[COMMON] PTR unsigned char 
;;		 -> main@req(64), 
;;  i               2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1C/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_UART_Read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	29
global __ptext17
__ptext17:	;psect for function _UART_Read_Text
psect	text17
	file	".\PIC12F1572.c"
	line	29
	
_UART_Read_Text:	
;incstack = 0
	callstack 14
; Regs used in _UART_Read_Text: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	movwf	(UART_Read_Text@Output)
	line	31
	
l1560:	
	clrf	(UART_Read_Text@i)
	clrf	(UART_Read_Text@i+1)
	goto	l1566
	line	32
	
l1562:	
	movf	(UART_Read_Text@i),w
	addwf	(UART_Read_Text@Output),w
	movwf	(??_UART_Read_Text+0)+0
	movf	0+(??_UART_Read_Text+0)+0,w
	movwf	fsr1l
	clrf fsr1h	
	
	fcall	_UART_Read
	movwf	indf1
	line	31
	
l1564:	
	movlw	01h
	addwf	(UART_Read_Text@i),f
	movlw	0
	addwfc	(UART_Read_Text@i+1),f
	
l1566:	
	movf	(UART_Read_Text@length+1),w
	subwf	(UART_Read_Text@i+1),w
	skipz
	goto	u1835
	movf	(UART_Read_Text@length),w
	subwf	(UART_Read_Text@i),w
u1835:
	skipc
	goto	u1831
	goto	u1830
u1831:
	goto	l1562
u1830:
	line	33
	
l63:	
	return
	callstack 0
GLOBAL	__end_of_UART_Read_Text
	__end_of_UART_Read_Text:
	signat	_UART_Read_Text,8313
	global	_UART_Read

;; *************** function _UART_Read *****************
;; Defined at:
;;		line 25 in file ".\PIC12F1572.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 1C/0
;;		On exit  : 1F/3
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_Read_Text
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	25
global __ptext18
__ptext18:	;psect for function _UART_Read
psect	text18
	file	".\PIC12F1572.c"
	line	25
	
_UART_Read:	
;incstack = 0
	callstack 14
; Regs used in _UART_Read: [wreg]
	line	26
	
l1374:	
	
l54:	
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u1501
	goto	u1500
u1501:
	goto	l54
u1500:
	line	27
	
l1376:	
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	line	28
	
l57:	
	return
	callstack 0
GLOBAL	__end_of_UART_Read
	__end_of_UART_Read:
	signat	_UART_Read,89
	global	_UART_Init

;; *************** function _UART_Init *****************
;; Defined at:
;;		line 9 in file ".\PIC12F1572.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : B1F/0
;;		On exit  : B1F/3
;;		Unchanged: B00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	9
global __ptext19
__ptext19:	;psect for function _UART_Init
psect	text19
	file	".\PIC12F1572.c"
	line	9
	
_UART_Init:	
;incstack = 0
	callstack 15
; Regs used in _UART_Init: [wreg]
	line	10
	
l1546:	
	movlb 1	; select bank1
	bcf	(1120/8)^080h,(1120)&7	;volatile
	line	11
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	12
	
l1548:	
	movlw	low(020h)
	movlb 3	; select bank3
	movwf	(414)^0180h	;volatile
	line	13
	movlw	low(090h)
	movwf	(413)^0180h	;volatile
	line	14
	
l1550:	
	movlw	0
	movwf	(411+1)^0180h	;volatile
	movlw	019h
	movwf	(411)^0180h	;volatile
	line	15
	
l39:	
	return
	callstack 0
GLOBAL	__end_of_UART_Init
	__end_of_UART_Init:
	signat	_UART_Init,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
