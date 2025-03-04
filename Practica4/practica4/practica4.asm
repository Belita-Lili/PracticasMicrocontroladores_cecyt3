
_main:

;practica4.c,1 :: 		void main() {
;practica4.c,2 :: 		TRISC=0;
	CLRF       TRISC+0
;practica4.c,3 :: 		TRISB=255;
	MOVLW      255
	MOVWF      TRISB+0
;practica4.c,4 :: 		ANSELH=0;
	CLRF       ANSELH+0
;practica4.c,7 :: 		if(PORTB==0X03){
	MOVF       PORTB+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_main0
;practica4.c,8 :: 		PORTC=0X07;
	MOVLW      7
	MOVWF      PORTC+0
;practica4.c,9 :: 		}
	GOTO       L_main1
L_main0:
;practica4.c,11 :: 		else if(PORTB==0X06){
	MOVF       PORTB+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_main2
;practica4.c,12 :: 		PORTC=0X38;
	MOVLW      56
	MOVWF      PORTC+0
;practica4.c,13 :: 		}
L_main2:
L_main1:
;practica4.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
