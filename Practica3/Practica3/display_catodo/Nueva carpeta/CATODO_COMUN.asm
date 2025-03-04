
_main:

;CATODO_COMUN.c,2 :: 		void main()
;CATODO_COMUN.c,3 :: 		{ TRISC=0;
	CLRF       TRISC+0
;CATODO_COMUN.c,4 :: 		display=0;
	CLRF       PORTC+0
;CATODO_COMUN.c,5 :: 		while(1)
L_main0:
;CATODO_COMUN.c,7 :: 		display=~0x6D;   //S
	MOVLW      146
	MOVWF      PORTC+0
;CATODO_COMUN.c,8 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;CATODO_COMUN.c,9 :: 		display=~0x3F;   //O
	MOVLW      192
	MOVWF      PORTC+0
;CATODO_COMUN.c,10 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;CATODO_COMUN.c,11 :: 		display=~0x54;   //N
	MOVLW      171
	MOVWF      PORTC+0
;CATODO_COMUN.c,12 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;CATODO_COMUN.c,13 :: 		display=~0x50;   //R
	MOVLW      175
	MOVWF      PORTC+0
;CATODO_COMUN.c,14 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;CATODO_COMUN.c,15 :: 		display=~0x30;   //I
	MOVLW      207
	MOVWF      PORTC+0
;CATODO_COMUN.c,16 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;CATODO_COMUN.c,17 :: 		display=~0x79;   //E
	MOVLW      134
	MOVWF      PORTC+0
;CATODO_COMUN.c,18 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;CATODO_COMUN.c,19 :: 		display=~0x00;   //-
	MOVLW      255
	MOVWF      PORTC+0
;CATODO_COMUN.c,20 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;CATODO_COMUN.c,21 :: 		display=~0x73;   //P
	MOVLW      140
	MOVWF      PORTC+0
;CATODO_COMUN.c,22 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;CATODO_COMUN.c,23 :: 		display=~0x3F;   //O
	MOVLW      192
	MOVWF      PORTC+0
;CATODO_COMUN.c,24 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;CATODO_COMUN.c,25 :: 		display=~0x50;   //R
	MOVLW      175
	MOVWF      PORTC+0
;CATODO_COMUN.c,26 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
;CATODO_COMUN.c,27 :: 		display=~0x67;   //Q
	MOVLW      152
	MOVWF      PORTC+0
;CATODO_COMUN.c,28 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
	NOP
;CATODO_COMUN.c,29 :: 		display=~0x3E;   //U
	MOVLW      193
	MOVWF      PORTC+0
;CATODO_COMUN.c,30 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
	NOP
	NOP
;CATODO_COMUN.c,31 :: 		display=~0x79;   //E
	MOVLW      134
	MOVWF      PORTC+0
;CATODO_COMUN.c,32 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
	NOP
;CATODO_COMUN.c,33 :: 		display=~0x00;   //-
	MOVLW      255
	MOVWF      PORTC+0
;CATODO_COMUN.c,34 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	DECFSZ     R11+0, 1
	GOTO       L_main15
	NOP
	NOP
;CATODO_COMUN.c,35 :: 		display=~0x6D;   //S
	MOVLW      146
	MOVWF      PORTC+0
;CATODO_COMUN.c,36 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
	NOP
	NOP
;CATODO_COMUN.c,37 :: 		display=~0x30;   //I
	MOVLW      207
	MOVWF      PORTC+0
;CATODO_COMUN.c,38 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
	NOP
;CATODO_COMUN.c,39 :: 		display=0;
	CLRF       PORTC+0
;CATODO_COMUN.c,40 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
	NOP
;CATODO_COMUN.c,41 :: 		}
	GOTO       L_main0
;CATODO_COMUN.c,42 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
