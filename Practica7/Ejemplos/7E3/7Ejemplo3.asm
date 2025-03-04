
_main:

;7Ejemplo3.c,9 :: 		void main()
;7Ejemplo3.c,11 :: 		config();
	CALL       _config+0
;7Ejemplo3.c,12 :: 		while(1)
L_main0:
;7Ejemplo3.c,14 :: 		for(inicio=0;inicio<=26;inicio++)
	CLRF       _inicio+0
L_main2:
	MOVF       _inicio+0, 0
	SUBLW      26
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;7Ejemplo3.c,15 :: 		for(barridos=0;barridos<=35;barridos++)
	CLRF       _barridos+0
L_main5:
	MOVF       _barridos+0, 0
	SUBLW      35
	BTFSS      STATUS+0, 0
	GOTO       L_main6
;7Ejemplo3.c,16 :: 		for(cuenta=0, disp=1;cuenta<4;cuenta++)
	CLRF       _cuenta+0
	MOVLW      1
	MOVWF      PORTB+0
L_main8:
	MOVLW      4
	SUBWF      _cuenta+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;7Ejemplo3.c,18 :: 		dato=letras[inicio+cuenta];
	MOVF       _cuenta+0, 0
	ADDWF      _inicio+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
	MOVLW      _letras+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_letras+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;7Ejemplo3.c,19 :: 		delay_ms(3);
	MOVLW      4
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
;7Ejemplo3.c,20 :: 		disp=disp<<1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;7Ejemplo3.c,16 :: 		for(cuenta=0, disp=1;cuenta<4;cuenta++)
	INCF       _cuenta+0, 1
;7Ejemplo3.c,21 :: 		}
	GOTO       L_main8
L_main9:
;7Ejemplo3.c,15 :: 		for(barridos=0;barridos<=35;barridos++)
	INCF       _barridos+0, 1
;7Ejemplo3.c,21 :: 		}
	GOTO       L_main5
L_main6:
;7Ejemplo3.c,14 :: 		for(inicio=0;inicio<=26;inicio++)
	INCF       _inicio+0, 1
;7Ejemplo3.c,21 :: 		}
	GOTO       L_main2
L_main3:
;7Ejemplo3.c,22 :: 		dato=disp=0;
	CLRF       PORTB+0
	MOVF       PORTB+0, 0
	MOVWF      PORTC+0
;7Ejemplo3.c,23 :: 		delay_ms(500);
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
;7Ejemplo3.c,24 :: 		}
	GOTO       L_main0
;7Ejemplo3.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
