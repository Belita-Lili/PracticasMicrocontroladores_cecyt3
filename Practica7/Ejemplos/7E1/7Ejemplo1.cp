#line 1 "E:/mikroC/Practica7/Ejemplos/7E1/7Ejemplo1.c"



void config();
const char letra[4]={0x76,0x3f,0x38,0x77};
char cuenta;

void main()
{
 PORTC=0;
 PORTB=0;
 ANSELH=0;
 TRISC=0;
 TRISB=0;

 while(1)
 {
 for(cuenta=0,  PORTB =1; cuenta<4;cuenta++)
 {
  PORTC =letra[cuenta];
 delay_ms(1);
  PORTB = PORTB <<1;
 }
 }
}
