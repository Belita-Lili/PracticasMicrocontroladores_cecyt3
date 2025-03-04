void main() 
{
 TRISC=0;
 TRISB=0;
 ANSELH=0;
 ANSEL=0;
 PORTA=0;
 PORTB=0;
 TRISA=0;



while(1){
 if(PORTA==0){
              PORTB=0B00000000;
              }

 if(PORTA==0B1){
                PORTB=0B10001000;
                }
 if(PORTA==0B10){
                PORTB=0B10000011;
                }
 if(PORTA==0B11){
                 PORTB=0B11000110;
                 }
 if(PORTA==0B100){
                  PORTB=0B10100001;
                  }
 if(PORTA==0B101){
                  PORTB=0B10000110;
                  }
 if(PORTA==0B110){
                  PORTB=0B10001110;
                  }
 if(PORTA==0B111){
          PORTB=0B10000010;

          }

         }

          

 
 

}