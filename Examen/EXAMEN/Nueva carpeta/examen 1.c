#define rojo PORTC.B0
#define verde PORTC.B1
void main()
{
TRISC=0;
PORTC=0;
 while(1){
          rojo=1;
          delay_ms(100);
          rojo=0;
          delay_ms(100);
          rojo=1;
          delay_ms(100);
          rojo=0;
          delay_ms(100);
          rojo=1;
          delay_ms(100);
          rojo=0;
          delay_ms(100);
          rojo=1;
          delay_ms(100);
          rojo=0;
          
          verde=1;
          delay_ms(7000);
          verde=0;
          }
          
}