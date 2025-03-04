#define LDR 13
sbit lcd_RS at RB1_bit;
sbit lcd_EN at RB0_bit;
sbit lcd_D7 at RA3_bit;
sbit lcd_D6 at RA2_bit;
sbit lcd_D5 at RA1_bit;
sbit lcd_D4 at RA0_bit;


sbit LCD_RS_Direction at TRISB1_bit;
sbit LCD_EN_Direction at TRISB0_bit;
sbit LCD_D7_Direction at TRISA3_bit;
sbit LCD_D6_Direction at TRISA2_bit;
sbit LCD_D5_Direction at TRISA1_bit;
sbit LCD_D4_Direction at TRISA0_bit;

void main() 
{
 char clectura[6];
 unsigned int lectura;
 ANSELH=0X00;
 ANSEL=0B00000001;
 ADC_Init();
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,1,"Lectura=");
 while(1)
 {
  lectura=ADC_Read(LDR);
  WordToStr(lectura,clectura);
  Lcd_Out(1,10,clectura);
  delay_ms(250);
  }
 }
