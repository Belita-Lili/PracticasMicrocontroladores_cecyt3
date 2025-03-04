
_main:

;semaforo.c,2 :: 		void main()
;semaforo.c,4 :: 		TRISC=0;
	CLRF       TRISC+0
;semaforo.c,5 :: 		LED=0;
	CLRF       PORTC+0
;semaforo.c,6 :: 		while(1)             //BUCLE INFINITO
L_main0:
;semaforo.c,8 :: 		LED=0X21;         //VERDE-ROJO
	MOVLW      33
	MOVWF      PORTC+0
;semaforo.c,9 :: 		delay_ms(1500);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
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
;semaforo.c,10 :: 		LED=0X01;         //PARPADEO
	MOVLW      1
	MOVWF      PORTC+0
;semaforo.c,11 :: 		delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
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
;semaforo.c,12 :: 		LED=0X21;
	MOVLW      33
	MOVWF      PORTC+0
;semaforo.c,13 :: 		delay_ms(250);
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
;semaforo.c,14 :: 		LED=0X01;
	MOVLW      1
	MOVWF      PORTC+0
;semaforo.c,15 :: 		delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
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
;semaforo.c,16 :: 		LED=0X21;
	MOVLW      33
	MOVWF      PORTC+0
;semaforo.c,17 :: 		delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
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
;semaforo.c,18 :: 		LED=0X01;
	MOVLW      1
	MOVWF      PORTC+0
;semaforo.c,19 :: 		delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
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
;semaforo.c,20 :: 		LED=0X21;
	MOVLW      33
	MOVWF      PORTC+0
;semaforo.c,21 :: 		delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
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
;semaforo.c,22 :: 		LED=0X01;
	MOVLW      1
	MOVWF      PORTC+0
;semaforo.c,24 :: 		LED=0X11;         //AMARILLO-ROJO
	MOVLW      17
	MOVWF      PORTC+0
;semaforo.c,25 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;semaforo.c,26 :: 		LED=0X11;
	MOVLW      17
	MOVWF      PORTC+0
;semaforo.c,28 :: 		LED=0X0C;         //ROJO-VERDE
	MOVLW      12
	MOVWF      PORTC+0
;semaforo.c,29 :: 		delay_ms(1500);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
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
;semaforo.c,30 :: 		LED=0X08;          //PARPADEO
	MOVLW      8
	MOVWF      PORTC+0
;semaforo.c,31 :: 		delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
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
;semaforo.c,32 :: 		LED=0X0C;
	MOVLW      12
	MOVWF      PORTC+0
;semaforo.c,33 :: 		delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
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
;semaforo.c,34 :: 		LED=0X08;
	MOVLW      8
	MOVWF      PORTC+0
;semaforo.c,35 :: 		delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
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
;semaforo.c,36 :: 		LED=0X0C;
	MOVLW      12
	MOVWF      PORTC+0
;semaforo.c,37 :: 		delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
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
;semaforo.c,38 :: 		LED=0X08;
	MOVLW      8
	MOVWF      PORTC+0
;semaforo.c,39 :: 		delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
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
;semaforo.c,40 :: 		LED=0X0C;
	MOVLW      12
	MOVWF      PORTC+0
;semaforo.c,41 :: 		delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
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
;semaforo.c,42 :: 		LED=0X08;
	MOVLW      8
	MOVWF      PORTC+0
;semaforo.c,43 :: 		delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
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
;semaforo.c,44 :: 		LED=0X0C;
	MOVLW      12
	MOVWF      PORTC+0
;semaforo.c,46 :: 		LED=0X0A;         //ROJO-AMARILLO
	MOVLW      10
	MOVWF      PORTC+0
;semaforo.c,47 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;semaforo.c,48 :: 		LED=0X0A;
	MOVLW      10
	MOVWF      PORTC+0
;semaforo.c,52 :: 		}                 //CIERRO WHILE CON "}"
	GOTO       L_main0
;semaforo.c,54 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
