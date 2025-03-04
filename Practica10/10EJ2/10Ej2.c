sbit LCD_EN at RB0_bit;
sbit LCD_RS at RB1_bit;
sbit LCD_D4 at RA4_bit;
sbit LCD_D5 at RA5_bit;
sbit LCD_D6 at RA6_bit;
sbit LCD_D7 at RA7_bit;

sbit LCD_EN_Direction at TRISB0_bit;
sbit LCD_RS_Direction at TRISB1_bit;
sbit LCD_D4_Direction at TRISA4_bit;
sbit LCD_D5_Direction at TRISA5_bit;
sbit LCD_D6_Direction at TRISA6_bit;
sbit LCD_D7_Direction at TRISA7_bit;

void main() 
{
 unsigned int lectura,porcentaje;
 char x[6];
 ANSELH=0X00;
 ANSEL=0b10000011;
 ADC_Init();
 Lcd_Init();
 Lcd_cmd(_LCD_CURSOR_OFF);
 Lcd_cmd(_LCD_CLEAR);
 
 Lcd_Out(1,1,"Potenciometro =");
 while(!)
 {
  lectura=ADC_Read(0);
  porcentaje=lectura0.15)/1023;
  wordToStr(porcentaje,x);
  Lcd_Out(2,5,x);
  Lcd_Out_CP("%");
  DELAY_MS(250);
  }
}