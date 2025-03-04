#line 1 "E:/mikroC/Practica6/Ejemplos/6E2/6Ejemplo2.c"

char conteo;
const char seg[10]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f};

void main()
{
 TRISC=0;

 while(1)
 {
 for(conteo=0;conteo<=9;conteo++)
 {
  PORTC =seg[conteo];
 delay_ms(1000);
 }
 }
}
