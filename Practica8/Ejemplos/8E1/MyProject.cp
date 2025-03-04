#line 1 "E:/todo/5 semestre/micro/Practica8/Ejemplos/8E1/MyProject.c"
#line 17 "E:/todo/5 semestre/micro/Practica8/Ejemplos/8E1/MyProject.c"
sbit LCD_RS at RB3_bit;
sbit LCD_EN at RB2_bit;
sbit LCD_D7 at RB7_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D4 at RB4_bit;


sbit LCD_RS_Direction at TRISB3_bit;
sbit LCD_EN_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB7_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB4_bit;

void config();

void main() {
 config();

 LCD_out(1,3,"BIENVENIDO");
 Lcd_out(2,3,"AL CURSO");
 delay_ms(2500);
 Lcd_cmd(_lcd_clear);
 lcd_cmd(_lcd_cursor_off);

 while(1)
 {
 lcd_out(1,1,"aprende a");
 lcd_out(2,1,"usarme...");
 lcd_chr_cp("bien!");
 delay_ms(2500);
 Lcd_cmd(_lcd_clear);
 lcd_cmd(_lcd_blink_cursor_on);
 };
 }
void config()
{;
 LCD_init();
 LCD_cmd(_LCD_CLEAR);
}
