#line 1 "E:/mikroC/Practica7/Ejemplos/7E2/7Ejemplo2.c"


void config();
const char letras[3][4]={{0x76,0x3f,0x38,0x77},
 {0x3e,0x3f,0x39,0x77},
 {0x78,0x50,0x79,0x6D}
 };
char cuenta,barridos,palabra;
void main()
{
 while(1)
 {
 for(palabra=0;palabra<3;palabra++)
 for(barridos=0;barridos<=150;barridos++)
 for(cuenta=0, PORTB =1;cuenta<4;cuenta++)
 {
  PORTC =letras[palabra][cuenta];
 delay_ms(3);
  PORTB = PORTB <<1;
 }
 }
}
