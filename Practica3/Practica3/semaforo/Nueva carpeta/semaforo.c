#define LED PORTC
void main() 
{
 TRISC=0;
 LED=0;
 while(1)             //BUCLE INFINITO
   {
    LED=0X21;         //VERDE-ROJO
    delay_ms(1500);
    LED=0X01;         //PARPADEO
    delay_ms(250);
    LED=0X21;
    delay_ms(250);
    LED=0X01;
    delay_ms(250);
    LED=0X21;
    delay_ms(250);
    LED=0X01;
    delay_ms(250);
    LED=0X21;
    delay_ms(250);
    LED=0X01;
    
    LED=0X11;         //AMARILLO-ROJO
    delay_ms(1000);
    LED=0X11;

    LED=0X0C;         //ROJO-VERDE
    delay_ms(1500);
    LED=0X08;          //PARPADEO
    delay_ms(250);
    LED=0X0C;
    delay_ms(250);
    LED=0X08;
    delay_ms(250);
    LED=0X0C;
    delay_ms(250);
    LED=0X08;
    delay_ms(250);
    LED=0X0C;
    delay_ms(250);
    LED=0X08;
    delay_ms(250);
    LED=0X0C;
    
    LED=0X0A;         //ROJO-AMARILLO
    delay_ms(1000);
    LED=0X0A;
    
    
    
    }                 //CIERRO WHILE CON "}"

}