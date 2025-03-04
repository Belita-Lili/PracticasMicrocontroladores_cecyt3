
_main:

;MyProject2.c,1 :: 		void main()
;MyProject2.c,3 :: 		TRISC=0;
	CLRF       TRISC+0
;MyProject2.c,4 :: 		TRISB=0;
	CLRF       TRISB+0
;MyProject2.c,5 :: 		ANSELH=0;
	CLRF       ANSELH+0
;MyProject2.c,6 :: 		ANSEL=0;
	CLRF       ANSEL+0
;MyProject2.c,7 :: 		PORTA=0;
	CLRF       PORTA+0
;MyProject2.c,8 :: 		PORTB=0;
	CLRF       PORTB+0
;MyProject2.c,9 :: 		TRISA=0;
	CLRF       TRISA+0
;MyProject2.c,13 :: 		while(1){
L_main0:
;MyProject2.c,14 :: 		if(PORTA==0){
	MOVF       PORTA+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main2
;MyProject2.c,15 :: 		PORTB=0B00000000;
	CLRF       PORTB+0
;MyProject2.c,16 :: 		}
L_main2:
;MyProject2.c,18 :: 		if(PORTA==0B1){
	MOVF       PORTA+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;MyProject2.c,19 :: 		PORTB=0B10001000;
	MOVLW      136
	MOVWF      PORTB+0
;MyProject2.c,20 :: 		}
L_main3:
;MyProject2.c,21 :: 		if(PORTA==0B10){
	MOVF       PORTA+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;MyProject2.c,22 :: 		PORTB=0B10000011;
	MOVLW      131
	MOVWF      PORTB+0
;MyProject2.c,23 :: 		}
L_main4:
;MyProject2.c,24 :: 		if(PORTA==0B11){
	MOVF       PORTA+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;MyProject2.c,25 :: 		PORTB=0B11000110;
	MOVLW      198
	MOVWF      PORTB+0
;MyProject2.c,26 :: 		}
L_main5:
;MyProject2.c,27 :: 		if(PORTA==0B100){
	MOVF       PORTA+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_main6
;MyProject2.c,28 :: 		PORTB=0B10100001;
	MOVLW      161
	MOVWF      PORTB+0
;MyProject2.c,29 :: 		}
L_main6:
;MyProject2.c,30 :: 		if(PORTA==0B101){
	MOVF       PORTA+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main7
;MyProject2.c,31 :: 		PORTB=0B10000110;
	MOVLW      134
	MOVWF      PORTB+0
;MyProject2.c,32 :: 		}
L_main7:
;MyProject2.c,33 :: 		if(PORTA==0B110){
	MOVF       PORTA+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_main8
;MyProject2.c,34 :: 		PORTB=0B10001110;
	MOVLW      142
	MOVWF      PORTB+0
;MyProject2.c,35 :: 		}
L_main8:
;MyProject2.c,36 :: 		if(PORTA==0B111){
	MOVF       PORTA+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_main9
;MyProject2.c,37 :: 		PORTB=0B10000010;
	MOVLW      130
	MOVWF      PORTB+0
;MyProject2.c,39 :: 		}
L_main9:
;MyProject2.c,41 :: 		}
	GOTO       L_main0
;MyProject2.c,48 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
