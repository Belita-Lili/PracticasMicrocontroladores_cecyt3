
_main:

;6Ejemplo2.c,5 :: 		void main()
;6Ejemplo2.c,7 :: 		TRISC=0;
	CLRF       TRISC+0
;6Ejemplo2.c,9 :: 		while(1)
L_main0:
;6Ejemplo2.c,11 :: 		for(conteo=0;conteo<=9;conteo++)
	CLRF       _conteo+0
L_main2:
	MOVF       _conteo+0, 0
	SUBLW      9
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;6Ejemplo2.c,13 :: 		dis=seg[conteo];
	MOVF       _conteo+0, 0
	ADDLW      _seg+0
	MOVWF      R0+0
	MOVLW      hi_addr(_seg+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;6Ejemplo2.c,14 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;6Ejemplo2.c,11 :: 		for(conteo=0;conteo<=9;conteo++)
	INCF       _conteo+0, 1
;6Ejemplo2.c,15 :: 		}
	GOTO       L_main2
L_main3:
;6Ejemplo2.c,16 :: 		}
	GOTO       L_main0
;6Ejemplo2.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
