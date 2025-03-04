#line 1 "G:/todo/5 semestre/micro/practica4/practica4.c"
void main() {
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
