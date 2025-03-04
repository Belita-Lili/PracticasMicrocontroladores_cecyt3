#define disp PORTB
#define dato PORTC
void config();
const char letras[30]={0x30,0X54,0X6D,0X78,0X30,0X78,0X1C,0X78,0X3F,0X00,0X73,0X3F,
                       0X38,0X30,0X78,0X79,0X39,0X54,0X30,0X39,0X3F,0X00,0X54,0X77,
                       0X39,0X30,0X3F,0X54,0X77,0X38};
                       //InStItutO POLItECnICO nACIOnAL
char cuenta,barridos,inicio;
void main()
{
 config();
 while(1)
 {
    for(inicio=0;inicio<=26;inicio++)
       for(barridos=0;barridos<=35;barridos++)
          for(cuenta=0, disp=1;cuenta<4;cuenta++)
          {
           dato=letras[inicio+cuenta];
           delay_ms(3);
           disp=disp<<1;
           }
            dato=disp=0;
            delay_ms(500);
  }
}