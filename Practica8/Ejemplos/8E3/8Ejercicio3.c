#define inicio RB0_bit
#define paro RB1_bit
#define reset RB2_bit
#define pausa RB2_bit
//Led pinout settings
sbit LCD_RS at RC4_bit; //Definimos los pines del uC destinados a controlar
sbit LCD_EN at RC5_bit; //la patalla LCD. Como lo indica la biblioteca la
sbit LCD_D7 at RC3_bit; //interfaz se hace a traves de un bus de 4 bits ademas
sbit LCD_D6 at RC2_bit; //de las señales RS y EN.
sbit LCD_D5 at RC1_bit;
sbit LCD_D4 at RC0_bit;

//Pin direction
sbit LCD_RS_Direction at TRISC4_bit;
sbit LCD_EN_Direction at TRISC5_bit; //Definimos los requiistos que controlan
sbit LCD_D7_Direction at TRISC3_bit; //la direccion (entrada o salida) de los pines
sbit LCD_D6_Direction at TRISC2_bit; //utilizamos para controlar la pantalla LCD.
sbit LCD_D5_Direction at TRISC1_bit;
sbit LCD_D4_Direction at TRISC0_bit;

void main() {
configura;
while(1)
{
Lcd_Init();
Led_Out(1,2 "VOCACIONAL NO.3";

Led_Out(2,1,"IMP SISTEMAS DE CONTROL ELECTRICO IPN");
for(x=0;xdefine inicio RB0_bit
#define paro RB1_bit
#define reset RB2_bit
#define pausa RB2_bit
//Led pinout settings
sbit LCD_RS at RC4_bit; //Definimos los pines del uC destinados a controlar
sbit LCD_EN at RC5_bit; //la patalla LCD. Como lo indica la biblioteca la
sbit LCD_D7 at RC3_bit; //interfaz se hace a traves de un bus de 4 bits ademas
sbit LCD_D6 at RC2_bit; //de las señales RS y EN.
sbit LCD_D5 at RC1_bit;
sbit LCD_D4 at RC0_bit;

//Pin direction
sbit LCD_RS_Direction at TRISC4_bit;
sbit LCD_EN_Direction at TRISC5_bit; //Definimos los requiistos que controlan
sbit LCD_D7_Direction at TRISC3_bit; //la direccion (entrada o salida) de los pines
sbit LCD_D6_Direction at TRISC2_bit; //utilizamos para controlar la pantalla LCD.
sbit LCD_D5_Direction at TRISC1_bit;
sbit LCD_D4_Direction at TRISC0_bit;

void config()

}