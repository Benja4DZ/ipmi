/* Benjamín Higuera Berizonce - 126989/1 - Comisión 3
 Video explicativo: https://youtu.be/Pgvz8aP-aWE?si=9iDzN1eoI8AnKVVi
 
 CONTROLES:
 Teclas "r", "g" y "b" en mínuscula para cambiar de colores los círculos.
 Teclas "R", "G" y "B" en con la mayúscula activada para cambiar de colores los cuadrados del centro.
 Tecla ESPACIO para resetear las variables de colores a su estado original.
 
 MOUSE:
 La posición del mouse manipula el "hueco" en la "luz". Se pueden modificar la posición en donde queremos que esté y el tamaño que queramos que tenga en luz();
 */

PImage refe;

int cantidad = 25;
int tamañoRectFondo;

boolean circleRojo = false;
boolean circleVerde = false;
boolean circleAzul = false;

boolean rectRojo = false;
boolean rectVerde = false;
boolean rectAzul = false;

void setup() {
  size(800, 400);
  refe=loadImage("data/28.jpg");
  tamañoRectFondo=(width/2)/25;
}

void draw() {
  background(0, 0, 150);
  image(refe, 0, 0, width/2, height);

  noStroke();
  grilla();
  luz(mouseX, mouseY, 300);
}
