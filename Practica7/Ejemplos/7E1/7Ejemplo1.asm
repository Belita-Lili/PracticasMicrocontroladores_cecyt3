
_main:

;7Ejemplo1.c,8 :: 		void main()
;7Ejemplo1.c,10 :: 		PORTC=0;
	CLRF       PORTC+0
;7Ejemplo1.c,11 :: 		PORTB=0;
	CLRF       PORTB+0
;7Ejemplo1.c,12 :: 		ANSELH=0;
	CLRF       ANSELH+0
;7Ejemplo1.c,13 :: 		TRISC=0;
	CLRF       TRISC+0
;7Ejemplo1.c,14 :: 		TRISB=0;
	CLRF       TRISB+0
;7Ejemplo1.c,16 :: 		while(1)
L_main0:
;7Ejemplo1.c,18 :: 		for(cuenta=0, disp=1; cuenta<4;cuenta++)
	CLRF       _cuenta+0
	MOVLW      1
	MOVWF      PORTB+0
L_main2:
	MOVLW      4
	SUBWF      _cuenta+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;7Ejemplo1.c,20 :: 		dato=letra[cuenta];
	MOVF       _cuenta+0, 0
	ADDLW      _letra+0
	MOVWF      R0+0
	MOVLW      hi_addr(_letra+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;7Ejemplo1.c,21 :: 		delay_ms(1);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      75
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
;7Ejemplo1.c,22 :: 		disp=disp<<1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;7Ejemplo1.c,18 :: 		for(cuenta=0, disp=1; cuenta<4;cuenta++)
	INCF       _cuenta+0, 1
;7Ejemplo1.c,23 :: 		}
	GOTO       L_main2
L_main3:
;7Ejemplo1.c,24 :: 		}
	GOTO       L_main0
;7Ejemplo1.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
