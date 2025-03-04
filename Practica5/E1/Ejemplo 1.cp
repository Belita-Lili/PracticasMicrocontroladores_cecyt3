#line 1 "D:/5to semestre/Práctica 5/Ejemplos/E1/Ejemplo 1.c"



void main()
{
 ANSELH=0;
 TRISC.B0= TRISC.B1=0;
 TRISB.B0=1;
  PORTC.B0 = PORTC.B1 =0;
 while(1)
 {
 while( PORTB.B0 ==1)
 {
  PORTC.B0 =~ PORTC.B0 ;
 delay_ms(1000);

 }
 }
}
