#line 1 "E:/todo/5 semestre/micro/Practica 10/10EJ3/10EJ3.c"
sbit LCD_EN at RB0_bit;
sbit LCD_RS at RB1_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;

sbit LCD_EN_Direction at TRISB0_bit;
sbit LCD_RS_Direction at TRISB1_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;

void main()
{
 unsigned int temp,lectura,max,salida;
 char x;

 ANSEL=0X00;
 ANSELH=0B10000011;

 ADC_Init();
 Lcd_Init();
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Cmd(_LCD_CLEAR);

 Lcd_out(1,3,"Temperatura");
 while(1)
 {
 lectura=ADC_Read(0);
 temp=lectura/2;
 WordToStr(temp,x);
 Lcd_Out(2,5,x);
 Lcd_Out_CP("C");
 if(temp>=max)
 {
 salida=1;
 Lcd_Out(1,8,"HOT");
 }
 else
 {
 salida=0;
 Lcd_Out(1,3,"COLD ");
 }
 delay_ms(250);
 }
}
