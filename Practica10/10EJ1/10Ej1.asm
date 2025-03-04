
_main:

;10Ej1.c,17 :: 		void main()
;10Ej1.c,21 :: 		ANSELH=0X00;
	CLRF       ANSELH+0
;10Ej1.c,22 :: 		ANSEL=0B00000001;
	MOVLW      1
	MOVWF      ANSEL+0
;10Ej1.c,23 :: 		ADC_Init();
	CALL       _ADC_Init+0
;10Ej1.c,24 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;10Ej1.c,25 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;10Ej1.c,26 :: 		Lcd_Out(1,1,"Lectura=");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_10Ej1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;10Ej1.c,27 :: 		while(1)
L_main0:
;10Ej1.c,29 :: 		lectura=ADC_Read(LDR);
	MOVLW      13
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
;10Ej1.c,30 :: 		WordToStr(lectura,clectura);
	MOVF       R0+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      main_clectura_L0+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;10Ej1.c,31 :: 		Lcd_Out(1,10,clectura);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      main_clectura_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;10Ej1.c,32 :: 		delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
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
;10Ej1.c,33 :: 		}
	GOTO       L_main0
;10Ej1.c,34 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
