void main() 
{
  TRISC=0;
  TRISB=255;
  ANSELH=0;


   if(PORTB==0X03){
      PORTC=0X07;
                  }

   else if(PORTB==0X06){
         PORTC=0X38;   
                       }

}
// while(1){
//switch(PORTB){
//case 0: PORTC=0xff;break;
//case 1: PORTC=0XA6
//case 2: PORTC=0X55;break;
//case 3: PORTC=0x7F;break;
//case 4: PORTC=0x86;break;
//case 5: PORTC=0xAA;break;
//default: PORTC=0;break;