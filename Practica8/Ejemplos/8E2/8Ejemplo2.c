/*MCU: PIC16F886

     DESCRIPCION: Se realizara un cronometro digital controlado por el usuarion e traves 
     de tres botones:inicio, para y pausa/reset. El cronometro funcion de la siguiente
     manera: El cronometro estara en espera de que el boton "inicio" sea presionado y 
     poder comenzar con el cronometraje. Una vez contado hay dos opciones,pausar con 
     "pausa/reset" o detener con "paro"; cuando el cronometraje esta pausado solo se puede
     reanudar con el boton "inicio", cuando se ha detenido se debe reiniciar con "reset" y
     el programa volvera a la espera de iniciar conteo.
     Para este programa se requiere de las bibliotecas "LCD" y "Conversiones".Delay_us Los pines a
     conectar estan descritos dentro del programa.
     IMPORTANTE conocer conceptos de punteros y como se hace referencia a la direccion de una
     variable con el operador "&variable".
     
*/
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

void config();
short minuto,segundo,centesima;//Variable que guardaran en conteo del cronometro
char txtmin[7],txtseg[7],txtcen[7];//Estas variables almacenaran en forma de cadena de caracteres
//los valores de conteo para poder mostrarlos en pantalla la dimension de estas corresponde
//al tamaño de la cadena que se obtendra de la funcion "IntToStrWithZeros".

void main() {
     config();
     //Saludo
     LCD_out(1,3,"Cronometro");
     LCD_out(2,4,"digital");//Muestra un mensaje de presentacion
     delay_ms(2500);
     
     while(1){
           //inicio
           LCD_cmd(_lcd_clear);
           lcd_out(1,3,"Presiona para");
           lcd_out(2,5,"inicio");
           while(inicio==0);//Se creara un ciclo condicionado del cual solo se saldra si "inicio" es presionado
           
           //cronometro
           lcd_cmd(_lcd_clear);lcd_chr(2,7,":"); lcd_chr(2,10,".")://Borra pantalla y escribe los caracteres
           //permanentes.
           lcd_out(1,5,"Contador");
           for(minuto=0;minuto<60;minuto++){//Conteo de los minutos.
               IntToStrWithZeros(minuto,txtmin);//Convierte el valor numerico a una cadena de caracteres de
               //6 caracteres visibles y uno de fin de cadena agregando ceros y signo.Ejemplo: -32 se convierte en #-0032".
               lcd_out(2,5,&txtmin+4);//imprime en la posicion indicada lacadena que inicia en la direccion indicada,es decir,"&txtmin"
                                      //es la direccion del primer caracter de "txtmin",al sumar 4 estamos saltandonos los primeros
                                      //caracteres, esdecir, si se tiene "-00032" ahora solo se imprime "32".
               for(segundo=0;segundo<60;segundo++){//Conteo de los segundos.
                  IntToStrWithZeros(segundo.txtseg);//Convierte el valor de segundos a cadena de caracteres,
                            lcd_out(2,11,&txtcen+4);
                            delay_ms(10);
                            if(paro==1) break;//si"paro" esta presionado, el programa se sale de este ciclo for( no importa el valor de conteo).
                            if(pausa==1)(//En causa de que "pausa/reset" sea presionado:
                               lcd_out(1,5,"Pausado");
                               while(inicio==0);//Se creara un ciclo condicionado del cual solo se saldra si "inicio" es presionado.
                               lcd_out(1,5,"Contado");
                            }
                       }
                       if(paro==1) break;//Si "paro" esta presionado, el programa se sale de este ciclo for (no importa el valo de conteo).
                  }
                  if(paro==1)break;//Si "paro" esta presionado, el programa se sale de este ciclo for(no importa el valor de conteo).
               }
               //Espera
               lcd_out(1,5,"Detenido");
               while(reset==0);//Una vez fuera del conteo se espera a que "reset" sea presionado.
           }
     }
     //OBSERVE que el tiempo de conteo real es mucho mas lento, esto debido a que las conversiones
     //implican varios ciclos maquinas para el microcontrolador lo que provoca un retardo mayor.
     
     void config(){
          ANSELH=0;
          TRISB=255;
          TRISC=0;
          LCD_init();//Inicializa el modulo o chip de la pantalla LCD
          LCD_cmd(_LCD_CLEAR);
          LCD_cmd(_led_cursor_off);
                   }
     
               

}