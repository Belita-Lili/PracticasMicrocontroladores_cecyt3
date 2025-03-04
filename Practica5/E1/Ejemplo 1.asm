
_main:

;Ejemplo 1.c,4 :: 		void main()
;Ejemplo 1.c,6 :: 		ANSELH=0;
	CLRF       ANSELH+0
;Ejemplo 1.c,7 :: 		TRISC.B0= TRISC.B1=0;
	BCF        TRISC+0, 1
	BTFSC      TRISC+0, 1
	GOTO       L__main6
	BCF        TRISC+0, 0
	GOTO       L__main7
L__main6:
	BSF        TRISC+0, 0
L__main7:
;Ejemplo 1.c,8 :: 		TRISB.B0=1;
	BSF        TRISB+0, 0
;Ejemplo 1.c,9 :: 		rojo=verde=0;
	BCF        PORTC+0, 1
	BTFSC      PORTC+0, 1
	GOTO       L__main8
	BCF        PORTC+0, 0
	GOTO       L__main9
L__main8:
	BSF        PORTC+0, 0
L__main9:
;Ejemplo 1.c,10 :: 		while(1)
L_main0:
;Ejemplo 1.c,12 :: 		while(boton==1)
L_main2:
	BTFSS      PORTB+0, 0
	GOTO       L_main3
;Ejemplo 1.c,14 :: 		rojo=~rojo;
	MOVLW      1
	XORWF      PORTC+0, 1
;Ejemplo 1.c,15 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;Ejemplo 1.c,17 :: 		}
	GOTO       L_main2
L_main3:
;Ejemplo 1.c,18 :: 		}
	GOTO       L_main0
;Ejemplo 1.c,19 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
