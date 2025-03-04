
_main:

;MyProject.c,3 :: 		void main()
;MyProject.c,5 :: 		TRISC=0;
	CLRF       TRISC+0
;MyProject.c,6 :: 		PORTC=0;
	CLRF       PORTC+0
;MyProject.c,7 :: 		while(1){
L_main0:
;MyProject.c,8 :: 		rojo=1;
	BSF        PORTC+0, 0
;MyProject.c,9 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;MyProject.c,10 :: 		rojo=0;
	BCF        PORTC+0, 0
;MyProject.c,11 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;MyProject.c,12 :: 		rojo=1;
	BSF        PORTC+0, 0
;MyProject.c,13 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
	NOP
;MyProject.c,14 :: 		rojo=0;
	BCF        PORTC+0, 0
;MyProject.c,15 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;MyProject.c,16 :: 		rojo=1;
	BSF        PORTC+0, 0
;MyProject.c,17 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;MyProject.c,18 :: 		rojo=0;
	BCF        PORTC+0, 0
;MyProject.c,19 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;MyProject.c,20 :: 		rojo=1;
	BSF        PORTC+0, 0
;MyProject.c,21 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;MyProject.c,22 :: 		rojo=0;
	BCF        PORTC+0, 0
;MyProject.c,24 :: 		verde=1;
	BSF        PORTC+0, 1
;MyProject.c,25 :: 		delay_ms(7000);
	MOVLW      36
	MOVWF      R11+0
	MOVLW      131
	MOVWF      R12+0
	MOVLW      207
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
;MyProject.c,26 :: 		verde=0;
	BCF        PORTC+0, 1
;MyProject.c,27 :: 		}
	GOTO       L_main0
;MyProject.c,28 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
