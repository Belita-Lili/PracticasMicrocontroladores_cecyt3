#define rojo PORTC.B0
#define verde PORTC.B1
#define boton PORTB.B0
void main() 
{
 ANSELH=0;
 TRISC.B0= TRISC.B1=0;
 TRISB.B0=1;
 rojo=verde=0;
 while(1)
    {
     while(boton==1)
       {
        rojo=~rojo;
        delay_ms(1000);

       }
    }
}