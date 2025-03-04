/*MCU:PIC16F886

                DESCRIOCION: En este programa se mostrara como utilizar y controlar mediante el
                uC una pantalla LCD.Para esto utilizaremos por primera vezuna biblioteca(library)
                incluida por MikroC que sera "LCD" y podemos habilitarla en el "Library Manager".
                La utilizacion de una biblioteca consiste en incluir en el proyecto funciones previamente
                descritas (en otro archivo)para su utilizacion.Debes leer las caracteristicas y
                requerimientos de cada biblioteca y sus funciones para poder utilizarla correctamente.

                En esta practica las distintas funciones destinadas a controlar una
                pantalla LCD, mostrar caracteres,definir los pines de conexion etc.
                IMPORTANTE:A partir de ahora es indispensable que leas la ayuda proporcionada por
                el software para utilizar una biblioteca para conocer en su totalidad la misma.
*/

 //Lcd pinout settings
sbit LCD_RS at RB3_bit; //PORTB.B4  PORTB.RC4
sbit LCD_EN at RB2_bit; //la pantalla LCD. Como lo indica la biblioteca la
sbit LCD_D7 at RB7_bit; //interfaz se hace a traves de un bus de 4 bits ademas
sbit LCD_D6 at RB6_bit; //de las señales RS y EN.
sbit LCD_D5 at RB5_bit;
sbit LCD_D4 at RB4_bit;

//Pin direction
sbit LCD_RS_Direction at TRISB3_bit;  //Definimos los registros que controlan
sbit LCD_EN_Direction at TRISB2_bit;  //la direccion (entrada o salida) de los pines
sbit LCD_D7_Direction at TRISB7_bit;  //utilizamos para controlar la pantalla LCD.
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB4_bit;

void config();

void main() {
   config();

            LCD_out(1,3,"BIENVENIDO");//Esta funcion escribe un texto en la posicion indicada (fila,columna,texto)
            Lcd_out(2,3,"AL CURSO");
            delay_ms(2500);
            Lcd_cmd(_lcd_clear); //Borrar pantalla
            lcd_cmd(_lcd_cursor_off);//Envia la institucion de apagar el cursor

            while(1)
            {
             lcd_out(1,1,"aprende a");//Comienza a enviar texto nuevamente
             lcd_out(2,1,"usarme...");
             lcd_chr_cp("bien!");//Imprime una cadena de caracteres "texto" en la posicion actual del cursor
             delay_ms(2500);
             Lcd_cmd(_lcd_clear);//Borra la pantalla
             lcd_cmd(_lcd_blink_cursor_on);//Habilita nuevamente el parpadeo e indicador del cursor
            };
   }
void config()
{;
  LCD_init();//Inisializa el modulo o chip de la pantalla LCD
  LCD_cmd(_LCD_CLEAR);//FUNCION UTILIZADA PARA ENVIAR UN COMANDO O INSTRUCCION,
}                      //EN ESTE CASO SE BORRA LA PANTALLA