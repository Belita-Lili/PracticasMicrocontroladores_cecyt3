#line 1 "G:/todo/5 semestre/micro/Practica3/semaforo/Nueva carpeta/semaforo.c"

void main()
{
 TRISC=0;
  PORTC =0;
 while(1)
 {
  PORTC =0X21;
 delay_ms(1500);
  PORTC =0X01;
 delay_ms(250);
  PORTC =0X21;
 delay_ms(250);
  PORTC =0X01;
 delay_ms(250);
  PORTC =0X21;
 delay_ms(250);
  PORTC =0X01;
 delay_ms(250);
  PORTC =0X21;
 delay_ms(250);
  PORTC =0X01;

  PORTC =0X11;
 delay_ms(1000);
  PORTC =0X11;

  PORTC =0X0C;
 delay_ms(1500);
  PORTC =0X08;
 delay_ms(250);
  PORTC =0X0C;
 delay_ms(250);
  PORTC =0X08;
 delay_ms(250);
  PORTC =0X0C;
 delay_ms(250);
  PORTC =0X08;
 delay_ms(250);
  PORTC =0X0C;
 delay_ms(250);
  PORTC =0X08;
 delay_ms(250);
  PORTC =0X0C;

  PORTC =0X0A;
 delay_ms(1000);
  PORTC =0X0A;



 }

}
