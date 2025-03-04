#define display PORTC
void main() 
{ TRISC=0;
  display=0;
  while(1)
  {
  display=~0x6D;   //S
  delay_ms(500);
  display=~0x3F;   //O
  delay_ms(500);
  display=~0x54;   //N
  delay_ms(500);
  display=~0x50;   //R
  delay_ms(500);
  display=~0x30;   //I
  delay_ms(500);
  display=~0x79;   //E
  delay_ms(500);
  display=~0x00;   //-
  delay_ms(500);
  display=~0x73;   //P
  delay_ms(500);
  display=~0x3F;   //O
  delay_ms(500);
  display=~0x50;   //R
  delay_ms(500);
  display=~0x67;   //Q
  delay_ms(500);
  display=~0x3E;   //U
  delay_ms(500);
  display=~0x79;   //E
  delay_ms(500);
  display=~0x00;   //-
  delay_ms(500);
  display=~0x6D;   //S
  delay_ms(500);
  display=~0x30;   //I
  delay_ms(500);
  display=0;
  delay_ms(500);
  }
}