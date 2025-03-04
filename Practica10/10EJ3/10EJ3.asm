
_main:

;10EJ3.c,15 :: 		void main()
;10EJ3.c,20 :: 		ANSEL=0X00;
	CLRF       ANSEL+0
;10EJ3.c,21 :: 		ANSELH=0B10000011;
	MOVLW      131
	MOVWF      ANSELH+0
;10EJ3.c,23 :: 		ADC_Init();
	CALL       _ADC_Init+0
;10EJ3.c,24 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;10EJ3.c,25 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;10EJ3.c,26 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;10EJ3.c,28 :: 		Lcd_out(1,3,"Temperatura");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_10EJ3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;10EJ3.c,29 :: 		while(1)
L_main0:
;10EJ3.c,31 :: 		lectura=ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
;10EJ3.c,32 :: 		temp=lectura/2;
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	MOVWF      R2+1
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	MOVF       R2+0, 0
	MOVWF      main_temp_L0+0
	MOVF       R2+1, 0
	MOVWF      main_temp_L0+1
;10EJ3.c,33 :: 		WordToStr(temp,x);
	MOVF       R2+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R2+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVF       main_x_L0+0, 0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;10EJ3.c,34 :: 		Lcd_Out(2,5,x);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       main_x_L0+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;10EJ3.c,35 :: 		Lcd_Out_CP("C");
	MOVLW      ?lstr2_10EJ3+0
	MOVWF      FARG_Lcd_Out_CP_text+0
	CALL       _Lcd_Out_CP+0
;10EJ3.c,36 :: 		if(temp>=max)
	MOVF       main_max_L0+1, 0
	SUBWF      main_temp_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main6
	MOVF       main_max_L0+0, 0
	SUBWF      main_temp_L0+0, 0
L__main6:
	BTFSS      STATUS+0, 0
	GOTO       L_main2
;10EJ3.c,39 :: 		Lcd_Out(1,8,"HOT");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_10EJ3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;10EJ3.c,40 :: 		}
	GOTO       L_main3
L_main2:
;10EJ3.c,44 :: 		Lcd_Out(1,3,"COLD ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_10EJ3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;10EJ3.c,45 :: 		}
L_main3:
;10EJ3.c,46 :: 		delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
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
;10EJ3.c,47 :: 		}
	GOTO       L_main0
;10EJ3.c,48 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
