/*
Benjamín Higuera Berizonce - 126989/1
 TP#1 - Comisión 3
*/

PImage foto;


void setup () {
  size (800, 400);
  foto = loadImage ("data/mural.jpg");
}


void draw () {

// Fondo
  background (29, 182, 244); //el color que más abarca

// Conté 13 líneas aprox. para hacer el fondo, y dividí Y de "size" por cantidad de líneas por hacer, dándome ~31)
 //verde
  stroke (193, 216, 144);
  strokeWeight (31);

  line (0, 0, width, 0);
  line (0, 31*8, width, 31*8);
  line (0, 31*11, width, 31*11);

 //celeste
  stroke (138, 216, 255);
  strokeWeight (31);

  line (0, 31*2, width, 31*2);
  line (0, 31*5, width, 31*5);
  line (0, 31*7, width, 31*7);
  line (0, 31*10, width, 31*10);

 //oscuro
  stroke (56, 148, 183);
  strokeWeight (31);
  line (0, 31*12, width, 31*12);

 //oscurazo
  stroke (34, 97, 157);
  strokeWeight (33);
  line (0, height, width, height);

 //separadores (aprovecho que ya tengo el color)
  strokeWeight (3);

  line (0, 31/2, width, 31/2);
  //Si reemplazamos las coordenada en Y por un 31, corta por la mitad a la primer línea azul. Por ende, lo dividimos por 2.
  line (0, 31/2+31, width, 31/2+31);
  //Le iremos sumando treintaiunos a esa coordenada en Y, así habrá 31 píxeles de distancia entre cada línea.
  line (0, 31/2+31*2, width, 31/2+31*2);
  line (0, 31/2+31*3, width, 31/2+31*3);
  line (0, 31/2+31*4, width, 31/2+31*4);
  line (0, 31/2+31*5, width, 31/2+31*5);
  line (0, 31/2+31*6, width, 31/2+31*6);
  line (0, 31/2+31*7, width, 31/2+31*7);
  line (0, 31/2+31*8, width, 31/2+31*8);
  line (0, 31/2+31*9, width, 31/2+31*9);
  line (0, 31/2+31*10, width, 31/2+31*10);
  line (0, 31/2+31*11, width, 31/2+31*11);
  line (0, 31/2+31*12, width, 31/2+31*12);


  // Imagen
  image (foto, 0, 0, 400, 400);

  // Punteo (para sacar coordenadas)
  if (mousePressed) {
    println (mouseX + "," + mouseY);
  }
//No recuerdo cómo usar mousePressed, así que le agregué "if", sacado de un ejemplo de la página de Referencias de Processing.

  // Traslado (último paso)
  translate (400, 0);

// Flor
  stroke (103, 87, 97);
  strokeWeight (3);
  fill (199, 81, 114);

  triangle (218, 190, 322, 173, 242, 224);
  triangle (260, 250, 322, 173, 305, 270);
  triangle (340, 271, 322, 173, 393, 250);
  triangle (400, 208, 322, 173, 400, 169);
  triangle (400, 155, 322, 173, 400, 112);
  triangle (374, 76, 322, 173, 322, 74);
  triangle (246, 106, 322, 173, 282, 80);
  triangle (215, 168, 322, 173, 230, 131);

  circle (322, 173, 55);


// Pico
  stroke(233, 127, 55);

  strokeWeight (10);
  line (205, 156, 254, 143);

  strokeWeight (8);
  line (254, 143, 280, 145);

  strokeWeight(6);
  line (280, 145, 315, 155);

  strokeWeight (5);
  line (315, 155, 338, 173);


// Cuerpo
  stroke(110, 95, 92);
  fill (233, 127, 55);

  beginShape ();
  vertex (1, 308);
  vertex (70, 208);
  vertex (168, 142);
  vertex (196, 146);
  vertex (205, 166);
  vertex (203, 204);
  vertex (157, 264);
  vertex (114, 286);
  vertex (93, 287);
  vertex (84, 312);
  endShape(CLOSE);

  line (39, 254, 93, 287);


// Ala
  beginShape ();
  vertex (0, 85);
  vertex (0, 122);
  vertex (28, 173);
  vertex (70, 208);
  vertex (104, 217);
  vertex (130, 205);
  vertex (138, 185);
  vertex (136, 168);
  vertex (0, 20);
  endShape(CLOSE);


// Ojo
  fill (229, 173, 122);

  beginShape ();
  vertex(141, 184);
  vertex(163, 160);
  vertex(188, 153);
  vertex(205, 156);
  vertex(193, 171);
  vertex(171, 182);
  endShape(CLOSE);

  line (152, 173, 169, 181);
  line (185, 175, 192, 153);
} //final de void draw
