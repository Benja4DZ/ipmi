/* Benjamín Higuera Berizonce - 126989/1 - Comisión 3
https://youtu.be/EQD-pZfnyEo?si=zPGkkvQWNCuaS_CV*/

PImage refe;

int cant = 25;
int tam = 400/cant;
int miti = 400;

void setup() {
  size(800, 400);
  refe=loadImage("28.jpg");
}

void draw() {
  background(255, 255, 0);
  image(refe, 0, 0, width/2, height);
  noStroke();

  for (int X=0; X<cant; X++) {
    for (int Y=0; Y<cant; Y++) {

      float XdeRec = X*tam+miti;
      float YdeRec = Y*tam;

      float dis = dist(mouseX, mouseY, XdeRec, YdeRec);

      float tono = dis * 255 / dist(0, 0, 400, 400);//distancia del mouse * color máximo/ distancia máxima

      fill(0, 0, 255, tono);
      rect(XdeRec, YdeRec, tam, tam);
    }
  }

  push();
  translate(width/2, 0);
  for (int A=0; A<25; A++) {
    for (int B=0; B<25; B++) {
      circle(8+A*(11+5), 10+B*(11+5), 11);

      for (int C=0; C<11; C++) {
        for (int D=0; D<11; D++) {
          push();
          fill(255, 0, 0);
          rect(114+C*(12+4), 116+D*(12+4), 12, 12);
          pop();
        }
      }
    }
  }

  push();
  fill(0);
  circle(8, 10, 11);
  rect(114, 116, 12, 12);
  pop();

  pop();
}

//USAR DIST PARA LOS CUADRADITOS DEL MEDIO?
// (no funcionó)
//float dis = dist(width/4, height/2, width/4, height/3);

//for (int d=0; d<dis; d++) {
//  for (int e=0; e<11; e++) {
//    rect(100+d*16, 100+e*16, 13, 13);
//  }
//}

/*
CONSIGNA: Crear una obra de arte óptico interactiva con
 estructuras repetitivas (ciclos for) y funciones propias.
 
 OBJETIVO: Comprender las estructuras repetitivas a través de la visualización de patrones de repetición,
 modulables por la apropiación de los índices (variable de la repetición).
 
 • Mínimo 1 función propia con parámetros que SÍ retorna un valor
 • Mínimo 1 función propia con parámetros que NO retorna un valor
 • Condicionales (if - else).
 • Ciclos FOR anidados.
 • Eventos (mouse y/o teclado): modificación de variables.
 • Funciones matemáticas: dist(), map(), random().
 • Reiniciar el programa: restablecer las variables a su estado original.
 • Rotate y Translate
 La imagen de referencia debe estar ubicada a la izquierda
 */
