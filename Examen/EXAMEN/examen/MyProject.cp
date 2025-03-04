#line 1 "C:/Users/USXXI-1/Desktop/examen/MyProject.c"


void main()
{
TRISC=0;
PORTC=0;
 while(1){
  PORTC.B0 =1;
 delay_ms(100);
  PORTC.B0 =0;
 delay_ms(100);
  PORTC.B0 =1;
 delay_ms(100);
  PORTC.B0 =0;
 delay_ms(100);
  PORTC.B0 =1;
 delay_ms(100);
  PORTC.B0 =0;
 delay_ms(100);
  PORTC.B0 =1;
 delay_ms(100);
  PORTC.B0 =0;

  PORTC.B1 =1;
 delay_ms(7000);
  PORTC.B1 =0;
 }
}
