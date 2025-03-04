
_main:

;MyProject.c,34 :: 		void main() {
;MyProject.c,35 :: 		config();
	CALL       _config+0
;MyProject.c,37 :: 		LCD_out(1,3,"BIENVENIDO");//Esta funcion escribe un texto en la posicion indicada (fila,columna,texto)
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,38 :: 		Lcd_out(2,3,"AL CURSO");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,39 :: 		delay_ms(2500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;MyProject.c,40 :: 		Lcd_cmd(_lcd_clear); //Borrar pantalla
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,41 :: 		lcd_cmd(_lcd_cursor_off);//Envia la institucion de apagar el cursor
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,43 :: 		while(1)
L_main1:
;MyProject.c,45 :: 		lcd_out(1,1,"aprende a");//Comienza a enviar texto nuevamente
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,46 :: 		lcd_out(2,1,"usarme...");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,47 :: 		lcd_chr_cp("bien!");//Imprime una cadena de caracteres "texto" en la posicion actual del cursor
	MOVLW      ?lstr_5_MyProject+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;MyProject.c,48 :: 		delay_ms(2500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;MyProject.c,49 :: 		Lcd_cmd(_lcd_clear);//Borra la pantalla
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,50 :: 		lcd_cmd(_lcd_blink_cursor_on);//Habilita nuevamente el parpadeo e indicador del cursor
	MOVLW      15
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,51 :: 		};
	GOTO       L_main1
;MyProject.c,52 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_config:

;MyProject.c,53 :: 		void config()
;MyProject.c,55 :: 		LCD_init();//Inisializa el modulo o chip de la pantalla LCD
	CALL       _Lcd_Init+0
;MyProject.c,56 :: 		LCD_cmd(_LCD_CLEAR);//FUNCION UTILIZADA PARA ENVIAR UN COMANDO O INSTRUCCION,
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,57 :: 		}                      //EN ESTE CASO SE BORRA LA PANTALLA
L_end_config:
	RETURN
; end of _config
