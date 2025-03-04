#define disp PORTB
#define dato PORTC
void config();
const char letras[3][4]={{0x76,0x3f,0x38,0x77},//HOLA
                         {0x3e,0x3f,0x39,0x77},//VOCA
                         {0x78,0x50,0x79,0x6D}//trES
                         };
char cuenta,barridos,palabra;
void main() 
{
 while(1)
 {
  for(palabra=0;palabra<3;palabra++)
     for(barridos=0;barridos<=150;barridos++)
        for(cuenta=0,disp=1;cuenta<4;cuenta++)
        {
         dato=letras[palabra][cuenta];
         delay_ms(3);
         disp=disp<<1;
         }
 }
}

