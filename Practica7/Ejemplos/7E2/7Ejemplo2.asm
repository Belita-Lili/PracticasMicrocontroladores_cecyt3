
_main:

;7Ejemplo2.c,9 :: 		void main()
;7Ejemplo2.c,11 :: 		while(1)
L_main0:
;7Ejemplo2.c,13 :: 		for(palabra=0;palabra<3;palabra++)
	CLRF       _palabra+0
L_main2:
	MOVLW      3
	SUBWF      _palabra+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;7Ejemplo2.c,14 :: 		for(barridos=0;barridos<=150;barridos++)
	CLRF       _barridos+0
L_main5:
	MOVF       _barridos+0, 0
	SUBLW      150
	BTFSS      STATUS+0, 0
	GOTO       L_main6
;7Ejemplo2.c,15 :: 		for(cuenta=0,disp=1;cuenta<4;cuenta++)
	CLRF       _cuenta+0
	MOVLW      1
	MOVWF      PORTB+0
L_main8:
	MOVLW      4
	SUBWF      _cuenta+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;7Ejemplo2.c,17 :: 		dato=letras[palabra][cuenta];
	MOVF       _palabra+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVLW      _letras+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_letras+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       _cuenta+0, 0
	ADDWF      R0+0, 1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;7Ejemplo2.c,18 :: 		delay_ms(3);
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
;7Ejemplo2.c,19 :: 		disp=disp<<1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;7Ejemplo2.c,15 :: 		for(cuenta=0,disp=1;cuenta<4;cuenta++)
	INCF       _cuenta+0, 1
;7Ejemplo2.c,20 :: 		}
	GOTO       L_main8
L_main9:
;7Ejemplo2.c,14 :: 		for(barridos=0;barridos<=150;barridos++)
	INCF       _barridos+0, 1
;7Ejemplo2.c,20 :: 		}
	GOTO       L_main5
L_main6:
;7Ejemplo2.c,13 :: 		for(palabra=0;palabra<3;palabra++)
	INCF       _palabra+0, 1
;7Ejemplo2.c,20 :: 		}
	GOTO       L_main2
L_main3:
;7Ejemplo2.c,21 :: 		}
	GOTO       L_main0
;7Ejemplo2.c,22 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
