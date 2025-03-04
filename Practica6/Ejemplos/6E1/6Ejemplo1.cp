#line 1 "E:/mikroC/Practica6/Ejemplos/6E1/6Ejemplo1.c"
void main()
{
 PORTC=0;
 TRISC=0;

 while(1)
 {
 PORTC=0X3F;
 delay_ms(800);
 PORTC=0X06;
 delay_ms(800);
 PORTC=0X5B;
 delay_ms(800);
 PORTC=0X4F;
 delay_ms(800);
 PORTC=0X66;
 delay_ms(800);
 PORTC=0X6D;
 delay_ms(800);
 PORTC=0X7D;
 delay_ms(800);
 PORTC=0X47;
 delay_ms(800);
 PORTC=0X7F;
 delay_ms(800);
 PORTC=0X67;
 delay_ms(800);
 PORTC=0X00;
 delay_ms(800);
 }

}
