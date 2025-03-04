void main() 
{
 PORTC=0;
 TRISC=0;
 
 while(1)
 {
  PORTC=0X3F; //0
  delay_ms(800);
  PORTC=0X06; //1
  delay_ms(800);
  PORTC=0X5B; //2
  delay_ms(800);
  PORTC=0X4F; //3
  delay_ms(800);
  PORTC=0X66; //4
  delay_ms(800);
  PORTC=0X6D; //5
  delay_ms(800);
  PORTC=0X7D; //6
  delay_ms(800);
  PORTC=0X47; //7
  delay_ms(800);
  PORTC=0X7F; //8
  delay_ms(800);
  PORTC=0X67; //9
  delay_ms(800);
  PORTC=0X00; //0
  delay_ms(800);
  }
  
}