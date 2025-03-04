
_main:

;practica 2.c,4 :: 		void main()
;practica 2.c,6 :: 		TRISD=0;
	CLRF       TRISD+0
;practica 2.c,7 :: 		PORTD=0;
	CLRF       PORTD+0
;practica 2.c,9 :: 		while(1)
L_main0:
;practica 2.c,10 :: 		{ AMARILLO=1;
	BSF        PORTD+0, 7
;practica 2.c,11 :: 		}
	GOTO       L_main0
;practica 2.c,14 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
