#define disp PORTB
#define dato PORTC

void config();
const char letra[4]={0x76,0x3f,0x38,0x77};//Datos que forman "HOLA"
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
  for(cuenta=0, disp=1; cuenta<4;cuenta++)
  {
   dato=letra[cuenta];
   delay_ms(1);
   disp=disp<<1;
   }
  }
}