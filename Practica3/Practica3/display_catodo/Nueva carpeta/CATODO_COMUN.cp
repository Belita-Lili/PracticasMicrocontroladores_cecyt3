#line 1 "F:/todo/5 semestre/micro/Practica3/display_catodo/Nueva carpeta/CATODO_COMUN.c"

void main()
{ TRISC=0;
  PORTC =0;
 while(1)
 {
  PORTC =~0x6D;
 delay_ms(500);
  PORTC =~0x3F;
 delay_ms(500);
  PORTC =~0x54;
 delay_ms(500);
  PORTC =~0x50;
 delay_ms(500);
  PORTC =~0x30;
 delay_ms(500);
  PORTC =~0x79;
 delay_ms(500);
  PORTC =~0x00;
 delay_ms(500);
  PORTC =~0x73;
 delay_ms(500);
  PORTC =~0x3F;
 delay_ms(500);
  PORTC =~0x50;
 delay_ms(500);
  PORTC =~0x67;
 delay_ms(500);
  PORTC =~0x3E;
 delay_ms(500);
  PORTC =~0x79;
 delay_ms(500);
  PORTC =~0x00;
 delay_ms(500);
  PORTC =~0x6D;
 delay_ms(500);
  PORTC =~0x30;
 delay_ms(500);
  PORTC =0;
 delay_ms(500);
 }
}
