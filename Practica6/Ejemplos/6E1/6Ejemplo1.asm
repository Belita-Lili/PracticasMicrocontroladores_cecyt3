
_main:

;6Ejemplo1.c,1 :: 		void main()
;6Ejemplo1.c,3 :: 		PORTC=0;
	CLRF       PORTC+0
;6Ejemplo1.c,4 :: 		TRISC=0;
	CLRF       TRISC+0
;6Ejemplo1.c,6 :: 		while(1)
L_main0:
;6Ejemplo1.c,8 :: 		PORTC=0X3F; //0
	MOVLW      63
	MOVWF      PORTC+0
;6Ejemplo1.c,9 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
;6Ejemplo1.c,10 :: 		PORTC=0X06; //1
	MOVLW      6
	MOVWF      PORTC+0
;6Ejemplo1.c,11 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;6Ejemplo1.c,12 :: 		PORTC=0X5B; //2
	MOVLW      91
	MOVWF      PORTC+0
;6Ejemplo1.c,13 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
;6Ejemplo1.c,14 :: 		PORTC=0X4F; //3
	MOVLW      79
	MOVWF      PORTC+0
;6Ejemplo1.c,15 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
;6Ejemplo1.c,16 :: 		PORTC=0X66; //4
	MOVLW      102
	MOVWF      PORTC+0
;6Ejemplo1.c,17 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
;6Ejemplo1.c,18 :: 		PORTC=0X6D; //5
	MOVLW      109
	MOVWF      PORTC+0
;6Ejemplo1.c,19 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;6Ejemplo1.c,20 :: 		PORTC=0X7D; //6
	MOVLW      125
	MOVWF      PORTC+0
;6Ejemplo1.c,21 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
;6Ejemplo1.c,22 :: 		PORTC=0X47; //7
	MOVLW      71
	MOVWF      PORTC+0
;6Ejemplo1.c,23 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
;6Ejemplo1.c,24 :: 		PORTC=0X7F; //8
	MOVLW      127
	MOVWF      PORTC+0
;6Ejemplo1.c,25 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
;6Ejemplo1.c,26 :: 		PORTC=0X67; //9
	MOVLW      103
	MOVWF      PORTC+0
;6Ejemplo1.c,27 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
;6Ejemplo1.c,28 :: 		PORTC=0X00; //0
	CLRF       PORTC+0
;6Ejemplo1.c,29 :: 		delay_ms(800);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
;6Ejemplo1.c,30 :: 		}
	GOTO       L_main0
;6Ejemplo1.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
